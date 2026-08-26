import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../home/viewmodel/home_viewmodel.dart';
import '../../../../data/models/route_response.dart';
import '../providers/drill_providers.dart';
import '../../../../l10n/generated/app_localizations.dart';

class DrillTypeSelectionScreen extends ConsumerStatefulWidget {
  const DrillTypeSelectionScreen({super.key});

  @override
  ConsumerState<DrillTypeSelectionScreen> createState() => _DrillTypeSelectionScreenState();
}

class _DrillTypeSelectionScreenState extends ConsumerState<DrillTypeSelectionScreen> {
  String? _selectedDrillType;
  final _customTypeController = TextEditingController();
  bool _isCustomType = false;
  RouteResponse? _selectedRoute;

  final List<Map<String, dynamic>> _drillTypes = [
    {'name': 'Front Door', 'icon': Icons.input},
    {'name': 'Rear Door', 'icon': Icons.exit_to_app},
    {'name': 'Split', 'icon': Icons.call_split},
    {'name': 'Side Or Roof', 'icon': Icons.roofing},
    {'name': 'Bus Fire', 'icon': Icons.local_fire_department},
    {'name': 'Driver Incapacitation', 'icon': Icons.airline_seat_recline_normal},
    {'name': 'Danger Zone', 'icon': Icons.warning_amber},
    {'name': 'Equipment Orientation', 'icon': Icons.settings},
    {'name': 'Others', 'icon': Icons.device_unknown},
  ];

  String _getDrillTypeName(String name, AppLocalizations l10n) {
    switch (name) {
      case 'Front Door': return l10n.drillTypeNameFrontDoor;
      case 'Rear Door': return l10n.drillTypeNameRearDoor;
      case 'Split': return l10n.drillTypeNameSplit;
      case 'Side Or Roof': return l10n.drillTypeNameSideOrRoof;
      case 'Bus Fire': return l10n.drillTypeNameBusFire;
      case 'Driver Incapacitation': return l10n.drillTypeNameDriverIncapacitation;
      case 'Danger Zone': return l10n.drillTypeNameDangerZone;
      case 'Equipment Orientation': return l10n.drillTypeNameEquipmentOrientation;
      case 'Others': return l10n.drillTypeNameOthers;
      default: return name;
    }
  }

  @override
  void dispose() {
    _customTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listState = ref.watch(drillListProvider);
    final routesState = ref.watch(homeViewModelProvider);
    final l10n = AppLocalizations.of(context)!;

    final busNumber = listState.selectedBusNumber ?? 'N/A';
    final busId = listState.selectedBusId;

    // Filter routes assigned to this bus
    final busRoutes = routesState.allRoutes.where((r) =>
      (r.vehicleLicenseNumber != null && r.vehicleLicenseNumber!.toUpperCase() == busNumber.toUpperCase()) ||
      (r.vehicleId != null && r.vehicleId == busId)
    ).toList();

    final availableRoutes = busRoutes.isNotEmpty ? busRoutes : routesState.allRoutes;

    if (_selectedRoute == null && availableRoutes.isNotEmpty) {
      _selectedRoute = availableRoutes.first;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.drillTypeTitle),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Upper Info Card (premium style)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.PRIMARY, Color(0xFF3B82F6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.shade900.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.drillTypePreparation,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          l10n.drillTypeBus(busNumber),
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
                  Text(
                    _selectedRoute != null ? l10n.drillTypeRoute(_selectedRoute!.name) : l10n.drillTypeNoRouteSelected,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.drillTypeWarning,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.drillTypeSelectRoute,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButtonFormField<RouteResponse>(
              value: _selectedRoute,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                fillColor: Colors.grey.shade50,
                filled: true,
              ),
              items: availableRoutes.map((route) {
                return DropdownMenuItem<RouteResponse>(
                  value: route,
                  child: Text(
                    route.name,
                    style: const TextStyle(fontSize: 14),
                  ),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  _selectedRoute = val;
                });
              },
            ),
          ),
          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                l10n.drillTypeClassification,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // Types Grid View
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.95,
                    ),
                    itemCount: _drillTypes.length,
                    itemBuilder: (context, index) {
                      final item = _drillTypes[index];
                      final name = item['name'] as String;
                      final icon = item['icon'] as IconData;
                      final isSelected = _selectedDrillType == name;

                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectedDrillType = name;
                            _isCustomType = name == 'Others';
                          });
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 150),
                          decoration: BoxDecoration(
                            color: isSelected ? const Color(0xFFEFF6FF) : Colors.white,
                            border: Border.all(
                              color: isSelected ? const Color(0xFF3B82F6) : Colors.grey.shade300,
                              width: isSelected ? 2 : 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: isSelected
                                ? [
                                    BoxShadow(
                                      color: Colors.blue.shade100,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    )
                                  ]
                                : null,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                icon,
                                size: 28,
                                color: isSelected ? AppColors.PRIMARY : Colors.grey.shade600,
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  _getDrillTypeName(name, l10n),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                    color: isSelected ? AppColors.PRIMARY : Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  if (_isCustomType) ...[
                    const SizedBox(height: 20),
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.drillTypeSpecifyCustom,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black87),
                            ),
                            const SizedBox(height: 8),
                            TextField(
                              controller: _customTypeController,
                              decoration: InputDecoration(
                                hintText: l10n.drillTypeCustomHint,
                                border: const OutlineInputBorder(),
                                isDense: true,
                              ),
                              onChanged: (_) => setState(() {}),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // Bottom Button
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PRIMARY,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  elevation: 2,
                ),
                onPressed: _selectedDrillType == null || ( _isCustomType && _customTypeController.text.trim().isEmpty ) || _selectedRoute == null
                    ? null
                    : () {
                        if (busId == null || _selectedRoute == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(l10n.drillTypeInvalidState)),
                          );
                          return;
                        }

                        final drillType = _isCustomType ? _customTypeController.text.trim() : _selectedDrillType!;
                        
                        ref.read(drillChecklistProvider.notifier).startDrill(
                              routeId: _selectedRoute!.id,
                              busId: busId,
                              busNumber: busNumber,
                              drillType: drillType,
                            );
                        
                        context.push(Constants.DRILL_ROSTER_MARKING_ROUTE);
                      },
                child: Text(
                  l10n.drillTypeProceed,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
