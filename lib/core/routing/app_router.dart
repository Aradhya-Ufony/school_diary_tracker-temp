import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/route_response.dart';
import '../../features/auth/view/login_screen.dart';
import '../../features/children/view/children_screen.dart';
import '../../features/drills/presentation/screens/drill_list_screen.dart';
import '../../features/dvir/view/post_trip_walkaround_screen.dart';
import '../../features/dvir/view/pre_trip_verification_screen.dart';
import '../../features/home/view/home_screen.dart';
import '../../features/home/view/driver_details_screen.dart';
import '../../features/settings/view/app_info_screen.dart';
import '../../features/settings/view/language_screen.dart';
import '../../features/splash/view/splash_screen.dart';
import '../../features/stops/view/stops_screen.dart';
import '../../features/trip/view/transport_map_screen.dart';
import '../../features/drills/presentation/screens/pre_drill_checklist_screen.dart';
import '../../features/drills/presentation/screens/drill_type_selection_screen.dart';
import '../../features/drills/presentation/screens/drill_roster_marking_screen.dart';
import '../../features/drills/presentation/screens/evidence_capture_screen.dart';
import '../../features/drills/presentation/screens/drill_summary_screen.dart';
import '../../features/incident/view/incident_crash_intake_screen.dart';
import '../../features/incident/view/incident_dashboard_screen.dart';
import '../../features/incident/view/incident_crash_details_screen.dart';
import '../../features/incident/view/incident_crash_history_screen.dart';
import '../../features/safety_check/view/child_safety_check_screen.dart';
import '../../features/drivers_corner/view/drivers_corner_screen.dart';
import '../utils/app_constants.dart';

/// Provider to track the current screen name for logging purposes.
final currentScreenProvider = StateProvider<String>((ref) => Constants.SPLASH);

/// Observer that updates [currentScreenProvider] whenever the route changes.
class ScreenTrackerObserver extends NavigatorObserver {
  final Ref ref;
  ScreenTrackerObserver(this.ref);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _updateScreen(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute != null) _updateScreen(previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (newRoute != null) _updateScreen(newRoute);
  }

  void _updateScreen(Route<dynamic> route) {
    // Extracts the name from GoRouter's route settings
    final name = route.settings.name ?? route.settings.arguments?.toString() ?? 'Unknown';
    Future.microtask(() {
      ref.read(currentScreenProvider.notifier).state = name;
    });
  }
}

class StopsRouteArgs {
  final int routeId;
  final String routeName;
  final bool isUndoMode;

  const StopsRouteArgs({
    required this.routeId,
    required this.routeName,
    this.isUndoMode = false,
  });
}

/// RouteObserver to allow widgets to subscribe to route transitions (e.g. didPopNext).
final rootRouteObserver = RouteObserver<ModalRoute<void>>();

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Constants.SPLASH_ROUTE,
    observers: [
      ScreenTrackerObserver(ref),
      rootRouteObserver,
    ],
    routes: [
      GoRoute(
        path: Constants.SPLASH_ROUTE,
        name: Constants.SPLASH,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Constants.LOGIN_ROUTE,
        name: Constants.LOGIN,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ),
      GoRoute(
        path: Constants.HOME_ROUTE,
        name: Constants.HOME,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Constants.TRIP_MAP_ROUTE,
        name: Constants.TRIP_MAP,
        builder: (context, state) {
          final route = state.extra as RouteResponse;
          return TransportMapScreen(route: route);
        },
      ),
      GoRoute(
        path: Constants.STOPS_ROUTE,
        name: Constants.STOPS,
        builder: (context, state) {
          final args = state.extra as StopsRouteArgs;
          return StopsScreen(
            routeId: args.routeId,
            routeName: args.routeName,
            isUndoMode: args.isUndoMode,
          );
        },
      ),
      GoRoute(
        path: Constants.CHILDREN_ROUTE,
        name: Constants.CHILDREN,
        builder: (context, state) {
          final args = state.extra as StopsRouteArgs;
          return ChildrenScreen(routeId: args.routeId, routeName: args.routeName);
        },
      ),
      GoRoute(
        path: Constants.LANGUAGE_ROUTE,
        name: Constants.LANGUAGE,
        builder: (context, state) {
          final isInitialSetup = state.extra as bool? ?? false;
          return LanguageScreen(isInitialSetup: isInitialSetup);
        },
      ),
      GoRoute(
        path: Constants.APP_INFO_ROUTE,
        name: Constants.APP_INFO,
        builder: (context, state) => const AppInfoScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_LIST_ROUTE,
        name: Constants.DRILL_LIST,
        builder: (context, state) => const DrillListScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_TYPE_ROUTE,
        name: Constants.DRILL_TYPE,
        builder: (context, state) => const DrillTypeSelectionScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_ROSTER_MARKING_ROUTE,
        name: Constants.DRILL_ROSTER_MARKING,
        builder: (context, state) => const DrillRosterMarkingScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_CHECKLIST_ROUTE,
        name: Constants.DRILL_CHECKLIST,
        builder: (context, state) => const PreDrillChecklistScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_EVIDENCE_ROUTE,
        name: Constants.DRILL_EVIDENCE,
        builder: (context, state) => const EvidenceCaptureScreen(),
      ),
      GoRoute(
        path: Constants.DRILL_SUMMARY_ROUTE,
        name: Constants.DRILL_SUMMARY,
        builder: (context, state) {
          final drillLogId = state.extra as int;
          return DrillSummaryScreen(drillLogId: drillLogId);
        },
      ),
      GoRoute(
        path: Constants.DRIVER_DETAILS_ROUTE,
        name: Constants.DRIVER_DETAILS,
        builder: (context, state) => const DriverDetailsScreen(),
      ),
      GoRoute(
        path: Constants.CHILD_SAFETY_CHECK_ROUTE,
        name: Constants.CHILD_SAFETY_CHECK,
        builder: (context, state) {
          final route = state.extra as RouteResponse?;
          return ChildSafetyCheckScreen(route: route);
        },
      ),
      GoRoute(
        path: Constants.DVIR_POST_TRIP_ROUTE,
        name: Constants.DVIR_POST_TRIP_SCREEN,
        builder: (context, state) {
          final route = state.extra as RouteResponse;
          return PostTripWalkaroundScreen(route: route);
        },
      ),
      GoRoute(
        path: Constants.DVIR_PRE_TRIP_ROUTE,
        name: Constants.DVIR_PRE_TRIP_SCREEN,
        builder: (context, state) {
          final args = state.extra as Map<String, dynamic>;
          return PreTripVerificationScreen(
            schoolBusId: args['schoolBusId'],
            routeName: args['routeName'],
            routeResponse: args['route'],
          );
        },
      ),
      GoRoute(
        path: Constants.INCIDENT_INTAKE_ROUTE,
        name: Constants.INCIDENT_INTAKE,
        builder: (context, state) => const IncidentDashboardScreen(),
      ),
      GoRoute(
        path: Constants.INCIDENT_FORM_ROUTE,
        name: Constants.INCIDENT_FORM,
        builder: (context, state) => const IncidentCrashIntakeScreen(),
      ),
      GoRoute(
        path: Constants.INCIDENT_DETAILS_ROUTE,
        name: Constants.INCIDENT_DETAILS,
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return IncidentCrashDetailsScreen(incidentId: id);
        },
      ),
      GoRoute(
        path: Constants.INCIDENT_HISTORY_ROUTE,
        name: Constants.INCIDENT_HISTORY,
        builder: (context, state) => const IncidentCrashHistoryScreen(),
      ),
      GoRoute(
        path: Constants.DRIVERS_CORNER_ROUTE,
        name: Constants.DRIVERS_CORNER,
        builder: (context, state) {
          final driverId = state.extra as int?;
          return DriversCornerScreen(driverId: driverId);
        },
      ),
    ],
  );
});
