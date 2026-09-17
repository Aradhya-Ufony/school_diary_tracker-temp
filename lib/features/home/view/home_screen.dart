import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/utils/status_utils.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_location.dart';
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (bottomSheetContext) => SafeArea(
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
            return Container(
              height: MediaQuery.of(context).size.height * 0.75,
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
                        Row(
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Student Pickup / Drop',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Select a route to start trip',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                                    final isBusActive = state.vehicleState == null ||
                                        (state.vehicleState!.currentState.toUpperCase() == 'ACTIVE' &&
                                            !state.vehicleState!.isBlocked);

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
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                        onTap: isBusActive && !_isStarting
                                            ? () {
                                                Navigator.pop(modalContext);
                                                _confirmAndStart(context, route);
                                              }
                                            : null,
                                        leading: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: AppColors.PRIMARY.withOpacity(0.1),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(Icons.route_rounded, color: AppColors.PRIMARY),
                                        ),
                                        title: Text(
                                          route.name,
                                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                        ),
                                        subtitle: route.vehicleLicenseNumber != null && route.vehicleLicenseNumber!.isNotEmpty
                                            ? Text('Bus No: ${route.vehicleLicenseNumber}')
                                            : null,
                                        trailing: isBusActive
                                            ? FilledButton(
                                                style: FilledButton.styleFrom(
                                                  backgroundColor: AppColors.PRIMARY,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                ),
                                                onPressed: _isStarting
                                                    ? null
                                                    : () {
                                                        Navigator.pop(modalContext);
                                                        _confirmAndStart(context, route);
                                                      },
                                                child: Text(l10n.homeStart),
                                              )
                                            : Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  FilledButton(
                                                    onPressed: null,
                                                    style: FilledButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                    ),
                                                    child: Text(l10n.homeStart),
                                                  ),
                                                  if (state.vehicleState != null && !state.isVehicleStateLoading)
                                                    IconButton(
                                                      icon: const Icon(Icons.info_outline, color: Colors.orange),
                                                      onPressed: () {
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
                                                      },
                                                    ),
                                                ],
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

    final vState = state.vehicleState;
    final isOutOfServiceOrBlocked = vState != null &&
        (vState.isBlocked ||
            vState.currentState.toUpperCase() == 'OUT_OF_SERVICE' ||
            vState.currentState.toUpperCase() == 'BLOCKED' ||
            vState.currentState.toUpperCase() == 'INACTIVE');

    final isPendingVerification = vState != null &&
        vState.currentState.toUpperCase() == 'CERTIFIED_PENDING_VERIFICATION';

    final isPickupDisabled = isOutOfServiceOrBlocked || isPendingVerification;
    final isDrillDisabled = isOutOfServiceOrBlocked || isPendingVerification;
    final isSafetyCheckDisabled = isOutOfServiceOrBlocked || isPendingVerification;
    final isReportDefectsDisabled = isOutOfServiceOrBlocked;

    final disabledMsgPickup = isPendingVerification
        ? 'Bus is pending inspection sign-off. Student Pickup/Drop is disabled.'
        : 'Bus is Out of Service. Student Pickup/Drop is disabled.';

    final disabledMsgDrill = isPendingVerification
        ? 'Bus is pending inspection sign-off. Drill logging is disabled.'
        : 'Bus is Out of Service. Drill logging is disabled.';

    final disabledMsgSafetyCheck = isPendingVerification
        ? 'Bus is pending inspection sign-off. Child safety check is disabled.'
        : 'Bus is Out of Service. Child safety check is disabled.';

    const disabledMsgReportDefects = 'Bus is Out of Service. Defect reporting is disabled.';

    return RefreshIndicator(
      onRefresh: () => ref.read(homeViewModelProvider.notifier).refresh(),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

            // Quick Actions Grid (2 Columns)
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.15,
              children: [
                // Top Row Card 1
                _buildActionCard(
                  context,
                  title: 'Student Pickup / Drop',
                  subtitle: 'Scan / confirm students at stops',
                  icon: Icons.people_alt_rounded,
                  iconBgColor: AppColors.PRIMARY.withOpacity(0.12),
                  iconColor: AppColors.PRIMARY,
                  isDisabled: isPickupDisabled,
                  disabledReason: disabledMsgPickup,
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
                  isDisabled: isReportDefectsDisabled,
                  disabledReason: disabledMsgReportDefects,
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
                  isDisabled: isDrillDisabled,
                  disabledReason: disabledMsgDrill,
                  onTap: () => context.push(Constants.DRILL_LIST_ROUTE),
                ),
                // Row 3 Card 2: Child Safety Check
                _buildActionCard(
                  context,
                  title: l10n.homeMenuChildSafetyCheck,
                  subtitle: 'Perform post-trip bus sweep',
                  icon: Icons.shield_outlined,
                  iconBgColor: const Color(0xFF06B6D4).withOpacity(0.12),
                  iconColor: const Color(0xFF06B6D4),
                  isDisabled: isSafetyCheckDisabled,
                  disabledReason: disabledMsgSafetyCheck,
                  onTap: () async {
                    await context.push(Constants.CHILD_SAFETY_CHECK_ROUTE, extra: firstRoute);
                  },
                ),
              ],
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
    bool isDisabled = false,
    String? disabledReason,
  }) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: isDisabled ? Colors.grey.shade300 : Colors.grey.shade200,
        ),
      ),
      color: isDisabled ? Colors.grey.shade50 : Colors.white,
      child: InkWell(
        onTap: () {
          if (isDisabled) {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Row(
                  children: [
                    const Icon(Icons.info_outline_rounded, color: Colors.orange),
                    const SizedBox(width: 8),
                    Text(title),
                  ],
                ),
                content: Text(
                  disabledReason ?? 'This action is currently disabled due to vehicle status.',
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(ctx),
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          } else {
            onTap();
          }
        },
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: isDisabled ? Colors.grey.shade200 : iconBgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      color: isDisabled ? Colors.grey.shade500 : iconColor,
                      size: 24,
                    ),
                  ),
                  if (isDisabled)
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.orange,
                        size: 20,
                      ),
                    )
                  else
                    Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.grey.shade400,
                      size: 22,
                    ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: isDisabled ? Colors.grey.shade600 : Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 11,
                      color: isDisabled ? Colors.grey.shade400 : Colors.grey.shade600,
                      height: 1.2,
                    ),
                  ),
                ],
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
          await context.push(Constants.DVIR_PRE_TRIP_ROUTE, extra: {
            'schoolBusId': route.vehicleId?.toString() ?? '',
            'routeName': route.name,
            'route': route,
          });
          if (mounted) {
            ref.read(homeViewModelProvider.notifier).refreshVehicleState();
          }
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
