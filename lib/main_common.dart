import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'core/di/providers.dart';
import 'core/storage/local_storage_service.dart';

/// Shared bootstrap called by `main.dart`.
///
/// Equivalent to what `AppUfony.onCreate()` did in
/// Android (MultiDex.install, log file setup) — except MultiDex has no
/// Flutter equivalent (not needed; Flutter doesn't hit the 64k method
/// limit the same way) and the ad-hoc `logcat -f .../log.txt` file logging
/// in AppUfony is legacy debug tooling that predates Crashlytics and is
/// superseded by it — not carried forward.
///
/// As of Step 3, this also resolves `SharedPreferences` once here (it's
/// async, so it can't live inside a plain Riverpod `Provider` body) and
/// injects it via `overrideWithValue`, matching the pattern
/// `PreferenceManager`'s static `Context`-based access replaced.
///
/// As of Step 10, this also initializes Firebase (with the application's own
/// [FirebaseOptions] — see `firebase_options.dart`) and wires up global error handlers.
/// `FlutterError.onError`/`PlatformDispatcher.instance.onError` have no
/// direct Java/Kotlin equivalent in the original — Java's uncaught-
/// exception model is different — but this is standard Flutter
/// Crashlytics setup, added because it fulfills the same purpose
/// installing Crashlytics was presumably for in the first place: actually
/// catching crashes, not just the API-failure logging
/// `CrashReportingUtil` did.
Future<void> bootstrap(FirebaseOptions firebaseOptions) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: firebaseOptions);

  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };


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
