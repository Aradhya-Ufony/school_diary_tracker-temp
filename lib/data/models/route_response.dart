import 'user_location.dart';

/// Ported from `RouteResponse.java` — the `GET route` response shape.
/// `sequenceNumber` is not sent by the server (`isEnable` isn't either,
/// it's unused in practice — grepped, only ever set/read via a commented-
/// out checkbox handler in the original `RoutesAdapter`, never surfaced to
/// the backend or a real UI control now). `sequenceNumber` is instead
/// computed client-side by [RouteRepository] — see that file for why the
/// original's name-parsing heuristic is preserved rather than replaced.
class RouteResponse {
  final int id;
  final String name;
  final String? vehicleLicenseNumber;
  final UserLocation? startLocation;
  final UserLocation? endLocation;
  int sequenceNumber;

  RouteResponse({
    required this.id,
    required this.name,
    this.vehicleLicenseNumber,
    this.startLocation,
    this.endLocation,
    this.sequenceNumber = 0,
  });

  factory RouteResponse.fromJson(Map<String, dynamic> json) {
    return RouteResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      vehicleLicenseNumber: json['vehicleLicenseNumber'] as String?,
      startLocation: json['startLocation'] != null
          ? UserLocation.fromJson(json['startLocation'] as Map<String, dynamic>)
          : null,
      endLocation: json['endLocation'] != null
          ? UserLocation.fromJson(json['endLocation'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vehicleLicenseNumber': vehicleLicenseNumber,
        'startLocation': startLocation?.toJson(),
        'endLocation': endLocation?.toJson(),
      };
}
