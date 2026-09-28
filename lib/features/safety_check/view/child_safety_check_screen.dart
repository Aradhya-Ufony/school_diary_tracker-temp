import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../viewmodel/child_safety_check_viewmodel.dart';

class ChildSafetyCheckScreen extends ConsumerStatefulWidget {
  final RouteResponse? route;

  const ChildSafetyCheckScreen({super.key, this.route});

  @override
  ConsumerState<ChildSafetyCheckScreen> createState() => _ChildSafetyCheckScreenState();
}

class _ChildSafetyCheckScreenState extends ConsumerState<ChildSafetyCheckScreen> {
  final TextEditingController _notesController = TextEditingController();

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }

  String _formatTimer(int seconds) {
    final isNegative = seconds < 0;
    final absSeconds = seconds.abs();
    final mins = absSeconds ~/ 60;
    final secs = absSeconds % 60;
    final formatted =
        '${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    return isNegative ? '-$formatted' : formatted;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(childSafetyCheckViewModelProvider(widget.route));
    final vm = ref.read(childSafetyCheckViewModelProvider(widget.route).notifier);
    final l10n = AppLocalizations.of(context)!;
    final routeName = widget.route?.name ?? state.activeCheck?.routeName;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(l10n.childSafetyCheckTitle),
        centerTitle: true,
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 1. Route Selector & Time Remaining Card
                  Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (state.availableRoutes.isNotEmpty) ...[
                            const Row(
                              children: [
                                Icon(Icons.directions_bus_rounded, size: 18, color: AppColors.PRIMARY),
                                SizedBox(width: 8),
                                Text(
                                  'Select Trip / Route:',
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black87),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            DropdownButtonFormField<int>(
                              value: state.selectedRoute?.id,
                              isExpanded: true,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                                isDense: true,
                              ),
                              items: state.availableRoutes.map((r) {
                                final timeStr = (r.startTime != null && r.endTime != null)
                                    ? ' (${r.startTime} - ${r.endTime})'
                                    : (r.endTime != null ? ' (End: ${r.endTime})' : '');
                                return DropdownMenuItem<int>(
                                  value: r.id,
                                  child: Text(
                                    '${r.name}$timeStr',
                                    style: const TextStyle(fontSize: 14),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                );
                              }).toList(),
                              onChanged: (int? newId) {
                                if (newId != null) {
                                  final selected = state.availableRoutes.firstWhere((r) => r.id == newId);
                                  vm.selectRoute(selected);
                                }
                              },
                            ),
                            const SizedBox(height: 12),
                            const Divider(),
                            const SizedBox(height: 8),
                          ] else if (routeName != null && routeName.isNotEmpty) ...[
                            Text(
                              routeName,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 6),
                          ],

                          if (state.selectedRoute != null) ...[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Scheduled End:',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                                ),
                                Text(
                                  state.selectedRoute?.endTime ?? 'N/A',
                                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Safety Window:',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                                ),
                                Text(
                                  '+${state.selectedRoute?.childSafetyTimer ?? 10} min window',
                                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.PRIMARY),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                size: 20,
                                color: state.remainingSeconds < 0 ? AppColors.ERROR : Colors.grey.shade700,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                '${l10n.childSafetyCheckTimeRemainingHeader}: ',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              Text(
                                _formatTimer(state.remainingSeconds),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: state.remainingSeconds < 0 ? AppColors.ERROR : AppColors.PRIMARY,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.sync_rounded, size: 14, color: AppColors.PRIMARY),
                                SizedBox(width: 6),
                                Text(
                                  'Resets daily for each scheduled trip',
                                  style: TextStyle(fontSize: 11, color: AppColors.PRIMARY, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 2. Inspection Checklist Instructions
                  Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.childSafetyCheckInspectionChecklistTitle,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          _buildCheckStep(1, l10n.childSafetyCheckStep1),
                          _buildCheckStep(2, l10n.childSafetyCheckStep2),
                          _buildCheckStep(3, l10n.childSafetyCheckStep3),
                          _buildCheckStep(4, l10n.childSafetyCheckStep4),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 3. Sleeping Child / Child Found Intake Section
                  Card(
                    elevation: 1.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: state.anySleepingChildFound ? AppColors.ERROR : Colors.grey.shade200,
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.childSafetyCheckResultTitle,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Expanded(
                                child: RadioListTile<bool>(
                                  title: Text(l10n.childSafetyCheckAllClear, style: const TextStyle(fontSize: 13)),
                                  value: false,
                                  groupValue: state.anySleepingChildFound,
                                  activeColor: Colors.green,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) => vm.toggleSleepingChild(false),
                                ),
                              ),
                              Expanded(
                                child: RadioListTile<bool>(
                                  title: Text(l10n.childSafetyCheckChildFound, style: const TextStyle(fontSize: 13, color: AppColors.ERROR, fontWeight: FontWeight.bold)),
                                  value: true,
                                  groupValue: state.anySleepingChildFound,
                                  activeColor: AppColors.ERROR,
                                  contentPadding: EdgeInsets.zero,
                                  onChanged: (val) => vm.toggleSleepingChild(true),
                                ),
                              ),
                            ],
                          ),

                          if (state.anySleepingChildFound) ...[
                            const Divider(),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Text(l10n.childSafetyCheckNumberOfChildrenFound, style: const TextStyle(fontSize: 13)),
                                IconButton(
                                  icon: const Icon(Icons.remove_circle_outline, color: AppColors.ERROR),
                                  onPressed: state.sleepingChildrenCount > 1
                                      ? () => vm.setSleepingChildrenCount(state.sleepingChildrenCount - 1)
                                      : null,
                                ),
                                Text(
                                  '${state.sleepingChildrenCount}',
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add_circle_outline, color: AppColors.ERROR),
                                  onPressed: () => vm.setSleepingChildrenCount(state.sleepingChildrenCount + 1),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            TextField(
                              controller: _notesController,
                              onChanged: vm.setDriverNotes,
                              maxLines: 2,
                              decoration: InputDecoration(
                                labelText: l10n.childSafetyCheckChildDetailsLabel,
                                hintText: l10n.childSafetyCheckChildDetailsHint,
                                border: const OutlineInputBorder(),
                                isDense: true,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // 5. Submit Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state.anySleepingChildFound ? AppColors.ERROR : AppColors.PRIMARY,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: state.isSubmitting ? null : () => _handleConfirmPressed(context, ref),
                    child: state.isSubmitting
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                              ),
                              const SizedBox(width: 12),
                              Text(l10n.childSafetyCheckCapturingGps, style: const TextStyle(color: Colors.white, fontSize: 15)),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                state.anySleepingChildFound ? Icons.warning_rounded : Icons.check_circle_rounded,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                state.anySleepingChildFound
                                    ? l10n.childSafetyCheckSubmitReportButton
                                    : l10n.childSafetyCheckConfirmButton,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
    );
  }

  Widget _buildCheckStep(int stepNum, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 10,
            backgroundColor: AppColors.PRIMARY,
            child: Text(
              '$stepNum',
              style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 13, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleConfirmPressed(BuildContext context, WidgetRef ref) async {
    final state = ref.read(childSafetyCheckViewModelProvider(widget.route));
    final vm = ref.read(childSafetyCheckViewModelProvider(widget.route).notifier);
    final l10n = AppLocalizations.of(context)!;

    if (state.anySleepingChildFound && state.driverNotes.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.childSafetyCheckNotesRequiredWarning),
          backgroundColor: AppColors.ERROR,
        ),
      );
      return;
    }

    // 1. Capture location and check depot proximity
    final location = await vm.captureCurrentLocation();
    final isAtDepot = vm.isLocationAtDepot(location);

    String markStatus = 'AT_DEPOT';

    if (!isAtDepot) {
      if (!context.mounted) return;

      // Dialog 1: Warn driver to go to depot location
      final action1 = await showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) => AlertDialog(
          title: Row(
            children: [
              const Icon(Icons.location_off_rounded, color: Colors.orange, size: 28),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l10n.childSafetyAwayWarningTitle,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          content: Text(l10n.childSafetyAwayWarningBody),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop('go_to_depot'),
              child: Text(l10n.childSafetyOptionOk),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop('mark_here'),
              child: Text(
                l10n.childSafetyOptionMarkHere,
                style: const TextStyle(color: AppColors.ERROR, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );

      if (action1 != 'mark_here' || !context.mounted) {
        return; // Driver chose OK to go to depot
      }

      // Dialog 2: Warn driver that they are about to mark away from location
      final confirmedAway = await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) => AlertDialog(
          title: Row(
            children: [
              const Icon(Icons.warning_amber_rounded, color: AppColors.ERROR, size: 28),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  l10n.childSafetyConfirmAwayTitle,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.ERROR),
                ),
              ),
            ],
          ),
          content: Text(l10n.childSafetyConfirmAwayBody),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(l10n.childSafetyOptionCancel),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.ERROR),
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(l10n.childSafetyOptionOk, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );

      if (confirmedAway != true || !context.mounted) {
        return; // Driver cancelled marking away from location
      }

      markStatus = 'AWAY_FROM_DEPOT';
    }

    final timeStatus = vm.computeTimeStatus();
    await vm.submitCheck(
      childSafetyMarkStatus: markStatus,
      timeStatus: timeStatus,
    );
    if (!context.mounted) return;

    if (state.anySleepingChildFound) {
      // Show Urgent Post-Submission Modal for child found
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) => AlertDialog(
          title: Row(
            children: [
              const Icon(Icons.report_problem_rounded, color: AppColors.ERROR, size: 28),
              const SizedBox(width: 8),
              Text(l10n.childSafetyCheckChildReportedDialogTitle, style: const TextStyle(color: AppColors.ERROR, fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
          content: Text(
            l10n.childSafetyCheckChildReportedDialogBody,
            style: const TextStyle(fontSize: 13),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
              onPressed: () {
                Navigator.of(dialogContext).pop();
                _proceedToNextScreen(context);
              },
              child: Text(l10n.childSafetyCheckAcknowledgeProceedButton, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.childSafetyCheckSuccessMessage),
          backgroundColor: Colors.green,
        ),
      );
      _proceedToNextScreen(context);
    }
  }

  void _proceedToNextScreen(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(Constants.HOME_ROUTE);
    }
  }
}
