import 'dart:async';
import 'dart:io' show Platform;

import 'package:geolocator/geolocator.dart';

import '../../data/models/route_response.dart';
import '../../data/models/user_location.dart';
import '../../data/repositories/trip_repository.dart';
import '../flavors/flavor_config.dart';

/// Flutter equivalent of `LocationService.java` — the original was an
/// Android foreground `Service` mixing `FusedLocationProviderClient` (the
/// real update path) with a second, deprecated `GoogleApiClient` (dead
/// code, confirmed unused during Phase 1 analysis and not ported).
///
/// Update cadence: 3 seconds, `PRIORITY_HIGH_ACCURACY`, matching the
/// original exactly on Android.
///
/// **iOS is a genuine platform difference, not an oversight** — per our
/// earlier discussion: iOS does not allow a timer-guaranteed 3-second
/// background update loop for any app. This requests "Always" location
/// permission and configures the closest available continuous
/// background-update mode (`AppleSettings.allowBackgroundLocationUpdates`),
/// which is the same mechanism ride-share/delivery driver apps use — but
/// iOS itself may throttle cadence somewhat when the device is stationary
/// or under battery pressure, in a way Android's foreground service does
/// not.
class LocationTrackingService {
  final TripRepository _tripRepository;

  LocationTrackingService({required TripRepository tripRepository})
      : _tripRepository = tripRepository;

  StreamSubscription<Position>? _subscription;
  final _positionController = StreamController<UserLocation>.broadcast();

  /// Matches `LocationService.IS_FIRST` — true for the first fix after a
  /// trip starts (which triggers `trip/start` instead of `trip/location`),
  /// false afterward. Reset each time [start] is called for a new trip,
  /// same as the original setting `LocationService.IS_FIRST = true` in
  /// `HomeTabActivity.startRoute()` just before starting the service.
  bool _isFirstFix = true;
  int? _tripId;

  /// UI (Step 6's trip/map screen) subscribes to this instead of the
  /// original's local-broadcast (`Constants.LOCATION_DETAILS`) +
  /// `BroadcastReceiver` indirection — a direct stream is the natural
  /// Flutter/Riverpod equivalent and avoids re-implementing Android's
  /// broadcast intent system for no reason.
  Stream<UserLocation> get positionStream => _positionController.stream;

  bool get isRunning => _subscription != null;
  int? get currentTripId => _tripId;

  /// Requests the permissions this needs and returns whether tracking can
  /// proceed. Centralizing this here (rather than duplicated ad hoc across
  /// `BaseActivity`/`SplashActivity`/`HomeTabActivity`/`TransportActivity`
  /// like the original) was flagged back in Step 1 as a planned
  /// improvement — this is that centralization.
  Future<bool> requestPermissions() async {
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      return false;
    }

    if (Platform.isIOS) {
      // "Always" is requested separately on iOS/geolocator — see the
      // class doc comment above for why this matters for background
      // tracking specifically.
      if (permission != LocationPermission.always) {
        permission = await Geolocator.requestPermission();
      }
    }

    return await Geolocator.isLocationServiceEnabled();
  }

  /// Starts streaming location for [route]. On the very first fix, starts
  /// the trip server-side (`trip/start`) and stores the returned trip ID;
  /// every fix after that sends a `trip/location` update — matching
  /// `LocationService.sendLocation()`'s `IS_FIRST` branch exactly.
  Future<void> start(RouteResponse route) async {
    await stop(); // idempotent — matches Android's service restart semantics
    _isFirstFix = true;
    _tripId = null;

    final settings = _buildLocationSettings();

    _subscription = Geolocator.getPositionStream(locationSettings: settings)
        .listen((position) => _onPosition(route, position));
  }

  Future<void> _onPosition(RouteResponse route, Position position) async {
    final location = UserLocation(
      latitude: position.latitude,
      longitude: position.longitude,
    );

    _positionController.add(location);

    try {
      if (_isFirstFix) {
        _tripId = await _tripRepository.startTrip(
          route: route,
          location: location,
        );
        _isFirstFix = false;
      } else if (_tripId != null) {
        await _tripRepository.updateLocation(
          tripId: _tripId!,
          location: location,
        );
      }
    } catch (_) {
      // Matches the original's onError handlers: swallow and let the next
      // 3-second fix retry, rather than tearing down the stream over one
      // failed request. A UI-level "reconnecting" indicator (ported from
      // TransportActivity's 65-second watchdog) surfaces this to the
      // driver — see TripViewModel — rather than this service throwing.
    }
  }

  LocationSettings _buildLocationSettings() {
    const interval = Duration(seconds: 3); // matches original exactly

    if (Platform.isAndroid) {
      return AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
        intervalDuration: interval,
        foregroundNotificationConfig: ForegroundNotificationConfig(
          notificationTitle: FlavorConfig.instance.appName,
          notificationText: 'Bus is moving', // matches ONGOING_MESSAGE
          enableWakeLock: true,
        ),
      );
    }

    if (Platform.isIOS) {
      return AppleSettings(
        accuracy: LocationAccuracy.high,
        activityType: ActivityType.automotiveNavigation,
        distanceFilter: 0,
        pauseLocationUpdatesAutomatically: false,
        showBackgroundLocationIndicator: true,
        allowBackgroundLocationUpdates: true,
      );
    }

    return LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 0);
  }

  Future<void> stop() async {
    await _subscription?.cancel();
    _subscription = null;
  }

  void dispose() {
    _subscription?.cancel();
    _positionController.close();
  }
}
