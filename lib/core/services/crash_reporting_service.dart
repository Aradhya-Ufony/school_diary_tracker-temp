import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import '../utils/app_constants.dart';

class CrashReportingService {
  Future<void> logApiFailure({
    required Object exception,
    required String endpoint,
    int? responseCode,
    Map<String, String> extraInfo = const {},
    String data = '',
  }) async {
    final crashlytics = FirebaseCrashlytics.instance;

    await crashlytics.setCustomKey(Constants.CRASHLYTICS_API_ENDPOINT_KEY, endpoint);
    if (responseCode != null) {
      await crashlytics.setCustomKey(Constants.CRASHLYTICS_RESPONSE_CODE_KEY, responseCode);
    }
    for (final entry in extraInfo.entries) {
      await crashlytics.setCustomKey(entry.key, entry.value);
    }

    await crashlytics.log('$endpoint+$data');
    await crashlytics.recordError(exception, StackTrace.current, fatal: false);
  }

  void recordFlutterError(Object exception, StackTrace stack) {
    FirebaseCrashlytics.instance.recordError(exception, stack, fatal: true);
  }
}
