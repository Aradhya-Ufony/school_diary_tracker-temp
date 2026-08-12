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
                            const Icon(Icons.directions_bus, color: AppColors.PRIMARY, size: 28),
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
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: AppColors.PRIMARY),
                                  ),
                                ],
                              ),
                            ),
                            if (listState.selectedBusNumber != null)
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.PRIMARY,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                ),
                                icon: const Icon(Icons.add, size: 16, color: Colors.white),
                                label: const Text(
                                  'Start Drill',
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                                onPressed: () {
                                  final routesState = ref.read(homeViewModelProvider);
                                  if (routesState.allRoutes.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('No routes available to start a drill.')),
                                    );
                                    return;
                                  }
                                  context.push(Constants.DRILL_TYPE_ROUTE);
                                },
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
    );
  }
}
