import 'dart:async';
import 'dart:io' show Platform;
import 'package:geolocator/geolocator.dart';
import '../../data/models/route_response.dart';
import '../../data/models/user_location.dart';
import '../../data/repositories/trip_repository.dart';
import '../utils/app_constants.dart';

class LocationTrackingService {
  final TripRepository _tripRepository;

  LocationTrackingService({required TripRepository tripRepository})
      : _tripRepository = tripRepository;

  StreamSubscription<Position>? _subscription;
  final _positionController = StreamController<UserLocation>.broadcast();

  bool _isFirstFix = true;
  int? _tripId;

  Stream<UserLocation> get positionStream => _positionController.stream;

  bool get isRunning => _subscription != null;
  int? get currentTripId => _tripId;

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


  Future<void> start(RouteResponse route) async {
    await stop();
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
    } catch (_) {}
  }

  LocationSettings _buildLocationSettings() {
    const interval = Duration(seconds: Constants.LOCATION_REFRESH_INTERVAL_IN_SECONDS); // matches original exactly

    if (Platform.isAndroid) {
      return AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
        intervalDuration: interval,
        foregroundNotificationConfig: ForegroundNotificationConfig(
          notificationTitle: Constants.APP_NAME,
          notificationText: Constants.BUS_ONGOING_MESSAGE, // matches ONGOING_MESSAGE
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
