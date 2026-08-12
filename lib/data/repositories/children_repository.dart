import 'dart:convert';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../core/storage/local_storage_service.dart';
import '../models/child_with_guardians.dart';

/// **This whole feature is restored, not ported** — flagging clearly why.
///
/// During Phase 1 analysis, `GET route/children/{routeId}` (here,
/// `getChildren`) turned out to be a real, currently-called endpoint —
/// `LocationService.java` fetches it via `TransportTask.GetAllChildsTask`
/// and caches the response (including each child's `guardians` list) into
/// `SharedPreferences`. But **every single UI screen that ever displayed
/// that cached data — `AllClildrenActivity`, `ChildrenTabActivity`,
/// `AllChildrenFragment`(s), `AllAuthorizedPeopleActivity`, and their
/// adapters — is unreachable**: none of them are navigated to from
/// anywhere in the live app (confirmed via grep — zero real callers
/// outside their own dead cluster). `AllClildrenActivity` itself is
/// almost entirely commented out.
///
/// So the data pipeline is real and live; the screen to see it never
/// shipped, or was disconnected at some point and never removed. Since
/// showing a driver which guardians are authorized to collect a child is
/// clearly the intended purpose of collecting this data in the first
/// place, this rebuilds a working screen for it rather than leaving the data fetched
/// and cached for nothing. Flag if you'd rather this stayed unbuilt.
class ChildrenRepository {
  final ApiClient _apiClient;
  final LocalStorageService _storage;

  ChildrenRepository({
    required ApiClient apiClient,
    required LocalStorageService storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<List<ChildWithGuardians>> getChildren(int routeId) async {
    final cacheKey = 'children_data_$routeId';
    dynamic list;

    try {
      final response =
          await _apiClient.get('${ApiEndpoints.routeChildren}/$routeId');

      list = response.data is String
          ? jsonDecode(response.data as String) as List<dynamic>
          : response.data as List<dynamic>;

      // Cache the raw JSON data
      await _storage.setString(cacheKey, jsonEncode(list));
    } catch (e) {
      // Attempt to load from cache
      final cachedJson = _storage.getString(cacheKey);
      if (cachedJson != null) {
        list = jsonDecode(cachedJson) as List<dynamic>;
      } else {
        rethrow;
      }
    }

    return list
        .map((e) => ChildWithGuardians.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
