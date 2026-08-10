import 'firebase_options.dart';
import 'main_common.dart';

/// Entry point for the SD Tracker application.
void main() async {
  await bootstrap(
    DefaultFirebaseOptions.currentPlatform,
  );
}
