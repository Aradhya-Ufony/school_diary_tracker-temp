import 'user_location.dart';

/// Ported from `TripRequest.java` — the `POST trip/start` payload.
///
/// `vehicleLicenseNumber` is the field that surfaced a real production
/// bug during this migration step: the original always read it from
/// `PreferenceManager.getVehicleLicenseNumber(context)`, but
/// `setVehicleLicenseNumber()` is never called anywhere in the Android
/// codebase — so that value is always null in the live app today. This
/// migration fixes it by populating it directly from the selected
/// [RouteResponse.vehicleLicenseNumber] at trip-start time instead of
/// round-tripping through storage that was never actually written. See
/// `TripRepository.startTrip()`.
class TripRequest {
  final UserLocation location;
  final int routeId;
  final String? vehicleLicenseNumber;

  const TripRequest({
    required this.location,
    required this.routeId,
    required this.vehicleLicenseNumber,
  });

  Map<String, dynamic> toJson() => {
        'location': location.toJson(),
        'routeId': routeId,
        'vehicleLicenseNumber': vehicleLicenseNumber,
      };
}

/// Ported from `TripUpdateRequest.java` — shared shape for both
/// `POST trip/location` (periodic GPS updates) and `POST trip/stop`
/// (final location at trip end), matching the original's reuse of this
/// same class for both calls.
class TripUpdateRequest {
  final int id;
  final UserLocation location;

  const TripUpdateRequest({required this.id, required this.location});

  Map<String, dynamic> toJson() => {
        'id': id,
        'location': location.toJson(),
      };
}
