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

  /// No description provided for @genericCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get genericCancel;

  /// No description provided for @genericConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get genericConfirm;

  /// No description provided for @genericEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get genericEdit;

  /// No description provided for @genericClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get genericClose;

  /// No description provided for @genericBack.
  ///
  /// In en, this message translates to:
  /// **'BACK'**
  String get genericBack;

  /// No description provided for @genericNext.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get genericNext;

  /// No description provided for @genericClear.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get genericClear;

  /// No description provided for @drillsTitle.
  ///
  /// In en, this message translates to:
  /// **'Evacuation Drills'**
  String get drillsTitle;

  /// No description provided for @drillsAssignedVehicle.
  ///
  /// In en, this message translates to:
  /// **'Assigned Vehicle'**
  String get drillsAssignedVehicle;

  /// No description provided for @drillsNoBusAssigned.
  ///
  /// In en, this message translates to:
  /// **'No Bus Assigned'**
  String get drillsNoBusAssigned;

  /// No description provided for @drillsChecking.
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get drillsChecking;

  /// No description provided for @drillsStartDrill.
  ///
  /// In en, this message translates to:
  /// **'Start Drill'**
  String get drillsStartDrill;

  /// No description provided for @drillsNoRoutesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No routes available to start a drill.'**
  String get drillsNoRoutesAvailable;

  /// No description provided for @drillsVehicleOutOfService.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Out of Service'**
  String get drillsVehicleOutOfService;

  /// No description provided for @drillsVehicleOutOfServiceMessage.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is currently out of service and cannot be used for drills.'**
  String get drillsVehicleOutOfServiceMessage;

  /// No description provided for @drillsNoDrillsRecorded.
  ///
  /// In en, this message translates to:
  /// **'No drills recorded for bus {busNumber}'**
  String drillsNoDrillsRecorded(String busNumber);

  /// No description provided for @drillsHeader.
  ///
  /// In en, this message translates to:
  /// **'Drill #{id} - {type}'**
  String drillsHeader(String id, String type);

  /// No description provided for @drillsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Conducted: {date}\nStatus: {status}'**
  String drillsSubtitle(String date, String status);

  /// No description provided for @drillsShowSummary.
  ///
  /// In en, this message translates to:
  /// **'Show Summary'**
  String get drillsShowSummary;

  /// No description provided for @drillRosterMarkAttendance.
  ///
  /// In en, this message translates to:
  /// **'Mark Attendance'**
  String get drillRosterMarkAttendance;

  /// No description provided for @drillRosterRoute.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String drillRosterRoute(String routeName);

  /// No description provided for @drillRosterBus.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busNumber}'**
  String drillRosterBus(String busNumber);

  /// No description provided for @drillRosterDrillType.
  ///
  /// In en, this message translates to:
  /// **'Drill: {drillType}'**
  String drillRosterDrillType(String drillType);

  /// No description provided for @drillRosterPresentCount.
  ///
  /// In en, this message translates to:
  /// **'Present: {presentCount} / {totalCount}'**
  String drillRosterPresentCount(int presentCount, int totalCount);

  /// No description provided for @drillRosterSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get drillRosterSelectAll;

  /// No description provided for @drillRosterNoStudents.
  ///
  /// In en, this message translates to:
  /// **'No students registered on this route.'**
  String get drillRosterNoStudents;

  /// No description provided for @drillRosterSeat.
  ///
  /// In en, this message translates to:
  /// **'Seat: {seatNumber}'**
  String drillRosterSeat(String seatNumber);

  /// No description provided for @drillRosterProceed.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO DRILL CHECKLIST'**
  String get drillRosterProceed;

  /// No description provided for @drillSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Drill Summary (#{id})'**
  String drillSummaryTitle(int id);

  /// No description provided for @drillSummaryLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load drill summary for ID #{id}.\n{error}'**
  String drillSummaryLoadFailed(int id, Object error);

  /// No description provided for @drillSummaryBackToDrills.
  ///
  /// In en, this message translates to:
  /// **'Back to Drills'**
  String get drillSummaryBackToDrills;

  /// No description provided for @drillSummaryNoData.
  ///
  /// In en, this message translates to:
  /// **'No drill data found.'**
  String get drillSummaryNoData;

  /// No description provided for @drillSummaryApprovedAt.
  ///
  /// In en, this message translates to:
  /// **'Approved At: {date}'**
  String drillSummaryApprovedAt(String date);

  /// No description provided for @drillSummaryConductedBy.
  ///
  /// In en, this message translates to:
  /// **'Conducted By: {name}'**
  String drillSummaryConductedBy(String name);

  /// No description provided for @drillSummaryDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Drill Details'**
  String get drillSummaryDetailsTitle;

  /// No description provided for @drillSummaryType.
  ///
  /// In en, this message translates to:
  /// **'Drill Type'**
  String get drillSummaryType;

  /// No description provided for @drillSummaryRouteId.
  ///
  /// In en, this message translates to:
  /// **'Route ID'**
  String get drillSummaryRouteId;

  /// No description provided for @drillSummaryBusNumber.
  ///
  /// In en, this message translates to:
  /// **'Bus Number'**
  String get drillSummaryBusNumber;

  /// No description provided for @drillSummaryStartTime.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get drillSummaryStartTime;

  /// No description provided for @drillSummaryEndTime.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get drillSummaryEndTime;

  /// No description provided for @drillSummaryDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get drillSummaryDuration;

  /// No description provided for @drillSummaryDurationValue.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min {seconds} sec'**
  String drillSummaryDurationValue(int minutes, int seconds);

  /// No description provided for @drillSummaryGps.
  ///
  /// In en, this message translates to:
  /// **'GPS Coordinates'**
  String get drillSummaryGps;

  /// No description provided for @drillSummaryGpsValue.
  ///
  /// In en, this message translates to:
  /// **'Lat: {lat}, Lng: {lng}'**
  String drillSummaryGpsValue(double lat, double lng);

  /// No description provided for @drillSummaryStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get drillSummaryStatus;

  /// No description provided for @drillSummaryApprovedAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Approved At'**
  String get drillSummaryApprovedAtLabel;

  /// No description provided for @drillSummaryDriverNotesTitle.
  ///
  /// In en, this message translates to:
  /// **'Driver Notes'**
  String get drillSummaryDriverNotesTitle;

  /// No description provided for @drillSummaryAdminNotesTitle.
  ///
  /// In en, this message translates to:
  /// **'Admin Notes'**
  String get drillSummaryAdminNotesTitle;

  /// No description provided for @drillSummaryStudentLogTitle.
  ///
  /// In en, this message translates to:
  /// **'Student Evacuation Log'**
  String get drillSummaryStudentLogTitle;

  /// No description provided for @drillSummaryEvacuatedCount.
  ///
  /// In en, this message translates to:
  /// **'Evacuated: {evacuatedCount}/{totalCount}'**
  String drillSummaryEvacuatedCount(int evacuatedCount, int totalCount);

  /// No description provided for @drillSummaryEvacuatedTime.
  ///
  /// In en, this message translates to:
  /// **'Evacuated {time}'**
  String drillSummaryEvacuatedTime(String time);

  /// No description provided for @drillSummaryOnBusNotEvacuated.
  ///
  /// In en, this message translates to:
  /// **'ON BUS - NOT EVACUATED'**
  String get drillSummaryOnBusNotEvacuated;

  /// No description provided for @drillSummaryNotOnBus.
  ///
  /// In en, this message translates to:
  /// **'Not On Bus'**
  String get drillSummaryNotOnBus;

  /// No description provided for @drillSummarySeat.
  ///
  /// In en, this message translates to:
  /// **'Seat: {seatNumber}'**
  String drillSummarySeat(String seatNumber);

  /// No description provided for @drillSummaryEvidenceTitle.
  ///
  /// In en, this message translates to:
  /// **'Evidence Media Attachments'**
  String get drillSummaryEvidenceTitle;

  /// No description provided for @drillSummaryVideoEvidence.
  ///
  /// In en, this message translates to:
  /// **'Video Evidence'**
  String get drillSummaryVideoEvidence;

  /// No description provided for @drillSummaryPhotoEvidence.
  ///
  /// In en, this message translates to:
  /// **'Photo Evidence'**
  String get drillSummaryPhotoEvidence;

  /// No description provided for @drillTypeTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Drill Type'**
  String get drillTypeTitle;

  /// No description provided for @drillTypePreparation.
  ///
  /// In en, this message translates to:
  /// **'DRILL PREPARATION'**
  String get drillTypePreparation;

  /// No description provided for @drillTypeBus.
  ///
  /// In en, this message translates to:
  /// **'Bus {busNumber}'**
  String drillTypeBus(String busNumber);

  /// No description provided for @drillTypeRoute.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String drillTypeRoute(String routeName);

  /// No description provided for @drillTypeNoRouteSelected.
  ///
  /// In en, this message translates to:
  /// **'No Route Selected'**
  String get drillTypeNoRouteSelected;

  /// No description provided for @drillTypeWarning.
  ///
  /// In en, this message translates to:
  /// **'Ensure vehicle is parked safely before beginning execution.'**
  String get drillTypeWarning;

  /// No description provided for @drillTypeSelectRoute.
  ///
  /// In en, this message translates to:
  /// **'Select Route:'**
  String get drillTypeSelectRoute;

  /// No description provided for @drillTypeClassification.
  ///
  /// In en, this message translates to:
  /// **'Choose drill classification:'**
  String get drillTypeClassification;

  /// No description provided for @drillTypeNameFrontDoor.
  ///
  /// In en, this message translates to:
  /// **'Front Door'**
  String get drillTypeNameFrontDoor;

  /// No description provided for @drillTypeNameRearDoor.
  ///
  /// In en, this message translates to:
  /// **'Rear Door'**
  String get drillTypeNameRearDoor;

  /// No description provided for @drillTypeNameSplit.
  ///
  /// In en, this message translates to:
  /// **'Split'**
  String get drillTypeNameSplit;

  /// No description provided for @drillTypeNameSideOrRoof.
  ///
  /// In en, this message translates to:
  /// **'Side Or Roof'**
  String get drillTypeNameSideOrRoof;

  /// No description provided for @drillTypeNameBusFire.
  ///
  /// In en, this message translates to:
  /// **'Bus Fire'**
  String get drillTypeNameBusFire;

  /// No description provided for @drillTypeNameDriverIncapacitation.
  ///
  /// In en, this message translates to:
  /// **'Driver Incapacitation'**
  String get drillTypeNameDriverIncapacitation;

  /// No description provided for @drillTypeNameDangerZone.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get drillTypeNameDangerZone;

  /// No description provided for @drillTypeNameEquipmentOrientation.
  ///
  /// In en, this message translates to:
  /// **'Equipment Orientation'**
  String get drillTypeNameEquipmentOrientation;

  /// No description provided for @drillTypeNameOthers.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get drillTypeNameOthers;

  /// No description provided for @drillTypeSpecifyCustom.
  ///
  /// In en, this message translates to:
  /// **'Specify Drill Type Description:'**
  String get drillTypeSpecifyCustom;

  /// No description provided for @drillTypeCustomHint.
  ///
  /// In en, this message translates to:
  /// **'Enter custom evacuation drill type...'**
  String get drillTypeCustomHint;

  /// No description provided for @drillTypeInvalidState.
  ///
  /// In en, this message translates to:
  /// **'Invalid vehicle or route state.'**
  String get drillTypeInvalidState;

  /// No description provided for @drillTypeProceed.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO STUDENT ROSTER'**
  String get drillTypeProceed;

  /// No description provided for @drillEvidenceConfirmSubmission.
  ///
  /// In en, this message translates to:
  /// **'Confirm Drill Submission'**
  String get drillEvidenceConfirmSubmission;

  /// No description provided for @drillEvidenceConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit this drill log? This action cannot be undone.'**
  String get drillEvidenceConfirmMessage;

  /// No description provided for @drillEvidenceSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting Drill Log...'**
  String get drillEvidenceSubmitting;

  /// No description provided for @drillEvidenceUploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading evidence and checklist data'**
  String get drillEvidenceUploading;

  /// No description provided for @drillEvidenceSuccess.
  ///
  /// In en, this message translates to:
  /// **'Submission Successful!'**
  String get drillEvidenceSuccess;

  /// No description provided for @drillEvidenceFailed.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed'**
  String get drillEvidenceFailed;

  /// No description provided for @drillEvidenceSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'The evacuation drill log has been successfully uploaded and is pending approval.'**
  String get drillEvidenceSuccessMessage;

  /// No description provided for @drillEvidenceReturnToDashboard.
  ///
  /// In en, this message translates to:
  /// **'RETURN TO DASHBOARD'**
  String get drillEvidenceReturnToDashboard;

  /// No description provided for @drillEvidenceRetrySubmission.
  ///
  /// In en, this message translates to:
  /// **'RETRY SUBMISSION'**
  String get drillEvidenceRetrySubmission;

  /// No description provided for @drillEvidenceTitle.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Drill Evidence'**
  String get drillEvidenceTitle;

  /// No description provided for @drillEvidenceMandatoryWarning.
  ///
  /// In en, this message translates to:
  /// **'At least 1 photo or video evidence is mandatory to submit drill.'**
  String get drillEvidenceMandatoryWarning;

  /// No description provided for @drillEvidenceTakePhoto.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get drillEvidenceTakePhoto;

  /// No description provided for @drillEvidenceRecordVideo.
  ///
  /// In en, this message translates to:
  /// **'Record Video'**
  String get drillEvidenceRecordVideo;

  /// No description provided for @drillEvidenceDriverNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'Driver Notes (Minimum 10 characters):'**
  String get drillEvidenceDriverNotesLabel;

  /// No description provided for @drillEvidenceDriverNotesHint.
  ///
  /// In en, this message translates to:
  /// **'Describe drill execution, student behavior, exit paths used, and any exceptions observed...'**
  String get drillEvidenceDriverNotesHint;

  /// No description provided for @drillEvidenceSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT DRILL LOG'**
  String get drillEvidenceSubmitButton;

  /// No description provided for @drillChecklistOnBusTitle.
  ///
  /// In en, this message translates to:
  /// **'ON BUS ({count})'**
  String drillChecklistOnBusTitle(int count);

  /// No description provided for @drillChecklistEvacuatedProgress.
  ///
  /// In en, this message translates to:
  /// **'Evacuated: {evacuatedCount}/{totalCount}'**
  String drillChecklistEvacuatedProgress(int evacuatedCount, int totalCount);

  /// No description provided for @drillChecklistNoStudentsOnBus.
  ///
  /// In en, this message translates to:
  /// **'No students marked on bus.'**
  String get drillChecklistNoStudentsOnBus;

  /// No description provided for @drillChecklistEvacuated.
  ///
  /// In en, this message translates to:
  /// **'Evacuated'**
  String get drillChecklistEvacuated;

  /// No description provided for @drillChecklistOnBusNotEvacuated.
  ///
  /// In en, this message translates to:
  /// **'ON BUS — NOT EVACUATED'**
  String get drillChecklistOnBusNotEvacuated;

  /// No description provided for @drillChecklistAbsentTitle.
  ///
  /// In en, this message translates to:
  /// **'ABSENT / NOT ON BUS ({count})'**
  String drillChecklistAbsentTitle(int count);

  /// No description provided for @drillChecklistNoAbsentStudents.
  ///
  /// In en, this message translates to:
  /// **'No absent students.'**
  String get drillChecklistNoAbsentStudents;

  /// No description provided for @drillChecklistNotOnBus.
  ///
  /// In en, this message translates to:
  /// **'NOT ON BUS'**
  String get drillChecklistNotOnBus;

  /// No description provided for @drillChecklistTitle.
  ///
  /// In en, this message translates to:
  /// **'Evacuation Drill Checklist'**
  String get drillChecklistTitle;

  /// No description provided for @drillChecklistUnaccountedWarning.
  ///
  /// In en, this message translates to:
  /// **'{count} Unaccounted Student(s) Remaining!'**
  String drillChecklistUnaccountedWarning(int count);

  /// No description provided for @drillChecklistBus.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busNumber}'**
  String drillChecklistBus(String busNumber);

  /// No description provided for @drillChecklistRouteLive.
  ///
  /// In en, this message translates to:
  /// **'Route (Live): {routeName}'**
  String drillChecklistRouteLive(String routeName);

  /// No description provided for @drillChecklistProceed.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO EVIDENCE CAPTURE'**
  String get drillChecklistProceed;

  /// No description provided for @dvirPreTripSignedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification signed successfully. Pre-Trip unlocked.'**
  String get dvirPreTripSignedSuccess;

  /// No description provided for @dvirPreTripFailedToSign.
  ///
  /// In en, this message translates to:
  /// **'Failed to sign: {error}'**
  String dvirPreTripFailedToSign(Object error);

  /// No description provided for @dvirPreTripTitle.
  ///
  /// In en, this message translates to:
  /// **'Pre-Trip Verification'**
  String get dvirPreTripTitle;

  /// No description provided for @dvirPreTripVehicleStatus.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Status: {status}'**
  String dvirPreTripVehicleStatus(String status);

  /// No description provided for @dvirPreTripActiveMessage.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is Active and has no open defects. It is verified and safe for operation.'**
  String get dvirPreTripActiveMessage;

  /// No description provided for @dvirPreTripOutOfServiceMessage.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is Out of Service for repairs/maintenance. Safety concerns must be resolved by shop staff before dispatch.'**
  String get dvirPreTripOutOfServiceMessage;

  /// No description provided for @dvirPreTripReason.
  ///
  /// In en, this message translates to:
  /// **'Reason: {reason}'**
  String dvirPreTripReason(String reason);

  /// No description provided for @dvirPreTripDispatchCheckTitle.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE DISPATCH CHECK'**
  String get dvirPreTripDispatchCheckTitle;

  /// No description provided for @dvirPreTripBusNumber.
  ///
  /// In en, this message translates to:
  /// **'Bus Number: {busNumber}'**
  String dvirPreTripBusNumber(String busNumber);

  /// No description provided for @dvirPreTripActiveRoute.
  ///
  /// In en, this message translates to:
  /// **'Active Route: {routeName}'**
  String dvirPreTripActiveRoute(String routeName);

  /// No description provided for @dvirPreTripAttentionRequiredTitle.
  ///
  /// In en, this message translates to:
  /// **'ATTENTION REQUIRED: PRIOR DAY DEFECTS LOGGED'**
  String get dvirPreTripAttentionRequiredTitle;

  /// No description provided for @dvirPreTripRepairedDefect.
  ///
  /// In en, this message translates to:
  /// **'{description} (REPAIRED)'**
  String dvirPreTripRepairedDefect(String description);

  /// No description provided for @dvirPreTripResolutionTitle.
  ///
  /// In en, this message translates to:
  /// **'TRANSPORT SUB-ADMIN RESOLUTION'**
  String get dvirPreTripResolutionTitle;

  /// No description provided for @dvirPreTripResolutionStatus.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String dvirPreTripResolutionStatus(String status);

  /// No description provided for @dvirPreTripNoRepairsNeeded.
  ///
  /// In en, this message translates to:
  /// **'No repairs needed for safe operation.'**
  String get dvirPreTripNoRepairsNeeded;

  /// No description provided for @dvirPreTripAcknowledgmentText.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge that I have reviewed the last submitted defect report and verified the repairs(if any) and state that the bus is safe for operation.'**
  String get dvirPreTripAcknowledgmentText;

  /// No description provided for @dvirPreTripNoPriorDefects.
  ///
  /// In en, this message translates to:
  /// **'No Prior Defects Logged'**
  String get dvirPreTripNoPriorDefects;

  /// No description provided for @dvirPreTripNoPriorDefectsMessage.
  ///
  /// In en, this message translates to:
  /// **'This vehicle was reported clean in the previous post-trip shift inspection.'**
  String get dvirPreTripNoPriorDefectsMessage;

  /// No description provided for @dvirPreTripSignOffTitle.
  ///
  /// In en, this message translates to:
  /// **'SIGN-OFF TO PROCEED TO WALKAROUND'**
  String get dvirPreTripSignOffTitle;

  /// No description provided for @dvirPreTripOutofServiceButton.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE OUT OF SERVICE'**
  String get dvirPreTripOutofServiceButton;

  /// No description provided for @dvirPreTripReturnToHomeButton.
  ///
  /// In en, this message translates to:
  /// **'RETURN TO HOME'**
  String get dvirPreTripReturnToHomeButton;

  /// No description provided for @dvirPreTripSubmitVerificationButton.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT VERIFICATION'**
  String get dvirPreTripSubmitVerificationButton;

  /// No description provided for @dvirPreTripReportNewDefectsButton.
  ///
  /// In en, this message translates to:
  /// **'REPORT NEW DEFECTS'**
  String get dvirPreTripReportNewDefectsButton;

  /// No description provided for @dvirPreTripReportNewDefectsDisabled.
  ///
  /// In en, this message translates to:
  /// **'Reporting new defects is disabled during repairs.'**
  String get dvirPreTripReportNewDefectsDisabled;

  /// No description provided for @dvirPostTripPhotoAttached.
  ///
  /// In en, this message translates to:
  /// **'Photo attached successfully.'**
  String get dvirPostTripPhotoAttached;

  /// No description provided for @dvirPostTripDefectWithoutPhotoTitle.
  ///
  /// In en, this message translates to:
  /// **'Reporting Defect Without Photo'**
  String get dvirPostTripDefectWithoutPhotoTitle;

  /// No description provided for @dvirPostTripDefectWithoutPhotoWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning: You are reporting a defect on safety zones ({zones}) without attaching a photo. Are you sure you want to submit anyway?'**
  String dvirPostTripDefectWithoutPhotoWarning(String zones);

  /// No description provided for @dvirPostTripSubmitSuccess.
  ///
  /// In en, this message translates to:
  /// **'eDVIR submitted successfully.'**
  String get dvirPostTripSubmitSuccess;

  /// No description provided for @dvirPostTripInspectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Inspection: Bus {busNumber}'**
  String dvirPostTripInspectionTitle(String busNumber);

  /// No description provided for @dvirPostTripProgressLabel.
  ///
  /// In en, this message translates to:
  /// **'Inspection Progress'**
  String get dvirPostTripProgressLabel;

  /// No description provided for @dvirPostTripZonesProgress.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total} Zones'**
  String dvirPostTripZonesProgress(int current, int total);

  /// No description provided for @dvirPostTripZoneHeader.
  ///
  /// In en, this message translates to:
  /// **'ZONE {current} OF {total}'**
  String dvirPostTripZoneHeader(int current, int total);

  /// No description provided for @dvirPostTripPassButton.
  ///
  /// In en, this message translates to:
  /// **'PASS'**
  String get dvirPostTripPassButton;

  /// No description provided for @dvirPostTripDefectButton.
  ///
  /// In en, this message translates to:
  /// **'DEFECT'**
  String get dvirPostTripDefectButton;

  /// No description provided for @dvirPostTripNotesLabel.
  ///
  /// In en, this message translates to:
  /// **'NOTES (MANDATORY ON DEFECT) & PHOTO'**
  String get dvirPostTripNotesLabel;

  /// No description provided for @dvirPostTripNotesPassedHint.
  ///
  /// In en, this message translates to:
  /// **'Select DEFECT to enter safety concern details...'**
  String get dvirPostTripNotesPassedHint;

  /// No description provided for @dvirPostTripNotesDefectHint.
  ///
  /// In en, this message translates to:
  /// **'Enter details of the safety concern...'**
  String get dvirPostTripNotesDefectHint;

  /// No description provided for @dvirPostTripCapturePhoto.
  ///
  /// In en, this message translates to:
  /// **'CAPTURE DEFECT PHOTO'**
  String get dvirPostTripCapturePhoto;

  /// No description provided for @dvirPostTripOdometerTitle.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE RUN TIME METRIC'**
  String get dvirPostTripOdometerTitle;

  /// No description provided for @dvirPostTripOdometerHeader.
  ///
  /// In en, this message translates to:
  /// **'Current Odometer Reading'**
  String get dvirPostTripOdometerHeader;

  /// No description provided for @dvirPostTripOdometerInstructions.
  ///
  /// In en, this message translates to:
  /// **'Enter the mileage reading exactly as shown on the bus instrument panel:'**
  String get dvirPostTripOdometerInstructions;

  /// No description provided for @dvirPostTripOdometerLabel.
  ///
  /// In en, this message translates to:
  /// **'Odometer (Miles)'**
  String get dvirPostTripOdometerLabel;

  /// No description provided for @dvirPostTripOdometerWarning.
  ///
  /// In en, this message translates to:
  /// **'Please enter the odometer reading before proceeding.'**
  String get dvirPostTripOdometerWarning;

  /// No description provided for @dvirPostTripComplianceTitle.
  ///
  /// In en, this message translates to:
  /// **'COMPLIANCE CERTIFICATION'**
  String get dvirPostTripComplianceTitle;

  /// No description provided for @dvirPostTripSignatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Driver Signature Verification'**
  String get dvirPostTripSignatureTitle;

  /// No description provided for @dvirPostTripSignatureCert.
  ///
  /// In en, this message translates to:
  /// **'I certify that this vehicle walkaround checklist report has been completed in compliance with FMCSA 396.11 regulations.'**
  String get dvirPostTripSignatureCert;

  /// No description provided for @dvirPostTripSignatureCaptured.
  ///
  /// In en, this message translates to:
  /// **'Signature captured.'**
  String get dvirPostTripSignatureCaptured;

  /// No description provided for @dvirPostTripSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT INSPECTION'**
  String get dvirPostTripSubmitButton;

  /// No description provided for @dvirCategoryServiceBrakes.
  ///
  /// In en, this message translates to:
  /// **'Service Brakes'**
  String get dvirCategoryServiceBrakes;

  /// No description provided for @dvirCategoryParkingBrake.
  ///
  /// In en, this message translates to:
  /// **'Parking Brake'**
  String get dvirCategoryParkingBrake;

  /// No description provided for @dvirCategorySteeringMechanism.
  ///
  /// In en, this message translates to:
  /// **'Steering Mechanism'**
  String get dvirCategorySteeringMechanism;

  /// No description provided for @dvirCategoryLightingReflectors.
  ///
  /// In en, this message translates to:
  /// **'Lighting Devices & Reflectors'**
  String get dvirCategoryLightingReflectors;

  /// No description provided for @dvirCategoryTires.
  ///
  /// In en, this message translates to:
  /// **'Tires'**
  String get dvirCategoryTires;

  /// No description provided for @dvirCategoryHorn.
  ///
  /// In en, this message translates to:
  /// **'Horn'**
  String get dvirCategoryHorn;

  /// No description provided for @dvirCategoryWipers.
  ///
  /// In en, this message translates to:
  /// **'Windshield Wipers'**
  String get dvirCategoryWipers;

  /// No description provided for @dvirCategoryMirrors.
  ///
  /// In en, this message translates to:
  /// **'Rear-Vision Mirrors'**
  String get dvirCategoryMirrors;

  /// No description provided for @dvirCategoryWheelsRims.
  ///
  /// In en, this message translates to:
  /// **'Wheels and Rims'**
  String get dvirCategoryWheelsRims;

  /// No description provided for @dvirCategoryEmergencyEquipment.
  ///
  /// In en, this message translates to:
  /// **'Emergency Equipment'**
  String get dvirCategoryEmergencyEquipment;

  /// No description provided for @dvirCategoryCouplingDevices.
  ///
  /// In en, this message translates to:
  /// **'Coupling Devices'**
  String get dvirCategoryCouplingDevices;

  /// No description provided for @dvirCategoryBusSafetySystems.
  ///
  /// In en, this message translates to:
  /// **'Bus-Specific Safety Systems'**
  String get dvirCategoryBusSafetySystems;

  /// No description provided for @dvirCategoryPassengerSeating.
  ///
  /// In en, this message translates to:
  /// **'Passenger Seating & Restraints'**
  String get dvirCategoryPassengerSeating;

  /// No description provided for @dvirSigDrawTitle.
  ///
  /// In en, this message translates to:
  /// **'Draw Signature'**
  String get dvirSigDrawTitle;

  /// No description provided for @dvirSigWatermark.
  ///
  /// In en, this message translates to:
  /// **'Sign Vertically (Bottom to Top)'**
  String get dvirSigWatermark;

  /// No description provided for @dvirSigSave.
  ///
  /// In en, this message translates to:
  /// **'SAVE SIGNATURE'**
  String get dvirSigSave;

  /// No description provided for @dvirSigPreviewLabel.
  ///
  /// In en, this message translates to:
  /// **'Captured Signature Preview:'**
  String get dvirSigPreviewLabel;

  /// No description provided for @dvirSigRedraw.
  ///
  /// In en, this message translates to:
  /// **'REDRAW'**
  String get dvirSigRedraw;

  /// No description provided for @dvirSigTapToDraw.
  ///
  /// In en, this message translates to:
  /// **'TAP TO DRAW SIGNATURE (REQUIRED)'**
  String get dvirSigTapToDraw;

  /// No description provided for @driverDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Driver Details'**
  String get driverDetailsTitle;

  /// No description provided for @driverDetailsId.
  ///
  /// In en, this message translates to:
  /// **'ID: {driverId}'**
  String driverDetailsId(String driverId);

  /// No description provided for @driverDetailsLicenseTitle.
  ///
  /// In en, this message translates to:
  /// **'License Details'**
  String get driverDetailsLicenseTitle;

  /// No description provided for @driverDetailsLicenseNoLabel.
  ///
  /// In en, this message translates to:
  /// **'License No'**
  String get driverDetailsLicenseNoLabel;

  /// No description provided for @driverDetailsLicenseTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'License Type'**
  String get driverDetailsLicenseTypeLabel;

  /// No description provided for @driverDetailsCdlClassLabel.
  ///
  /// In en, this message translates to:
  /// **'CDL Class'**
  String get driverDetailsCdlClassLabel;

  /// No description provided for @driverDetailsIssueDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Issue Date'**
  String get driverDetailsIssueDateLabel;

  /// No description provided for @driverDetailsExpiryDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get driverDetailsExpiryDateLabel;

  /// No description provided for @driverDetailsEndorsementsTitle.
  ///
  /// In en, this message translates to:
  /// **'Endorsements Held'**
  String get driverDetailsEndorsementsTitle;

  /// No description provided for @driverDetailsEndorsementPassenger.
  ///
  /// In en, this message translates to:
  /// **'Passenger'**
  String get driverDetailsEndorsementPassenger;

  /// No description provided for @driverDetailsEndorsementSchoolBus.
  ///
  /// In en, this message translates to:
  /// **'School Bus'**
  String get driverDetailsEndorsementSchoolBus;

  /// No description provided for @driverDetailsLicenseDocTitle.
  ///
  /// In en, this message translates to:
  /// **'License Document'**
  String get driverDetailsLicenseDocTitle;

  /// No description provided for @driverDetailsDrivingLicenseLabel.
  ///
  /// In en, this message translates to:
  /// **'DRIVING LICENSE'**
  String get driverDetailsDrivingLicenseLabel;

  /// No description provided for @driverDetailsDrivingLicenseName.
  ///
  /// In en, this message translates to:
  /// **'NAME: {name}'**
  String driverDetailsDrivingLicenseName(String name);

  /// No description provided for @driverDetailsDrivingLicenseNo.
  ///
  /// In en, this message translates to:
  /// **'LIC: {licenseNo}'**
  String driverDetailsDrivingLicenseNo(String licenseNo);

  /// No description provided for @driverDetailsTapToView.
  ///
  /// In en, this message translates to:
  /// **'Tap to View DL Document'**
  String get driverDetailsTapToView;

  /// No description provided for @driverDetailsPreviewLicenseNo.
  ///
  /// In en, this message translates to:
  /// **'LN: {licenseNo}'**
  String driverDetailsPreviewLicenseNo(String licenseNo);

  /// No description provided for @driverDetailsPreviewName.
  ///
  /// In en, this message translates to:
  /// **'FN: {name}'**
  String driverDetailsPreviewName(String name);

  /// No description provided for @driverDetailsPreviewDob.
  ///
  /// In en, this message translates to:
  /// **'DOB: {dob}'**
  String driverDetailsPreviewDob(String dob);

  /// No description provided for @driverDetailsPreviewClass.
  ///
  /// In en, this message translates to:
  /// **'CLASS: {cdlClass}'**
  String driverDetailsPreviewClass(String cdlClass);

  /// No description provided for @driverDetailsPreviewEndorse.
  ///
  /// In en, this message translates to:
  /// **'ENDORSE: {endorsements}'**
  String driverDetailsPreviewEndorse(String endorsements);

  /// No description provided for @driverDetailsPreviewExp.
  ///
  /// In en, this message translates to:
  /// **'EXP: {expiryDate}'**
  String driverDetailsPreviewExp(String expiryDate);

  /// No description provided for @driverDetailsOfficialSeal.
  ///
  /// In en, this message translates to:
  /// **'OFFICIAL SEAL'**
  String get driverDetailsOfficialSeal;

  /// No description provided for @driverDetailsHolderSignature.
  ///
  /// In en, this message translates to:
  /// **'HOLDER SIGNATURE'**
  String get driverDetailsHolderSignature;

  /// No description provided for @homeMenuDriverDetails.
  ///
  /// In en, this message translates to:
  /// **'Driver Details'**
  String get homeMenuDriverDetails;

  /// No description provided for @homeMenuDrill.
  ///
  /// In en, this message translates to:
  /// **'Drill'**
  String get homeMenuDrill;

  /// No description provided for @homeMenuPreTrip.
  ///
  /// In en, this message translates to:
  /// **'Pre-Trip Inspection'**
  String get homeMenuPreTrip;

  /// No description provided for @homeErrorNoRoutesPreTrip.
  ///
  /// In en, this message translates to:
  /// **'No routes available to perform Pre-Trip.'**
  String get homeErrorNoRoutesPreTrip;

  /// No description provided for @homeBusLabel.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busId}'**
  String homeBusLabel(String busId);

  /// No description provided for @homeDispatchBlocked.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Blocked'**
  String get homeDispatchBlocked;

  /// No description provided for @homeVehicleReady.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is ready and verified for safe operation.'**
  String get homeVehicleReady;

  /// No description provided for @homeReviewVerifyPreTrip.
  ///
  /// In en, this message translates to:
  /// **'Review & Verify Pre-Trip'**
  String get homeReviewVerifyPreTrip;

  /// No description provided for @homeDispatchBlockedTitle.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Blocked'**
  String get homeDispatchBlockedTitle;

  /// No description provided for @homeVehicleOutOfServiceDefault.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is currently OUT_OF_SERVICE.'**
  String get homeVehicleOutOfServiceDefault;

  /// No description provided for @homeFailedToStartTrip.
  ///
  /// In en, this message translates to:
  /// **'Failed to start trip on server: {error}'**
  String homeFailedToStartTrip(String error);
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
