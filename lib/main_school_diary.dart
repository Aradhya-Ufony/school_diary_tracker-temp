import 'core/flavors/flavor_config.dart';
import 'main_common.dart';

/// Entry point for the SchoolDiaryRouteTracker flavor.
/// Run with: flutter run --flavor schoolDiaryRouteTracker -t lib/main_school_diary.dart
void main() async {
  await bootstrap(FlavorConfig.schoolDiary);
}
