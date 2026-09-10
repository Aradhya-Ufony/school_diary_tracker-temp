import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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
      locale: locale,
      builder: (context, widget) {
        ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
          FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Something went wrong. Please try restarting the app.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                ),
              ),
            ),
          );
        };
        return widget ?? const SizedBox.shrink();
      },
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

