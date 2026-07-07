import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/route_response.dart';
import '../../features/auth/view/login_screen.dart';
import '../../features/home/view/home_screen.dart';
import '../../features/splash/view/splash_screen.dart';
import '../../features/trip/view/transport_map_screen.dart';

/// Route path constants. Centralized here rather than as inline string
/// literals scattered across `Intent`-equivalent navigation calls (which is
/// how the original Android app did it — every Activity used raw
/// `Intent(context, XActivity.class)` with no centralized route table).
///
/// Splash, login, home, and the live trip map exist as of Step 6. Each
/// subsequent migration step adds its own routes here as that screen is
/// built — see the commented-out routes below as a preview of the planned
/// structure, not yet implemented.
abstract class AppRoutes {
  static const splash = '/';
  static const login = '/login';

  /// Real `HomeTabActivity` equivalent as of Step 4 (route name kept as
  /// "homeShell" from Step 2 rather than renamed to "home", to avoid
  /// churning every screen that already navigates here).
  static const homeShell = '/home';

  /// Live trip/map screen (Step 6) — equivalent of `TransportActivity`.
  /// Requires a `RouteResponse` passed via go_router's `extra`.
  static const tripMap = '/trip/map';

// Not yet built — TransportWithoutMapActivity/BusRunningActivity
// equivalents. TransportWithoutMapActivity was only reachable on
// SDK <= 13 in the original (dead branch on a minSdk-24 app) and
// BusRunningActivity was never navigated to from anywhere in the
// original codebase (confirmed via grep) — its only useful part (a
// working stop-confirmation dialog) was ported into TransportMapScreen
// instead of resurrecting an otherwise-unreachable screen.
// static const transportNoMap = '/trip/no-map';
// static const busRunning = '/trip/running';

// Added in Step 7 (stops & pick/drop):
// static const stopsList = '/stops';
// static const undoStop = '/stops/undo';

// Added in Step 8 (children & guardians):
// static const allChildren = '/children';
// static const childrenTab = '/children/tabs';
// static const authorizedPeople = '/children/authorized-people';

// Added in Step 9 (settings):
// static const language = '/settings/language';
// static const appInfo = '/settings/app-info';
}

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.homeShell,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.tripMap,
        builder: (context, state) {
          final route = state.extra as RouteResponse;
          return TransportMapScreen(route: route);
        },
      ),
    ],
  );
});
