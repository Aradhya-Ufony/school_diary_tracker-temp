import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_te.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('kn'),
    Locale('mr'),
    Locale('te')
  ];

  /// App display name for the SchoolDiaryRouteTracker flavor. Mirrors res/values/strings.xml app_name for that flavor in the Android project.
  ///
  /// In en, this message translates to:
  /// **'SD Tracker'**
  String get appTitleSchoolDiary;

  /// No description provided for @genericLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get genericLoading;

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get genericError;

  /// No description provided for @genericRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get genericRetry;

  /// No description provided for @genericSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get genericSuccess;

  /// No description provided for @genericOk.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get genericOk;

  /// No description provided for @loginEmailOrPhoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Email or phone number'**
  String get loginEmailOrPhoneLabel;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get loginForgotPassword;

  /// No description provided for @loginErrorEnterUsername.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get loginErrorEnterUsername;

  /// No description provided for @loginErrorEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get loginErrorEnterPassword;

  /// No description provided for @loginErrorInvalidEmailOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email or phone number'**
  String get loginErrorInvalidEmailOrPhone;

  /// No description provided for @loginErrorFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please try again.'**
  String get loginErrorFailed;

  /// No description provided for @forgotPasswordEmailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get forgotPasswordEmailLabel;

  /// No description provided for @forgotPasswordSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get forgotPasswordSend;

  /// No description provided for @forgotPasswordCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get forgotPasswordCancel;

  /// No description provided for @forgotPasswordSuccess.
  ///
  /// In en, this message translates to:
  /// **'If that email exists, a reset link has been sent.'**
  String get forgotPasswordSuccess;

  /// No description provided for @forgotPasswordInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get forgotPasswordInvalidEmail;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// No description provided for @homeHi.
  ///
  /// In en, this message translates to:
  /// **'Hi, {name}'**
  String homeHi(String name);

  /// No description provided for @homeSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Search routes'**
  String get homeSearchHint;

  /// No description provided for @homeNoRoutes.
  ///
  /// In en, this message translates to:
  /// **'No routes available'**
  String get homeNoRoutes;

  /// No description provided for @homeStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get homeStart;

  /// No description provided for @homeLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get homeLogout;

  /// No description provided for @homeMenuLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get homeMenuLanguage;

  /// No description provided for @homeMenuAppInfo.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get homeMenuAppInfo;

  /// No description provided for @languageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// No description provided for @appInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get appInfoTitle;

  /// No description provided for @appInfoVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appInfoVersion;

  /// No description provided for @appInfoBuild.
  ///
  /// In en, this message translates to:
  /// **'Build Number'**
  String get appInfoBuild;

  /// No description provided for @appInfoPackage.
  ///
  /// In en, this message translates to:
  /// **'Package'**
  String get appInfoPackage;

  /// No description provided for @appInfoDevice.
  ///
  /// In en, this message translates to:
  /// **'Device Model'**
  String get appInfoDevice;

  /// No description provided for @appInfoOS.
  ///
  /// In en, this message translates to:
  /// **'OS Version'**
  String get appInfoOS;

  /// No description provided for @tripConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get tripConfirmTitle;

  /// No description provided for @tripConfirmCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get tripConfirmCancel;

  /// No description provided for @tripConfirmOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get tripConfirmOk;

  /// No description provided for @tripErrorLocationRequired.
  ///
  /// In en, this message translates to:
  /// **'Location permission is required to start a trip.'**
  String get tripErrorLocationRequired;

  /// No description provided for @stopsUndoTooltip.
  ///
  /// In en, this message translates to:
  /// **'Undo pick/drop'**
  String get stopsUndoTooltip;

  /// No description provided for @stopsSubmitCount.
  ///
  /// In en, this message translates to:
  /// **'Submit ({count})'**
  String stopsSubmitCount(int count);

  /// No description provided for @stopsUndoCount.
  ///
  /// In en, this message translates to:
  /// **'Undo ({count})'**
  String stopsUndoCount(int count);

  /// No description provided for @stopsCancelledSuccess.
  ///
  /// In en, this message translates to:
  /// **'Cancelled successfully'**
  String get stopsCancelledSuccess;

  /// No description provided for @stopsSubmittedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Submitted successfully'**
  String get stopsSubmittedSuccess;

  /// No description provided for @stopsGenericError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get stopsGenericError;

  /// No description provided for @stopsDefaultLabel.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stopsDefaultLabel;

  /// No description provided for @stopsSummary.
  ///
  /// In en, this message translates to:
  /// **'{selected} selected · {done}/{total} {status}'**
  String stopsSummary(int selected, int done, int total, String status);

  /// No description provided for @stopsStatusDone.
  ///
  /// In en, this message translates to:
  /// **'done'**
  String get stopsStatusDone;

  /// No description provided for @stopsStatusComplete.
  ///
  /// In en, this message translates to:
  /// **'complete'**
  String get stopsStatusComplete;

  /// No description provided for @stopsTypePick.
  ///
  /// In en, this message translates to:
  /// **'Pick'**
  String get stopsTypePick;

  /// No description provided for @stopsTypeDrop.
  ///
  /// In en, this message translates to:
  /// **'Drop'**
  String get stopsTypeDrop;

  /// No description provided for @stopsActionUndo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get stopsActionUndo;

  /// No description provided for @childrenTitle.
  ///
  /// In en, this message translates to:
  /// **'Children — {routeName}'**
  String childrenTitle(String routeName);

  /// No description provided for @childrenStatusPicked.
  ///
  /// In en, this message translates to:
  /// **'Picked'**
  String get childrenStatusPicked;

  /// No description provided for @childrenStatusDropped.
  ///
  /// In en, this message translates to:
  /// **'Dropped'**
  String get childrenStatusDropped;

  /// No description provided for @childrenStatusPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get childrenStatusPending;

  /// No description provided for @childrenActionGuardians.
  ///
  /// In en, this message translates to:
  /// **'Guardians'**
  String get childrenActionGuardians;

  /// No description provided for @childrenNoGuardians.
  ///
  /// In en, this message translates to:
  /// **'No authorized guardians on file for this child.'**
  String get childrenNoGuardians;

  /// No description provided for @childrenGuardiansFor.
  ///
  /// In en, this message translates to:
  /// **'Authorized guardians for {name}'**
  String childrenGuardiansFor(String name);

  /// No description provided for @mapStopsTooltip.
  ///
  /// In en, this message translates to:
  /// **'Stops'**
  String get mapStopsTooltip;

  /// No description provided for @mapChildrenTooltip.
  ///
  /// In en, this message translates to:
  /// **'Children & guardians'**
  String get mapChildrenTooltip;

  /// No description provided for @mapWaitingGps.
  ///
  /// In en, this message translates to:
  /// **'Waiting for GPS...'**
  String get mapWaitingGps;

  /// No description provided for @mapUpdatedAgo.
  ///
  /// In en, this message translates to:
  /// **'Updated {seconds}s ago'**
  String mapUpdatedAgo(int seconds);

  /// No description provided for @mapConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get mapConfirmTitle;

  /// No description provided for @mapConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to close the trip?'**
  String get mapConfirmMessage;

  /// No description provided for @mapNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get mapNo;

  /// No description provided for @mapYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get mapYes;

  /// No description provided for @mapStopping.
  ///
  /// In en, this message translates to:
  /// **'Stopping...'**
  String get mapStopping;

  /// No description provided for @mapStop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get mapStop;

  /// No description provided for @mapReconnectTitle.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get mapReconnectTitle;

  /// No description provided for @mapReconnectMessage.
  ///
  /// In en, this message translates to:
  /// **'Location update failing frequently, Please check your internet.'**
  String get mapReconnectMessage;

  /// No description provided for @mapCurrentPosition.
  ///
  /// In en, this message translates to:
  /// **'Current Position'**
  String get mapCurrentPosition;

  /// No description provided for @splashDriverApp.
  ///
  /// In en, this message translates to:
  /// **'Driver App'**
  String get splashDriverApp;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'gu', 'hi', 'kn', 'mr', 'te'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'gu': return AppLocalizationsGu();
    case 'hi': return AppLocalizationsHi();
    case 'kn': return AppLocalizationsKn();
    case 'mr': return AppLocalizationsMr();
    case 'te': return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
