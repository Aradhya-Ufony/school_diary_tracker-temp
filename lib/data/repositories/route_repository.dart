import 'dart:convert';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/local_storage_service.dart';
import '../../core/utils/app_constants.dart';
import '../models/route_response.dart';

/// Ported from `TransportTask.GetRoutesTask` (networking) combined with
/// `AllRouteFragment`'s `doManupulationOnData()` (sort) and `setList()`
/// (dedupe-by-name) — both fragment methods were duplicated verbatim
/// between `HomeTabActivity` and `AllRouteFragment` in the original;
/// consolidating them into one repository method is a structural
/// improvement, not a behavior change.
class RouteRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;

  RouteRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  /// Fetches, sorts, and de-duplicates routes, matching the original's
  /// exact (if unusual) rules:
  ///
  /// 1. **Sort key**: the route name is split on `|`; if there are more
  ///    than 2 segments, the 3rd segment is treated as a time string
  ///    (e.g. "2:30 PM"); otherwise the whole name is used. Digits are
  ///    extracted and treated as a sortable number, with `+1200` added
  ///    for PM times (except 12 PM) and `-1200` for 12 AM, so afternoon
  ///    routes sort after morning ones on a purely numeric key. Anything
  ///    that fails to parse defaults to `2600` (sorts last). This is a
  ///    fragile, string-parsing-based heuristic — but it's the real
  ///    sort the backend team has never been asked to do server-side, so
  ///    it's preserved exactly rather than "cleaned up" into something
  ///    that might sort routes in an unfamiliar order for drivers.
  /// 2. **De-dupe**: routes are grouped by lowercased name, keeping only
  ///    the first-seen route ID per name (`AllRouteFragment.setList()`'s
  ///    `HashMap`-based dedupe). Ported as-is; flagging that this means
  ///    if two genuinely different routes happen to share a display name,
  ///    only one will be shown — a pre-existing behavior, not introduced
  ///    here.
  Future<List<RouteResponse>> getRoutes() async {
    final response = await _apiClient.get(ApiEndpoints.route);

    if (response.statusCode == 204) {
      final cached = getCachedRoutes();
      if (cached.isNotEmpty) {
        return cached;
      }
      return [];
    }

    final list = response.data is String
        ? jsonDecode(response.data as String) as List<dynamic>
        : response.data as List<dynamic>;

    final routes = list
        .map((e) => RouteResponse.fromJson(e as Map<String, dynamic>))
        .toList();

    _assignSequenceNumbers(routes);
    routes.sort((a, b) => a.sequenceNumber.compareTo(b.sequenceNumber));

    final deduped = _dedupeByName(routes);

    await _storage.setString(
      StorageKeys.ALL_ROUTES,
      jsonEncode(deduped.map((r) => r.toJson()).toList()),
    );

    return deduped;
  }

  /// Returns the last-fetched routes from cache without hitting the
  /// network — equivalent to `PreferenceManager.getAllRoutes(context)`
  /// being read directly in several places in the original (e.g.
  /// `AllRouteFragment.onCreateView` checking cache before its own
  /// fetch).
  List<RouteResponse> getCachedRoutes() {
    final json = _storage.getString(StorageKeys.ALL_ROUTES);
    if (json == null) return [];
    final list = jsonDecode(json) as List<dynamic>;
    return list
        .map((e) => RouteResponse.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  void _assignSequenceNumbers(List<RouteResponse> routes) {
    for (final route in routes) {
      final parts = route.name.split('|');
      final item = parts.length > 2 ? parts[2] : route.name;

      final digitsOnly = item.replaceAll(RegExp(r'\D+'), '');

      if (item.contains('PM') && !item.contains('12')) {
        route.sequenceNumber = (int.tryParse(digitsOnly) ?? 0) + 1200;
      } else if (item.contains('AM') && item.contains('12')) {
        route.sequenceNumber = (int.tryParse(digitsOnly) ?? 0) - 1200;
      } else {
        if (digitsOnly.isNotEmpty) {
          route.sequenceNumber = int.tryParse(digitsOnly) ?? 2600;
        }
        // else: leave at its current value, matching the original,
        // which simply skips assignment (leaving Java's default `int`
        // 0) when there are no digits to parse at all — not the `2600`
        // fallback, which only applies to a genuine NumberFormatException.
      }
    }
  }

  List<RouteResponse> _dedupeByName(List<RouteResponse> routes) {
    final seen = <String>{};
    final result = <RouteResponse>[];
    for (final route in routes) {
      final key = route.name.toLowerCase();
      if (seen.add(key)) {
        result.add(route);
      }
    }
    return result;
  }
}
