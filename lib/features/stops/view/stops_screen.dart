import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_stop.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../core/utils/image_utils.dart';
import '../viewmodel/stops_viewmodel.dart';

/// Flutter equivalent of `StopsListActivity`/`UndoStopActivity` +
/// `activity_stops.xml`. One screen serves both modes via [isUndoMode] —
/// see `StopsViewModel`'s doc comment for why.
class StopsScreen extends ConsumerWidget {
  final int routeId;
  final String routeName;
  final bool isUndoMode;

  const StopsScreen({
    super.key,
    required this.routeId,
    required this.routeName,
    this.isUndoMode = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final args = StopsArgs(routeId: routeId, isUndoMode: isUndoMode);
    final state = ref.watch(stopsViewModelProvider(args));
    final viewModel = ref.read(stopsViewModelProvider(args).notifier);

    final checkedCount =
        state.stops.expand((s) => s.children).where((c) => c.checked).length;

    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
        actions: [
          if (!isUndoMode)
            IconButton(
              icon: const Icon(Icons.undo),
              tooltip: l10n.stopsUndoTooltip,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => StopsScreen(
                      routeId: routeId,
                      routeName: routeName,
                      isUndoMode: true,
                    ),
                  ),
                );
              },
            ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: viewModel.refresh,
        child: state.isLoading && state.stops.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : state.error != null && state.stops.isEmpty
                ? Center(child: Text(state.error!))
                : ListView.builder(
                    itemCount: state.stops.length,
                    itemBuilder: (context, index) {
                      final stop = state.stops[index];
                      return _StopCard(
                        stop: stop,
                        isUndoMode: isUndoMode,
                        onToggleSelectAll: () => viewModel.toggleSelectAll(stop),
                        onToggleExpanded: () => viewModel.toggleExpanded(stop),
                        onToggleChild: (child) =>
                            viewModel.toggleChild(stop, child),
                        onSubmitSingle: (child) async {
                          final ok = await viewModel.submitSingleChild(child);
                          if (context.mounted) {
                            _showResultSnackBar(context, ok, isUndoMode);
                          }
                        },
                      );
                    },
                  ),
      ),
      floatingActionButton: checkedCount == 0
          ? null
          : FloatingActionButton.extended(
              onPressed: () async {
                final ok = await viewModel.submitAllChecked();
                if (context.mounted) {
                  _showResultSnackBar(context, ok, isUndoMode);
                }
              },
              icon: const Icon(Icons.check),
              label: Text(
                isUndoMode
                    ? l10n.stopsUndoCount(checkedCount)
                    : l10n.stopsSubmitCount(checkedCount),
              ),
            ),
    );
  }

  void _showResultSnackBar(BuildContext context, bool ok, bool isUndoMode) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          ok
              ? (isUndoMode ? l10n.stopsCancelledSuccess : l10n.stopsSubmittedSuccess)
              : l10n.stopsGenericError,
        ),
      ),
    );
  }
}

class _StopCard extends StatelessWidget {
  final RouteStop stop;
  final bool isUndoMode;
  final VoidCallback onToggleSelectAll;
  final VoidCallback onToggleExpanded;
  final void Function(StopChild) onToggleChild;
  final void Function(StopChild) onSubmitSingle;

  const _StopCard({
    required this.stop,
    required this.isUndoMode,
    required this.onToggleSelectAll,
    required this.onToggleExpanded,
    required this.onToggleChild,
    required this.onSubmitSingle,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckboxListTile(
            value: stop.allSelected,
            onChanged: (_) => onToggleSelectAll(),
            title: Text(
              stop.address ?? l10n.stopsDefaultLabel,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              l10n.stopsSummary(
                stop.selectedCount,
                stop.totalPickedDropped,
                stop.children.length,
                isUndoMode ? l10n.stopsStatusDone : l10n.stopsStatusComplete,
              ),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            secondary: IconButton(
              icon: Icon(
                stop.expanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              ),
              onPressed: onToggleExpanded,
            ),
          ),
          if (stop.expanded)
            ...stop.children.map(
              (child) {
                final resolvedUrl = resolveImageUrl(child.photoUrl);
                return CheckboxListTile(
                  value: child.checked,
                  onChanged: (_) => onToggleChild(child),
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: resolvedUrl != null
                            ? NetworkImage(resolvedUrl)
                            : const AssetImage(Constants.CONTACT_AVATAR)
                                as ImageProvider,
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(child.fullName)),
                    ],
                  ),
                  secondary: TextButton(
                    onPressed: child.pickedOrDropped && !isUndoMode
                        ? null
                        : () => onSubmitSingle(child),
                    child: Text(
                      isUndoMode
                          ? l10n.stopsActionUndo
                          : (child.type == 'pick'
                              ? l10n.stopsTypePick
                              : l10n.stopsTypeDrop),
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                );
              },
            ),
        ],
      ),
    );
  }
}
