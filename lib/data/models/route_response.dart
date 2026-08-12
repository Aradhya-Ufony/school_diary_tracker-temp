import 'user_location.dart';

/// Ported from `RouteResponse.java` — the `GET route` response shape.
class RouteResponse {
  final int id;
  final String name;
  final String? vehicleLicenseNumber;
  final int? vehicleId; // Added to identify vehicle by integer ID
  final UserLocation? startLocation;
  final UserLocation? endLocation;
  int sequenceNumber;

  RouteResponse({
    required this.id,
    required this.name,
    this.vehicleLicenseNumber,
    this.vehicleId,
    this.startLocation,
    this.endLocation,
    this.sequenceNumber = 0,
  });

  static int? _parseVehicleId(Map<String, dynamic> json) {
    // Diagnostic print to inspect all keys and value types returned from the API
    print("PARSING ROUTE JSON KEYS: ${json.keys.toList()} | VALUES: ${json.values.map((v) => v?.toString()).toList()}");

    // 1. Direct key lookups (including snake_case variations)
    final direct = json['busId'] ?? 
                   json['schoolBusId'] ?? 
                   json['vehicleId'] ?? 
                   json['BusId'] ?? 
                   json['bus_id'] ?? 
                   json['school_bus_id'];
    if (direct != null) return (direct as num).toInt();
    
    // 2. Nested object key lookups
    final nested = json['bus']?['id'] ?? 
                   json['schoolBus']?['id'] ?? 
                   json['vehicle']?['id'] ?? 
                   json['school_bus']?['id'];
    if (nested != null) return (nested as num).toInt();

    // 3. Heuristic lookup: Find any numeric value > 100000 in key that is not 'id'
    for (final entry in json.entries) {
      if (entry.key == 'id') continue;
      
      if (entry.value is num) {
        final val = entry.value.toInt();
        if (val > 100000) {
          print("FOUND HEURISTIC VEHICLE ID under key '${entry.key}': $val");
          return val;
        }
      }
      
      if (entry.value is Map<String, dynamic>) {
        final nestedMap = entry.value as Map<String, dynamic>;
        final nestedId = nestedMap['id'] ?? nestedMap['busId'] ?? nestedMap['vehicleId'] ?? nestedMap['schoolBusId'];
        if (nestedId is num) {
          final val = nestedId.toInt();
          print("FOUND NESTED HEURISTIC VEHICLE ID under '${entry.key}': $val");
          return val;
        }
      }
    }
    
    return null;
  }

  factory RouteResponse.fromJson(Map<String, dynamic> json) {
    return RouteResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      vehicleLicenseNumber: json['vehicleLicenseNumber'] as String?,
      vehicleId: _parseVehicleId(json),
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
        'vehicleId': vehicleId,
        'busId': vehicleId,
        'startLocation': startLocation?.toJson(),
        'endLocation': endLocation?.toJson(),
      };
}
