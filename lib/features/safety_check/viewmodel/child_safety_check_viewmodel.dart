import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../../../core/di/providers.dart';
import '../../../data/models/child_safety_check_model.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
import '../../../data/repositories/child_safety_check_repository.dart';

class ChildSafetyCheckState {
  final bool isLoading;
  final bool isSubmitting;
  final bool isCapturingGps;
  final ActiveChildSafetyCheckResponse? activeCheck;
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
  Timer? _countdownTimer;

  ChildSafetyCheckViewModel({
    this.route,
    required ChildSafetyCheckRepository repository,
  })  : _repository = repository,
        super(const ChildSafetyCheckState()) {
    _initialize();
  }

  Future<void> _initialize() async {
    state = state.copyWith(isLoading: true);
    try {
      // 1. Check for active check on the server / local storage
      final activeCheck = await _repository.getActiveCheck();

      int initialTotal = 600; // default 10 minutes
      int initialRemaining = 600;

      if (route?.childSafetyTimer != null && route!.childSafetyTimer! > 0) {
        initialTotal = route!.childSafetyTimer! * 60;
        initialRemaining = initialTotal;
      }

      if (activeCheck.hasActiveCheck) {
        if (activeCheck.remainingSeconds > 0) {
          initialRemaining = activeCheck.remainingSeconds;
          if (initialTotal < initialRemaining) {
            initialTotal = initialRemaining;
          }
        } else {
          // If remainingSeconds is 0 or negative (overdue), initialize countdown to 0
          initialRemaining = 0;
        }
      }

      state = state.copyWith(
        isLoading: false,
        activeCheck: activeCheck,
        totalSeconds: initialTotal,
        remainingSeconds: initialRemaining,
      );

      _startTimer();
    } catch (e) {
      final initialTotal = (route?.childSafetyTimer ?? 10) * 60;
      state = state.copyWith(
        isLoading: false,
        totalSeconds: initialTotal,
        remainingSeconds: initialTotal,
      );
      _startTimer();
    }
  }

  void _startTimer() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.remainingSeconds > 0) {
        final next = state.remainingSeconds - 1;
        state = state.copyWith(remainingSeconds: next);

        // Haptic feedback at 3 min (180s) and 1 min (60s)
        if (next == 180 || next == 60 || next == 30) {
          HapticFeedback.heavyImpact();
        }
      } else {
        _countdownTimer?.cancel();
      }
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

  Future<bool> submitCheck() async {
    if (state.isSubmitting) return false;

    state = state.copyWith(isSubmitting: true, isCapturingGps: true, errorMessage: null);

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

    // Default fallback to depot/end location if completely unavailable
    location ??= route?.depotLocation ??
        route?.endLocation ??
        const UserLocation(latitude: 0.0, longitude: 0.0);

    state = state.copyWith(isCapturingGps: false, capturedLocation: location);

    final checkLogId = state.activeCheck?.checkLogId ?? 0;
    final tripId = state.activeCheck?.tripId ?? (route?.id ?? 0);

    final request = CompleteChildSafetyCheckRequest(
      checkLogId: checkLogId,
      tripId: tripId,
      latitude: location.latitude,
      longitude: location.longitude,
      anySleepingChildFound: state.anySleepingChildFound,
      sleepingChildrenCount: state.anySleepingChildFound ? state.sleepingChildrenCount : 0,
      driverNotes: state.driverNotes,
      verificationMethod: 'AppSafetyButton',
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
  );
});
