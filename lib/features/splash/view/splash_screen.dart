import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_constants.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/splash_viewmodel.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splashState = ref.watch(splashViewModelProvider);

    if (splashState.isReady) {
      // Scheduled after the current frame so it's safe to navigate from
      // within build().
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!context.mounted) return;
        final isLoggedIn = ref.read(authRepositoryProvider).isLoggedIn;
        context.go(isLoggedIn ? Constants.HOME_ROUTE : Constants.LOGIN_ROUTE);
      });
    }

    return Scaffold(
      backgroundColor: AppColors.PRIMARY,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Stack(
            children: [
              // 1. Pinned to the top center
              Align(
                alignment: Alignment.topCenter,
                child: SafeArea(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/ufony_icon.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),

              // 2. Pinned to the exact center of the screen
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/school_bus_splash.png',
                      width: 200,
                      height: 200,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "School Diary Tracker",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
