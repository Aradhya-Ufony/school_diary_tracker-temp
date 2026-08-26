import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../../dvir/view/post_trip_walkaround_screen.dart';
import '../viewmodel/home_viewmodel.dart';

/// Flutter equivalent of `HomeTabActivity` + `AllRouteFragment` +
/// `home_activity.xml`.
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _searchController = TextEditingController();
  bool _isStarting = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(homeViewModelProvider);
    final user = ref.watch(authRepositoryProvider).getCurrentUser();

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
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.DRIVER_DETAILS_ROUTE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning_amber_rounded),
              title: Text(l10n.homeMenuDrill),
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.DRILL_LIST_ROUTE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.playlist_add_check),
              title: Text(l10n.homeMenuPreTrip),
              onTap: () {
                Navigator.pop(context);
                final firstRoute = state.allRoutes.isNotEmpty ? state.allRoutes.first : null;
                if (firstRoute != null) {
                  context.push(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
                    'schoolBusId': firstRoute.vehicleId?.toString() ?? '',
                    'routeName': firstRoute.name,
                    'route': firstRoute,
                  });
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
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.LANGUAGE_ROUTE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(l10n.homeMenuAppInfo),
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.APP_INFO_ROUTE);
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
            if (state.vehicleState != null || state.isVehicleStateLoading)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: state.isVehicleStateLoading
                      ? const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            gradient: LinearGradient(
                              colors: _getBusStatusGradient(state.vehicleState!.currentState),
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.directions_bus, color: Colors.white, size: 24),
                                      const SizedBox(width: 8),
                                      Text(
                                        l10n.homeBusLabel(state.vehicleState!.schoolBusId),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      state.vehicleState!.currentState.replaceAll('_', ' '),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              if (state.vehicleState!.isBlocked) ...[
                                Row(
                                  children: [
                                    const Icon(Icons.warning, color: Colors.white70, size: 16),
                                    const SizedBox(width: 6),
                                    Expanded(
                                      child: Text(
                                        state.vehicleState!.blockReason ?? l10n.homeDispatchBlocked,
                                        style: const TextStyle(color: Colors.white70, fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ] else ...[
                                Text(
                                  l10n.homeVehicleReady,
                                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                                ),
                              ],
                              if (state.vehicleState!.currentState == 'CERTIFIED_PENDING_VERIFICATION') ...[
                                const SizedBox(height: 12),
                                ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: AppColors.PRIMARY,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                  ),
                                  icon: const Icon(Icons.playlist_add_check, size: 16),
                                  label: Text(
                                    l10n.homeReviewVerifyPreTrip,
                                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    final firstRoute = state.allRoutes.isNotEmpty ? state.allRoutes.first : null;
                                    if (firstRoute != null) {
                                      context.push(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
                                        'schoolBusId': state.vehicleState!.schoolBusId,
                                        'routeName': firstRoute.name,
                                        'route': firstRoute,
                                      });
                                    }
                                  },
                                ),
                              ],
                            ],
                          ),
                        ),
                ),
              ),
            if (state.isLoading && state.allRoutes.isEmpty)
              const Expanded(
                child: Center(child: CircularProgressIndicator()),
              )
            else if (state.error != null && state.allRoutes.isEmpty)
              Expanded(
                child: Center(child: Text(state.error!)),
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
                    return ListTile(
                      title: Text(route.name),
                      trailing: FilledButton(
                        onPressed: _isStarting
                            ? null
                            : () => _confirmAndStart(context, route),
                        child: Text(l10n.homeStart),
                      ),
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

  List<Color> _getBusStatusGradient(String currentState) {
    switch (currentState.toUpperCase()) {
      case 'ACTIVE':
        return [const Color(0xFF16A34A), const Color(0xFF4ADE80)]; // Green
      case 'OUT_OF_SERVICE':
        return [const Color(0xFFDC2626), const Color(0xFFF87171)]; // Red
      case 'CERTIFIED_PENDING_VERIFICATION':
        return [const Color(0xFFEA580C), const Color(0xFFFB923C)]; // Orange/Yellow
      default:
        return [AppColors.PRIMARY, const Color(0xFF3B82F6)]; // Default blue
    }
  }
}
