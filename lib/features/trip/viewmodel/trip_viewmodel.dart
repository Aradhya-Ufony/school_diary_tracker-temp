import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/route_stop.dart';
import '../../../data/models/user_location.dart';
import '../../../data/repositories/trip_repository.dart';
import '../../../data/repositories/stops_repository.dart';

class TripState {
  final UserLocation? currentPosition;
  final List<RouteStop> stops;
  final int secondsSinceLastUpdate;
  final bool showReconnectWarning;
  final bool isStopping;
  final bool isLoadingStops;
  final bool depotArrivalDetected;
  final double? distanceToDepotMeters;
  final String? error;

  const TripState({
    this.currentPosition,
    this.stops = const [],
    this.secondsSinceLastUpdate = 0,
    this.showReconnectWarning = false,
    this.isStopping = false,
    this.isLoadingStops = false,
    this.depotArrivalDetected = false,
    this.distanceToDepotMeters,
    this.error,
  });

  TripState copyWith({
    UserLocation? currentPosition,
    List<RouteStop>? stops,
    int? secondsSinceLastUpdate,
    bool? showReconnectWarning,
    bool? isStopping,
    bool? isLoadingStops,
    bool? depotArrivalDetected,
    double? distanceToDepotMeters,
    String? error,
  }) {
    return TripState(
      currentPosition: currentPosition ?? this.currentPosition,
      stops: stops ?? this.stops,
      secondsSinceLastUpdate:
          secondsSinceLastUpdate ?? this.secondsSinceLastUpdate,
      showReconnectWarning: showReconnectWarning ?? this.showReconnectWarning,
      isStopping: isStopping ?? this.isStopping,
      isLoadingStops: isLoadingStops ?? this.isLoadingStops,
      depotArrivalDetected: depotArrivalDetected ?? this.depotArrivalDetected,
      distanceToDepotMeters: distanceToDepotMeters ?? this.distanceToDepotMeters,
      error: error,
    );
  }
}

class TripViewModel extends StateNotifier<TripState> {
  final RouteResponse route;
  final TripRepository _tripRepository;
  final StopsRepository _stopsRepository;
  final LocalStorageService _storage;
  final Stream<UserLocation> _positionStream;
  final Future<void> Function() _stopLocationTracking;
  final Future<UserLocation?> Function() _getCurrentLocation;

  StreamSubscription<UserLocation>? _positionSub;
  Timer? _watchdogTimer;
  int _pollTicks = 0;
  int _depotDwellSeconds = 0;
  bool _depotArrivalTriggered = false;

  TripViewModel({
    required this.route,
    required TripRepository tripRepository,
    required StopsRepository stopsRepository,
    required LocalStorageService storage,
    required Stream<UserLocation> positionStream,
    required Future<void> Function() stopLocationTracking,
    required Future<UserLocation?> Function() getCurrentLocation,
  })  : _tripRepository = tripRepository,
        _stopsRepository = stopsRepository,
        _storage = storage,
        _positionStream = positionStream,
        _stopLocationTracking = stopLocationTracking,
        _getCurrentLocation = getCurrentLocation,
        super(const TripState()) {
    _positionSub = _positionStream.listen(_onPosition);
    _watchdogTimer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    _loadStops();
  }

  Future<void> _loadStops() async {
    state = state.copyWith(isLoadingStops: true);
    try {
      final result = await _stopsRepository.getStops([route.id]);
      state = state.copyWith(
        isLoadingStops: false,
        stops: result.stops,
      );
      await _pollBusLocation();
    } catch (e) {
      state = state.copyWith(
        isLoadingStops: false,
        error: 'Failed to load stops for map',
      );
    }
  }

  Future<void> _pollBusLocation() async {
    try {
      final loc = await _getCurrentLocation();
      if (loc != null) {
        _checkDepotProximity(loc);
        state = state.copyWith(
          currentPosition: loc,
          secondsSinceLastUpdate: 0,
          showReconnectWarning: false,
        );
      }
    } catch (_) {}
  }

  void _onPosition(UserLocation location) {
    _checkDepotProximity(location);
    state = state.copyWith(
      currentPosition: location,
      secondsSinceLastUpdate: 0,
      showReconnectWarning: false,
    );
  }

  void _checkDepotProximity(UserLocation location) {
    final depot = route.depotLocation ?? route.endLocation;
    if (depot == null || _depotArrivalTriggered) return;

    final distance = Geolocator.distanceBetween(
      location.latitude,
      location.longitude,
      depot.latitude,
      depot.longitude,
    );

    state = state.copyWith(distanceToDepotMeters: distance);

    if (distance <= 50.0) {
      _depotDwellSeconds++;
      // If parked inside depot for >= 10 seconds, trigger automatic trip stop
      if (_depotDwellSeconds >= 10 && !_depotArrivalTriggered) {
        _depotArrivalTriggered = true;
        state = state.copyWith(depotArrivalDetected: true);
        stopTrip();
      }
    } else {
      _depotDwellSeconds = 0;
    }
  }

  bool get isAtDepot {
    if (state.depotArrivalDetected) return true;
    final depot = route.depotLocation ?? route.endLocation;
    if (depot == null) return false;
    final currentPos = state.currentPosition;
    if (currentPos == null) return false;
    final dist = Geolocator.distanceBetween(
      currentPos.latitude,
      currentPos.longitude,
      depot.latitude,
      depot.longitude,
    );
    return dist <= 50.0;
  }

  Future<bool> checkIsAtDepot() async {
    if (state.depotArrivalDetected) return true;
    final depot = route.depotLocation ?? route.endLocation;
    if (depot == null) return false;

    UserLocation? currentPos = state.currentPosition;
    if (currentPos == null) {
      try {
        final pos = await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.medium,
            timeLimit: Duration(seconds: 3),
          ),
        );
        currentPos = UserLocation(latitude: pos.latitude, longitude: pos.longitude);
      } catch (_) {
        try {
          final lastKnown = await Geolocator.getLastKnownPosition();
          if (lastKnown != null) {
            currentPos = UserLocation(latitude: lastKnown.latitude, longitude: lastKnown.longitude);
          }
        } catch (_) {}
      }
    }

    if (currentPos == null) return false;

    final dist = Geolocator.distanceBetween(
      currentPos.latitude,
      currentPos.longitude,
      depot.latitude,
      depot.longitude,
    );
    return dist <= 50.0;
  }

  void _tick() {
    final next = state.secondsSinceLastUpdate + 1;
    state = state.copyWith(
      secondsSinceLastUpdate: next,
      showReconnectWarning: next % 65 == 0,
    );
    _pollTicks++;
    if (_pollTicks >= 5) {
      _pollTicks = 0;
      _pollBusLocation();
    }
  }

  void dismissReconnectWarning() {
    state = state.copyWith(showReconnectWarning: false);
  }

  Future<bool> stopTrip() async {
    final tripId = _tripRepository.activeTripId;
    final position = state.currentPosition;

    if (tripId == null || position == null) {
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.ROUTE_ID);
      return true;
    }

    state = state.copyWith(isStopping: true, error: null);
    try {
      await _tripRepository.stopTrip(tripId: tripId, location: position);
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.ROUTE_ID);
      return true;
    } catch (_) {
      await _stopLocationTracking();
      await _storage.remove(StorageKeys.ROUTE_ID);
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
    stopsRepository: ref.watch(stopsRepositoryProvider),
    storage: ref.watch(localStorageServiceProvider),
    positionStream: locationService.positionStream,
    stopLocationTracking: locationService.stop,
    getCurrentLocation: locationService.getCurrentLocation,
  );
});
