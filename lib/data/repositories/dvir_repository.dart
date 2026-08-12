import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_endpoints.dart';
import '../../../../core/storage/local_storage_service.dart';
import '../../../../core/utils/image_utils.dart';
import '../models/dvir_previous_day_response.dart';
import '../models/dvir_submit_request.dart';
import '../models/vehicle_state_response.dart';

class DvirRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;

  static const String _offlineQueueKey = 'dvir_offline_queue';

  DvirRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<void> submitDvir(DvirSubmitRequest request, {bool isOffline = false}) async {
    if (isOffline) {
      // 1. Resolve and copy temporary cached photos to the safe documents directory
      final resolvedItems = <DvirChecklistItemModel>[];
      final docDir = await getApplicationDocumentsDirectory(); // Safe persistent folder

      for (final item in request.checklistItems) {
        // If there's an offline photo and it's currently in the unsafe temporary directory
        if (!item.isPassed && item.photo != null && !item.photo!.startsWith('data:image')) {
          final file = File(item.photo!);
          if (await file.exists()) {
            final fileName = file.path.split('/').last.split('\\').last;
            final targetPath = '${docDir.path}/persistent_$fileName';

            // COPY the file to make it permanent (OS cannot delete it)
            await file.copy(targetPath);
            resolvedItems.add(item.copyWith(photo: targetPath));
            continue;
          }
        }
        resolvedItems.add(item);
      }

      // Re-create the request with the updated safe photo file paths
      final offlineRequest = DvirSubmitRequest(
        schoolBusId: request.schoolBusId,
        driverUserId: request.driverUserId,
        inspectionDate: request.inspectionDate,
        tripType: request.tripType,
        odometerReading: request.odometerReading,
        notes: request.notes,
        latitude: request.latitude,
        longitude: request.longitude,
        deviceId: request.deviceId,
        checklistItems: resolvedItems,
        signatureBase64: request.signatureBase64,
      );

      // Save to SharedPreferences queue
      final List<String> queue = _storage.getString(_offlineQueueKey)?.split('|') ?? [];
      queue.add(jsonEncode(offlineRequest.toJson()));
      await _storage.setString(_offlineQueueKey, queue.join('|'));
      return;
    }

    // Resolve offline photo paths to Base64 in request list (Online Upload)
    final resolvedItems = <DvirChecklistItemModel>[];
    for (final item in request.checklistItems) {
      if (!item.isPassed && item.photo != null && !item.photo!.startsWith('data:image')) {
        final base64String = await fileToBase64(item.photo);
        resolvedItems.add(item.copyWith(photo: base64String != null ? 'data:image/jpeg;base64,$base64String' : null));
      } else {
        resolvedItems.add(item);
      }
    }

    final resolvedRequest = DvirSubmitRequest(
      schoolBusId: request.schoolBusId,
      driverUserId: request.driverUserId,
      inspectionDate: request.inspectionDate,
      tripType: request.tripType,
      odometerReading: request.odometerReading,
      notes: request.notes,
      latitude: request.latitude,
      longitude: request.longitude,
      deviceId: request.deviceId,
      checklistItems: resolvedItems,
      signatureBase64: request.signatureBase64,
    );

    await _apiClient.post(
      ApiEndpoints.dvir,
      data: resolvedRequest.toJson(),
    );
  }

  Future<int?> getBusIdFromNumber(String busNumber) async {
    try {
      final response = await _apiClient.get('${ApiEndpoints.drillBus}/$busNumber');
      final data = response.data is String ? jsonDecode(response.data) : response.data;
      if (data is List && data.isNotEmpty) {
        final first = data.first as Map<String, dynamic>;
        final busIdVal = first['busId'] ?? first['BusId'];
        if (busIdVal is num) {
          return busIdVal.toInt();
        }
      }
    } catch (_) {}
    return null;
  }

  Future<DvirPreviousDayResponse> getPreviousDayDvir(int busId, {String? fallbackBusNumber}) async {
    int resolvedId = busId;
    if (resolvedId == 0 && fallbackBusNumber != null && fallbackBusNumber.isNotEmpty) {
      final resolved = await getBusIdFromNumber(fallbackBusNumber);
      if (resolved != null) {
        resolvedId = resolved;
      }
    }

    final response = await _apiClient.get(
      ApiEndpoints.dvirLatest,
      query: {'schoolBusId': resolvedId},
    );
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    return DvirPreviousDayResponse.fromJson(data as Map<String, dynamic>);
  }

  Future<VehicleStateResponse> getVehicleState(int vehicleId, {String? fallbackBusNumber}) async {
    int resolvedId = vehicleId;
    if (resolvedId == 0 && fallbackBusNumber != null && fallbackBusNumber.isNotEmpty) {
      final resolved = await getBusIdFromNumber(fallbackBusNumber);
      if (resolved != null) {
        resolvedId = resolved;
      }
    }

    final response = await _apiClient.get(
      ApiEndpoints.vehicleState,
      query: {
        'schoolBusId': resolvedId,
      },
    );
    final data = response.data is String ? jsonDecode(response.data) : response.data;
    return VehicleStateResponse.fromJson(data as Map<String, dynamic>);
  }

  Future<void> acknowledgePriorDvir(String dvirId, String signatureBase64) async {
    await _apiClient.post(
      '${ApiEndpoints.dvirSign}/$dvirId',
      data: {'signatureBase64': signatureBase64},
    );
  }

  /// Flushes the offline cached queue
  Future<void> flushOfflineQueue() async {
    final queueStr = _storage.getString(_offlineQueueKey);
    if (queueStr == null || queueStr.isEmpty) return;

    final List<String> queue = queueStr.split('|');
    final failed = <String>[];

    for (final itemStr in queue) {
      if (itemStr.isEmpty) continue;
      try {
        final json = jsonDecode(itemStr) as Map<String, dynamic>;
        // Map back to DvirSubmitRequest
        final request = _parseRequestFromJson(json);
        await submitDvir(request, isOffline: false);
      } catch (_) {
        failed.add(itemStr);
      }
    }

    if (failed.isEmpty) {
      await _storage.remove(_offlineQueueKey);
    } else {
      await _storage.setString(_offlineQueueKey, failed.join('|'));
    }
  }

  DvirSubmitRequest _parseRequestFromJson(Map<String, dynamic> json) {
    final items = (json['checklistItems'] as List)
        .map((e) => DvirChecklistItemModel(
      zoneCode: e['zoneCode'] as String,
      isPassed: e['isPassed'] as bool,
      notes: e['notes'] as String?,
      photo: e['photo'] as String?,
    ))
        .toList();

    return DvirSubmitRequest(
      schoolBusId: json['schoolBusId'] is String ? int.parse(json['schoolBusId'] as String) : (json['schoolBusId'] as num).toInt(),
      driverUserId: json['driverUserId'] is String ? int.parse(json['driverUserId'] as String) : (json['driverUserId'] as num).toInt(),
      inspectionDate: DateTime.parse(json['inspectionDate'] as String),
      tripType: json['tripType'] as String,
      odometerReading: (json['odometerReading'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
      checklistItems: items,
      signatureBase64: (json['signatureBase64'] ?? json['signature']?['signatureBase64']) as String? ?? '',
    );
  }
}