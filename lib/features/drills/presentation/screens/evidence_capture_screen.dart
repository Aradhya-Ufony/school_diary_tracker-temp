import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/utils/image_utils.dart';
import '../../../../data/models/drill_evidence.dart';
import '../providers/drill_providers.dart';
import 'full_screen_media_viewer.dart';
import '../widgets/video_thumbnail_view.dart';
import '../../../../l10n/generated/app_localizations.dart';

class EvidenceCaptureScreen extends ConsumerStatefulWidget {
  const EvidenceCaptureScreen({super.key});

  @override
  ConsumerState<EvidenceCaptureScreen> createState() => _EvidenceCaptureScreenState();
}

class _EvidenceCaptureScreenState extends ConsumerState<EvidenceCaptureScreen> {
  final _notesController = TextEditingController();
  bool? _isSuccess;
  String? _errorMessage;

  @override
  void dispose() {
    _notesController.dispose();
    super.dispose();
  }


  Future<void> _confirmAndSubmit(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.drillEvidenceConfirmSubmission),
        content: Text(l10n.drillEvidenceConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.genericEdit),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF16A34A)),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.genericConfirm, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      final notifier = ref.read(drillChecklistProvider.notifier);
      final success = await notifier.submitDrill(
        notes: _notesController.text.trim(),
        endTime: DateTime.now(),
      );
      if (mounted) {
        final state = ref.read(drillChecklistProvider);
        final response = state.lastResponse;
        setState(() {
          _isSuccess = success;
          _errorMessage = success ? null : (response?.message ?? "Unknown error occurred");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(drillChecklistProvider);
    final notifier = ref.read(drillChecklistProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final isNotesValid = _notesController.text.trim().length >= 10;
    final isSubmitEnabled = state.canSubmit && isNotesValid;

    if (state.isLoading) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.PRIMARY),
              ),
              const SizedBox(height: 24),
              Text(
                l10n.drillEvidenceSubmitting,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.PRIMARY,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                state.videoUploadStatus ?? l10n.drillEvidenceUploading,
                style: const TextStyle(color: Colors.grey),
              ),
              if (state.videoUploadProgress != null && state.videoUploadProgress! > 0) ...[
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: LinearProgressIndicator(
                    value: state.videoUploadProgress,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: const AlwaysStoppedAnimation<Color>(AppColors.PRIMARY),
                  ),
                ),
              ],
            ],
          ),
        ),
      );
    }

    if (_isSuccess != null) {
      final isOk = _isSuccess!;
      return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: isOk ? const Color(0xFFDCFCE7) : const Color(0xFFFEE2E2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isOk ? Icons.check_circle_rounded : Icons.error_rounded,
                    color: isOk ? const Color(0xFF16A34A) : const Color(0xFFDC2626),
                    size: 80,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  isOk ? l10n.drillEvidenceSuccess : l10n.drillEvidenceFailed,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                Text(
                  isOk
                      ? l10n.drillEvidenceSuccessMessage
                      : (_errorMessage ?? 'An error occurred during submission. Please try again.'),
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                if (isOk)
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.PRIMARY,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        ref.invalidate(drillListProvider);
                        context.go(Constants.DRILL_LIST_ROUTE);
                      },
                      child: Text(
                        l10n.drillEvidenceReturnToDashboard,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                else ...[
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDC2626),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          _isSuccess = null;
                        });
                      },
                      child: Text(
                        l10n.drillEvidenceRetrySubmission,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => context.go(Constants.DRILL_LIST_ROUTE),
                      child: Text(
                        l10n.genericCancel.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.drillEvidenceTitle)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (state.evidenceList.isEmpty)
                    Container(
                      color: const Color(0xFFFEF3C7),
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          const Icon(Icons.warning_amber_rounded, color: Color(0xFFD97706)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              l10n.drillEvidenceMandatoryWarning,
                              style: const TextStyle(color: Color(0xFF92400E), fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () async {
                          final mediaService = ref.read(mediaCompressionServiceProvider);
                          final item = await mediaService.pickAndCompressMedia(ImageSource.camera, isVideo: false);
                          if (item != null) notifier.addEvidence(item);
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        label: Text(l10n.drillEvidenceTakePhoto),
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          final mediaService = ref.read(mediaCompressionServiceProvider);
                          final item = await mediaService.pickAndCompressMedia(ImageSource.camera, isVideo: true);
                          if (item != null) notifier.addEvidence(item);
                        },
                        icon: const Icon(
                          Icons.videocam,
                          color: Colors.white,
                        ),
                        label: Text(l10n.drillEvidenceRecordVideo),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 200,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: state.evidenceList.length,
                      itemBuilder: (context, index) {
                        final item = state.evidenceList[index];
                        final resolvedUrl = item.mediaUrl != null ? resolveImageUrl(item.mediaUrl) : null;
                        Widget mediaWidget;

                        if (item.mediaType == EvidenceMediaType.video) {
                          mediaWidget = VideoThumbnailView(
                            localFilePath: item.localFilePath,
                            thumbnailPath: item.thumbnailPath,
                            networkUrl: resolvedUrl,
                            thumbnailUrl: item.thumbnailUrl,
                          );
                        } else if (item.localFilePath != null && File(item.localFilePath!).existsSync()) {
                          mediaWidget = Image.file(File(item.localFilePath!), fit: BoxFit.cover);
                        } else if (resolvedUrl != null) {
                          mediaWidget = Image.network(resolvedUrl, fit: BoxFit.cover);
                        } else {
                          mediaWidget = Container(color: Colors.grey);
                        }

                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FullScreenMediaViewer(
                                  localPath: item.localFilePath,
                                  networkUrl: resolvedUrl,
                                  isVideo: item.mediaType == EvidenceMediaType.video,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Positioned.fill(child: mediaWidget),
                              if (item.mediaType == EvidenceMediaType.video)
                                const Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black54,
                                    child: Icon(Icons.play_arrow, color: Colors.white),
                                  ),
                                ),
                              Positioned(
                                top: 4,
                                right: 4,
                                child: CircleAvatar(
                                  backgroundColor: Colors.red,
                                  radius: 16,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: const Icon(Icons.delete, color: Colors.white, size: 16),
                                    onPressed: () => notifier.removeEvidence(index),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.drillEvidenceDriverNotesLabel,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _notesController,
                            maxLines: 4,
                            onChanged: (text) => setState(() {}),
                            decoration: InputDecoration(
                              hintText: l10n.drillEvidenceDriverNotesHint,
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(150, 128, 128, 128),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSubmitEnabled ? const Color(0xFF16A34A) : Colors.grey,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: isSubmitEnabled ? () => _confirmAndSubmit(context) : null,
                      child: Text(l10n.drillEvidenceSubmitButton, style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (state.videoUploadStatus != null)
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Card(
                color: AppColors.PRIMARY,
                elevation: 6,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2.5,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              state.videoUploadStatus!,
                              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      if (state.videoUploadProgress != null) ...[
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: state.videoUploadProgress,
                          backgroundColor: Colors.white24,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF16A34A)),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
