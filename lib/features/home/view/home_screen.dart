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
              title: const Text('Driver Details'),
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.DRIVER_DETAILS_ROUTE);
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning_amber_rounded),
              title: const Text('Drill'),
              onTap: () {
                Navigator.pop(context);
                context.push(Constants.DRILL_LIST_ROUTE);
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
              title: const Text('Dispatch Blocked', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              content: Text(stateResponse.blockReason ?? 'Vehicle is currently OUT_OF_SERVICE.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: const Text('OK'),
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
            content: Text('Failed to start trip on server: $e'),
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
