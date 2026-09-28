import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
    final args = StopsArgs(routeId: routeId, routeName: routeName, isUndoMode: isUndoMode);
    final state = ref.watch(stopsViewModelProvider(args));
    final viewModel = ref.read(stopsViewModelProvider(args).notifier);

    final checkedCount =
        state.stops.expand((s) => s.children).where((c) => c.checked).length;

    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
        actions: [
          if (!isUndoMode) ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red.shade700,
                  backgroundColor: Colors.red.shade50,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.stop_circle_outlined, size: 18),
                label: const Text(
                  'Stop Trip',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                onPressed: state.isSubmitting
                    ? null
                    : () => _handleStopTrip(context, ref, viewModel, checkedCount),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.undo),
              tooltip: l10n.stopsUndoTooltip,
              onPressed: state.isSubmitting
                  ? null
                  : () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => StopsScreen(
                            routeId: routeId,
                            routeName: routeName,
                            isUndoMode: true,
                          ),
                        ),
                      );
                      viewModel.refresh();
                    },
            ),
          ],
        ],
      ),
      body: AbsorbPointer(
        absorbing: state.isSubmitting,
        child: RefreshIndicator(
          onRefresh: viewModel.refresh,
          child: state.isLoading && state.stops.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : state.error != null && state.stops.isEmpty
                  ? Center(child: Text(state.error!))
                  : () {
                      final displayStops = isUndoMode
                          ? state.stops
                              .where((s) => s.children.any((c) => c.pickedOrDropped))
                              .toList()
                          : state.stops;
                      if (displayStops.isEmpty) {
                        return Center(
                          child: Text(
                            isUndoMode
                                ? l10n.stopsNoChangesToUndo
                                : l10n.stopsNoStopsAvailable,
                            style: const TextStyle(fontSize: 16),
                          ),
                        );
                      }
                      return ListView.builder(
                        itemCount: displayStops.length,
                        itemBuilder: (context, index) {
                          final stop = displayStops[index];
                          return _StopCard(
                            stop: stop,
                            routeName: routeName,
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
                      );
                    }(),
        ),
      ),
      floatingActionButton: checkedCount == 0
          ? null
          : FloatingActionButton.extended(
              onPressed: state.isSubmitting
                  ? null
                  : () async {
                      final ok = await viewModel.submitAllChecked();
                      if (context.mounted) {
                        _showResultSnackBar(context, ok, isUndoMode);
                      }
                    },
              icon: state.isSubmitting
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                    )
                  : const Icon(Icons.check),
              label: Text(
                isUndoMode
                    ? l10n.stopsUndoCount(checkedCount)
                    : l10n.stopsSubmitCount(checkedCount),
              ),
            ),
    );
  }

  Future<void> _handleStopTrip(
    BuildContext context,
    WidgetRef ref,
    StopsViewModel viewModel,
    int checkedCount,
  ) async {
    if (checkedCount > 0) {
      final shouldProceed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('Unsubmitted Attendance Selections'),
          content: Text(
            'You have $checkedCount unsubmitted student attendance selection(s). Submit first or discard?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('CANCEL'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('DISCARD & STOP'),
            ),
          ],
        ),
      );

      if (shouldProceed != true) return;
    }

    final confirmStop = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('End Active Trip'),
        content: const Text(
          'Are you sure you want to end the active trip and stop location updates?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('CANCEL'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('STOP TRIP'),
          ),
        ],
      ),
    );

    if (confirmStop == true) {
      await viewModel.stopTrip();
      if (context.mounted) {
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        } else {
          context.go(Constants.HOME_ROUTE);
        }
      }
    }
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
  final String routeName;
  final bool isUndoMode;
  final VoidCallback onToggleSelectAll;
  final VoidCallback onToggleExpanded;
  final void Function(StopChild) onToggleChild;
  final void Function(StopChild) onSubmitSingle;

  const _StopCard({
    required this.stop,
    required this.routeName,
    required this.isUndoMode,
    required this.onToggleSelectAll,
    required this.onToggleExpanded,
    required this.onToggleChild,
    required this.onSubmitSingle,
  });

  String _getChildActionType(StopChild child, String routeName) {
    final nameUpper = routeName.trim().toUpperCase();
    if (nameUpper.endsWith('(IN)')) {
      return 'pick';
    } else if (nameUpper.endsWith('(OUT)')) {
      return 'drop';
    }
    return child.type;
  }

  bool _isChildActionEnabled(StopChild child, String routeName) {
    final actionType = _getChildActionType(child, routeName);
    final nameUpper = routeName.trim().toUpperCase();
    if (nameUpper.endsWith('(IN)')) {
      return actionType == 'pick';
    } else if (nameUpper.endsWith('(OUT)')) {
      return actionType == 'drop';
    }
    return true; // default if neither
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final checkableChildren = isUndoMode
        ? stop.children.where((c) => c.pickedOrDropped)
        : stop.children.where((c) => !c.pickedOrDropped && _isChildActionEnabled(c, routeName));
    final hasCheckable = checkableChildren.isNotEmpty;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckboxListTile(
            value: stop.allSelected,
            onChanged: hasCheckable ? (_) => onToggleSelectAll() : null,
            title: Text(
              stop.address ?? l10n.stopsDefaultLabel,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '${stop.totalPickedDropped}/${isUndoMode ? stop.totalPickedDropped : stop.children.length} ${isUndoMode ? l10n.stopsStatusDone : l10n.stopsStatusComplete}',
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
            ...(isUndoMode
                    ? stop.children.where((c) => c.pickedOrDropped)
                    : stop.children)
                .map(
              (child) {
                final resolvedUrl = resolveImageUrl(child.photoUrl);
                final actionEnabled = _isChildActionEnabled(child, routeName);
                final childActionType = _getChildActionType(child, routeName);

                // Hide checkbox if not in undo mode and either action is disabled or already completed
                final hideCheckbox = !isUndoMode && (!actionEnabled || child.pickedOrDropped);

                if (hideCheckbox) {
                  return ListTile(
                    leading: const SizedBox(
                      width: 24, // aligns with checkbox spacing
                    ),
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
                    trailing: TextButton(
                      onPressed: null, // Disabled
                      child: Text(
                        child.pickedOrDropped
                            ? (childActionType == 'pick'
                                ? l10n.childrenStatusPicked
                                : l10n.childrenStatusDropped)
                            : (childActionType == 'pick'
                                ? l10n.stopsTypePick
                                : l10n.stopsTypeDrop),
                      ),
                    ),
                  );
                }

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
                    onPressed: () => onSubmitSingle(child),
                    child: Text(
                      isUndoMode
                          ? l10n.stopsActionUndo
                          : (childActionType == 'pick'
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
