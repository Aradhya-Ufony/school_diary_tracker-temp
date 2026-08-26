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
  final String routeName;
  final bool isUndoMode;

  StopsViewModel({
    required StopsRepository stopsRepository,
    required this.activeRouteId,
    required this.routeName,
    required this.isUndoMode,
  })  : _stopsRepository = stopsRepository,
        super(const StopsState()) {
    _load();
  }

  Future<void> _load() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Capture UI states of current stops
      final expandedStopIds = state.stops
          .where((s) => s.expanded && s.id != null)
          .map((s) => s.id!)
          .toSet();
      final expandedStopAddresses = state.stops
          .where((s) => s.expanded && s.id == null && s.address != null)
          .map((s) => s.address!)
          .toSet();
      final checkedChildIds = state.stops
          .expand((s) => s.children)
          .where((c) => c.checked)
          .map((c) => c.id)
          .toSet();

      // Single-route list — see StopsRepository's doc comment on why this
      // isn't the original's full-route-list batching.
      final result = await _stopsRepository.getStops([activeRouteId]);
      
      // Restore UI states and recount stop headers based on visibility constraints
      for (final stop in result.stops) {
        if (stop.id != null && expandedStopIds.contains(stop.id)) {
          stop.expanded = true;
        } else if (stop.id == null && stop.address != null && expandedStopAddresses.contains(stop.address)) {
          stop.expanded = true;
        }

        for (final child in stop.children) {
          if (checkedChildIds.contains(child.id) && _isChildCheckable(child)) {
            child.checked = true;
          }
        }

        _recount(stop);
      }

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

  String _getChildActionType(StopChild child) {
    final nameUpper = routeName.trim().toUpperCase();
    if (nameUpper.endsWith('(IN)')) {
      return 'pick';
    } else if (nameUpper.endsWith('(OUT)')) {
      return 'drop';
    }
    return child.type;
  }

  bool _isChildActionEnabled(StopChild child) {
    final actionType = _getChildActionType(child);
    final nameUpper = routeName.trim().toUpperCase();
    if (nameUpper.endsWith('(IN)')) {
      return actionType == 'pick';
    } else if (nameUpper.endsWith('(OUT)')) {
      return actionType == 'drop';
    }
    return true; // default if neither
  }

  bool _isChildCheckable(StopChild child) {
    if (isUndoMode) {
      return child.pickedOrDropped;
    } else {
      return !child.pickedOrDropped && _isChildActionEnabled(child);
    }
  }

  /// Toggles one child's checkbox — matches the original's checkbox-tap
  /// branch (`isDrop = false` call site): visual-only, no network call.
  void toggleChild(RouteStop stop, StopChild child) {
    if (!isUndoMode && !_isChildActionEnabled(child)) return;
    child.checked = !child.checked;
    _recount(stop);
    state = state.copyWith(stops: [...state.stops]);
  }

  /// Matches the stop-level "select all" checkbox.
  void toggleSelectAll(RouteStop stop) {
    stop.allSelected = !stop.allSelected;
    final targetChildren = stop.children.where(_isChildCheckable);
    for (final child in targetChildren) {
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
    final targetChildren = stop.children.where(_isChildCheckable);
    stop.selectedCount = targetChildren.where((c) => c.checked).length;
    stop.allSelected =
        targetChildren.isNotEmpty && stop.selectedCount == targetChildren.length;
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

    final actionType = _getChildActionType(child);
    return _submit([request], isDropDirection: actionType != 'pick');
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
      final targetChildren = stop.children.where(_isChildCheckable);
      for (final child in targetChildren) {
        if (!child.checked) continue;
        final routeId = _routeIdFor(child.id);
        if (routeId == null) continue;
        byRoute.putIfAbsent(routeId, () => []).add(child.id);
        final actionType = _getChildActionType(child);
        if (actionType == 'pick') isDropDirection = false;
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
    routeName: args.routeName,
    isUndoMode: args.isUndoMode,
  );
});

class StopsArgs {
  final int routeId;
  final String routeName;
  final bool isUndoMode;

  const StopsArgs({
    required this.routeId,
    required this.routeName,
    this.isUndoMode = false,
  });

  @override
  bool operator ==(Object other) =>
      other is StopsArgs &&
      other.routeId == routeId &&
      other.routeName == routeName &&
      other.isUndoMode == isUndoMode;

  @override
  int get hashCode => Object.hash(routeId, routeName, isUndoMode);
}
