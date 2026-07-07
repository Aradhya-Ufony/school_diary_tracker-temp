import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/di/providers.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'l10n/generated/app_localizations.dart';

/// Root widget, shared by both flavors. Equivalent in spirit to a shared
/// base Activity theme + manifest `<application>` block, but as a single
/// composable widget instead of duplicated per-flavor manifest XML.
class SchoolBusTrackerApp extends ConsumerWidget {
  const SchoolBusTrackerApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final flavorConfig = ref.watch(flavorConfigProvider);

    return MaterialApp.router(
      title: flavorConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,

      // Supported locales mirror the Android project's res/values-{code}
      // folders: en (default/template), gu, hi, ka, mr, te. Only the `en`
      // ARB file exists as of this scaffold step — the other 5 are ported
      // with their full string catalogs in Step 9 (Settings/localization),
      // matching the roadmap. Declaring all 6 locales here now (even
      // before their .arb files land) avoids having to touch app.dart
      // again later.
      supportedLocales: const [
        Locale('en'),
        Locale('gu'),
        Locale('hi'),
        Locale('kn'), // Android res folder is "values-ka"; ka is not a
        // valid ISO 639-1 code (Kannada is "kn"). Flagging this as a
        // likely typo in the original Android resource folder naming —
        // confirm with you before Step 9 whether "ka" was meant to be
        // Kannada (kn) or something else.
        Locale('mr'),
        Locale('te'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
