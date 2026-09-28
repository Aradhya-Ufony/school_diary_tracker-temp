import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/driver_document.dart';

class DocumentViewerScreen extends StatefulWidget {
  final DriverDocument document;

  const DocumentViewerScreen({
    super.key,
    required this.document,
  });

  @override
  State<DocumentViewerScreen> createState() => _DocumentViewerScreenState();
}

class _DocumentViewerScreenState extends State<DocumentViewerScreen> {
  late final PdfViewerController _pdfController;
  bool _pdfError = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfViewerController();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  Future<void> _openExternal() async {
    final urlStr = widget.document.fileUrl;
    if (urlStr != null && urlStr.isNotEmpty) {
      final uri = Uri.parse(urlStr);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Could not open file in external browser.')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final doc = widget.document;
    final fileUrl = doc.fileUrl;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E293B),
        foregroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              doc.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            if (doc.fileName != null)
              Text(
                doc.fileName!,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
        actions: [
          if (fileUrl != null && fileUrl.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.open_in_new_rounded),
              tooltip: 'Open Externally',
              onPressed: _openExternal,
            ),
        ],
      ),
      body: SafeArea(
        child: fileUrl == null || fileUrl.isEmpty
            ? _buildNoFileWidget()
            : doc.isPdf
                ? _buildPdfViewer(fileUrl)
                : _buildImageViewer(fileUrl),
      ),
    );
  }

  Widget _buildNoFileWidget() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.insert_drive_file_outlined, size: 64, color: Colors.grey.shade500),
            const SizedBox(height: 16),
            const Text(
              'No document URL available.',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.document.details ?? 'This document record has no attached media file.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPdfViewer(String url) {
    if (_pdfError) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline_rounded, size: 56, color: Colors.redAccent),
              const SizedBox(height: 16),
              const Text(
                'Failed to load PDF document',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              if (_errorMessage != null) ...[
                const SizedBox(height: 8),
                Text(
                  _errorMessage!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
                ),
              ],
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
                onPressed: _openExternal,
                icon: const Icon(Icons.open_in_browser, color: Colors.white),
                label: const Text('Open in Browser', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      );
    }

    return SfPdfViewer.network(
      url,
      controller: _pdfController,
      onDocumentLoadFailed: (PdfDocumentLoadFailedDetails details) {
        setState(() {
          _pdfError = true;
          _errorMessage = details.description;
        });
      },
    );
  }

  Widget _buildImageViewer(String url) {
    return Center(
      child: InteractiveViewer(
        panEnabled: true,
        boundaryMargin: const EdgeInsets.all(20),
        minScale: 0.5,
        maxScale: 4.0,
        child: Image.network(
          url,
          fit: BoxFit.contain,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            final progress = loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                : null;
            return Center(
              child: CircularProgressIndicator(
                value: progress,
                color: AppColors.PRIMARY,
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.broken_image_rounded, size: 56, color: Colors.redAccent),
                    const SizedBox(height: 16),
                    const Text(
                      'Failed to load document image',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
                      onPressed: _openExternal,
                      icon: const Icon(Icons.open_in_browser, color: Colors.white),
                      label: const Text('Open in Browser', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
