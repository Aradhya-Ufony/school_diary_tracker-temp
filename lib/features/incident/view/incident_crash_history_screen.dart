import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../core/utils/app_constants.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/incident_crash_viewmodel.dart';

class IncidentCrashHistoryScreen extends ConsumerWidget {
  const IncidentCrashHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(incidentCrashViewModelProvider);
    final busId = state.activeRoute?.vehicleId ?? 0;

    final historyAsync = ref.watch(incidentHistoryProvider(busId));

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.incidentHistoryTitle),
      ),
      body: historyAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.incidentHistoryFailed(err.toString()),
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        data: (logs) {
          if (logs.isEmpty) {
            return Center(
              child: Text(
                l10n.incidentHistoryEmpty,
                style: const TextStyle(color: Colors.black54),
              ),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: logs.length,
            itemBuilder: (context, index) {
              final log = logs[index];
              final dateStr = DateFormat('yyyy-MM-dd hh:mm a').format(log.crashTimestamp.toLocal());
              final testRequired = log.requiresAlcoholTest || log.requiresDrugTest;

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: testRequired ? Colors.red.shade100 : Colors.green.shade100,
                    child: Icon(
                      testRequired ? Icons.warning_amber_rounded : Icons.check_circle_outline,
                      color: testRequired ? Colors.red.shade800 : Colors.green.shade800,
                    ),
                  ),
                  title: Text(
                    l10n.incidentHistoryItemTitle(log.id ?? 0),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    l10n.incidentHistoryItemSubtitle(
                      log.busNumber,
                      testRequired
                          ? l10n.incidentHistoryTestingRequired
                          : l10n.incidentHistoryTestingNotRequired,

                      dateStr
                    ),
                    style: const TextStyle(height: 1.3),
                  ),
                  isThreeLine: true,
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    context.push(Constants.INCIDENT_DETAILS_ROUTE.replaceAll(':id', log.id.toString()));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
