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
