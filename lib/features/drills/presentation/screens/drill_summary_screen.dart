import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:school_diary_tracker/core/utils/app_constants.dart';
import '../../../../core/utils/status_utils.dart';
import '../../../../data/models/drill_log.dart';
import '../../../../data/models/drill_evidence.dart';
import '../providers/drill_providers.dart';
import 'full_screen_media_viewer.dart';
import '../widgets/video_thumbnail_view.dart';
import '../../../../l10n/generated/app_localizations.dart';

class DrillSummaryScreen extends ConsumerStatefulWidget {
  final int drillLogId;

  const DrillSummaryScreen({super.key, required this.drillLogId});

  @override
  ConsumerState<DrillSummaryScreen> createState() => _DrillSummaryScreenState();
}

class _DrillSummaryScreenState extends ConsumerState<DrillSummaryScreen> {
  late Future<DrillLog> _drillFuture;

  @override
  void initState() {
    super.initState();
    _loadDrill();
  }

  void _loadDrill() {
    _drillFuture =
        ref.read(drillRepositoryProvider).getDrillDetail(widget.drillLogId);
  }

  void _refresh() {
    setState(() {
      _loadDrill();
    });
  }

  void _goBack() {
    ref.invalidate(drillListProvider);
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(Constants.DRILL_LIST_ROUTE);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.drillSummaryTitle(widget.drillLogId)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _goBack,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refresh,
          ),
        ],
      ),
      body: FutureBuilder<DrillLog>(
        future: _drillFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline,
                        color: Colors.red, size: 60),
                    const SizedBox(height: 16),
                    Text(
                      l10n.drillSummaryLoadFailed(widget.drillLogId, snapshot.error ?? ""),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: _goBack,
                      child: Text(l10n.drillSummaryBackToDrills),
                    ),
                  ],
                ),
              ),
            );
          }

          final drill = snapshot.data;
          if (drill == null) {
            return Center(child: Text(l10n.drillSummaryNoData));
          }

          final statusColor = drill.status.toLowerCase() == 'approved'
              ? const Color(0xFF16A34A)
              : drill.status.toLowerCase() == 'rejected'
                  ? const Color(0xFFDC2626)
                  : const Color(0xFFD97706);

          final duration = (drill.endTime != null && drill.startTime != null)
              ? drill.endTime!.difference(drill.startTime!)
              : null;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Approval Status Card
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: statusColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        drill.status.toLowerCase() == 'approved'
                            ? Icons.check_circle
                            : drill.status.toLowerCase() == 'rejected'
                                ? Icons.cancel
                                : Icons.hourglass_empty,
                        color: statusColor,
                        size: 40,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              StatusUtils.formatStatus(drill.status),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: statusColor),
                            ),
                            if (drill.approvedAt != null)
                              Text(
                                l10n.drillSummaryApprovedAt(DateFormat('yyyy-MM-dd HH:mm').format(drill.approvedAt!.toLocal())),
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.black87),
                              ),
                            if (drill.conductedByName != null)
                              Text(
                                l10n.drillSummaryConductedBy(drill.conductedByName!),
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.black87),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 2. Metadata / Information Table
                Text(l10n.drillSummaryDetailsTitle,
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 8),
                Card(
                  elevation: 1.5,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        _buildInfoRow(l10n.drillSummaryType, drill.drillType),
                        const Divider(),
                        _buildInfoRow(l10n.drillSummaryRouteId, drill.routeId.toString()),
                        const Divider(),
                        if (drill.busNumber != null) ...[
                          _buildInfoRow(l10n.drillSummaryBusNumber, drill.busNumber!),
                          const Divider(),
                        ],
                        if (drill.startTime != null) ...[
                          _buildInfoRow(
                              l10n.drillSummaryStartTime,
                              DateFormat('yyyy-MM-dd HH:mm:ss')
                                  .format(drill.startTime!)),
                          const Divider(),
                        ],
                        if (drill.endTime != null) ...[
                          _buildInfoRow(
                              l10n.drillSummaryEndTime,
                              DateFormat('yyyy-MM-dd HH:mm:ss')
                                  .format(drill.endTime!)),
                          const Divider(),
                        ],
                        if (duration != null) ...[
                          _buildInfoRow(
                            l10n.drillSummaryDuration,
                            l10n.drillSummaryDurationValue(duration.inMinutes, duration.inSeconds % 60),
                          ),
                          const Divider(),
                        ],
                        _buildInfoRow(l10n.drillSummaryGps,
                            l10n.drillSummaryGpsValue(drill.latitude, drill.longitude)),
                        const Divider(),
                        _buildInfoRow(l10n.drillSummaryStatus, StatusUtils.formatStatus(drill.status)),
                        if (drill.approvedAt != null) ...[
                          const Divider(),
                          _buildInfoRow(
                            l10n.drillSummaryApprovedAtLabel,
                            DateFormat('yyyy-MM-dd HH:mm:ss')
                                .format(drill.approvedAt!.toLocal()),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 3. Driver Notes
                if (drill.driverNotes != null || drill.notes != null) ...[
                  Text(l10n.drillSummaryDriverNotesTitle,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  Card(
                    elevation: 1.5,
                    color: Colors.grey.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          drill.driverNotes ?? drill.notes!,
                          style: const TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],

                // 3b. Admin Notes
                if (drill.adminNotes != null) ...[
                  Text(l10n.drillSummaryAdminNotesTitle,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  Card(
                    elevation: 1.5,
                    color: const Color(0xFFFEF2F2),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          drill.adminNotes!,
                          style: const TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Color(0xFF991B1B)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],

                // 4. Checklist of children
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(l10n.drillSummaryStudentLogTitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(
                      l10n.drillSummaryEvacuatedCount(
                        drill.checklistItems.where((c) => c.wasOnBus && c.isEvacuated).length,
                        drill.checklistItems.where((c) => c.wasOnBus).length,
                      ),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.PRIMARY),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 1.5,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: drill.checklistItems.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, index) {
                      final item = drill.checklistItems[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: item.wasOnBus
                              ? (item.isEvacuated
                                  ? Colors.green.shade100
                                  : Colors.red.shade100)
                              : Colors.grey.shade300,
                          child: Icon(
                            item.wasOnBus
                                ? (item.isEvacuated
                                    ? Icons.check
                                    : Icons.warning_amber_rounded)
                                : Icons.block,
                            color: item.wasOnBus
                                ? (item.isEvacuated
                                    ? Colors.green.shade700
                                    : Colors.red.shade700)
                                : Colors.grey.shade700,
                          ),
                        ),
                        title: Text(
                          item.childName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: item.wasOnBus
                                ? TextDecoration.none
                                : TextDecoration.lineThrough,
                          ),
                        ),
                        subtitle: Text(
                          item.wasOnBus
                              ? (item.isEvacuated
                                  ? l10n.drillSummaryEvacuatedTime(item.evacuationTime != null ? DateFormat('HH:mm:ss').format(item.evacuationTime!.toLocal()) : "")
                                  : l10n.drillSummaryOnBusNotEvacuated)
                              : l10n.drillSummaryNotOnBus,
                          style: TextStyle(
                            color: item.wasOnBus
                                ? (item.isEvacuated
                                    ? Colors.green.shade700
                                    : Colors.red.shade700)
                                : Colors.grey,
                          ),
                        ),
                        trailing: item.seatNumber != null
                            ? Text(l10n.drillSummarySeat(item.seatNumber!))
                            : null,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),

                // 5. Evidence Attachments
                if (drill.evidenceFiles.isNotEmpty) ...[
                  Text(l10n.drillSummaryEvidenceTitle,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 8),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: drill.evidenceFiles.length,
                    itemBuilder: (context, index) {
                      final file = drill.evidenceFiles[index];
                      final fullUrl =
                          file.resolveFullMediaUrl(Constants.BASE_URL);
                      final isVideo = file.mediaType == EvidenceMediaType.video;

                      Widget fileWidget;
                      if (isVideo) {
                        fileWidget = VideoThumbnailView(
                          localFilePath: file.localFilePath,
                          thumbnailPath: file.thumbnailPath,
                          networkUrl: fullUrl,
                          thumbnailUrl: file.thumbnailUrl,
                        );
                      } else if (file.localFilePath != null &&
                          File(file.localFilePath!).existsSync()) {
                        fileWidget = Image.file(File(file.localFilePath!),
                            fit: BoxFit.cover);
                      } else if (fullUrl.isNotEmpty) {
                        fileWidget = Image.network(
                          fullUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            color: Colors.grey.shade200,
                            child: const Center(
                              child:
                                  Icon(Icons.broken_image, color: Colors.grey),
                            ),
                          ),
                        );
                      } else {
                        fileWidget = Container(color: Colors.grey.shade300);
                      }

                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FullScreenMediaViewer(
                                localPath: file.localFilePath,
                                networkUrl: fullUrl,
                                isVideo: isVideo,
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Positioned.fill(child: fileWidget),
                            if (isVideo)
                              const Center(
                                child: CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: Icon(Icons.play_arrow,
                                      color: Colors.white),
                                ),
                              ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                color: Colors.black54,
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  isVideo ? l10n.drillSummaryVideoEvidence : l10n.drillSummaryPhotoEvidence,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 11),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                ],

                // 6. Action Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.PRIMARY,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: _goBack,
                    child: Text(l10n.genericClose,
                        style: const TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
