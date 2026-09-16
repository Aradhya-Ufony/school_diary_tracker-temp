import 'dart:io';
import 'package:exif/exif.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import '../../../../data/models/drill_evidence.dart';

class MediaCompressionService {
  final ImagePicker _picker = ImagePicker();

  Future<DrillEvidence?> pickAndCompressMedia(ImageSource source, {bool isVideo = false}) async {
    final pickTime = DateTime.now();
    if (isVideo) {
      final video = await _picker.pickVideo(
        source: source,
        preferredCameraDevice: CameraDevice.rear,
      );
      if (video == null) return null;
      final file = File(video.path);
      final stat = await file.stat();
      final createdAt = source == ImageSource.camera ? pickTime : stat.modified;
      final uploadedAt = pickTime;

      String? thumbnailPath;
      try {
        final tempDir = await getTemporaryDirectory();
        thumbnailPath = await VideoThumbnail.thumbnailFile(
          video: video.path,
          thumbnailPath: tempDir.path,
          imageFormat: ImageFormat.JPEG,
          maxHeight: 300,
          quality: 75,
        );
      } catch (e) {
        // Thumbnail generation failed, fallback gracefully
      }

      return DrillEvidence(
        localFilePath: video.path,
        thumbnailPath: thumbnailPath,
        mediaType: EvidenceMediaType.video,
        createdAt: createdAt,
        uploadedAt: uploadedAt,
      );
    } else {
      final photo = await _picker.pickImage(
        source: source,
        preferredCameraDevice: CameraDevice.rear,
      );
      if (photo == null) return null;
      
      final tempDir = await getTemporaryDirectory();
      final targetPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_compressed.jpg';
      
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        photo.path,
        targetPath,
        quality: 80,
        minWidth: 1920,
        minHeight: 1080,
      );

      final originalFile = File(photo.path);
      final stat = await originalFile.stat();

      DateTime createdAt = pickTime;
      final DateTime uploadedAt = pickTime;

      if (source == ImageSource.camera) {
        createdAt = pickTime;
      } else {
        createdAt = stat.modified;
        try {
          final fileBytes = await originalFile.readAsBytes();
          final tags = await readExifFromBytes(fileBytes);
          if (tags.isNotEmpty) {
            final dateTag = tags['EXIF DateTimeOriginal'] ?? tags['Image DateTime'] ?? tags['EXIF DateTimeDigitized'];
            if (dateTag != null) {
              final dateStr = dateTag.toString();
              final parts = dateStr.split(' ');
              if (parts.length == 2) {
                final datePart = parts[0].replaceAll(':', '-');
                final timePart = parts[1];
                final parsed = DateTime.tryParse('$datePart $timePart');
                if (parsed != null) {
                  createdAt = parsed;
                }
              }
            }
          }
        } catch (_) {
          // Fallback to file modification time
        }
      }

      return DrillEvidence(
        localFilePath: compressedFile?.path ?? photo.path,
        mediaType: EvidenceMediaType.photo,
        createdAt: createdAt,
        uploadedAt: uploadedAt,
      );
    }
  }

  Future<DrillEvidence?> processCapturedFile(String filePath, {bool isVideo = false}) async {
    final captureTime = DateTime.now();
    if (isVideo) {
      String? thumbnailPath;
      try {
        final tempDir = await getTemporaryDirectory();
        thumbnailPath = await VideoThumbnail.thumbnailFile(
          video: filePath,
          thumbnailPath: tempDir.path,
          imageFormat: ImageFormat.JPEG,
          maxHeight: 300,
          quality: 75,
        );
      } catch (e) {
        // Thumbnail generation failed, fallback gracefully
      }

      return DrillEvidence(
        localFilePath: filePath,
        thumbnailPath: thumbnailPath,
        mediaType: EvidenceMediaType.video,
        createdAt: captureTime,
        uploadedAt: captureTime,
      );
    } else {
      final tempDir = await getTemporaryDirectory();
      final targetPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_compressed.jpg';
      
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        filePath,
        targetPath,
        quality: 80,
        minWidth: 1920,
        minHeight: 1080,
      );

      return DrillEvidence(
        localFilePath: compressedFile?.path ?? filePath,
        mediaType: EvidenceMediaType.photo,
        createdAt: captureTime,
        uploadedAt: captureTime,
      );
    }
  }

  Future<String?> compressPhoto(String filePath) async {
    try {
      final tempDir = await getTemporaryDirectory();
      final targetPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}_compressed.jpg';
      
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        filePath,
        targetPath,
        quality: 80,
        minWidth: 1920,
        minHeight: 1080,
      );
      return compressedFile?.path ?? filePath;
    } catch (_) {
      return filePath;
    }
  }
}
