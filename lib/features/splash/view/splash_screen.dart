import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../core/routing/app_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/splash_viewmodel.dart';

/// Flutter equivalent of `SplashActivity` + `splash_activity.xml`.
///
/// Auto-login redirect now matches `LoginActivity.startNavigation()`'s
/// `PreferenceManager.getCurrentUser(context) != null` check — that logic
/// originally lived in LoginActivity (Splash unconditionally always went
/// to Login, which then silently redirected again to Home if already
/// logged in, causing a brief double-navigation). Doing the check once,
/// here, is a small structural improvement: no flash of the login screen
/// for an already-authenticated driver.
///
/// The original also did a GPS-enabled check and created an external
/// storage directory in this screen — neither is ported here; see the
/// Step 1 notes for why (dead code / centralized properly in Step 5).
class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashState = ref.watch(splashViewModelProvider);
    final flavorConfig = ref.watch(flavorConfigProvider);

    if (splashState.isReady) {
      // Scheduled after the current frame so it's safe to navigate from
      // within build().
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) return;
        final isLoggedIn = ref.read(authRepositoryProvider).isLoggedIn;
        context.go(isLoggedIn ? AppRoutes.homeShell : AppRoutes.login);
      });
    }

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.directions_bus_filled_rounded,
              color: Colors.white,
              size: 96,
            ),
            const SizedBox(height: 16),
            Text(
              flavorConfig.appName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'MyriadPro',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
