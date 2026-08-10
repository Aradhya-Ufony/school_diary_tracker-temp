import 'drill_checklist_item.dart';

/// Response payload from GET /drill/roster?routeId=
class DrillRosterResponse {
  final int routeId;
  final String routeName;
  final String busNumber;
  final DateTime asOfTime;
  final List<DrillChecklistItem> children;

  const DrillRosterResponse({
    required this.routeId,
    required this.routeName,
    required this.busNumber,
    required this.asOfTime,
    required this.children,
  });

  factory DrillRosterResponse.fromJson(Map<String, dynamic> json) {
    final routeIdVal = json['routeId'];
    final parsedRouteId = routeIdVal is int
        ? routeIdVal
        : int.tryParse(routeIdVal?.toString() ?? '') ?? 0;

    return DrillRosterResponse(
      routeId: parsedRouteId,
      routeName: json['routeName'] as String? ?? '',
      busNumber: json['busNumber'] as String? ?? '',
      asOfTime: json['asOfTime'] != null
          ? DateTime.tryParse(json['asOfTime'] as String) ?? DateTime.now()
          : DateTime.now(),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => DrillChecklistItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() => {
        'routeId': routeId,
        'routeName': routeName,
        'busNumber': busNumber,
        'asOfTime': asOfTime.toIso8601String(),
        'children': children.map((e) => e.toJson()).toList(),
      };
}
