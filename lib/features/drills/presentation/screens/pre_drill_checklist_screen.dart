import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_constants.dart';
import '../providers/drill_providers.dart';
import '../../../../l10n/generated/app_localizations.dart';

class PreDrillChecklistScreen extends ConsumerWidget {
  const PreDrillChecklistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(drillChecklistProvider);
    final notifier = ref.read(drillChecklistProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final onBusStudents = state.items.values.where((item) => item.wasOnBus).toList()
      ..sort((a, b) => a.childName.toLowerCase().compareTo(b.childName.toLowerCase()));

    final absentStudents = state.items.values.where((item) => !item.wasOnBus).toList()
      ..sort((a, b) => a.childName.toLowerCase().compareTo(b.childName.toLowerCase()));

    final listItems = <Widget>[
      // Section 1: ON BUS
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.drillChecklistOnBusTitle(onBusStudents.length),
              style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.PRIMARY, fontSize: 14),
            ),
            Text(
              l10n.drillChecklistEvacuatedProgress(state.evacuatedCount, state.totalOnBus),
              style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF16A34A), fontSize: 14),
            ),
          ],
        ),
      ),
      if (onBusStudents.isEmpty)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Center(
            child: Text(
              l10n.drillChecklistNoStudentsOnBus,
              style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ),
        )
      else
        ...onBusStudents.map((item) => Container(
              key: ValueKey('on_bus_${item.childId}'),
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: item.isUnaccounted ? const Color(0xFFDC2626) : Colors.grey.shade300,
                  width: item.isUnaccounted ? 2.0 : 1.0,
                ),
                color: item.isUnaccounted ? const Color(0xFFFEF2F2) : Colors.white,
              ),
              child: CheckboxListTile(
                activeColor: AppColors.PRIMARY,
                title: Text(
                  item.childName,
                  style: TextStyle(
                    fontWeight: item.isUnaccounted ? FontWeight.bold : FontWeight.normal,
                    color: item.isUnaccounted ? const Color(0xFF991B1B) : Colors.black,
                  ),
                ),
                subtitle: Text(
                  item.isEvacuated ? l10n.drillChecklistEvacuated : l10n.drillChecklistOnBusNotEvacuated,
                  style: TextStyle(
                    color: item.isUnaccounted ? const Color(0xFFDC2626) : Colors.grey,
                  ),
                ),
                value: item.isEvacuated,
                onChanged: (val) => notifier.toggleEvacuated(item.childId, val ?? false),
              ),
            )),

      const SizedBox(height: 12),
      // Section 2: ABSENT
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          l10n.drillChecklistAbsentTitle(absentStudents.length),
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 14),
        ),
      ),
      if (absentStudents.isEmpty)
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Center(
            child: Text(
              l10n.drillChecklistNoAbsentStudents,
              style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ),
        )
      else
        ...absentStudents.map((item) => Container(
              key: ValueKey('absent_${item.childId}'),
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1.0,
                ),
                color: Colors.grey.shade100,
              ),
              child: ListTile(
                title: Text(
                  item.childName,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                  ),
                ),
                subtitle: Text(
                  l10n.drillChecklistNotOnBus,
                  style: const TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                ),
                enabled: false,
              ),
            )),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.drillChecklistTitle),
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
                                l10n.drillChecklistUnaccountedWarning(state.unaccountedCount),
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
                                l10n.drillChecklistBus(state.busNumber ?? state.roster?.busNumber ?? ""),
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                l10n.drillChecklistEvacuatedProgress(state.evacuatedCount, state.totalOnBus),
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Text(
                            l10n.drillChecklistRouteLive(state.roster?.routeName ?? "Live Route"),
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
                      child: ListView(
                        children: listItems,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.PRIMARY,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        onPressed: () => context.push('/drills/evidence'),
                        child: Text(l10n.drillChecklistProceed, style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
    );
  }
}
