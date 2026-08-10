import 'dart:convert';
import 'dart:io';
import 'package:school_diary_tracker/core/utils/app_constants.dart';

String? resolveImageUrl(String? url) {
  if (url == null || url.isEmpty) return null;
  
  if (url.startsWith('http://') || url.startsWith('https://')) {
    return url;
  }
  
  const baseUrl = Constants.BASE_URL;
  return Uri.parse(baseUrl).resolve(url).toString();
}

/// Centralized utility to asynchronously convert a local file to its base64 string representation.
Future<String?> fileToBase64(String? filePath) async {
  if (filePath == null || filePath.isEmpty) return null;
  try {
    final file = File(filePath);
    if (await file.exists()) {
      final bytes = await file.readAsBytes();
      return base64Encode(bytes);
    }
  } catch (_) {}
  return null;
}
