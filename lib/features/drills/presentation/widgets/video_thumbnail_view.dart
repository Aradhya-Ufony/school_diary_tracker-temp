import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class VideoThumbnailView extends StatefulWidget {
  final String? localFilePath;
  final String? thumbnailPath;
  final String? networkUrl;
  final String? thumbnailUrl;
  final BoxFit fit;

  const VideoThumbnailView({
    super.key,
    this.localFilePath,
    this.thumbnailPath,
    this.networkUrl,
    this.thumbnailUrl,
    this.fit = BoxFit.cover,
  });

  @override
  State<VideoThumbnailView> createState() => _VideoThumbnailViewState();
}

class _VideoThumbnailViewState extends State<VideoThumbnailView> {
  Uint8List? _generatedBytes;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadThumbnailIfNeeded();
  }

  @override
  void didUpdateWidget(covariant VideoThumbnailView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.localFilePath != oldWidget.localFilePath ||
        widget.thumbnailPath != oldWidget.thumbnailPath ||
        widget.networkUrl != oldWidget.networkUrl ||
        widget.thumbnailUrl != oldWidget.thumbnailUrl) {
      _loadThumbnailIfNeeded();
    }
  }

  Future<void> _loadThumbnailIfNeeded() async {
    final hasLocalThumb = widget.thumbnailPath != null && File(widget.thumbnailPath!).existsSync();
    final hasRemoteThumb = widget.thumbnailUrl != null && widget.thumbnailUrl!.isNotEmpty;

    if (hasLocalThumb || hasRemoteThumb) {
      return;
    }

    final videoSource = (widget.localFilePath != null && File(widget.localFilePath!).existsSync())
        ? widget.localFilePath
        : (widget.networkUrl != null && widget.networkUrl!.isNotEmpty ? widget.networkUrl : null);

    if (videoSource == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final bytes = await VideoThumbnail.thumbnailData(
        video: videoSource,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 300,
        quality: 75,
      );
      if (mounted) {
        setState(() {
          _generatedBytes = bytes;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.thumbnailPath != null && File(widget.thumbnailPath!).existsSync()) {
      return Image.file(
        File(widget.thumbnailPath!),
        fit: widget.fit,
        errorBuilder: (_, __, ___) => _buildFallback(),
      );
    }

    if (widget.thumbnailUrl != null && widget.thumbnailUrl!.isNotEmpty) {
      return Image.network(
        widget.thumbnailUrl!,
        fit: widget.fit,
        errorBuilder: (_, __, ___) => _buildFallback(),
      );
    }

    if (_generatedBytes != null) {
      return Image.memory(
        _generatedBytes!,
        fit: widget.fit,
      );
    }

    if (_isLoading) {
      return Container(
        color: Colors.black87,
        child: const Center(
          child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            ),
          ),
        ),
      );
    }

    return _buildFallback();
  }

  Widget _buildFallback() {
    return Container(
      color: Colors.black87,
      child: const Center(
        child: Icon(Icons.videocam, color: Colors.white70, size: 48),
      ),
    );
  }
}
