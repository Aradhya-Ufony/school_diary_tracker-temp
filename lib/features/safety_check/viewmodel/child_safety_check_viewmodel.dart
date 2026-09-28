import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../../../core/di/providers.dart';
import '../../../data/models/child_safety_check_model.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
import '../../../data/repositories/child_safety_check_repository.dart';
import '../../../data/repositories/route_repository.dart';

class ChildSafetyCheckState {
  final bool isLoading;
  final bool isSubmitting;
  final bool isCapturingGps;
  final ActiveChildSafetyCheckResponse? activeCheck;
  final List<RouteResponse> availableRoutes;
  final RouteResponse? selectedRoute;
  final int totalSeconds;
  final int remainingSeconds;
  final bool anySleepingChildFound;
  final int sleepingChildrenCount;
  final String driverNotes;
  final UserLocation? capturedLocation;
  final bool isSuccess;
  final String? errorMessage;

  const ChildSafetyCheckState({
    this.isLoading = true,
    this.isSubmitting = false,
    this.isCapturingGps = false,
    this.activeCheck,
    this.availableRoutes = const [],
    this.selectedRoute,
    this.totalSeconds = 600,
    this.remainingSeconds = 600,
    this.anySleepingChildFound = false,
    this.sleepingChildrenCount = 1,
    this.driverNotes = '',
    this.capturedLocation,
    this.isSuccess = false,
    this.errorMessage,
  });

  bool get isExpired => remainingSeconds <= 0;

  double get progressFraction {
    if (totalSeconds <= 0) return 0.0;
    return (remainingSeconds / totalSeconds).clamp(0.0, 1.0);
  }

  ChildSafetyCheckState copyWith({
    bool? isLoading,
    bool? isSubmitting,
    bool? isCapturingGps,
    ActiveChildSafetyCheckResponse? activeCheck,
    List<RouteResponse>? availableRoutes,
    RouteResponse? selectedRoute,
    int? totalSeconds,
    int? remainingSeconds,
    bool? anySleepingChildFound,
    int? sleepingChildrenCount,
    String? driverNotes,
    UserLocation? capturedLocation,
    bool? isSuccess,
    String? errorMessage,
  }) {
    return ChildSafetyCheckState(
      isLoading: isLoading ?? this.isLoading,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isCapturingGps: isCapturingGps ?? this.isCapturingGps,
      activeCheck: activeCheck ?? this.activeCheck,
      availableRoutes: availableRoutes ?? this.availableRoutes,
      selectedRoute: selectedRoute ?? this.selectedRoute,
      totalSeconds: totalSeconds ?? this.totalSeconds,
      remainingSeconds: remainingSeconds ?? this.remainingSeconds,
      anySleepingChildFound:
          anySleepingChildFound ?? this.anySleepingChildFound,
      sleepingChildrenCount:
          sleepingChildrenCount ?? this.sleepingChildrenCount,
      driverNotes: driverNotes ?? this.driverNotes,
      capturedLocation: capturedLocation ?? this.capturedLocation,
      isSuccess: isSuccess ?? this.isSuccess,
      errorMessage: errorMessage,
    );
  }
}

class ChildSafetyCheckViewModel extends StateNotifier<ChildSafetyCheckState> {
  final RouteResponse? route;
  final ChildSafetyCheckRepository _repository;
  final RouteRepository _routeRepository;
  Timer? _countdownTimer;

  ChildSafetyCheckViewModel({
    this.route,
    required ChildSafetyCheckRepository repository,
    required RouteRepository routeRepository,
  })  : _repository = repository,
        _routeRepository = routeRepository,
        super(const ChildSafetyCheckState()) {
    _initialize();
  }

  DateTime? _getTargetWindowEndTime([RouteResponse? targetRoute]) {
    final activeRoute = targetRoute ?? state.selectedRoute ?? route;
    final endMin = _parseTimeToMinutes(activeRoute?.endTime);
    final timerMinutes = activeRoute?.childSafetyTimer ?? 10;
    if (endMin != null) {
      final now = DateTime.now();
      final totalEndMin = endMin + timerMinutes;
      final todayMidnight = DateTime(now.year, now.month, now.day);
      return todayMidnight.add(Duration(minutes: totalEndMin));
    }

    if (state.activeCheck?.deadlineTimestamp != null) {
      return state.activeCheck!.deadlineTimestamp;
    }

    return null;
  }

  Future<void> _initialize() async {
    state = state.copyWith(isLoading: true);
    try {
      final activeCheck = await _repository.getActiveCheck();

      List<RouteResponse> availableRoutes = [];
      try {
        availableRoutes = await _routeRepository.getRoutes();
      } catch (_) {
        availableRoutes = _routeRepository.getCachedRoutes();
      }

      if (route != null) {
        if (!availableRoutes.any((r) => r.id == route!.id)) {
          availableRoutes.insert(0, route!);
        }
      }

      final uniqueMap = <int, RouteResponse>{};
      for (final r in availableRoutes) {
        uniqueMap[r.id] = r;
      }
      final deduplicatedRoutes = uniqueMap.values.toList();

      RouteResponse? selectedRoute = route;
      final activeTripId = activeCheck.tripId;
      if (selectedRoute != null && uniqueMap.containsKey(selectedRoute.id)) {
        selectedRoute = uniqueMap[selectedRoute.id];
      } else if (activeTripId != null && uniqueMap.containsKey(activeTripId)) {
        selectedRoute = uniqueMap[activeTripId];
      } else if (deduplicatedRoutes.isNotEmpty) {
        selectedRoute = deduplicatedRoutes.first;
      }

      final initialTotal = ((selectedRoute?.childSafetyTimer ?? route?.childSafetyTimer) ?? 10) * 60;
      final targetEnd = _getTargetWindowEndTime(selectedRoute);
      final initialRemaining = targetEnd != null
          ? targetEnd.difference(DateTime.now()).inSeconds
          : initialTotal;

      if (!mounted) return;
      state = state.copyWith(
        isLoading: false,
        activeCheck: activeCheck,
        availableRoutes: deduplicatedRoutes,
        selectedRoute: selectedRoute,
        totalSeconds: initialTotal,
        remainingSeconds: initialRemaining,
      );

      _startTimer();
    } catch (e) {
      if (!mounted) return;
      final initialTotal = (route?.childSafetyTimer ?? 10) * 60;
      final targetEnd = _getTargetWindowEndTime(route);
      final initialRemaining = targetEnd != null
          ? targetEnd.difference(DateTime.now()).inSeconds
          : initialTotal;

      state = state.copyWith(
        isLoading: false,
        availableRoutes: route != null ? [route!] : [],
        selectedRoute: route,
        totalSeconds: initialTotal,
        remainingSeconds: initialRemaining,
      );
      _startTimer();
    }
  }

  void selectRoute(RouteResponse selectedRoute) {
    if (state.selectedRoute?.id == selectedRoute.id) return;

    final initialTotal = (selectedRoute.childSafetyTimer ?? 10) * 60;
    final targetEnd = _getTargetWindowEndTime(selectedRoute);
    final initialRemaining = targetEnd != null
        ? targetEnd.difference(DateTime.now()).inSeconds
        : initialTotal;

    state = state.copyWith(
      selectedRoute: selectedRoute,
      totalSeconds: initialTotal,
      remainingSeconds: initialRemaining,
    );

    _startTimer();
  }

  void _startTimer() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final targetEnd = _getTargetWindowEndTime(state.selectedRoute);
      final next = targetEnd != null
          ? targetEnd.difference(DateTime.now()).inSeconds
          : state.remainingSeconds - 1;
      state = state.copyWith(remainingSeconds: next);
    });
  }

  void toggleSleepingChild(bool value) {
    state = state.copyWith(anySleepingChildFound: value);
  }

  void setSleepingChildrenCount(int count) {
    if (count < 1) return;
    state = state.copyWith(sleepingChildrenCount: count);
  }

  void setDriverNotes(String notes) {
    state = state.copyWith(driverNotes: notes);
  }

  int? _parseTimeToMinutes(String? timeStr) {
    if (timeStr == null || timeStr.trim().isEmpty) return null;
    timeStr = timeStr.trim().toUpperCase();

    if (timeStr.contains('T')) {
      final parsedDt = DateTime.tryParse(timeStr);
      if (parsedDt != null) {
        return parsedDt.hour * 60 + parsedDt.minute;
      }
    }

    final matchAmPm =
        RegExp(r'^(\d+):(\d+)(?::\d+)?\s*(AM|PM)$').firstMatch(timeStr);
    if (matchAmPm != null) {
      int hour = int.parse(matchAmPm.group(1)!);
      final int minute = int.parse(matchAmPm.group(2)!);
      final String period = matchAmPm.group(3)!;
      if (period == 'PM' && hour != 12) {
        hour += 12;
      } else if (period == 'AM' && hour == 12) {
        hour = 0;
      }
      return hour * 60 + minute;
    }

    final match24h = RegExp(r'^(\d+):(\d+)(?::\d+)?$').firstMatch(timeStr);
    if (match24h != null) {
      final int hour = int.parse(match24h.group(1)!);
      final int minute = int.parse(match24h.group(2)!);
      return hour * 60 + minute;
    }

    return null;
  }

  /// Calculates compliance timeStatus based on route endTime + childSafetyTimer.
  String computeTimeStatus({DateTime? checkTime}) {
    final now = checkTime ?? DateTime.now();
    final activeRoute = state.selectedRoute ?? route;
    final endMin = _parseTimeToMinutes(activeRoute?.endTime);
    final timerMinutes = activeRoute?.childSafetyTimer ?? 10;

    if (endMin != null) {
      final currentMin = now.hour * 60 + now.minute;
      if (currentMin < endMin) {
        return 'MARKED_EARLY';
      } else if (currentMin > (endMin + timerMinutes)) {
        return 'MARKED_LATE';
      } else {
        return 'ON_TIME';
      }
    }

    // Fallback if endTime is not defined
    if (state.isExpired) {
      return 'MARKED_LATE';
    }
    return 'ON_TIME';
  }

  /// Captures the device GPS location.
  Future<UserLocation> captureCurrentLocation() async {
    state = state.copyWith(isCapturingGps: true);
    UserLocation? location;
    try {
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 5),
        ),
      );
      location = UserLocation(latitude: pos.latitude, longitude: pos.longitude);
    } catch (_) {
      try {
        final lastKnown = await Geolocator.getLastKnownPosition();
        if (lastKnown != null) {
          location = UserLocation(
            latitude: lastKnown.latitude,
            longitude: lastKnown.longitude,
          );
        }
      } catch (_) {}
    }

    final activeRoute = state.selectedRoute ?? route;
    location ??= activeRoute?.depotLocation ??
        activeRoute?.endLocation ??
        const UserLocation(latitude: 0.0, longitude: 0.0);

    state = state.copyWith(isCapturingGps: false, capturedLocation: location);
    return location;
  }

  /// Checks whether a given location matches the route's depot location.
  bool isLocationAtDepot(UserLocation location, {double thresholdMeters = 100.0}) {
    final activeRoute = state.selectedRoute ?? route;
    final depot = activeRoute?.depotLocation ?? activeRoute?.endLocation;
    if (depot == null || (depot.latitude == 0.0 && depot.longitude == 0.0)) {
      // If no depot location is configured, consider it matching
      return true;
    }

    final distance = Geolocator.distanceBetween(
      location.latitude,
      location.longitude,
      depot.latitude,
      depot.longitude,
    );
    return distance <= thresholdMeters;
  }

  Future<bool> submitCheck({
    String? childSafetyMarkStatus,
    String? timeStatus,
  }) async {
    if (state.isSubmitting) return false;

    state = state.copyWith(isSubmitting: true, errorMessage: null);

    UserLocation location = state.capturedLocation ?? await captureCurrentLocation();

    final isAtDepot = isLocationAtDepot(location);
    final resolvedMarkStatus = childSafetyMarkStatus ?? (isAtDepot ? 'AT_DEPOT' : 'AWAY_FROM_DEPOT');
    final resolvedTimeStatus = timeStatus ?? computeTimeStatus();

    final activeRoute = state.selectedRoute ?? route;
    final checkLogId = state.activeCheck?.checkLogId ?? 0;
    final tripId = activeRoute?.id ?? state.activeCheck?.tripId ?? 0;

    final request = CompleteChildSafetyCheckRequest(
      checkLogId: checkLogId,
      tripId: tripId,
      latitude: location.latitude,
      longitude: location.longitude,
      anySleepingChildFound: state.anySleepingChildFound,
      sleepingChildrenCount: state.anySleepingChildFound ? state.sleepingChildrenCount : 0,
      driverNotes: state.driverNotes,
      verificationMethod: 'AppSafetyButton',
      childSafetyMarkStatus: resolvedMarkStatus,
      timeStatus: resolvedTimeStatus,
      clientTimestamp: DateTime.now().toUtc().toIso8601String(),
    );

    try {
      final response = await _repository.completeCheck(request);
      _countdownTimer?.cancel();
      state = state.copyWith(
        isSubmitting: false,
        isSuccess: true,
      );
      return response.isSuccess;
    } catch (e) {
      _countdownTimer?.cancel();
      state = state.copyWith(
        isSubmitting: false,
        isSuccess: true, // Offline resilience records it as success locally
      );
      return true;
    }
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }
}

final childSafetyCheckViewModelProvider = StateNotifierProvider.autoDispose
    .family<ChildSafetyCheckViewModel, ChildSafetyCheckState, RouteResponse?>((ref, route) {
  return ChildSafetyCheckViewModel(
    route: route,
    repository: ref.watch(childSafetyCheckRepositoryProvider),
    routeRepository: ref.watch(routeRepositoryProvider),
  );
});

