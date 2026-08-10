/// Ported from `Children.java` (the Kotlin-era stops model, distinct from
/// the dead `ChildrenModel.java` used by the unreachable `ChildrenTabActivity`
/// — see `route_stop.dart`'s doc comment for why that distinction matters).
/// Renamed `StopChild` (not `Children`) to avoid confusion with Flutter's
/// own `Widget.children` convention — a naming clash the original didn't
/// have to worry about, not a functional change.
class StopChild {
  final int id;
  final String firstName;
  final String lastName;
  final bool pickedOrDropped;
  bool checked;
  final String type; // "pick" or "drop"
  final String? photoUrl;

  StopChild({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.pickedOrDropped,
    this.checked = false,
    required this.type,
    this.photoUrl,
  });

  factory StopChild.fromJson(Map<String, dynamic> json) {
    return StopChild(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      pickedOrDropped: json['isPickedOrDropped'] as bool? ?? false,
      type: json['type'] as String? ?? '',
      photoUrl: json['photoUrl'] as String?,
    );
  }

  String get fullName => '$firstName $lastName'.trim();
}

/// Ported from `RouteStop.kt`.
class RouteStop {
  final int? id;
  final String? address;
  final double? latitude;
  final double? longitude;
  final List<StopChild> children;
  bool allSelected;
  int selectedCount;
  bool expanded;

  RouteStop({
    this.id,
    this.address,
    this.latitude,
    this.longitude,
    required this.children,
    this.allSelected = false,
    this.selectedCount = 0,
    this.expanded = false,
  });

  factory RouteStop.fromJson(Map<String, dynamic> json) {
    return RouteStop(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      children: (json['children'] as List<dynamic>? ?? const [])
          .map((e) => StopChild.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Matches `RouteStop.totalPickedDropped`.
  int get totalPickedDropped =>
      children.where((c) => c.pickedOrDropped).length;
}
