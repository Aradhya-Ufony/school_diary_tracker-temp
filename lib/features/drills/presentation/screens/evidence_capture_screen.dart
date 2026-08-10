import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/utils/image_utils.dart';
import '../../../../data/models/drill_evidence.dart';
import '../providers/drill_providers.dart';
import 'full_screen_media_viewer.dart';

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

  void _showMediaSelectionSheet(BuildContext context, ImageSource source) {
    final notifier = ref.read(drillChecklistProvider.notifier);
    final mediaService = ref.read(mediaCompressionServiceProvider);
    
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (bottomSheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                source == ImageSource.camera ? 'Capture Evidence' : 'Select Evidence',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const Divider(height: 1),
            ListTile(
              leading: const Icon(Icons.photo_outlined, color: Color(0xFF1E3A8A)),
              title: Text(source == ImageSource.camera ? 'Take Photo' : 'Choose Photo'),
              onTap: () async {
                Navigator.of(bottomSheetContext).pop();
                final item = await mediaService.pickAndCompressMedia(source, isVideo: false);
                if (item != null) notifier.addEvidence(item);
              },
            ),
            ListTile(
              leading: const Icon(Icons.videocam_outlined, color: Color(0xFF1E3A8A)),
              title: Text(source == ImageSource.camera ? 'Record Video' : 'Choose Video'),
              onTap: () async {
                Navigator.of(bottomSheetContext).pop();
                final item = await mediaService.pickAndCompressMedia(source, isVideo: true);
                if (item != null) notifier.addEvidence(item);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _confirmAndSubmit(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Confirm Drill Submission'),
        content: const Text('Are you sure you want to submit this drill log? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Edit'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF16A34A)),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Confirm', style: TextStyle(color: Colors.white)),
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

    final isNotesValid = _notesController.text.trim().length >= 10;
    final isSubmitEnabled = state.canSubmit && isNotesValid;

    if (state.isLoading) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1E3A8A)),
              ),
              SizedBox(height: 24),
              Text(
                'Submitting Drill Log...',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E3A8A),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Uploading evidence and checklist data',
                style: TextStyle(color: Colors.grey),
              ),
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
                  isOk ? 'Submission Successful!' : 'Submission Failed',
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
                      ? 'The evacuation drill log has been successfully uploaded and is pending approval.'
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
                        backgroundColor: const Color(0xFF1E3A8A),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => context.go('/home'),
                      child: const Text(
                        'RETURN TO DASHBOARD',
                        style: TextStyle(
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
                      child: const Text(
                        'RETRY SUBMISSION',
                        style: TextStyle(
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
                      onPressed: () => context.go('/home'),
                      child: const Text(
                        'CANCEL',
                        style: TextStyle(
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
      appBar: AppBar(title: const Text('Mandatory Drill Evidence')),
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
                      child: const Row(
                        children: [
                          Icon(Icons.warning_amber_rounded, color: Color(0xFFD97706)),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'At least 1 photo or video evidence is mandatory to submit drill.',
                              style: TextStyle(color: Color(0xFF92400E), fontWeight: FontWeight.w600),
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
                        onPressed: () => _showMediaSelectionSheet(context, ImageSource.camera),
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        label: const Text('Camera'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () => _showMediaSelectionSheet(context, ImageSource.gallery),
                        icon: const Icon(
                          Icons.photo_library,
                          color: Colors.white,
                        ),
                        label: const Text('Gallery'),
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
                          mediaWidget = Container(
                            color: Colors.black87,
                            child: const Center(
                              child: Icon(Icons.videocam, color: Colors.white, size: 48),
                            ),
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
                          const Text(
                            'Driver Notes (Minimum 10 characters):',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _notesController,
                            maxLines: 4,
                            onChanged: (text) => setState(() {}),
                            decoration: InputDecoration(
                              hintText: 'Describe drill execution, student behavior, exit paths used, and any exceptions observed...',
                              border: const OutlineInputBorder(),
                              counterText: '${_notesController.text.trim().length} / 80 characters minimum',
                              counterStyle: TextStyle(
                                color: isNotesValid ? Colors.green : Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
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
                      child: const Text('SUBMIT DRILL LOG', style: TextStyle(color: Colors.white)),
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
                color: const Color(0xFF1E3A8A),
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
