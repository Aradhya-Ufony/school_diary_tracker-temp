import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../../settings/viewmodel/locale_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndNavigate();
    });
  }

  Future<void> _checkAndNavigate() async {
    if (!mounted) return;
    final hasSelectedLanguage =
        ref.read(localeControllerProvider.notifier).hasSelectedLanguage;
    final isLoggedIn = ref.read(authRepositoryProvider).isLoggedIn;

    if (!hasSelectedLanguage) {
      context.go(Constants.LANGUAGE_ROUTE, extra: true);
    } else if (isLoggedIn) {
      // Sync any offline queued safety checks in the background
      final safetyRepo = ref.read(childSafetyCheckRepositoryProvider);
      safetyRepo.syncPendingOfflineChecks().catchError((_) {});

      // Auto-resume active trip if tracking is already in progress
      final tripRepo = ref.read(tripRepositoryProvider);
      final activeTripId = tripRepo.activeTripId;
      final storage = ref.read(localStorageServiceProvider);
      final storedRouteId = storage.getString(StorageKeys.ROUTE_ID);

      if (activeTripId != null && storedRouteId != null) {
        final routeId = int.tryParse(storedRouteId);
        final routeRepo = ref.read(routeRepositoryProvider);
        try {
          final routes = await routeRepo.getRoutes();
          final activeRoute = routes.firstWhere(
            (r) => r.id == routeId,
            orElse: () {
              final cached = routeRepo.getCachedRoutes();
              return cached.firstWhere(
                (r) => r.id == routeId,
                orElse: () => RouteResponse(id: routeId ?? 0, name: 'Active Trip'),
              );
            },
          );
          final locationService = ref.read(locationTrackingServiceProvider);
          if (!locationService.isRunning) {
            await locationService.start(activeRoute);
          }
          if (mounted) {
            context.go(Constants.HOME_ROUTE);
            return;
          }
        } catch (_) {}
      }

      if (mounted) {
        context.go(Constants.HOME_ROUTE);
      }
    } else {
      context.go(Constants.LOGIN_ROUTE);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
