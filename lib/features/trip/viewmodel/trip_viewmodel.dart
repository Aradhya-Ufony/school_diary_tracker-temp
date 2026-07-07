import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
import '../../../data/repositories/trip_repository.dart';

/// Ported from `TransportActivity`'s `refreshPointer()` (marker/camera
/// update on each broadcast) and its `MyThread` watchdog (a 1-second
/// ticker that shows a "location update failing frequently" warning after
/// 65 seconds with no update). The original's warning dialog was purely
/// informational (single "Ok" button, no action) — reproduced the same
/// way here as a state flag the View turns into a dismissible banner.
class TripState {
  final UserLocation? currentPosition;
  final int secondsSinceLastUpdate;
  final bool showReconnectWarning;
  final bool isStopping;
  final String? error;

  const TripState({
    this.currentPosition,
    this.secondsSinceLastUpdate = 0,
    this.showReconnectWarning = false,
    this.isStopping = false,
    this.error,
  });

  TripState copyWith({
    UserLocation? currentPosition,
    int? secondsSinceLastUpdate,
    bool? showReconnectWarning,
    bool? isStopping,
    String? error,
  }) {
    return TripState(
      currentPosition: currentPosition ?? this.currentPosition,
      secondsSinceLastUpdate:
          secondsSinceLastUpdate ?? this.secondsSinceLastUpdate,
      showReconnectWarning: showReconnectWarning ?? this.showReconnectWarning,
      isStopping: isStopping ?? this.isStopping,
      error: error,
    );
  }
}

class TripViewModel extends StateNotifier<TripState> {
  final RouteResponse route;
  final TripRepository _tripRepository;
  final LocalStorageService _storage;
  final Stream<UserLocation> _positionStream;
  final Future<void> Function() _stopLocationTracking;

  StreamSubscription<UserLocation>? _positionSub;
  Timer? _watchdogTimer;

  TripViewModel({
    required this.route,
    required TripRepository tripRepository,
    required LocalStorageService storage,
    required Stream<UserLocation> positionStream,
    required Future<void> Function() stopLocationTracking,
  })  : _tripRepository = tripRepository,
        _storage = storage,
        _positionStream = positionStream,
        _stopLocationTracking = stopLocationTracking,
        super(const TripState()) {
    _positionSub = _positionStream.listen(_onPosition);
    // 1-second ticker, matching the original's `MyThread` exactly.
    _watchdogTimer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
  }

  void _onPosition(UserLocation location) {
    state = state.copyWith(
      currentPosition: location,
      secondsSinceLastUpdate: 0,
      showReconnectWarning: false,
    );
  }

  void _tick() {
    final next = state.secondsSinceLastUpdate + 1;
    // Original: `if (lastSec % 65 == 0)`. Kept as a strict equality check
    // (not `>=`) to match exactly — the original would technically
    // re-trigger every 65 seconds thereafter (65, 130, 195...) rather than
    // staying stuck on once; matched faithfully rather than "improved" to
    // a >= check, since re-nagging periodically during a genuinely long
    // outage seems like reasonable original intent, not a bug.
    state = state.copyWith(
      secondsSinceLastUpdate: next,
      showReconnectWarning: next % 65 == 0,
    );
  }

  void dismissReconnectWarning() {
    state = state.copyWith(showReconnectWarning: false);
  }

  /// Ported from `HomeTabActivity.stopBus()`. Uses the last known position
  /// from the stream rather than the original's separate
  /// `PreferenceManager.getLatitude/getLongitude` reads — same data,
  /// simpler plumbing (no need for a second storage round-trip for values
  /// that are already held in memory here).
  ///
  /// **Note on why this button exists and works at all**: during Phase 1
  /// analysis of the original app, `TransportActivity`'s Stop button had
  /// no click listener wired up at all, its confirmation-dialog code path
  /// was fully commented out, and the back button was disabled
  /// (`onBackPressed()` overridden with the `super` call removed) —
  /// meaning **the live production app currently has no working way to
  /// stop a trip from this screen**. `BusRunningActivity`, which does have
  /// a working stop-confirmation flow, is never navigated to from
  /// anywhere in the codebase either. This isn't a case of "the original
  /// did X, we changed it" — there was no reachable X to preserve. This
  /// implementation restores the working stop flow using
  /// `BusRunningActivity`'s confirmation logic as the template, since a
  /// trip tracker with no way to end a trip isn't a viable product
  /// migration target.
  Future<bool> stopTrip() async {
    final tripId = _tripRepository.activeTripId;
    final position = state.currentPosition;

    if (tripId == null || position == null) {
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.routeId);
      return true;
    }

    state = state.copyWith(isStopping: true, error: null);
    try {
      await _tripRepository.stopTrip(tripId: tripId, location: position);
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.routeId);
      return true;
    } catch (_) {
      // Matches the original's onError branch: still stop the local
      // service/UI even if the network call failed, rather than trapping
      // the driver on this screen — the original's own `onError` handler
      // for StopTripTask does the same (`stopService(locationService)`
      // runs either way).
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.routeId);
      state = state.copyWith(
        isStopping: false,
        error:
            'Trip stop may not have reached the server, but tracking has been stopped on this device.',
      );
      return true;
    }
  }

  @override
  void dispose() {
    _positionSub?.cancel();
    _watchdogTimer?.cancel();
    super.dispose();
  }
}

final tripViewModelProvider = StateNotifierProvider.autoDispose
    .family<TripViewModel, TripState, RouteResponse>((ref, route) {
  final locationService = ref.watch(locationTrackingServiceProvider);
  return TripViewModel(
    route: route,
    tripRepository: ref.watch(tripRepositoryProvider),
    storage: ref.watch(localStorageServiceProvider),
    positionStream: locationService.positionStream,
    stopLocationTracking: locationService.stop,
  );
});
