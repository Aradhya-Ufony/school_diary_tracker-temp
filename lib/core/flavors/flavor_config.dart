/// Mirrors the two Android product flavors defined under the `normal`
/// dimension in the original `build.gradle`:
///   - SchoolDiaryRouteTracker (applicationId com.ufony.SDTracker)
///   - EuroWebGenieRouteTracker (applicationId com.ufony.schooldiarytracker)
enum AppFlavor {
  schoolDiaryRouteTracker,
  euroWebGenieRouteTracker,
}

/// Per-flavor configuration, equivalent to what the Android app expressed
/// via `buildConfigField`, `resValue`, and `manifestPlaceholders` in
/// `build.gradle`.
///
/// This is intentionally a plain, immutable value object rather than a
/// singleton with mutable global state — it's set once in `main_*.dart`
/// before `runApp()` and then read everywhere via Riverpod
/// (`flavorConfigProvider`), never mutated afterward.
class FlavorConfig {
  final AppFlavor flavor;
  final String appName;
  final String baseUrl;

  const FlavorConfig({
    required this.flavor,
    required this.appName,
    required this.baseUrl,
  });

  static FlavorConfig? _instance;

  /// Must be called exactly once, from the flavor-specific `main_*.dart`,
  /// before `runApp()`.
  static void initialize(FlavorConfig config) {
    assert(
      _instance == null,
      'FlavorConfig.initialize() called more than once.',
    );
    _instance = config;
  }

  static FlavorConfig get instance {
    assert(
      _instance != null,
      'FlavorConfig.initialize() must be called before use. '
      'Are you running the app via main.dart directly instead of '
      'main_school_diary.dart / main_euro.dart?',
    );
    return _instance!;
  }

  bool get isSchoolDiary => flavor == AppFlavor.schoolDiaryRouteTracker;
  bool get isEuro => flavor == AppFlavor.euroWebGenieRouteTracker;

  static const _schoolDiaryBaseUrl = 'https://api.schooldiary.me/';
  static const _euroBaseUrl = 'https://web.zoment.com/euro/api/';

  static const schoolDiary = FlavorConfig(
    flavor: AppFlavor.schoolDiaryRouteTracker,
    appName: 'SD Tracker',
    baseUrl: _schoolDiaryBaseUrl,
  );

  static const euro = FlavorConfig(
    flavor: AppFlavor.euroWebGenieRouteTracker,
    appName: 'Euro Tracker',
    baseUrl: _euroBaseUrl,
  );
}
