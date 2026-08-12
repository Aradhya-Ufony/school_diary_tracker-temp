import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:school_diary_tracker/core/utils/app_constants.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/dvir/view/post_trip_walkaround_screen.dart';
import 'features/settings/viewmodel/locale_controller.dart';
import 'l10n/generated/app_localizations.dart';

/// Root widget. Equivalent in spirit to a shared
/// base Activity theme + manifest `<application>` block, but as a single
/// composable widget instead of duplicated per-flavor manifest XML.
class SchoolBusTrackerApp extends ConsumerStatefulWidget{
  const SchoolBusTrackerApp({super.key});

  @override
  ConsumerState<SchoolBusTrackerApp> createState() => _SchoolBusTrackerAppState();
}

class _SchoolBusTrackerAppState extends ConsumerState<SchoolBusTrackerApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(dvirSyncWorkerProvider).start();
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(appRouterProvider);
    final locale = ref.watch(localeControllerProvider);

    return MaterialApp.router(
      title: Constants.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
      locale: locale, // null = follow system locale, matching Flutter's
      // own default rather than the original's "always English until the
      // driver explicitly picks a language" — a reasonable small
      // improvement, flagged rather than silently decided; the driver
      // can still always override via the Language screen (Step 9).

      // Supported locales mirror the Android project's res/values-{code}
      // folders: en (default/template), gu, hi, kn, mr, te. As of Step 9
      // all six have real translations for every string this app
      // currently uses — see lib/l10n/app_*.arb. Where the original app
      // had no existing translated string to draw from (e.g. the Login
      // screen, which was never localized in the Android app either —
      // its layout hardcodes English hint text), the non-English ARB
      // files intentionally repeat the English text rather than invent
      // unreviewed translations; have your localization team review
      // those before shipping.
      supportedLocales: const [
        Locale('en'),
        Locale('gu'),
        Locale('hi'),
        Locale('kn'), // corrected from the original's invalid "ka" code
        // — the values-ka folder's actual content is Kannada script, and
        // "kn" is the correct ISO 639-1 code for it.
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
