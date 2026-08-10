import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../home/viewmodel/home_viewmodel.dart';
import '../providers/drill_providers.dart';

class DrillListScreen extends ConsumerStatefulWidget {
  const DrillListScreen({super.key});

  @override
  ConsumerState<DrillListScreen> createState() => _DrillListScreenState();
}

class _DrillListScreenState extends ConsumerState<DrillListScreen> {
  @override
  Widget build(BuildContext context) {
    final listState = ref.watch(drillListProvider);
    final listNotifier = ref.read(drillListProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Evacuation Drills'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => listNotifier.loadBuses(),
          ),
        ],
      ),
      body: listState.isLoading && listState.selectedBusNumber == null
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                        child: Row(
                          children: [
                            const Icon(Icons.directions_bus, color: Color(0xFF1E3A8A), size: 28),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Assigned Vehicle',
                                    style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    listState.selectedBusNumber ?? 'No Bus Assigned',
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF1E3A8A)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if (listState.error != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        listState.error!,
                        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                Expanded(
                  child: listState.isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : listState.drills.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.warning_amber_rounded, size: 64, color: Colors.grey.shade400),
                                  const SizedBox(height: 16),
                                  Text(
                                    'No drills recorded for bus ${listState.selectedBusNumber ?? ""}',
                                    style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                                  ),
                                ],
                              ),
                            )
                          : ListView.builder(
                              itemCount: listState.drills.length,
                              itemBuilder: (context, index) {
                                final drill = listState.drills[index];
                                final formattedDate = DateFormat('yyyy-MM-dd HH:mm').format(drill.conductedAt);
                                return Card(
                                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                                  child: ListTile(
                                    title: Text(
                                      'Drill #${drill.id ?? "N/A"} - ${drill.drillType}',
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    subtitle: Text('Conducted: $formattedDate\nStatus: ${drill.status}'),
                                    trailing: ElevatedButton(
                                      onPressed: () {
                                        if (drill.id != null) {
                                          context.push(Constants.DRILL_SUMMARY_ROUTE, extra: drill.id);
                                        }
                                      },
                                      child: const Text('Show Summary'),
                                    ),
                                  ),
                                );
                              },
                            ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xFF1E3A8A),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text('Start New Drill', style: TextStyle(color: Colors.white)),
        onPressed: () => _showStartDrillDialog(context, listState.selectedBusId, listState.selectedBusNumber),
      ),
    );
  }

  void _showStartDrillDialog(BuildContext context, int? busId, String? busNumber) {
    if (busId == null || busNumber == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a bus first.')),
      );
      return;
    }

    final routesState = ref.read(homeViewModelProvider);
    if (routesState.allRoutes.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No routes available to start a drill.')),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (dialogContext) {
        return _StartDrillDialog(
          busId: busId,
          busNumber: busNumber,
          routes: routesState.allRoutes,
          onStart: (routeId, drillType) {
            ref.read(drillChecklistProvider.notifier).startDrill(
                  routeId: routeId,
                  busId: busId,
                  busNumber: busNumber,
                  drillType: drillType,
                );
            context.push(Constants.DRILL_CHECKLIST_ROUTE);
          },
        );
      },
    );
  }
}

class _StartDrillDialog extends StatefulWidget {
  final int busId;
  final String busNumber;
  final List<dynamic> routes;
  final void Function(int routeId, String drillType) onStart;

  const _StartDrillDialog({
    required this.busId,
    required this.busNumber,
    required this.routes,
    required this.onStart,
  });

  @override
  State<_StartDrillDialog> createState() => _StartDrillDialogState();
}

class _StartDrillDialogState extends State<_StartDrillDialog> {
  late int _selectedRouteId;
  String _selectedDrillType = 'FrontDoor';
  final _customTypeController = TextEditingController();
  bool _isCustomType = false;

  final List<String> _drillTypes = [
    'FrontDoor',
    'RearDoor',
    'Split',
    'SideOrRoof',
    'BusFire',
    'DriverIncapacitation',
    'DangerZone',
    'EquipmentOrientation',
    'Others'
  ];

  @override
  void initState() {
    super.initState();
    _selectedRouteId = widget.routes.first.id;
  }

  @override
  void dispose() {
    _customTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Start Drill for ${widget.busNumber}'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Route (Live):', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(
              widget.routes.first.name,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF1E3A8A),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            const Text('Select Drill Type:', style: TextStyle(fontWeight: FontWeight.bold)),
            DropdownButton<String>(
              isExpanded: true,
              value: _selectedDrillType,
              items: _drillTypes.map<DropdownMenuItem<String>>((type) {
                return DropdownMenuItem<String>(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    _selectedDrillType = val;
                    _isCustomType = val == 'Others';
                  });
                }
              },
            ),
            if (_isCustomType) ...[
              const SizedBox(height: 12),
              TextField(
                controller: _customTypeController,
                decoration: const InputDecoration(
                  labelText: 'Specify Drill Type',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E3A8A)),
          onPressed: () {
            final type = _isCustomType ? _customTypeController.text.trim() : _selectedDrillType;
            if (_isCustomType && type.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please specify the drill type.')),
              );
              return;
            }
            Navigator.pop(context);
            widget.onStart(_selectedRouteId, type);
          },
          child: const Text('Start', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
