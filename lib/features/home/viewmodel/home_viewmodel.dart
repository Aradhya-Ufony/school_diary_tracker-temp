import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../data/repositories/route_repository.dart';

/// Ported from `HomeTabActivity.navigate()` / `AllRouteFragment.onResume()`
/// (fetch + cache routes) combined with `HomeTabActivity.startRoute()`
/// (persist the selected route ID). The original also directly starts the
/// Android `Service` from here — in this Flutter version, starting the
/// [LocationTrackingService] and navigating to the trip screen is left to
/// the View (`HomeScreen`), which already has access to `BuildContext`/
/// `go_router` and the confirmation-dialog result; this ViewModel's job
/// ends at "route selected and persisted," keeping it independently
/// testable without a navigation or platform-service dependency.
class HomeState {
  final bool isLoading;
  final List<RouteResponse> allRoutes;
  final String searchQuery;
  final String? error;

  const HomeState({
    this.isLoading = false,
    this.allRoutes = const [],
    this.searchQuery = '',
    this.error,
  });

  /// Matches the original's `EditText` text-watcher filtering the list by
  /// substring match against the route name. Made case-insensitive here
  /// (the original's default filter was effectively case-sensitive) since
  /// a case-sensitive route search is very unlikely to be an intentional
  /// product decision — flagging this small improvement rather than
  /// silently changing it.
  List<RouteResponse> get filteredRoutes {
    if (searchQuery.isEmpty) return allRoutes;
    final q = searchQuery.toLowerCase();
    return allRoutes.where((r) => r.name.toLowerCase().contains(q)).toList();
  }

  HomeState copyWith({
    bool? isLoading,
    List<RouteResponse>? allRoutes,
    String? searchQuery,
    String? error,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      allRoutes: allRoutes ?? this.allRoutes,
      searchQuery: searchQuery ?? this.searchQuery,
      error: error,
    );
  }
}

class HomeViewModel extends StateNotifier<HomeState> {
  final RouteRepository _routeRepository;
  final LocalStorageService _storage;

  HomeViewModel(this._routeRepository, this._storage) : super(const HomeState()) {
    _loadRoutes();
  }

  Future<void> _loadRoutes() async {
    // Show cached routes immediately (matches the original checking
    // `PreferenceManager.getAllRoutes(context) != null` before its own
    // network fetch), then refresh from network.
    final cached = _routeRepository.getCachedRoutes();
    if (cached.isNotEmpty) {
      state = state.copyWith(allRoutes: cached);
    }

    state = state.copyWith(isLoading: true, error: null);
    try {
      final routes = await _routeRepository.getRoutes();
      state = state.copyWith(isLoading: false, allRoutes: routes);
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        error: 'Unable to load routes. Please try again.',
      );
    }
  }

  Future<void> refresh() => _loadRoutes();

  void search(String query) {
    state = state.copyWith(searchQuery: query);
  }

  /// Persists the selected route ID — matches
  /// `HomeTabActivity.startRoute()`'s `PreferenceManager.setRouteId(...)`.
  /// The original also reset three children-list cache keys here
  /// (`setChildrenDropList`/`setChildrenList`/`setChildrenPickList` to
  /// `"[]"`) — that's Step 7/8's concern (the stops/children feature
  /// doesn't exist yet), not duplicated here as dead placeholder calls.
  Future<void> selectRoute(RouteResponse route) async {
    await _storage.setString(StorageKeys.ROUTE_ID, route.id.toString());
  }
}

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  return HomeViewModel(
    ref.watch(routeRepositoryProvider),
    ref.watch(localStorageServiceProvider),
  );
});
