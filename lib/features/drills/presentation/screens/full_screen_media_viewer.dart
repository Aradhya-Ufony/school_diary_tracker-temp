import 'dart:io';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../../core/utils/app_constants.dart';

class FullScreenMediaViewer extends StatefulWidget {
  final String? localPath;
  final String? networkUrl;
  final bool isVideo;

  const FullScreenMediaViewer({
    super.key,
    this.localPath,
    this.networkUrl,
    required this.isVideo,
  });

  @override
  State<FullScreenMediaViewer> createState() => _FullScreenMediaViewerState();
}

class _FullScreenMediaViewerState extends State<FullScreenMediaViewer> {
  VideoPlayerController? _videoController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    if (widget.isVideo) {
      _initializeVideoPlayer();
    }
  }

  Future<void> _initializeVideoPlayer() async {
    // 1. Determine the source (Local file vs. Network URL)
    final localFileExists = widget.localPath != null && File(widget.localPath!).existsSync();

    if (localFileExists) {
      _videoController = VideoPlayerController.file(File(widget.localPath!));
    } else if (widget.networkUrl != null) {
      _videoController = VideoPlayerController.networkUrl(Uri.parse(widget.networkUrl!));
    }

    if (_videoController != null) {
      try {
        // 2. Initialize the video and trigger screen rebuilds when ready
        await _videoController!.initialize();
        setState(() {
          _isInitialized = true;
        });
        _videoController!.play(); // Auto-play the video when opened
      } catch (e) {
        debugPrint('Error initializing video player: $e');
      }
    }
  }

  @override
  void dispose() {
    // 3. CRITICAL: Clean up the controller to release device resources/memory leaks
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget mediaWidget;

    if (widget.isVideo) {
      if (_isInitialized && _videoController != null) {
        // 4. Render the video player centered with play/pause controls overlay
        mediaWidget = Center(
          child: AspectRatio(
            aspectRatio: _videoController!.value.aspectRatio,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                VideoPlayer(_videoController!),
                // Video Progress indicator bar
                VideoProgressIndicator(
                  _videoController!,
                  allowScrubbing: true,
                  colors: const VideoProgressColors(
                    playedColor: AppColors.PRIMARY,
                    bufferedColor: Colors.white24,
                    backgroundColor: Colors.white10,
                  ),
                ),
                // Play/Pause button Overlay
                Center(
                  child: IconButton(
                    iconSize: 64,
                    icon: Icon(
                      _videoController!.value.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    onPressed: () {
                      setState(() {
                        if (_videoController!.value.isPlaying) {
                          _videoController!.pause();
                        } else {
                          _videoController!.play();
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        // 5. Show loading indicator while the video buffer loads
        mediaWidget = const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      }
    } else {
      // 6. Non-video (Image) with Interactive pinch-to-zoom
      final localFileExists = widget.localPath != null && File(widget.localPath!).existsSync();
      ImageProvider imageProvider;

      if (localFileExists) {
        imageProvider = FileImage(File(widget.localPath!));
      } else if (widget.networkUrl != null && widget.networkUrl!.isNotEmpty) {
        imageProvider = NetworkImage(widget.networkUrl!);
      } else {
        imageProvider = const AssetImage('assets/images/avatar_contact3x.png');
      }

      mediaWidget = InteractiveViewer(
        maxScale: 4.0,
        child: Center(
          child: Image(
            image: imageProvider,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => const Center(
              child: Icon(Icons.broken_image, size: 80, color: Colors.grey),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: mediaWidget,
      ),
    );
  }
}