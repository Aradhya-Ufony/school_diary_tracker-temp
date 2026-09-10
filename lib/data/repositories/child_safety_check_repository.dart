import 'dart:convert';
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/local_storage_service.dart';
import '../../core/utils/app_constants.dart';
import '../models/child_safety_check_model.dart';

class ChildSafetyCheckRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;

  ChildSafetyCheckRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  /// Fetches the currently pending child safety check for the active driver/trip.
  /// Calls `GET /childsafetycheck/active`.
  Future<ActiveChildSafetyCheckResponse> getActiveCheck() async {
    try {
      final response = await _apiClient.get(ApiEndpoints.childSafetyCheckActive);
      if (response.statusCode == 204 || response.data == null) {
        return ActiveChildSafetyCheckResponse(hasActiveCheck: false);
      }

      final Map<String, dynamic> data = response.data is String
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : response.data as Map<String, dynamic>;

      final activeCheck = ActiveChildSafetyCheckResponse.fromJson(data);
      if (activeCheck.hasActiveCheck) {
        // Cache the active check session locally for offline resilience
        await _storage.setString(
          StorageKeys.PENDING_SAFETY_CHECK,
          jsonEncode(activeCheck.toJson()),
        );
      } else {
        await _storage.remove(StorageKeys.PENDING_SAFETY_CHECK);
      }
      return activeCheck;
    } catch (e) {
      // Offline fallback: check if we have a locally stored active check
      final cachedStr = _storage.getString(StorageKeys.PENDING_SAFETY_CHECK);
      if (cachedStr != null && cachedStr.isNotEmpty) {
        try {
          final cachedData = jsonDecode(cachedStr) as Map<String, dynamic>;
          final cachedCheck = ActiveChildSafetyCheckResponse.fromJson(cachedData);
          if (cachedCheck.deadlineTimestamp != null) {
            final diff = cachedCheck.deadlineTimestamp!.difference(DateTime.now()).inSeconds;
            if (diff > 0) {
              return ActiveChildSafetyCheckResponse(
                hasActiveCheck: true,
                checkLogId: cachedCheck.checkLogId,
                tripId: cachedCheck.tripId,
                routeId: cachedCheck.routeId,
                routeName: cachedCheck.routeName,
                schoolBusId: cachedCheck.schoolBusId,
                busNumber: cachedCheck.busNumber,
                triggerTimestamp: cachedCheck.triggerTimestamp,
                deadlineTimestamp: cachedCheck.deadlineTimestamp,
                remainingSeconds: diff,
                status: cachedCheck.status,
              );
            }
          }
        } catch (_) {}
      }
      return ActiveChildSafetyCheckResponse(hasActiveCheck: false);
    }
  }

  /// Submits the completed safety inspection.
  /// Calls `POST /childsafetycheck/complete`.
  Future<CompleteChildSafetyCheckResponse> completeCheck(
      CompleteChildSafetyCheckRequest request) async {
    try {
      final response = await _apiClient.post(
        ApiEndpoints.childSafetyCheckComplete,
        data: request.toJson(),
      );

      final Map<String, dynamic> data = response.data is String
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : (response.data is Map<String, dynamic>
              ? response.data as Map<String, dynamic>
              : <String, dynamic>{'responseCode': 0, 'message': 'Completed'});

      // Clear local pending check cache on success
      await _storage.remove(StorageKeys.PENDING_SAFETY_CHECK);

      return CompleteChildSafetyCheckResponse.fromJson(data);
    } catch (e) {
      // If network fails, queue payload locally and return successful offline recording
      await _savePendingOfflineSubmission(request);
      await _storage.remove(StorageKeys.PENDING_SAFETY_CHECK);
      return CompleteChildSafetyCheckResponse(
        responseCode: 0,
        checkLogId: request.checkLogId,
        message: 'Saved locally. Will sync when online.',
      );
    }
  }

  Future<void> _savePendingOfflineSubmission(CompleteChildSafetyCheckRequest request) async {
    try {
      const key = 'queued_safety_checks';
      final existingStr = _storage.getString(key);
      List<dynamic> list = [];
      if (existingStr != null && existingStr.isNotEmpty) {
        list = jsonDecode(existingStr) as List<dynamic>;
      }
      list.add(request.toJson());
      await _storage.setString(key, jsonEncode(list));
    } catch (_) {}
  }

  /// Syncs any pending offline safety checks when connectivity is restored.
  Future<void> syncPendingOfflineChecks() async {
    try {
      const key = 'queued_safety_checks';
      final existingStr = _storage.getString(key);
      if (existingStr == null || existingStr.isEmpty) return;

      final list = jsonDecode(existingStr) as List<dynamic>;
      final remaining = <dynamic>[];

      for (final item in list) {
        try {
          final req = CompleteChildSafetyCheckRequest.fromJson(item as Map<String, dynamic>);
          await _apiClient.post(
            ApiEndpoints.childSafetyCheckComplete,
            data: req.toJson(),
          );
        } catch (_) {
          remaining.add(item);
        }
      }

      if (remaining.isEmpty) {
        await _storage.remove(key);
      } else {
        await _storage.setString(key, jsonEncode(remaining));
      }
    } catch (_) {}
  }
}
