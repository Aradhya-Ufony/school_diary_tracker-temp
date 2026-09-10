import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import '../utils/app_constants.dart';

class CrashReportingService {
  Future<void> logApiFailure({
    required Object exception,
    required String endpoint,
    int? responseCode,
    Map<String, String> extraInfo = const {},
    String data = '',
    StackTrace? stackTrace,
  }) async {
    try {
      final crashlytics = FirebaseCrashlytics.instance;

      await crashlytics.setCustomKey(Constants.CRASHLYTICS_API_ENDPOINT_KEY, endpoint);
      if (responseCode != null) {
        await crashlytics.setCustomKey(Constants.CRASHLYTICS_RESPONSE_CODE_KEY, responseCode);
      }
      for (final entry in extraInfo.entries) {
        await crashlytics.setCustomKey(entry.key, entry.value);
      }

      await crashlytics.log('API Error: $endpoint [Status: $responseCode] Response: $data');
      await crashlytics.recordError(exception, stackTrace ?? StackTrace.current, fatal: false);
    } catch (_) {}
  }

  Future<void> logError(Object exception, StackTrace stack, {String? reason, bool fatal = false}) async {
    try {
      await FirebaseCrashlytics.instance.recordError(exception, stack, reason: reason, fatal: fatal);
    } catch (_) {}
  }

  void recordFlutterError(Object exception, StackTrace stack) {
    try {
      FirebaseCrashlytics.instance.recordError(exception, stack, fatal: true);
    } catch (_) {}
  }
}

