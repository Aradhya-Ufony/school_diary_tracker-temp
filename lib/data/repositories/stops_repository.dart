import 'dart:convert';
import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../models/child_pick_drop_request.dart';
import '../models/route_stop.dart';

/// Ported from `TransportTask.GetAllStops` / `.childPickDropTask` /
/// `.UndochildPickDropTask`.
///
/// **Scope note, flagged rather than silently decided**: the original
/// fetches stops for the driver's *entire* route list at once
/// (`GET trip/routes/multiple/stops?routeIds=1,2,3`), building a
/// `routeId -> childIds` map across all of them — because a driver's
/// account could have several routes queued. This migration's Step 4/6
/// only tracks **one** active route at a time (`StorageKeys.routeId`), so
/// `getStops` below is called with a single-element route ID list by
/// default. The method itself still accepts a `List<int>` (not a single
/// `int`) so it's a one-line change if you confirm drivers do need
/// multi-route batching — ask before assuming either way.
class StopsRepository {
  final ApiClient _apiClient;

  StopsRepository({required ApiClient apiClient}) : _apiClient = apiClient;

  /// Returns stops keyed by route ID, matching the original's
  /// `RouteMap: HashMap<Long, HashSet<Long>>` (route -> the set of child
  /// IDs belonging to it) plus the flattened stop list itself. Both are
  /// needed downstream: the flattened list for display, the map to figure
  /// out which route a tapped child belongs to when submitting a
  /// pick/drop (a child's stop doesn't carry its own route ID in the
  /// response shape — this cross-reference is exactly what the original
  /// built it for).
  Future<StopsResult> getStops(List<int> routeIds) async {
    final routeIdsParam = routeIds.join(',');
    final response = await _apiClient.get(
      ApiEndpoints.tripRoutesStops,
      query: {'routeIds': routeIdsParam},
    );

    if (response.statusCode == 204) {
      // Matches the original's HTTP_NO_CONTENT -> "route not active" path.
      throw const RouteNotActiveException();
    }

    final list = response.data is String
        ? jsonDecode(response.data as String) as List<dynamic>
        : response.data as List<dynamic>;

    final stops = <RouteStop>[];
    final routeMap = <int, Set<int>>{};

    for (final entry in list) {
      final map = entry as Map<String, dynamic>;
      final routeId = (map['routeDetails']?['routeId'] as num).toInt();
      final routeStops = (map['routeStops'] as List<dynamic>)
          .map((e) => RouteStop.fromJson(e as Map<String, dynamic>))
          .toList();

      final childIds = <int>{};
      for (final stop in routeStops) {
        for (final child in stop.children) {
          childIds.add(child.id);
        }
      }
      routeMap[routeId] = childIds;
      stops.addAll(routeStops);
    }

    return StopsResult(stops: stops, routeMap: routeMap);
  }

  /// `isDrop` picks the endpoint, matching the original's
  /// `childPickDropTask` exactly (a child's own `type == "pick"` decides
  /// whether this batch is actually a pickup, even though the caller
  /// passes `isDrop` — see `StopsViewModel` for how that flag is derived).
  Future<void> pickOrDrop(
    List<ChildPickDropRequest> payload, {
    required bool isDrop,
  }) async {
    final endpoint = isDrop ? ApiEndpoints.droppedTo : ApiEndpoints.pickedFrom;
    await _apiClient.post(
      endpoint,
      data: payload.map((p) => p.toJson()).toList(),
    );
  }

  /// Ported from `UndochildPickDropTask` — notably, the original does
  /// **not** branch on `isDrop` for this call the way `pickOrDrop` does;
  /// cancellation always hits the same endpoint regardless of direction
  /// (the server infers what's being undone from existing state). Matched
  /// exactly — no `isDrop` parameter here at all, on purpose.
  Future<void> cancelPickDrop(List<ChildPickDropRequest> payload) async {
    await _apiClient.post(
      ApiEndpoints.cancelPickDrop,
      data: payload.map((p) => p.toJson()).toList(),
    );
  }
}

class StopsResult {
  final List<RouteStop> stops;
  final Map<int, Set<int>> routeMap;

  const StopsResult({required this.stops, required this.routeMap});
}

class RouteNotActiveException implements Exception {
  const RouteNotActiveException();
}
