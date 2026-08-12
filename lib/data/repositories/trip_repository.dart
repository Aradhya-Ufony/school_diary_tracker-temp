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

    // Original: `Long.parseLong(response.trim())` — the backend returns
    // the new trip ID as a raw numeric string body, not JSON. Matched
    // exactly rather than assuming a JSON wrapper that isn't there.
    final tripId = int.parse(response.data.toString().trim());
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
    final request = TripUpdateRequest(id: tripId, location: location);
    await _apiClient.post(
      ApiEndpoints.tripLocation,
      data: request.toJson(),
      options: Options(sendTimeout: const Duration(seconds: 8)),
    );
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
}
