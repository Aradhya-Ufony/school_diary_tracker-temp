import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'core/di/providers.dart';
import 'core/flavors/flavor_config.dart';
import 'core/storage/local_storage_service.dart';

/// Shared bootstrap called by both `main_school_diary.dart` and
/// `main_euro.dart`, after each has set its own [FlavorConfig].
///
/// Equivalent to what `AppUfony.onCreate()` did for both flavors in
/// Android (MultiDex.install, log file setup) — except MultiDex has no
/// Flutter equivalent (not needed; Flutter doesn't hit the 64k method
/// limit the same way) and the ad-hoc `logcat -f .../log.txt` file logging
/// in AppUfony is legacy debug tooling that predates Crashlytics and is
/// superseded by it — not being carried forward (Crashlytics wiring
/// happens in Step 10).
///
/// As of Step 3, this also resolves `SharedPreferences` once here (it's
/// async, so it can't live inside a plain Riverpod `Provider` body) and
/// injects it via `overrideWithValue`, matching the pattern
/// `PreferenceManager`'s static `Context`-based access replaced.
Future<void> bootstrap(FlavorConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig.initialize(config);

  final prefs = await SharedPreferences.getInstance();
  final localStorageService = LocalStorageService(prefs);

  runApp(
    ProviderScope(
      overrides: buildRootProviderOverrides(
        localStorageService: localStorageService,
      ),
      child: const SchoolBusTrackerApp(),
    ),
  );
}
