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
    if (seconds <= 0) return '00:00';
    final mins = seconds ~/ 60;
    final secs = seconds % 60;
    return '${mins.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  Color _getTimerColor(double fraction, bool isExpired) {
    if (isExpired) return AppColors.ERROR;
    if (fraction > 0.5) return Colors.green.shade700;
    if (fraction > 0.25) return Colors.orange.shade800;
    return AppColors.ERROR;
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(childSafetyCheckViewModelProvider(widget.route));
    final vm = ref.read(childSafetyCheckViewModelProvider(widget.route).notifier);
    final l10n = AppLocalizations.of(context)!;

    final timerColor = _getTimerColor(state.progressFraction, state.isExpired);

    return PopScope(
      canPop: false, // Prevents driver from backing out without completing safety check
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(l10n.childSafetyCheckTitle),
          backgroundColor: timerColor,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: state.isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // 1. Alert Banner
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: timerColor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: timerColor, width: 1.5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            state.isExpired ? Icons.warning_amber_rounded : Icons.shield_rounded,
                            color: timerColor,
                            size: 32,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.isExpired
                                      ? l10n.childSafetyCheckTimeExpiredTitle
                                      : l10n.childSafetyCheckMandatoryPostRouteTitle,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: timerColor,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  state.isExpired
                                      ? l10n.childSafetyCheckTimeExpiredSubtitle
                                      : l10n.childSafetyCheckMandatoryPostRouteSubtitle,
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // 2. Countdown Timer Card
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: timerColor.withValues(alpha: 0.5), width: 1.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                        child: Column(
                          children: [
                            Text(
                              l10n.childSafetyCheckTimeRemainingHeader,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _formatTimer(state.remainingSeconds),
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                                color: timerColor,
                              ),
                            ),
                            const SizedBox(height: 8),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: LinearProgressIndicator(
                                value: state.progressFraction,
                                backgroundColor: Colors.grey.shade200,
                                valueColor: AlwaysStoppedAnimation<Color>(timerColor),
                                minHeight: 6,
                              ),
                            ),
                            if ((widget.route?.name ?? state.activeCheck?.routeName) != null) ...[
                              const SizedBox(height: 10),
                              Text(
                                l10n.childSafetyCheckRouteLabel(
                                    widget.route?.name ?? state.activeCheck!.routeName!),
                                style: const TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // 3. Inspection Checklist Instructions
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
                    const SizedBox(height: 20),

                    // 4. Sleeping Child / Child Found Intake Section
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: state.anySleepingChildFound ? AppColors.ERROR : Colors.transparent,
                          width: 1.5,
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

    await vm.submitCheck();
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
    if (widget.route != null) {
      context.go(Constants.DVIR_POST_TRIP_ROUTE, extra: widget.route);
    } else {
      context.go(Constants.HOME_ROUTE);
    }
  }
}
