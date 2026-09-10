/// Ported from `UserLocation.java` — a plain lat/lng pair used across
/// several request/response payloads (trip start, trip update, route
/// start/end points).
class UserLocation {
  final double latitude;
  final double longitude;

  const UserLocation({required this.latitude, required this.longitude});

  factory UserLocation.fromJson(Map<String, dynamic> json) {
    final lat = json['latitude'] ??
        json['lat'] ??
        json['depotLat'] ??
        json['depot_lat'] ??
        json['Latitude'];
    final lng = json['longitude'] ??
        json['long'] ??
        json['lng'] ??
        json['depotlang'] ??
        json['depot_lng'] ??
        json['depotLong'] ??
        json['Longitude'];

    return UserLocation(
      latitude: (lat as num?)?.toDouble() ?? 0.0,
      longitude: (lng as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
      };
}
