import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/routing/app_router.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/home_viewmodel.dart';

/// Flutter equivalent of `HomeTabActivity` + `AllRouteFragment` +
/// `home_activity.xml`.
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with RouteAware {
  final _searchController = TextEditingController();
  bool _isStarting = false;
  late final AppLifecycleListener _lifecycleListener;

  @override
  void initState() {
    super.initState();
    _lifecycleListener = AppLifecycleListener(
      onResume: () => ref.read(homeViewModelProvider.notifier).refresh(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final route = ModalRoute.of(context);
    if (route != null) {
      rootRouteObserver.subscribe(this, route);
    }
  }

  @override
  void didPopNext() {
    ref.read(homeViewModelProvider.notifier).refresh();
  }

  @override
  void dispose() {
    rootRouteObserver.unsubscribe(this);
    _lifecycleListener.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(homeViewModelProvider);
    final user = ref.watch(authRepositoryProvider).getCurrentUser();

    // Listen to current screen updates to ensure refresh on returning to Home
    ref.listen<String>(currentScreenProvider, (previous, next) {
      if (next == Constants.HOME && previous != Constants.HOME) {
        ref.read(homeViewModelProvider.notifier).refresh();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          user != null ? l10n.homeHi(user.firstName) : l10n.homeTitle,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.PRIMARY,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.account_circle, size: 60, color: Colors.white),
                  const SizedBox(height: 10),
                  Text(
                    user != null ? l10n.homeHi(user.firstName) : l10n.homeTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  if (user != null)
                    Text(
                      user.role,
                      style: const TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(l10n.homeMenuDriverDetails),
              onTap: () async {
                Navigator.pop(context);
                await context.push(Constants.DRIVER_DETAILS_ROUTE);
                if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning_amber_rounded),
              title: Text(l10n.homeMenuDrill),
              onTap: () async {
                Navigator.pop(context);
                await context.push(Constants.DRILL_LIST_ROUTE);
                if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
              },
            ),
            ListTile(
              leading: const Icon(Icons.playlist_add_check),
              title: Text(l10n.homeMenuPreTrip),
              onTap: () async {
                Navigator.pop(context);
                final firstRoute = state.allRoutes.isNotEmpty ? state.allRoutes.first : null;
                if (firstRoute != null) {
                  await context.push(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
                    'schoolBusId': firstRoute.vehicleId?.toString() ?? '',
                    'routeName': firstRoute.name,
                    'route': firstRoute,
                  });
                  if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.homeErrorNoRoutesPreTrip)),
                  );
                }
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(l10n.homeMenuLanguage),
              onTap: () async {
                Navigator.pop(context);
                await context.push(Constants.LANGUAGE_ROUTE);
                if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(l10n.homeMenuAppInfo),
              onTap: () async {
                Navigator.pop(context);
                await context.push(Constants.APP_INFO_ROUTE);
                if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
              },
            ),
            ListTile(
              leading: const Icon(Icons.error_outline, color: AppColors.ERROR),
              title: Text(l10n.homeMenuPostCrashReporting),
              onTap: () async {
                Navigator.pop(context);
                await context.push(Constants.INCIDENT_INTAKE_ROUTE);
                if (mounted) ref.read(homeViewModelProvider.notifier).refresh();
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(l10n.homeLogout),
              onTap: () async {
                Navigator.pop(context);
                await ref.read(authRepositoryProvider).logout();
                if (context.mounted) context.go(Constants.LOGIN_ROUTE);
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: l10n.homeSearchHint,
                  border: const OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (value) =>
                    ref.read(homeViewModelProvider.notifier).search(value),
              ),
            ),
            if ((state.isLoading || state.isVehicleStateLoading) && state.allRoutes.isEmpty)
              const Expanded(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (state.error != null && state.allRoutes.isEmpty)
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          state.error!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 12),
                        TextButton(
                          onPressed: () =>
                              ref.read(homeViewModelProvider.notifier).refresh(),
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.PRIMARY,
                          ),
                          child: const Text(
                            'Refresh',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            else if (state.filteredRoutes.isEmpty)
              Expanded(
                child: Center(child: Text(l10n.homeNoRoutes)),
              )
            else
              Expanded(
                child: ListView.separated(
                  itemCount: state.filteredRoutes.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final route = state.filteredRoutes[index];
                    final isBusActive = state.vehicleState != null &&
                        state.vehicleState!.currentState.toUpperCase() == 'ACTIVE' &&
                        !state.vehicleState!.isBlocked;

                    Widget trailingWidget;
                    if (isBusActive) {
                      trailingWidget = FilledButton(
                        onPressed: _isStarting
                            ? null
                            : () => _confirmAndStart(context, route),
                        child: Text(l10n.homeStart),
                      );
                    } else {
                      final showInfoButton = state.vehicleState != null && !state.isVehicleStateLoading;
                      trailingWidget = Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FilledButton(
                            onPressed: null,
                            child: Text(l10n.homeStart),
                          ),
                          if (showInfoButton)
                            IconButton(
                              icon: const Icon(Icons.info_outline, color: Colors.orange),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (dialogContext) => AlertDialog(
                                    title: Text(l10n.homeBusLabel(state.vehicleState?.schoolBusId ?? 'Unknown')),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(l10n.homeVehicleStatus(state.vehicleState?.currentState.replaceAll('_', ' ') ?? 'Unknown')),
                                        if (state.vehicleState?.blockReason != null) ...[
                                          const SizedBox(height: 8),
                                          Text(l10n.homeVehicleReason(state.vehicleState!.blockReason!)),
                                        ],
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(dialogContext),
                                        child: Text(l10n.genericOk.toUpperCase()),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                        ],
                      );
                    }

                    return ListTile(
                      title: Text(route.name),
                      trailing: trailingWidget,
                    );
                  },
                ),
              ),

          ],
        ),
      ),
    );
  }

  Future<void> _confirmAndStart(BuildContext context, RouteResponse route) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.tripConfirmTitle),
        content: Text(route.name),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.tripConfirmCancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.tripConfirmOk),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    setState(() => _isStarting = true);

    if (confirmed != true || !context.mounted) return;
    setState(() => _isStarting = true);
    try {
      // 1. Fetch vehicle status from API
      final dvirRepo = ref.read(dvirRepositoryProvider);
      final stateResponse = await dvirRepo.getVehicleState(
        route.vehicleId ?? 0,
        fallbackBusNumber: route.vehicleLicenseNumber,
      );
      if (stateResponse.currentState == 'CERTIFIED_PENDING_VERIFICATION') {
        if (context.mounted) {
          setState(() => _isStarting = false);
          // Redirect to Pre-Trip verification to review repairs and sign off
          context.go(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
            'schoolBusId': route.vehicleId?.toString() ?? '',
            'routeName': route.name,
            'route': route,
          });
        }
        return;
      }
      if (stateResponse.isBlocked) {
        if (context.mounted) {
          setState(() => _isStarting = false);
          showDialog<void>(
            context: context,
            builder: (dialogContext) => AlertDialog(
              title: Text(l10n.homeDispatchBlockedTitle, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              content: Text(stateResponse.blockReason ?? l10n.homeVehicleOutOfServiceDefault),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: Text(l10n.genericOk.toUpperCase()),
                )
              ],
            ),
          );
        }
        return;
      }
    } catch (e) {
      debugPrint("eDVIR state check failed: $e");
    }

    final locationService = ref.read(locationTrackingServiceProvider);
    final granted = await locationService.requestPermissions();
    if (!granted) {
      if (context.mounted) {
        setState(() => _isStarting = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.tripErrorLocationRequired),
          ),
        );
      }
      return;
    }

    await ref.read(homeViewModelProvider.notifier).selectRoute(route);

    try {
      final tripRepo = ref.read(tripRepositoryProvider);
      await tripRepo.startTrip(
        route: route,
        location: route.startLocation ?? const UserLocation(latitude: 0, longitude: 0),
      );
    } catch (e) {
      if (context.mounted) {
        setState(() => _isStarting = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.homeFailedToStartTrip(e.toString())),
          ),
        );
      }
      return;
    }

    await locationService.start(route);

    if (context.mounted) {
      setState(() => _isStarting = false);
      context.go(Constants.TRIP_MAP_ROUTE, extra: route);
    }
  }
}
