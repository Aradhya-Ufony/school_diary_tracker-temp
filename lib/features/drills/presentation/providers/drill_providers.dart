import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/di/providers.dart';
import '../../../../core/services/media_compression_service.dart';
import '../../../../core/storage/local_storage_service.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../data/models/drill_checklist_item.dart';
import '../../../../data/models/drill_command_response.dart';
import '../../../../data/models/drill_evidence.dart';
import '../../../../data/models/drill_log.dart';
import '../../../../data/models/drill_response_code.dart';
import '../../../../data/models/drill_roster_response.dart';
import '../../../../data/models/drill_compliance_status.dart';
import '../../../../data/repositories/drill_repository.dart';
import '../../../../core/services/gps_capture_service.dart';
import '../../../home/viewmodel/home_viewmodel.dart';

final drillRepositoryProvider = Provider<DrillRepository>((ref) {
  return DrillRepository(apiClient: ref.watch(apiClientProvider));
});

final gpsCaptureServiceProvider = Provider((ref) => GPSCaptureService());
final mediaCompressionServiceProvider = Provider((ref) => MediaCompressionService());

class DrillChecklistState {
  final bool isLoading;
  final DrillRosterResponse? roster;
  final Map<int, DrillChecklistItem> items;
  final List<DrillEvidence> evidenceList;
  final double? latitude;
  final double? longitude;
  final String? error;
  final DrillCommandResponse? lastResponse;

  // New bus-based drill parameters
  final int? routeId;
  final int? busId;
  final String? busNumber;
  final String? drillType;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? driverNotes;

  // Video upload tracking
  final double? videoUploadProgress;
  final String? videoUploadStatus;

  DrillChecklistState({
    this.isLoading = false,
    this.roster,
    this.items = const {},
    this.evidenceList = const [],
    this.latitude,
    this.longitude,
    this.error,
    this.lastResponse,
    this.routeId,
    this.busId,
    this.busNumber,
    this.drillType,
    this.startTime,
    this.endTime,
    this.driverNotes,
    this.videoUploadProgress,
    this.videoUploadStatus,
  });

  int get totalOnBus => items.values.where((i) => i.wasOnBus).length;
  int get evacuatedCount => items.values.where((i) => i.wasOnBus && i.isEvacuated).length;
  int get unaccountedCount => items.values.where((i) => i.isUnaccounted).length;
  bool get canSubmit => evidenceList.isNotEmpty && latitude != null && longitude != null && latitude != 0.0 && longitude != 0.0;

  DrillChecklistState copyWith({
    bool? isLoading,
    DrillRosterResponse? roster,
    Map<int, DrillChecklistItem>? items,
    List<DrillEvidence>? evidenceList,
    double? latitude,
    double? longitude,
    String? error,
    DrillCommandResponse? lastResponse,
    int? routeId,
    int? busId,
    String? busNumber,
    String? drillType,
    DateTime? startTime,
    DateTime? endTime,
    String? driverNotes,
    double? videoUploadProgress,
    String? videoUploadStatus,
  }) {
    return DrillChecklistState(
      isLoading: isLoading ?? this.isLoading,
      roster: roster ?? this.roster,
      items: items ?? this.items,
      evidenceList: evidenceList ?? this.evidenceList,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      error: error,
      lastResponse: lastResponse ?? this.lastResponse,
      routeId: routeId ?? this.routeId,
      busId: busId ?? this.busId,
      busNumber: busNumber ?? this.busNumber,
      drillType: drillType ?? this.drillType,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      driverNotes: driverNotes ?? this.driverNotes,
      videoUploadProgress: videoUploadProgress ?? this.videoUploadProgress,
      videoUploadStatus: videoUploadStatus ?? this.videoUploadStatus,
    );
  }
}

class DrillChecklistNotifier extends StateNotifier<DrillChecklistState> {
  final DrillRepository _repository;
  final LocalStorageService _storage;
  final GPSCaptureService _gpsService;

  DrillChecklistNotifier(this._repository, this._storage, this._gpsService)
      : super(DrillChecklistState());

  void startDrill({
    required int routeId,
    required int busId,
    required String busNumber,
    required String drillType,
  }) {
    state = DrillChecklistState(
      isLoading: false,
      items: const {},
      evidenceList: const [],
      latitude: null,
      longitude: null,
      error: null,
      lastResponse: null,
      routeId: routeId,
      busId: busId,
      busNumber: busNumber,
      drillType: drillType,
      startTime: DateTime.now(),
    );
    initRoster(routeId: routeId, busId: busId, busNumber: busNumber);
  }

  Future<void> initRoster({int? routeId, int? busId, String? busNumber}) async {
    final rId = routeId ?? state.routeId;
    final bNum = busNumber ?? state.busNumber;

    if (rId == null || bNum == null) {
      state = state.copyWith(error: 'Route ID and Bus Number are required to fetch roster');
      return;
    }

    state = state.copyWith(isLoading: true, error: null);
    try {
      final roster = await _repository.getRoster(rId, bNum);
      final itemMap = {for (var child in roster.children) child.childId: child};
      state = state.copyWith(isLoading: false, roster: roster, items: itemMap);
      lockLocation();
    } catch (e, stacktrace) {
      debugPrint('Roster error: $e');
      debugPrint('stackTrace: $stacktrace');
      String msg = 'Failed to fetch student roster for Route #$rId';
      if (e.toString().contains('404')) {
        msg = 'Roster endpoint returned 404 (Not Found).\nPlease verify server route deployment for Route #$rId.';
      }
      state = state.copyWith(isLoading: false, error: msg);
    }
  }

  Future<void> lockLocation() async {
    final res = await _gpsService.captureLocation();
    if (res.isSuccess) {
      state = state.copyWith(latitude: res.latitude, longitude: res.longitude);
    } else {
      state = state.copyWith(error: res.errorMessage);
    }
  }

  void toggleEvacuated(int childId, bool evacuated) {
    final current = state.items[childId];
    if (current == null) return;

    final updated = current.copyWith(
      isEvacuated: evacuated,
      evacuationTime: evacuated ? DateTime.now() : null,
    );

    final newItems = Map<int, DrillChecklistItem>.from(state.items);
    newItems[childId] = updated;
    state = state.copyWith(items: newItems);
  }

  void updateRosterWasOnBus(List<int> presentChildIds) {
    final updatedItems = <int, DrillChecklistItem>{};
    state.items.forEach((key, value) {
      final isPresent = presentChildIds.contains(key);
      updatedItems[key] = value.copyWith(
        wasOnBus: isPresent,
        isEvacuated: isPresent ? value.isEvacuated : false,
        evacuationTime: isPresent ? value.evacuationTime : null,
      );
    });
    state = state.copyWith(items: updatedItems);
  }

  void addEvidence(DrillEvidence evidence) {
    state = state.copyWith(evidenceList: [...state.evidenceList, evidence]);
  }

  void removeEvidence(int index) {
    final newList = List<DrillEvidence>.from(state.evidenceList);
    if (index >= 0 && index < newList.length) {
      newList.removeAt(index);
      state = state.copyWith(evidenceList: newList);
    }
  }

  Future<bool> submitDrill({required String notes, required DateTime endTime}) async {
    if (!state.canSubmit) return false;

    final userJson = _storage.getString(StorageKeys.CURRENT_USER);
    String conductedByDriverId = '';
    String conductedByDriverName = '';
    if (userJson != null) {
      try {
        final decoded = jsonDecode(userJson) as Map<String, dynamic>;
        conductedByDriverId = decoded['id']?.toString() ?? '';
        conductedByDriverName = decoded['fullName'] as String? ?? '';
      } catch (_) {
        final idMatch = RegExp(r'"id"\s*:\s*(\d+)').firstMatch(userJson);
        if (idMatch != null) {
          conductedByDriverId = idMatch.group(1) ?? '';
        }
      }
    }

    final drillLog = DrillLog(
      routeId: state.routeId ?? state.roster?.routeId ?? 0,
      busId: state.busId ?? 0,
      busNumber: state.busNumber ?? state.roster?.busNumber ?? '',
      drillType: state.drillType ?? 'StandardEvacuation',
      conductedAt: state.startTime ?? DateTime.now(),
      startTime: state.startTime,
      endTime: endTime,
      driverNotes: notes,
      latitude: state.latitude!,
      longitude: state.longitude!,
      checklistItems: state.items.values.toList(),
      evidenceFiles: state.evidenceList,
      conductedByDriverId: conductedByDriverId,
      conductedByDriverName: conductedByDriverName,
    );

    final hasVideos = drillLog.evidenceFiles.any((e) => e.mediaType == EvidenceMediaType.video && e.localFilePath != null);

    state = state.copyWith(
      isLoading: true,
      error: null,
      videoUploadStatus: hasVideos ? 'Submitting drill log and video...' : 'Submitting drill log...',
      videoUploadProgress: 0.0,
    );

    try {
      final response = await _repository.submitDrillLog(
        drillLog,
        onProgress: (sent, total) {
          final progress = total > 0 ? sent / total : 0.0;
          state = state.copyWith(
            videoUploadProgress: progress,
            videoUploadStatus: hasVideos
                ? 'Uploading video and logs (${(progress * 100).toInt()}%)...'
                : 'Uploading evidence (${(progress * 100).toInt()}%)...',
          );
        },
      );
      state = state.copyWith(
        isLoading: false,
        lastResponse: response,
        evidenceList: _enrichAttachments(response) ?? response.attachments ?? state.evidenceList,
        videoUploadStatus: null,
        videoUploadProgress: null,
      );
      return response.code == DrillResponseCode.success;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        lastResponse: DrillCommandResponse(
          code: DrillResponseCode.failure,
          message: 'Error submitting drill log: ${e.toString()}',
        ),
        videoUploadStatus: null,
        videoUploadProgress: null,
      );
      return false;
    }
  }

  List<DrillEvidence>? _enrichAttachments(DrillCommandResponse response) {
    if (response.attachments == null) return null;
    if (response.drillLogId == null) return response.attachments;
    return response.attachments!.map((e) {
      if (e.drillLogId == null) {
        return DrillEvidence(
          id: e.id,
          mediaUrl: e.mediaUrl,
          localFilePath: e.localFilePath,
          mediaType: e.mediaType,
          createdAt: e.createdAt,
          uploadedAt: e.uploadedAt,
          drillLogId: response.drillLogId,
          approvalStatus: e.approvalStatus,
          fileName: e.fileName,
          mimeType: e.mimeType,
        );
      }
      return e;
    }).toList();
  }

}

final drillChecklistProvider =
    StateNotifierProvider<DrillChecklistNotifier, DrillChecklistState>((ref) {
  return DrillChecklistNotifier(
    ref.watch(drillRepositoryProvider),
    ref.watch(localStorageServiceProvider),
    ref.watch(gpsCaptureServiceProvider),
  );
});

class DrillListState {
  final bool isLoading;
  final List<DrillComplianceStatus> buses;
  final String? selectedBusNumber;
  final int? selectedBusId;
  final List<DrillLog> drills;
  final String? error;

  DrillListState({
    this.isLoading = false,
    this.buses = const [],
    this.selectedBusNumber,
    this.selectedBusId,
    this.drills = const [],
    this.error,
  });

  DrillListState copyWith({
    bool? isLoading,
    List<DrillComplianceStatus>? buses,
    String? selectedBusNumber,
    int? selectedBusId,
    List<DrillLog>? drills,
    String? error,
  }) {
    return DrillListState(
      isLoading: isLoading ?? this.isLoading,
      buses: buses ?? this.buses,
      selectedBusNumber: selectedBusNumber ?? this.selectedBusNumber,
      selectedBusId: selectedBusId ?? this.selectedBusId,
      drills: drills ?? this.drills,
      error: error,
    );
  }
}

class DrillListNotifier extends StateNotifier<DrillListState> {
  final DrillRepository _repository;
  final Ref _ref;
  final String? assignedBusNumber;
  final int? assignedBusId;

  DrillListNotifier(this._repository, this._ref, {this.assignedBusNumber, this.assignedBusId}) : super(DrillListState()) {
    loadBuses();
  }

  Future<void> loadBuses() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final buses = await _repository.getComplianceStatus();
      state = state.copyWith(isLoading: false, buses: buses);
      
      if (assignedBusNumber != null) {
        final matchedBus = buses.firstWhere(
          (b) => b.busNumber == assignedBusNumber,
          orElse: () => DrillComplianceStatus(
            busId: assignedBusId ?? 0,
            busNumber: assignedBusNumber!,
            status: ComplianceLevel.green,
            daysRemainingOrOverdue: 0,
          ),
        );
        final resolvedBusId = matchedBus.busId == 0 ? (assignedBusId ?? 0) : matchedBus.busId;
        selectBus(matchedBus.busNumber, resolvedBusId);
      } else if (buses.isNotEmpty) {
        selectBus(buses.first.busNumber, buses.first.busId);
      }
    } catch (e) {
      if (assignedBusNumber != null) {
        selectBus(assignedBusNumber!, assignedBusId ?? 0);
      } else {
        state = state.copyWith(isLoading: false, error: 'Failed to load buses');
      }
    }
  }

  Future<void> selectBus(String busNumber, int busId) async {
    int resolvedBusId = busId;
    if (resolvedBusId == 0) {
      try {
        final routesState = _ref.read(homeViewModelProvider);
        final matched = routesState.allRoutes.firstWhere(
          (r) => r.vehicleLicenseNumber == busNumber,
        );
        resolvedBusId = matched.vehicleId ?? 0;
      } catch (_) {}
    }

    state = state.copyWith(
      selectedBusNumber: busNumber,
      selectedBusId: resolvedBusId,
      isLoading: true,
      error: null,
      drills: [],
    );
    try {
      final drills = await _repository.getDrillsForBus(busNumber);
      state = state.copyWith(isLoading: false, drills: drills);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Failed to load drills');
    }
  }
}

final drillListProvider =
    StateNotifierProvider<DrillListNotifier, DrillListState>((ref) {
  final (assignedBusNumber, assignedBusId) = ref.watch(homeViewModelProvider.select((s) {
    final firstRoute = s.allRoutes.isNotEmpty ? s.allRoutes.first : null;
    return (firstRoute?.vehicleLicenseNumber, firstRoute?.vehicleId);
  }));

  return DrillListNotifier(
    ref.watch(drillRepositoryProvider),
    ref,
    assignedBusNumber: assignedBusNumber,
    assignedBusId: assignedBusId,
  );
});
