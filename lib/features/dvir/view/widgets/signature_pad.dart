import 'dart:convert';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../../../../core/utils/app_constants.dart';

class SignaturePad extends StatefulWidget {
  final Function(String base64Png) onSigned;
  final VoidCallback? onCleared;

  const SignaturePad({
    super.key,
    required this.onSigned,
    this.onCleared,
  });

  @override
  State<SignaturePad> createState() => _SignaturePadState();
}

class _SignaturePadState extends State<SignaturePad> {
  final List<Offset?> _points = [];
  String? _signatureBase64;

  void _clear() {
    setState(() {
      _points.clear();
      _signatureBase64 = null;
    });
    widget.onCleared?.call();
  }

  /// Exports the drawing rotated 90 degrees counter-clockwise so that 
  /// a bottom-to-top vertical drawing on a portrait screen maps to a 
  /// standard left-to-right horizontal image.
  Future<void> _exportSignature(double canvasWidth, double canvasHeight) async {
    if (_points.isEmpty) return;

    // Output image is horizontal: Width = Canvas Height, Height = Canvas Width
    final double imgWidth = canvasHeight;
    final double imgHeight = canvasWidth;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder, Rect.fromLTWH(0, 0, imgWidth, imgHeight));

    // Fill background (white)
    final bgPaint = Paint()..color = Colors.white;
    canvas.drawRect(Rect.fromLTWH(0, 0, imgWidth, imgHeight), bgPaint);

    // Apply rotation transformation: Translate along X-axis and rotate 90 degrees clockwise
    canvas.save();
    canvas.translate(imgWidth, 0);
    canvas.rotate(1.5708); // 90 degrees clockwise in radians

    final linePaint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    for (int i = 0; i < _points.length - 1; i++) {
      if (_points[i] != null && _points[i + 1] != null) {
        canvas.drawLine(_points[i]!, _points[i + 1]!, linePaint);
      }
    }
    canvas.restore();

    final picture = recorder.endRecording();
    final img = await picture.toImage(imgWidth.toInt(), imgHeight.toInt());
    final pngBytes = await img.toByteData(format: ui.ImageByteFormat.png);

    if (pngBytes != null) {
      final bytes = pngBytes.buffer.asUint8List();
      final base64String = 'data:image/png;base64,${base64.encode(bytes)}';
      setState(() {
        _signatureBase64 = base64String;
      });
      widget.onSigned(base64String);
    }
  }

  void _openFullScreenSignature(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      pageBuilder: (dialogContext, anim1, anim2) {
        final List<Offset?> dialogPoints = List.from(_points);

        return StatefulBuilder(
          builder: (context, setDialogState) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Draw Signature'),
                backgroundColor: AppColors.PRIMARY,
                foregroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(dialogContext),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: () {
                      setDialogState(() {
                        dialogPoints.clear();
                      });
                    },
                  ),
                ],
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return GestureDetector(
                              onPanUpdate: (details) {
                                setDialogState(() {
                                  final RenderBox renderBox = context.findRenderObject() as RenderBox;
                                  final localPosition = renderBox.globalToLocal(details.globalPosition);
                                  
                                  // Clamp coordinates to prevent any drawing lines from going outside the canvas area
                                  final double clampedX = localPosition.dx.clamp(0.0, constraints.maxWidth);
                                  final double clampedY = localPosition.dy.clamp(0.0, constraints.maxHeight);
                                  
                                  dialogPoints.add(Offset(clampedX, clampedY));
                                });
                              },
                              onPanEnd: (details) {
                                dialogPoints.add(null);
                              },
                              child: Stack(
                                children: [
                                  // Watermark indicator telling users to draw vertically from bottom to top
                                  Center(
                                    child: RotatedBox(
                                      quarterTurns: 3, // Rotated vertically 270 degrees (pointing bottom-to-top)
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.arrow_upward, color: Colors.grey.shade200, size: 28),
                                          const SizedBox(width: 8),
                                          Text(
                                            'Sign Vertically (Bottom to Top)',
                                            style: TextStyle(
                                              color: Colors.grey.shade200,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomPaint(
                                    painter: _SignaturePainter(dialogPoints),
                                    size: Size.infinite,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade100,
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: () => Navigator.pop(dialogContext),
                              child: const Text('CANCEL'),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.PRIMARY,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                              ),
                              onPressed: dialogPoints.isEmpty
                                  ? null
                                  : () async {
                                      setState(() {
                                        _points.clear();
                                        _points.addAll(dialogPoints);
                                      });
                                      
                                      final RenderBox box = context.findRenderObject() as RenderBox;
                                      await _exportSignature(box.size.width, box.size.height);

                                      if (dialogContext.mounted) Navigator.pop(dialogContext);
                                    },
                              child: const Text('SAVE SIGNATURE'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasSignature = _signatureBase64 != null;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          if (hasSignature) ...[
            const Text(
              'Captured Signature Preview:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blueGrey),
            ),
            const SizedBox(height: 12),
            Container(
              height: 120,
              width: double.infinity, // Displayed as a horizontal preview container
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.memory(
                  base64Decode(_signatureBase64!.split(',').last),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  onPressed: _clear,
                  icon: const Icon(Icons.delete_outline),
                  label: const Text('CLEAR'),
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.red),
                ),
                ElevatedButton.icon(
                  onPressed: () => _openFullScreenSignature(context),
                  icon: const Icon(Icons.edit_outlined, color: Color(0xFFFFFFFF),),
                  label: const Text('REDRAW'),
                ),
              ],
            )
          ] else
            SizedBox(
              width: double.infinity,
              height: 120,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  side: const BorderSide(color: AppColors.PRIMARY, width: 1.5),
                ),
                onPressed: () => _openFullScreenSignature(context),
                icon: const Icon(Icons.gesture, color: AppColors.PRIMARY),
                label: const Text(
                  'TAP TO DRAW SIGNATURE (REQUIRED)',
                  style: TextStyle(color: AppColors.PRIMARY, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SignaturePainter extends CustomPainter {
  final List<Offset?> points;
  _SignaturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}