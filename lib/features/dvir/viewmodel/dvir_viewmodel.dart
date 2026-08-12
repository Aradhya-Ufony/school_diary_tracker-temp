import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/dvir_submit_request.dart';
import '../../../data/repositories/dvir_repository.dart';

class DvirState {
  final bool isLoading;
  final String? error;
  final Map<String, DvirChecklistItemModel> checklist;
  final bool isSubmitSuccess;

  DvirState({
    this.isLoading = false,
    this.error,
    required this.checklist,
    this.isSubmitSuccess = false,
  });

  DvirState copyWith({
    bool? isLoading,
    String? error,
    Map<String, DvirChecklistItemModel>? checklist,
    bool? isSubmitSuccess,
  }) {
    return DvirState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      checklist: checklist ?? this.checklist,
      isSubmitSuccess: isSubmitSuccess ?? this.isSubmitSuccess,
    );
  }
}

class DvirViewModel extends StateNotifier<DvirState> {
  final DvirRepository _repository;

  static const List<String> _zones = [
    'SERVICE_BRAKES', 'PARKING_BRAKE', 'STEERING_MECHANISM', 'LIGHTING_REFLECTORS',
    'TIRES', 'HORN', 'WIPERS', 'MIRRORS', 'WHEELS_RIMS', 'EMERGENCY_EQUIPMENT',
    'COUPLING_DEVICES', 'BUS_SAFETY_SYSTEMS', 'PASSENGER_SEATING'
  ];

  DvirViewModel(this._repository)
      : super(DvirState(
    checklist: {
      for (var zone in _zones)
        zone: DvirChecklistItemModel(zoneCode: zone, isPassed: true),
    },
  ));

  void updateZoneStatus(String zoneCode, bool isPassed) {
    final item = state.checklist[zoneCode];
    if (item == null) return;

    final updatedChecklist = Map<String, DvirChecklistItemModel>.from(state.checklist);
    updatedChecklist[zoneCode] = item.copyWith(
      isPassed: isPassed,
      // Clear photo and notes if passed resets to true
      photo: isPassed ? null : item.photo,
      notes: isPassed ? null : item.notes,
    );

    state = state.copyWith(checklist: updatedChecklist, error: null);
  }

  void updateZoneNotes(String zoneCode, String notes) {
    final item = state.checklist[zoneCode];
    if (item == null) return;

    final updatedChecklist = Map<String, DvirChecklistItemModel>.from(state.checklist);
    updatedChecklist[zoneCode] = item.copyWith(notes: notes);
    state = state.copyWith(checklist: updatedChecklist);
  }

  void updateZonePhoto(String zoneCode, String localPath) {
    final item = state.checklist[zoneCode];
    if (item == null) return;

    final updatedChecklist = Map<String, DvirChecklistItemModel>.from(state.checklist);
    updatedChecklist[zoneCode] = item.copyWith(photo: localPath);
    state = state.copyWith(checklist: updatedChecklist, error: null);
  }

  Future<void> submitReport({
    required int busId,
    required int userId,
    required String tripType,
    required double odometer,
    required String signatureBase64,
    required double latitude,
    required double longitude,
    required String deviceId,
    bool isOffline = false,
  }) async {
    // Validation: Any failed item must have a non-null, non-empty notes field
    for (final item in state.checklist.values) {
      if (!item.isPassed) {
        if (item.notes == null || item.notes!.trim().isEmpty) {
          state = state.copyWith(
            error: "Notes are required for safety defect reported on ${item.zoneCode}.",
          );
          return;
        }
      }
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final request = DvirSubmitRequest(
        schoolBusId: busId,
        driverUserId: userId,
        inspectionDate: DateTime.now(),
        tripType: tripType,
        odometerReading: odometer,
        notes: "Daily inspection",
        latitude: latitude,
        longitude: longitude,
        deviceId: deviceId,
        checklistItems: state.checklist.values.toList(),
        signatureBase64: signatureBase64,
      );

      await _repository.submitDvir(request, isOffline: isOffline);
      state = state.copyWith(isLoading: false, isSubmitSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}