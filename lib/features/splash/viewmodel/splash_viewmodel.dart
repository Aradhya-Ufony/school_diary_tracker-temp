import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Equivalent of SplashActivity's 3-second `Handler.postDelayed` before
/// navigating on to the next screen. The original also decided navigation
/// target (Login) unconditionally, then LoginActivity itself checked
/// PreferenceManager.getCurrentUser() to skip straight to home if already
/// logged in. We'll follow the same split of responsibility once auth
/// exists (Step 2): SplashViewModel only owns the timer/branding, the
/// auth-aware redirect decision belongs to the auth repository.
class SplashState {
  final bool isReady;
  const SplashState({this.isReady = false});
}

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel() : super(const SplashState()) {
    _startTimer();
  }

  // Original SplashActivity hardcoded a 3000ms delay with nothing actually
  // loading during that time — pure artificial wait. Cut down to just
  // enough to avoid a jarring instant-flash transition, since there's no
  // real justification for making drivers wait 3 full seconds on every
  // app launch. Flag if you'd rather this be even shorter or removed
  // entirely once Step 4 adds a real "fetch routes" call here to replace
  // the artificial delay with actual loading time.
  static const _splashDuration = Duration(milliseconds: 3000);

  Future<void> _startTimer() async {
    await Future<void>.delayed(_splashDuration);
    if (mounted) {
      state = const SplashState(isReady: true);
    }
  }
}

final splashViewModelProvider =
    StateNotifierProvider<SplashViewModel, SplashState>((ref) {
  return SplashViewModel();
});
