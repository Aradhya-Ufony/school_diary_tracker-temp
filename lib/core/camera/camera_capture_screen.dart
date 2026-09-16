import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraCaptureScreen extends StatefulWidget {
  final bool isVideoMode;

  const CameraCaptureScreen({
    super.key,
    this.isVideoMode = false,
  });

  @override
  State<CameraCaptureScreen> createState() => _CameraCaptureScreenState();
}

class _CameraCaptureScreenState extends State<CameraCaptureScreen> with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CameraController? _controller;
  int _selectedCameraIndex = 0;
  bool _isInitializing = true;
  String? _errorMessage;

  // Flash mode
  FlashMode _flashMode = FlashMode.auto;

  // Video recording state
  bool _isRecordingVideo = false;
  Timer? _videoTimer;
  int _recordingSeconds = 0;

  // Preview / Review state
  XFile? _capturedFile;
  bool _isPreviewing = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initCameras();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _videoTimer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = _controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initCameraController(_cameras[_selectedCameraIndex]);
    }
  }

  Future<void> _initCameras() async {
    try {
      _cameras = await availableCameras();
      if (_cameras.isEmpty) {
        setState(() {
          _isInitializing = false;
          _errorMessage = 'No cameras found on this device.';
        });
        return;
      }

      // ALWAYS DEFAULT TO REAR CAMERA FIRST
      int rearIndex = _cameras.indexWhere((c) => c.lensDirection == CameraLensDirection.back);
      _selectedCameraIndex = rearIndex != -1 ? rearIndex : 0;

      await _initCameraController(_cameras[_selectedCameraIndex]);
    } catch (e) {
      if (mounted) {
        setState(() {
          _isInitializing = false;
          _errorMessage = 'Failed to access camera: $e';
        });
      }
    }
  }

  Future<void> _initCameraController(CameraDescription camera) async {
    setState(() {
      _isInitializing = true;
      _errorMessage = null;
    });

    final previousController = _controller;
    final controller = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: widget.isVideoMode,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    await previousController?.dispose();

    try {
      await controller.initialize();
      try {
        await controller.setFlashMode(_flashMode);
      } catch (_) {}

      if (mounted) {
        setState(() {
          _controller = controller;
          _isInitializing = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isInitializing = false;
          _errorMessage = 'Camera initialization failed: $e';
        });
      }
    }
  }

  Future<void> _toggleCamera() async {
    if (_cameras.length < 2 || _isRecordingVideo) return;

    final nextIndex = (_selectedCameraIndex + 1) % _cameras.length;
    _selectedCameraIndex = nextIndex;
    await _initCameraController(_cameras[_selectedCameraIndex]);
  }

  Future<void> _toggleFlash() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    FlashMode nextMode;
    switch (_flashMode) {
      case FlashMode.auto:
        nextMode = FlashMode.always;
        break;
      case FlashMode.always:
        nextMode = FlashMode.off;
        break;
      case FlashMode.off:
      default:
        nextMode = FlashMode.auto;
        break;
    }

    try {
      await _controller!.setFlashMode(nextMode);
      setState(() {
        _flashMode = nextMode;
      });
    } catch (_) {}
  }

  Future<void> _takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized || _isRecordingVideo) return;

    try {
      final file = await _controller!.takePicture();
      setState(() {
        _capturedFile = file;
        _isPreviewing = true;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to take picture: $e')),
      );
    }
  }

  Future<void> _toggleVideoRecording() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    if (_isRecordingVideo) {
      try {
        final file = await _controller!.stopVideoRecording();
        _videoTimer?.cancel();
        setState(() {
          _isRecordingVideo = false;
          _capturedFile = file;
          _isPreviewing = true;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to stop video recording: $e')),
        );
      }
    } else {
      try {
        await _controller!.startVideoRecording();
        _recordingSeconds = 0;
        _videoTimer?.cancel();
        _videoTimer = Timer.periodic(const Duration(seconds: 1), (_) {
          if (mounted) {
            setState(() {
              _recordingSeconds++;
            });
          }
        });
        setState(() {
          _isRecordingVideo = true;
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to start video recording: $e')),
        );
      }
    }
  }

  void _retake() {
    if (_capturedFile != null) {
      try {
        final f = File(_capturedFile!.path);
        if (f.existsSync()) f.deleteSync();
      } catch (_) {}
    }
    setState(() {
      _capturedFile = null;
      _isPreviewing = false;
      _recordingSeconds = 0;
    });
  }

  void _confirmAndUse() {
    if (_capturedFile != null) {
      Navigator.of(context).pop(_capturedFile!.path);
    }
  }

  String _formatDuration(int totalSecs) {
    final mins = (totalSecs ~/ 60).toString().padLeft(2, '0');
    final secs = (totalSecs % 60).toString().padLeft(2, '0');
    return '$mins:$secs';
  }

  IconData _getFlashIcon() {
    switch (_flashMode) {
      case FlashMode.always:
        return Icons.flash_on;
      case FlashMode.off:
        return Icons.flash_off;
      case FlashMode.auto:
      default:
        return Icons.flash_auto;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.error_outline, color: Colors.red, size: 48),
                const SizedBox(height: 16),
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    if (_isPreviewing && _capturedFile != null) {
      return _buildPreviewScreen();
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // 1. Camera Viewfinder
            if (_controller != null && _controller!.value.isInitialized)
              Center(
                child: CameraPreview(_controller!),
              )
            else
              const Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),

            // 2. Top Bar (Close, Flash, Video Timer)
            Positioned(
              top: 12,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white, size: 28),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  if (_isRecordingVideo)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.fiber_manual_record, color: Colors.white, size: 14),
                          const SizedBox(width: 6),
                          Text(
                            _formatDuration(_recordingSeconds),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  IconButton(
                    icon: Icon(_getFlashIcon(), color: Colors.white, size: 28),
                    onPressed: _isRecordingVideo ? null : _toggleFlash,
                  ),
                ],
              ),
            ),

            // 3. Bottom Controls (Flip, Shutter, Spacer)
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Placeholder for spacing balance
                  const SizedBox(width: 48),

                  // Shutter Button
                  GestureDetector(
                    onTap: widget.isVideoMode ? _toggleVideoRecording : _takePicture,
                    child: Container(
                      width: 76,
                      height: 76,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        color: _isRecordingVideo ? Colors.red : Colors.white24,
                      ),
                      child: Center(
                        child: widget.isVideoMode
                            ? Icon(
                                _isRecordingVideo ? Icons.stop : Icons.videocam,
                                color: Colors.white,
                                size: 36,
                              )
                            : Container(
                                width: 56,
                                height: 56,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ),

                  // Flip Camera Button
                  if (_cameras.length > 1)
                    IconButton(
                      icon: const Icon(Icons.flip_camera_android, color: Colors.white, size: 32),
                      onPressed: _isRecordingVideo ? null : _toggleCamera,
                    )
                  else
                    const SizedBox(width: 48),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreviewScreen() {
    final isVideo = widget.isVideoMode;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            // Preview Image
            Center(
              child: isVideo
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.video_file, color: Colors.white, size: 80),
                        SizedBox(height: 16),
                        Text(
                          'Video Recorded Successfully',
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  : Image.file(
                      File(_capturedFile!.path),
                      fit: BoxFit.contain,
                    ),
            ),

            // Top bar
            Positioned(
              top: 12,
              left: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 28),
                onPressed: _retake,
              ),
            ),

            // Bottom Buttons (Retake vs Use Photo)
            Positioned(
              bottom: 24,
              left: 24,
              right: 24,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white70),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: _retake,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retake', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF16A34A),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: _confirmAndUse,
                      icon: const Icon(Icons.check),
                      label: Text(
                        isVideo ? 'Use Video' : 'Use Photo',
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
