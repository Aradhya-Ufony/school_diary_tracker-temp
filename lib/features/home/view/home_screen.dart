import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../core/routing/app_router.dart';
import '../../../data/models/route_response.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/home_viewmodel.dart';

/// Flutter equivalent of `HomeTabActivity` + `AllRouteFragment` +
/// `home_activity.xml`. The original's Favourites tab was commented out
/// of the ViewPager adapter (`FavouriteFragment` is dead code, never
/// actually shown) — so only the "All Routes" list is ported; nothing
/// about a tab layer was dropped, there was only ever one working tab.
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
    final state = ref.watch(homeViewModelProvider);
    final user = ref.watch(authRepositoryProvider).getCurrentUser();

    return Scaffold(
      appBar: AppBar(
        title: Text(user != null ? 'Hi, ${user.firstName}' : 'Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () async {
              await ref.read(authRepositoryProvider).logout();
              if (context.mounted) context.go(AppRoutes.login);
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search routes',
                  border: OutlineInputBorder(),
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
              const Expanded(
                child: Center(child: Text('No routes available')),
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
                        child: const Text('Start'),
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

  /// Ported from `RoutesAdapter.ShowAlertDialog()` (the "Tracker" /
  /// route-name confirmation before calling `listListener.onSuccess()`)
  /// combined with `HomeTabActivity.startRoute()`.
  Future<void> _confirmAndStart(BuildContext context, RouteResponse route) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Tracker'),
        content: Text(route.name),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('OK'),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    setState(() => _isStarting = true);

    final locationService = ref.read(locationTrackingServiceProvider);
    final granted = await locationService.requestPermissions();
    if (!granted) {
      if (context.mounted) {
        setState(() => _isStarting = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Location permission is required to start a trip.'),
          ),
        );
      }
      return;
    }

    await ref.read(homeViewModelProvider.notifier).selectRoute(route);
    await locationService.start(route);

    if (context.mounted) {
      setState(() => _isStarting = false);
      context.go(AppRoutes.tripMap, extra: route);
    }
  }
}
