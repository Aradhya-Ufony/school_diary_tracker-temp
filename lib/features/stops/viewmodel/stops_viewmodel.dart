import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/utils/validators.dart';
import '../../../data/models/child_pick_drop_request.dart';
import '../../../data/models/route_stop.dart';
import '../../../data/repositories/stops_repository.dart';

/// Ported from `StopsListActivity` (`isUndoMode: false`) and
/// `UndoStopActivity` (`isUndoMode: true`) — the two Activities were
/// near-identical UIs differing only in which endpoint gets hit and
/// button labels, so this consolidates them into one ViewModel/screen
/// pair rather than duplicating two Flutter screens for one real
/// difference.
///
/// **Naming note**: the original's `clickEvent(stop, children, position,
/// isDrop)` used a boolean parameter named `isDrop` to mean "submit now"
/// and a *separately named, lowercase* local variable `isdrop` for the
/// actual pick-vs-drop direction — two variables differing only by
/// letter case, which is exactly as confusing to read as it sounds. This
/// version uses `submitSelection`/`isDropDirection` as distinct names for
/// the same two concepts, matching behavior exactly without the naming
/// collision.
class StopsState {
  final bool isLoading;
  final List<RouteStop> stops;
  final Map<int, Set<int>> routeMap; // routeId -> child IDs in that route
  final String? error;

  const StopsState({
    this.isLoading = false,
    this.stops = const [],
    this.routeMap = const {},
    this.error,
  });

  StopsState copyWith({
    bool? isLoading,
    List<RouteStop>? stops,
    Map<int, Set<int>>? routeMap,
    String? error,
  }) {
    return StopsState(
      isLoading: isLoading ?? this.isLoading,
      stops: stops ?? this.stops,
      routeMap: routeMap ?? this.routeMap,
      error: error,
    );
  }
}

class StopsViewModel extends StateNotifier<StopsState> {
  final StopsRepository _stopsRepository;
  final int activeRouteId;
  final bool isUndoMode;

  StopsViewModel({
    required StopsRepository stopsRepository,
    required this.activeRouteId,
    required this.isUndoMode,
  })  : _stopsRepository = stopsRepository,
        super(const StopsState()) {
    _load();
  }

  Future<void> _load() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Single-route list — see StopsRepository's doc comment on why this
      // isn't the original's full-route-list batching.
      final result = await _stopsRepository.getStops([activeRouteId]);
      state = state.copyWith(
        isLoading: false,
        stops: result.stops,
        routeMap: result.routeMap,
      );
    } on RouteNotActiveException {
      state = state.copyWith(isLoading: false, error: 'Route is not active');
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        error: 'Unable to load stops. Please try again.',
      );
    }
  }

  Future<void> refresh() => _load();

  /// Toggles one child's checkbox — matches the original's checkbox-tap
  /// branch (`isDrop = false` call site): visual-only, no network call.
  void toggleChild(RouteStop stop, StopChild child) {
    child.checked = !child.checked;
    _recount(stop);
    state = state.copyWith(stops: [...state.stops]);
  }

  /// Matches the stop-level "select all" checkbox.
  void toggleSelectAll(RouteStop stop) {
    stop.allSelected = !stop.allSelected;
    for (final child in stop.children) {
      child.checked = stop.allSelected;
    }
    _recount(stop);
    state = state.copyWith(stops: [...state.stops]);
  }

  /// Ported from `StopsAdapter.kt`/`UndoStopAdapter.kt`'s `arrow_up`/
  /// `arrow_down` toggle — tapping a stop's header expands/collapses its
  /// child list. Missed in the initial Step 7 build; added now.
  void toggleExpanded(RouteStop stop) {
    stop.expanded = !stop.expanded;
    state = state.copyWith(stops: [...state.stops]);
  }

  void _recount(RouteStop stop) {
    stop.selectedCount = stop.children.where((c) => c.checked).length;
    stop.allSelected =
        stop.children.isNotEmpty && stop.selectedCount == stop.children.length;
  }

  /// Matches the original's `children != null` branch: submit just one
  /// child immediately (the per-row action button), independent of
  /// checkbox state.
  Future<bool> submitSingleChild(StopChild child) async {
    final routeId = _routeIdFor(child.id);
    if (routeId == null) return false;

    final request = ChildPickDropRequest(
      routeId: routeId,
      childId: [child.id],
      timeStamp: Validators.currentTimeStamp(),
    );

    return _submit([request], isDropDirection: child.type != 'pick');
  }

  /// Matches the original's `children == null` branch: submit every
  /// *checked* child across all stops, grouped by route ID (a driver's
  /// account can have children from more than one route mixed into the
  /// same stop list — the original's `RouteMap` grouping is preserved
  /// exactly here).
  Future<bool> submitAllChecked() async {
    final byRoute = <int, List<int>>{};
    bool isDropDirection = true;

    for (final stop in state.stops) {
      for (final child in stop.children) {
        if (!child.checked) continue;
        final routeId = _routeIdFor(child.id);
        if (routeId == null) continue;
        byRoute.putIfAbsent(routeId, () => []).add(child.id);
        if (child.type == 'pick') isDropDirection = false;
      }
    }

    if (byRoute.isEmpty) return false;

    final requests = byRoute.entries
        .map((e) => ChildPickDropRequest(
              routeId: e.key,
              childId: e.value,
              timeStamp: Validators.currentTimeStamp(),
            ))
        .toList();

    return _submit(requests, isDropDirection: isDropDirection);
  }

  Future<bool> _submit(
    List<ChildPickDropRequest> requests, {
    required bool isDropDirection,
  }) async {
    try {
      if (isUndoMode) {
        await _stopsRepository.cancelPickDrop(requests);
      } else {
        await _stopsRepository.pickOrDrop(requests, isDrop: isDropDirection);
      }
      await _load(); // matches the original's `recreate()` full refresh
      return true;
    } catch (_) {
      state = state.copyWith(error: 'Unable to submit. Please try again.');
      return false;
    }
  }

  int? _routeIdFor(int childId) {
    for (final entry in state.routeMap.entries) {
      if (entry.value.contains(childId)) return entry.key;
    }
    return null;
  }
}

final stopsViewModelProvider = StateNotifierProvider.autoDispose
    .family<StopsViewModel, StopsState, StopsArgs>((ref, args) {
  return StopsViewModel(
    stopsRepository: ref.watch(stopsRepositoryProvider),
    activeRouteId: args.routeId,
    isUndoMode: args.isUndoMode,
  );
});

class StopsArgs {
  final int routeId;
  final bool isUndoMode;

  const StopsArgs({required this.routeId, this.isUndoMode = false});

  @override
  bool operator ==(Object other) =>
      other is StopsArgs &&
      other.routeId == routeId &&
      other.isUndoMode == isUndoMode;

  @override
  int get hashCode => Object.hash(routeId, isUndoMode);
}
