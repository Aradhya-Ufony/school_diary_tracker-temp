import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/utils/status_utils.dart';
import '../../../data/models/route_response.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../viewmodel/home_viewmodel.dart';
import 'driver_details_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentIndex = 0;
  final _searchController = TextEditingController();
  bool _isStarting = false;
  late final AppLifecycleListener _lifecycleListener;

  @override
  void initState() {
    super.initState();
    _lifecycleListener = AppLifecycleListener(
      onResume: () => ref.read(homeViewModelProvider.notifier).refreshVehicleState(),
    );
  }

  @override
  void dispose() {
    _lifecycleListener.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _showSettingsSheet(BuildContext context, AppLocalizations l10n) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) => SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    l10n.homeMenuLanguage == 'Language' ? 'Settings' : l10n.homeTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.PRIMARY_DARK,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.language_rounded, color: AppColors.PRIMARY),
                  ),
                  title: Text(
                    l10n.homeMenuLanguage,
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  trailing: const Icon(Icons.chevron_right_rounded),
                  onTap: () {
                    Navigator.pop(bottomSheetContext);
                    context.push(Constants.LANGUAGE_ROUTE);
                  },
                ),
                const Divider(height: 16),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.ERROR.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.logout_rounded, color: AppColors.ERROR),
                  ),
                  title: Text(
                    l10n.homeLogout,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.ERROR,
                    ),
                  ),
                  onTap: () async {
                    Navigator.pop(bottomSheetContext);
                    await ref.read(authRepositoryProvider).logout();
                    if (context.mounted) context.go(Constants.LOGIN_ROUTE);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showRoutesModal(BuildContext context, AppLocalizations l10n) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (modalContext) {
        return Consumer(
          builder: (context, ref, _) {
            final state = ref.watch(homeViewModelProvider);
            final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
            final modalHeight = MediaQuery.of(context).size.height * (isLandscape ? 0.90 : 0.75);

            return Container(
              height: modalHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Container(
                    width: 45,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppColors.PRIMARY.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(Icons.directions_bus_rounded, color: AppColors.PRIMARY),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Student Pickup / Drop',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Select a route to start trip',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close_rounded),
                          onPressed: () => Navigator.pop(modalContext),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_rounded, color: AppColors.PRIMARY),
                        hintText: l10n.homeSearchHint,
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) =>
                          ref.read(homeViewModelProvider.notifier).search(value),
                    ),
                  ),
                  const Divider(height: 16),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
                      child: state.isLoading || state.isVehicleStateLoading
                          ? const Center(child: CircularProgressIndicator())
                          : state.filteredRoutes.isEmpty
                              ? Center(child: Text(l10n.homeNoRoutes))
                              : ListView.separated(
                                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  itemCount: state.filteredRoutes.length,
                                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                                  itemBuilder: (context, index) {
                                    final route = state.filteredRoutes[index];

                                    return Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(color: Colors.grey.shade200),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.03),
                                            blurRadius: 8,
                                            offset: const Offset(0, 3),
                                          )
                                        ],
                                      ),
                                      child: ListTile(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        onTap: () {
                                          if (_isStarting) return;
                                          final isBlocked = state.vehicleState != null &&
                                              (state.vehicleState!.isBlocked ||
                                                  state.vehicleState!.currentState.toUpperCase() != 'ACTIVE');
                                          if (isBlocked) {
                                            final displayBusNo = (route.vehicleLicenseNumber != null && route.vehicleLicenseNumber!.isNotEmpty)
                                                ? route.vehicleLicenseNumber!
                                                : (state.vehicleState?.schoolBusId ?? 'Unknown');
                                            showDialog(
                                              context: context,
                                              builder: (dialogContext) => AlertDialog(
                                                title: Text(l10n.homeBusLabel(displayBusNo)),
                                                content: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(l10n.homeVehicleStatus(StatusUtils.formatStatus(state.vehicleState?.currentState))),
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
                                          } else {
                                            Navigator.pop(modalContext);
                                            _confirmAndStart(context, route);
                                          }
                                        },
                                        leading: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.PRIMARY.withOpacity(0.1),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.route_rounded, color: AppColors.PRIMARY),
                                        ),
                                        title: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                route.name,
                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            if (route.isLiveAt(DateTime.now())) ...[
                                              const SizedBox(width: 6),
                                              Container(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                decoration: BoxDecoration(
                                                  color: Colors.green.shade50,
                                                  borderRadius: BorderRadius.circular(8),
                                                  border: Border.all(color: Colors.green.shade300),
                                                ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    Container(
                                                      width: 6,
                                                      height: 6,
                                                      decoration: const BoxDecoration(
                                                        color: Colors.green,
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      'Live Now',
                                                      style: TextStyle(
                                                        color: Colors.green.shade800,
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ],
                                        ),
                                        subtitle: route.vehicleLicenseNumber != null && route.vehicleLicenseNumber!.isNotEmpty
                                            ? Text('Bus No: ${route.vehicleLicenseNumber}')
                                            : null,
                                        trailing: state.vehicleState != null &&
                                                (state.vehicleState!.isBlocked ||
                                                    state.vehicleState!.currentState.toUpperCase() != 'ACTIVE')
                                            ? const Icon(Icons.info_outline, color: Colors.orange)
                                            : Icon(
                                                Icons.chevron_right_rounded,
                                                color: Colors.grey.shade400,
                                                size: 26,
                                              ),
                                      ),
                                    );
                                  },
                                ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(homeViewModelProvider);
    final user = ref.watch(authRepositoryProvider).getCurrentUser();

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.PRIMARY, AppColors.PRIMARY_DARK],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.directions_bus_filled_rounded,
                color: Colors.white,
                size: 22,
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  Constants.APP_NAME,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    letterSpacing: 1.2,
                  ),
                ),
                if (user != null)
                  Text(
                    user.firstName.isNotEmpty ? 'Hi, ${user.firstName}' : user.role,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.black87,
                size: 22,
              ),
            ),
            onPressed: () => _showSettingsSheet(context, l10n),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Tab 0: Home Dashboard
          _buildHomeTab(context, l10n, state, user),

          // Tab 1: Notifications
          _buildNotificationsTab(context, l10n),

          // Tab 2: Profile (Driver Details)
          const DriverDetailsScreen(hideAppBar: true),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1E293B), // Dark slate tab bar inspired by reference UI
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            )
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: AppColors.PRIMARY,
          unselectedItemColor: Colors.grey.shade400,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              activeIcon: Icon(Icons.home_rounded, size: 26),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              activeIcon: Icon(Icons.notifications_rounded, size: 26),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              activeIcon: Icon(Icons.person_rounded, size: 26),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHomeTab(
    BuildContext context,
    AppLocalizations l10n,
    HomeState state,
    dynamic user,
  ) {
    final firstRoute = state.allRoutes.isNotEmpty ? state.allRoutes.first : null;
    final String busNo;
    if (firstRoute?.vehicleLicenseNumber != null && firstRoute!.vehicleLicenseNumber!.trim().isNotEmpty) {
      busNo = firstRoute.vehicleLicenseNumber!;
    } else if (state.vehicleState?.schoolBusId != null && state.vehicleState!.schoolBusId.trim().isNotEmpty) {
      busNo = state.vehicleState!.schoolBusId;
    } else if (firstRoute?.vehicleId != null) {
      busNo = firstRoute!.vehicleId.toString();
    } else {
      busNo = '--';
    }

    final driverName = (user?.fullName != null && user!.fullName.trim().isNotEmpty)
        ? user.fullName
        : 'Assigned Driver';

    final activeTripId = ref.watch(tripRepositoryProvider).activeTripId;
    final storedRouteId = ref.watch(localStorageServiceProvider).getString(StorageKeys.ROUTE_ID);
    RouteResponse? activeRoute;
    if (activeTripId != null) {
      final rId = storedRouteId != null ? int.tryParse(storedRouteId) : null;
      activeRoute = state.allRoutes.firstWhere(
        (r) => r.id == rId,
        orElse: () => firstRoute ?? RouteResponse(id: rId ?? 0, name: 'Active Trip In Progress'),
      );
    }

    return RefreshIndicator(
      onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (activeTripId != null && activeRoute != null) ...[
              GestureDetector(
                onTap: () {
                  final locService = ref.read(locationTrackingServiceProvider);
                  if (!locService.isRunning && activeRoute != null) {
                    locService.start(activeRoute);
                  }
                  context.go(Constants.TRIP_MAP_ROUTE, extra: activeRoute);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF10B981), Color(0xFF059669)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.navigation_rounded, color: Colors.white, size: 24),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Text(
                                  'TRIP IN PROGRESS',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Text(
                              activeRoute.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right_rounded, color: Colors.white, size: 28),
                    ],
                  ),
                ),
              ),
            ],
            // Quick Actions Header
            const Padding(
              padding: EdgeInsets.only(left: 4, bottom: 12),
              child: Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 0.3,
                ),
              ),
            ),

            // Quick Actions Grid (Responsive Columns & Aspect Ratio)
            Builder(
              builder: (context) {
                final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
                final screenWidth = MediaQuery.of(context).size.width;

                final int crossAxisCount;
                final double childAspectRatio;

                if (isLandscape) {
                  crossAxisCount = screenWidth > 900 ? 4 : 3;
                  childAspectRatio = screenWidth > 900 ? 1.6 : 1.45;
                } else {
                  crossAxisCount = screenWidth > 600 ? 3 : 2;
                  childAspectRatio = screenWidth > 600 ? 1.3 : 1.15;
                }

                return GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: childAspectRatio,
                  children: [
                    // Top Row Card 1
                    _buildActionCard(
                      context,
                      title: 'Student Pickup / Drop',
                      subtitle: 'Scan / confirm students at stops',
                      icon: Icons.people_alt_rounded,
                      iconBgColor: AppColors.PRIMARY.withOpacity(0.12),
                      iconColor: AppColors.PRIMARY,
                      onTap: () => _showRoutesModal(context, l10n),
                    ),
                    // Top Row Card 2: Incident Report
                    _buildActionCard(
                      context,
                      title: 'Incident Report',
                      subtitle: 'Report and manage incidents',
                      icon: Icons.error_outline_rounded,
                      iconBgColor: AppColors.ERROR.withOpacity(0.12),
                      iconColor: AppColors.ERROR,
                      onTap: () => context.push(Constants.INCIDENT_INTAKE_ROUTE),
                    ),
                    // Row 2 Card 1: Pre-Trip Inspection
                    _buildActionCard(
                      context,
                      title: l10n.homeMenuPreTrip,
                      subtitle: 'Check and report vehicle inspections',
                      icon: Icons.playlist_add_check_rounded,
                      iconBgColor: const Color(0xFF10B981).withOpacity(0.12),
                      iconColor: const Color(0xFF10B981),
                      onTap: () async {
                        if (firstRoute != null) {
                          await context.push(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
                            'schoolBusId': firstRoute.vehicleId?.toString() ?? '',
                            'routeName': firstRoute.name,
                            'route': firstRoute,
                          });
                          if (mounted) {
                            ref.read(homeViewModelProvider.notifier).refreshVehicleState();
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.homeErrorNoRoutesPreTrip)),
                          );
                        }
                      },
                    ),
                    // Row 2 Card 2: Report Defects
                    _buildActionCard(
                      context,
                      title: l10n.homeMenuReportDefects,
                      subtitle: 'Report and manage vehicle defects',
                      icon: Icons.report_problem_outlined,
                      iconBgColor: const Color(0xFFF59E0B).withOpacity(0.12),
                      iconColor: const Color(0xFFF59E0B),
                      onTap: () async {
                        if (firstRoute != null) {
                          await context.push(Constants.DVIR_POST_TRIP_ROUTE, extra: firstRoute);
                          if (mounted) {
                            ref.read(homeViewModelProvider.notifier).refreshVehicleState();
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.homeErrorNoRoutesReportDefects)),
                          );
                        }
                      },
                    ),
                    // Row 3 Card 1: Log Drill
                    _buildActionCard(
                      context,
                      title: l10n.homeMenuDrill,
                      subtitle: 'Record and submit drill activities',
                      icon: Icons.assignment_outlined,
                      iconBgColor: const Color(0xFF8B5CF6).withOpacity(0.12),
                      iconColor: const Color(0xFF8B5CF6),
                      onTap: () {
                        final vState = state.vehicleState;
                        if (vState != null &&
                            (vState.isBlocked ||
                                vState.currentState.toUpperCase() == 'OUT_OF_SERVICE' ||
                                vState.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION' ||
                                vState.currentState.toUpperCase() == 'INACTIVE' ||
                                vState.currentState.toUpperCase() == 'BLOCKED')) {
                          final title = vState.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION'
                              ? 'Vehicle Verification Pending'
                              : 'Vehicle Out of Service';
                          final msg = vState.blockReason ??
                              (vState.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION'
                                  ? 'This vehicle has repairs pending inspection sign-off. Drills cannot be logged.'
                                  : 'This vehicle is currently out of service. Drills cannot be logged.');

                          showDialog<void>(
                            context: context,
                            builder: (dialogContext) => AlertDialog(
                              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                              content: Text(msg),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(dialogContext),
                                  child: Text(l10n.genericOk.toUpperCase()),
                                ),
                              ],
                            ),
                          );
                          return;
                        }
                        context.push(Constants.DRILL_LIST_ROUTE);
                      },
                    ),
                    // Row 3 Card 2: Child Safety Check
                    _buildActionCard(
                      context,
                      title: l10n.homeMenuChildSafetyCheck,
                      subtitle: 'Perform post-trip bus sweep',
                      icon: Icons.shield_outlined,
                      iconBgColor: const Color(0xFF06B6D4).withOpacity(0.12),
                      iconColor: const Color(0xFF06B6D4),
                      onTap: () async {
                        await context.push(Constants.CHILD_SAFETY_CHECK_ROUTE, extra: firstRoute);
                      },
                    ),
                  ],
                );
              },
            ),

            const SizedBox(height: 24),

            // Vehicle & Driver Info Banner (Inspired by Bottom Card in Reference Layout)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B).withOpacity(0.08),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.directions_bus_rounded,
                      color: Color(0xFF1E293B),
                      size: 28,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bus No.',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          busNo,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 1,
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Driver',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          driverName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required Color iconBgColor,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: iconBgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(icon, color: iconColor, size: 22),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade600,
                        height: 1.15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationsTab(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.PRIMARY.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.notifications_none_rounded,
                size: 64,
                color: AppColors.PRIMARY,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'No Notifications',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "You're all caught up! Important trip updates and safety alerts will appear here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmAndStart(BuildContext context, RouteResponse route) async {
    final l10n = AppLocalizations.of(context)!;

    setState(() => _isStarting = true);
    try {
      // 1. Fetch vehicle status from API
      final dvirRepo = ref.read(dvirRepositoryProvider);
      final stateResponse = await dvirRepo.getVehicleState(
        route.vehicleId ?? 0,
        fallbackBusNumber: route.vehicleLicenseNumber,
      );
      final isBlockedState = stateResponse.isBlocked ||
          stateResponse.currentState.toUpperCase() == 'OUT_OF_SERVICE' ||
          stateResponse.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION' ||
          stateResponse.currentState.toUpperCase() == 'INACTIVE' ||
          stateResponse.currentState.toUpperCase() == 'BLOCKED';

      if (isBlockedState) {
        if (context.mounted) {
          setState(() => _isStarting = false);
          final title = stateResponse.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION'
              ? 'Vehicle Verification Pending'
              : 'Vehicle Out of Service';
          final msg = stateResponse.blockReason ??
              (stateResponse.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION'
                  ? 'This vehicle has repairs pending inspection sign-off and cannot be dispatched.'
                  : 'This vehicle is currently out of service and cannot start trips.');

          showDialog<void>(
            context: context,
            builder: (dialogContext) => AlertDialog(
              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              content: Text(msg),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: Text(l10n.genericOk.toUpperCase()),
                ),
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

    // Start location tracking (First GPS fix will automatically trigger POST trip/start)
    await locationService.start(route);

    if (context.mounted) {
      setState(() => _isStarting = false);
      context.go(Constants.TRIP_MAP_ROUTE, extra: route);
    }
  }
}
