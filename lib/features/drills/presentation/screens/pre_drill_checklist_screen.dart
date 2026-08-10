import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/drill_providers.dart';

class PreDrillChecklistScreen extends ConsumerWidget {
  const PreDrillChecklistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(drillChecklistProvider);
    final notifier = ref.read(drillChecklistProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Evacuation Drill Checklist'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => notifier.initRoster(),
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.error != null
              ? Center(child: Text(state.error!, style: const TextStyle(color: Colors.red)))
              : Column(
                  children: [
                    if (state.unaccountedCount > 0)
                      Container(
                        color: const Color(0xFFDC2626),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        child: Row(
                          children: [
                            const Icon(Icons.warning, color: Colors.white),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                '${state.unaccountedCount} Unaccounted Student(s) Remaining!',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Bus: ${state.busNumber ?? state.roster?.busNumber ?? ""}',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Evacuated: ${state.evacuatedCount}/${state.totalOnBus}',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Route (Live): ${state.roster?.routeName ?? "Live Route"}',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.items.length,
                        itemBuilder: (context, index) {
                          final item = state.items.values.elementAt(index);
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: item.isUnaccounted ? const Color(0xFFDC2626) : Colors.grey.shade300,
                                width: item.isUnaccounted ? 2.0 : 1.0,
                              ),
                              color: item.wasOnBus ? (item.isUnaccounted ? const Color(0xFFFEF2F2) : Colors.white) : Colors.grey.shade300,
                            ),
                            child: item.wasOnBus
                            ? CheckboxListTile(
                              title: Text(
                                item.childName,
                                style: TextStyle(
                                  fontWeight: item.isUnaccounted ? FontWeight.bold : FontWeight.normal,
                                  color: item.isUnaccounted ? const Color(0xFF991B1B) : Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                item.isEvacuated ? 'Evacuated' : 'ON BUS — NOT EVACUATED',
                                style: TextStyle(
                                  color: item.isUnaccounted ? const Color(0xFFDC2626) : Colors.grey,
                                ),
                              ),
                              value: item.isEvacuated,
                              onChanged: (val) => notifier.toggleEvacuated(item.childId, val ?? false),
                            )
                            : ListTile(
                              title: Text(
                                item.childName,
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                'NOT ON BUS',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black,
                                ),
                              ),
                              enabled: false,
                            )
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E3A8A),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () => context.push('/drills/evidence'),
                        child: const Text('PROCEED TO EVIDENCE CAPTURE', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
    );
  }
}
