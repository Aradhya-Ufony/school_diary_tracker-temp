import 'dart:convert';
import 'package:dio/dio.dart';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/local_storage_service.dart';
import '../../core/utils/app_constants.dart';
import '../models/route_response.dart';
import '../models/trip_request.dart';
import '../models/user_location.dart';

/// Ported from `TransportTask.StartTripTask` / `.StopTripTask` /
/// `.UpdateTripLocationTask`.
class TripRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;
  final List<UserLocation> _pendingLocationsQueue = [];

  TripRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  /// Ported from `LocationService.sendLocation()`'s `IS_FIRST` branch —
  /// in the original, this call is fired by the location service itself
  /// on its very first GPS fix after starting, not by a UI button. That
  /// architectural choice is preserved: see `LocationTrackingService`
  /// (Step 5), which calls this the same way.
  ///
  /// **Bug fix, not a straight port**: the original always sent
  /// `PreferenceManager.getVehicleLicenseNumber(context)`, which is
  /// always null in production (see `TripRequest`'s doc comment for why).
  /// This takes the license number directly from the [RouteResponse] the
  /// driver actually selected, which is the value that was clearly
  /// intended to be sent.
  Future<int> startTrip({
    required RouteResponse route,
    required UserLocation location,
  }) async {
    final request = TripRequest(
      location: location,
      routeId: route.id,
      vehicleLicenseNumber: route.vehicleLicenseNumber,
    );

    final response = await _apiClient.post(
      ApiEndpoints.tripStart,
      data: request.toJson(),
    );

    int tripId;
    if (response.data is Map) {
      final map = response.data as Map;
      tripId = (map['id'] ?? map['tripId'] ?? map['trip_id'] ?? route.id).toInt();
    } else if (response.data is num) {
      tripId = (response.data as num).toInt();
    } else {
      final raw = response.data.toString().trim();
      tripId = int.tryParse(raw) ?? DateTime.now().millisecondsSinceEpoch;
    }

    await _storage.setString(StorageKeys.TRIP_ID, tripId.toString());
    return tripId;
  }

  Future<void> stopTrip({
    required int tripId,
    required UserLocation location,
  }) async {
    final request = TripUpdateRequest(id: tripId, location: location);
    await _apiClient.post(ApiEndpoints.tripStop, data: request.toJson());
    await _storage.remove(StorageKeys.TRIP_ID);
    _pendingLocationsQueue.clear();
  }

  /// Ported from `UpdateTripLocationTask`, which used
  /// `sendHttpPostWithTimeOut` — a shorter timeout than other calls,
  /// since this fires every ~3 seconds and a slow/hung request shouldn't
  /// pile up. Matched here via a shorter per-call Dio timeout rather than
  /// the client-wide default.
  Future<void> updateLocation({
    required int tripId,
    required UserLocation location,
  }) async {
    // Attempt to flush previously queued offline breadcrumbs first
    await _flushQueue(tripId);

    final request = TripUpdateRequest(id: tripId, location: location);
    try {
      await _apiClient.post(
        ApiEndpoints.tripLocation,
        data: request.toJson(),
        options: Options(sendTimeout: const Duration(seconds: 8)),
      );
    } catch (_) {
      // Queue location for retry when network recovers
      if (_pendingLocationsQueue.length < 100) {
        _pendingLocationsQueue.add(location);
      }
    }
  }

  Future<void> _flushQueue(int tripId) async {
    if (_pendingLocationsQueue.isEmpty) return;
    final toFlush = List<UserLocation>.from(_pendingLocationsQueue);
    _pendingLocationsQueue.clear();

    for (final loc in toFlush) {
      try {
        final request = TripUpdateRequest(id: tripId, location: loc);
        await _apiClient.post(
          ApiEndpoints.tripLocation,
          data: request.toJson(),
          options: Options(sendTimeout: const Duration(seconds: 5)),
        );
      } catch (_) {
        // Re-queue remaining locations if flushing fails
        _pendingLocationsQueue.insertAll(0, toFlush.sublist(toFlush.indexOf(loc)));
        break;
      }
    }
  }

  Future<UserLocation?> getTripLocation(int tripId) async {
    try {
      final response = await _apiClient.get(
        ApiEndpoints.tripLocation,
        query: {'tripId': tripId},
      );
      if (response.data == null) return null;
      final data = response.data is String
          ? jsonDecode(response.data as String) as Map<String, dynamic>
          : response.data as Map<String, dynamic>;
      return UserLocation.fromJson(data);
    } catch (_) {
      return null;
    }
  }

  int? get activeTripId {
    final stored = _storage.getString(StorageKeys.TRIP_ID);
    return stored != null ? int.tryParse(stored) : null;
  }

  Future<bool> validateActiveTrip() async {
    final tripId = activeTripId;
    if (tripId == null) return false;
    try {
      final loc = await getTripLocation(tripId);
      if (loc == null) {
        // Trip was stopped on web portal or server
        await _storage.remove(StorageKeys.TRIP_ID);
        await _storage.remove(StorageKeys.ROUTE_ID);
        return false;
      }
      return true;
    } catch (e) {
      if (e is DioException && (e.response?.statusCode == 404 || e.response?.statusCode == 400)) {
        await _storage.remove(StorageKeys.TRIP_ID);
        await _storage.remove(StorageKeys.ROUTE_ID);
        return false;
      }
      return true;
    }
  }
}
