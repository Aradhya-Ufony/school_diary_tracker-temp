import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/incident_crash_models.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/incident_crash_viewmodel.dart';

class IncidentCrashDetailsScreen extends ConsumerStatefulWidget {
  final int incidentId;

  const IncidentCrashDetailsScreen({super.key, required this.incidentId});

  @override
  ConsumerState<IncidentCrashDetailsScreen> createState() => _IncidentCrashDetailsScreenState();
}

class _IncidentCrashDetailsScreenState extends ConsumerState<IncidentCrashDetailsScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(incidentCrashViewModelProvider.notifier).fetchSubmittedLogDetails(widget.incidentId);
    });
  }

  String _formatDuration(double? totalMinutes) {
    if (totalMinutes == null || totalMinutes <= 0) return '00:00:00';
    final totalSeconds = (totalMinutes * 60).round();
    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    final hStr = hours.toString().padLeft(2, '0');
    final mStr = minutes.toString().padLeft(2, '0');
    final sStr = seconds.toString().padLeft(2, '0');

    return '$hStr:$mStr:$sStr';
  }

  Color _getTimerColor(double? minutes) {
    if (minutes == null) return Colors.grey;
    if (minutes < 30) return Colors.red.shade700; // less than 30 mins left
    if (minutes < 90) return Colors.orange.shade700; // less than 1.5 hours left
    return Colors.green.shade700;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(incidentCrashViewModelProvider);
    final log = state.submittedLog;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.incidentDetailsTitle),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(Constants.INCIDENT_HISTORY_ROUTE);
            }
          },
        ),
      ),
      body: state.isLoading && log == null
          ? const Center(child: CircularProgressIndicator())
          : log == null
              ? Center(
                  child: Text(
                    state.error ?? l10n.incidentDetailsLoadFailed,
                    style: const TextStyle(color: Colors.red),
                  ),
                )
              : RefreshIndicator(
                  onRefresh: () => ref
                      .read(incidentCrashViewModelProvider.notifier)
                      .fetchSubmittedLogDetails(widget.incidentId),
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildHeaderCard(log, l10n),
                      const SizedBox(height: 16),
                      if (log.requiresAlcoholTest || log.requiresDrugTest) ...[
                        _buildTestingRequirementCard(log, l10n),
                        const SizedBox(height: 16),
                      ],
                      _buildDetailsCard(log, l10n),
                      const SizedBox(height: 16),
                      _buildStudentsCard(log, l10n),
                      const SizedBox(height: 16),
                      _buildAttachmentsCard(log, l10n),
                      const SizedBox(height: 16),
                      _buildNotificationWorkflowsCard(log, l10n),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
    );
  }

  Widget _buildHeaderCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      elevation: 0,
      color: Colors.blue.shade50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.blue.shade100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    l10n.incidentDetailsHeaderTitle(log.id ?? 0),
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    log.status ?? l10n.incidentDetailsStatusPending,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              l10n.incidentDetailsDateTime(log.crashTimestamp.toLocal().toString()),
              style: TextStyle(color: Colors.blue.shade900, fontSize: 13),
            ),
            const SizedBox(height: 4),
            Text(
              l10n.incidentDetailsLocation(log.locationDescription ?? "N/A"),
              style: TextStyle(color: Colors.blue.shade900, fontSize: 13),
            ),
            const SizedBox(height: 4),
            Text(
              l10n.incidentDetailsCoordinates(
                log.latitude.toStringAsFixed(5),
                log.longitude.toStringAsFixed(5),
              ),
              style: TextStyle(color: Colors.blue.shade800, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestingRequirementCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.red.shade200, width: 1.5),
      ),
      color: Colors.red.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red.shade700, size: 24),
                const SizedBox(width: 8),
                Text(
                  l10n.incidentDetailsTestingRequiredTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),
            if (log.requiresAlcoholTest) ...[
              _buildTimerRow(
                title: l10n.incidentDetailsAlcoholCountdown,
                status: log.alcoholTestStatus ?? l10n.incidentDetailsStatusPending,
                minutes: log.alcoholMinutesRemaining,
                l10n: l10n,
              ),
              const SizedBox(height: 12),
            ],
            if (log.requiresDrugTest) ...[
              _buildTimerRow(
                title: l10n.incidentDetailsDrugCountdown,
                status: log.drugTestStatus ?? l10n.incidentDetailsStatusPending,
                minutes: log.drugMinutesRemaining,
                l10n: l10n,
              ),
            ],
            const Divider(height: 24),
            Text(
              l10n.incidentDetailsRegulatoryBasis,
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red.shade800, fontSize: 13),
            ),
            Text(
              log.regulatoryBasis ?? 'N/A',
              style: TextStyle(color: Colors.red.shade700, fontSize: 13),
            ),
            if (log.citationImpactExplanation != null) ...[
              const SizedBox(height: 6),
              Text(
                l10n.incidentDetailsCitationImpact(log.citationImpactExplanation!),
                style: TextStyle(color: Colors.red.shade700, fontSize: 13, fontStyle: FontStyle.italic),
              ),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildTimerRow({
    required String title,
    required String status,
    double? minutes,
    required AppLocalizations l10n,
  }) {
    final urgencyColor = _getTimerColor(minutes);
    final formattedTime = _formatDuration(minutes);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black87),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              l10n.incidentDetailsTimerStatus(status),
              style: const TextStyle(color: Colors.black54, fontSize: 13),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: urgencyColor.withOpacity(0.12),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: urgencyColor),
              ),
              child: Text(
                formattedTime,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: urgencyColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDetailsCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.incidentDetailsCrashCitationInfo,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            _buildDetailTile(l10n.incidentDetailsBranchId, '${log.schoolBranchId}'),
            _buildDetailTile(l10n.incidentDetailsRouteId, '${log.routeId}'),
            _buildDetailTile(l10n.incidentDetailsBusPlate, log.busNumber),
            _buildDetailTile(l10n.incidentDetailsDriverUserId, '${log.driverUserId}'),
            _buildDetailTile(l10n.incidentDetailsFatalityOccurred, log.hasFatalities ? l10n.incidentDetailsYes : l10n.incidentDetailsNo),
            _buildDetailTile(l10n.incidentDetailsInjuriesMedTreatment, log.hasInjuriesRequiringMedicalTreatment ? l10n.incidentDetailsYes : l10n.incidentDetailsNo),
            _buildDetailTile(l10n.incidentDetailsVehicleTowed, log.isVehicleTowed ? l10n.incidentDetailsYes : l10n.incidentDetailsNo),
            _buildDetailTile(l10n.incidentDetailsCitationIssued, log.wasCitationIssued ? l10n.incidentDetailsYes : l10n.incidentDetailsNo),
            _buildDetailTile(l10n.incidentDetailsLawEnforcement, log.lawEnforcementAgency ?? 'N/A'),
            _buildDetailTile(l10n.incidentDetailsOfficer, '${log.officerName ?? "N/A"} (Badge: ${log.badgeNumber ?? "N/A"})'),
            _buildDetailTile(l10n.incidentDetailsPoliceReport, log.policeReportNumber ?? 'N/A'),
            if (log.driverNotes != null && log.driverNotes!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                l10n.incidentDetailsDriverNotes,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(log.driverNotes!),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStudentsCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.incidentDetailsStudentsOnboard(log.students.length),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            if (log.students.isEmpty)
              Text(l10n.incidentDetailsNoStudentsOnboard)
            else
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: log.students.length,
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (context, index) {
                  final student = log.students[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              student.childName ?? 'Child #${student.childId}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: student.wasInjured ? Colors.red.shade100 : Colors.green.shade100,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                student.wasInjured ? l10n.incidentDetailsStudentInjured : l10n.incidentDetailsStudentNoInjury,
                                style: TextStyle(
                                  color: student.wasInjured ? Colors.red.shade800 : Colors.green.shade800,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        if (student.wasInjured) ...[
                          const SizedBox(height: 4),
                          Text(l10n.incidentDetailsStudentSeverity(student.injurySeverity ?? "Minor")),
                          if (student.medicalFacilityTransportedTo != null)
                            Text(l10n.incidentDetailsStudentTransportedTo(student.medicalFacilityTransportedTo!)),
                          if (student.notes != null) Text(l10n.incidentDetailsStudentDetails(student.notes!)),
                        ],
                      ],
                    ),
                  );
                },
              )
          ],
        ),
      ),
    );
  }

  Widget _buildAttachmentsCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.incidentDetailsMediaAttachments,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            if (log.attachments.isEmpty)
              Text(l10n.incidentDetailsNoMediaAttachments)
            else
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: log.attachments.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final att = log.attachments[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Image.network(
                            att.fileUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey.shade300,
                              child: const Icon(Icons.broken_image, size: 40),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          color: Colors.grey.shade50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                att.mediaType,
                                style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                l10n.incidentDetailsMediaStatus(att.approvalStatus),
                                style: TextStyle(
                                  fontSize: 11,
                                  color: att.approvalStatus == 'Approved' ? Colors.green : Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationWorkflowsCard(IncidentCrashLog log, AppLocalizations l10n) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.incidentDetailsNotificationsTitle,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Divider(),
            Text(
              l10n.incidentDetailsNotificationsDesc,
              style: const TextStyle(fontSize: 13, color: Colors.black54),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _dispatchNotification(
                      title: l10n.incidentDetailsSchoolAdminTitle,
                      templateText: 'Dear Administration,\n\nWe regret to inform you that Bus ${log.busNumber} was involved in a collision on ${log.crashTimestamp.toLocal()}.\n\nLocation: ${log.locationDescription}\nInjuries: ${log.hasInjuriesRequiringMedicalTreatment ? "Yes" : "No"}\nDOT Testing Requirement: ${log.requiresAlcoholTest ? "Required" : "Not Required"}',
                      l10n: l10n,
                    ),
                    icon: const Icon(
                        Icons.school,
                      color: Colors.white,
                    ),
                    label: Text(l10n.incidentDetailsAdminLetter),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => _dispatchNotification(
                      title: l10n.incidentDetailsDoeReportTitle,
                      templateText: 'Official notification to State Department of Education regarding school bus license plate ${log.busNumber} involved in crash register ID ${log.id}.',
                      l10n: l10n,
                    ),
                    icon: const Icon(
                        Icons.assignment,
                      color: Colors.white,
                    ),
                    label: Text(l10n.incidentDetailsDoeReport),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _dispatchNotification({
    required String title,
    required String templateText,
    required AppLocalizations l10n,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                l10n.incidentDetailsPrePopulatedLetter,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.grey.shade100,
                child: Text(templateText, style: const TextStyle(fontFamily: 'monospace', fontSize: 12)),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(l10n.genericCancel.toUpperCase()),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              Clipboard.setData(ClipboardData(text: templateText));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.incidentDetailsCopiedToClipboard(title))),
              );
            },
            child: Text(l10n.incidentDetailsCopyToClipboard),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailTile(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(color: Colors.black54)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
