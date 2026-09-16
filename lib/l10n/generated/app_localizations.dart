import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_ast.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_ceb.dart';
import 'app_localizations_ckb.dart';
import 'app_localizations_co.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_doi.dart';
import 'app_localizations_dv.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_ff.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fo.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fur.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gaa.dart';
import 'app_localizations_gd.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gn.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hil.dart';
import 'app_localizations_hmn.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_ig.dart';
import 'app_localizations_ilo.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_jv.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_la.dart';
import 'app_localizations_lb.dart';
import 'app_localizations_li.dart';
import 'app_localizations_lij.dart';
import 'app_localizations_lmo.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_ltg.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_ny.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ps.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_rw.dart';
import 'app_localizations_sc.dart';
import 'app_localizations_scn.dart';
import 'app_localizations_sd.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sm.dart';
import 'app_localizations_sn.dart';
import 'app_localizations_so.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_st.dart';
import 'app_localizations_su.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_szl.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_tg.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tk.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vec.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_xh.dart';
import 'app_localizations_yi.dart';
import 'app_localizations_yo.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

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
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('ast'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('ceb'),
    Locale('ckb'),
    Locale('co'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('doi'),
    Locale('dv'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('ff'),
    Locale('fi'),
    Locale('fil'),
    Locale('fo'),
    Locale('fr'),
    Locale('fur'),
    Locale('fy'),
    Locale('ga'),
    Locale('gaa'),
    Locale('gd'),
    Locale('gl'),
    Locale('gn'),
    Locale('gu'),
    Locale('ha'),
    Locale('haw'),
    Locale('he'),
    Locale('hi'),
    Locale('hil'),
    Locale('hmn'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('ig'),
    Locale('ilo'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('jv'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('la'),
    Locale('lb'),
    Locale('li'),
    Locale('lij'),
    Locale('lmo'),
    Locale('lo'),
    Locale('lt'),
    Locale('ltg'),
    Locale('lv'),
    Locale('mg'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('ny'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('ps'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('rw'),
    Locale('sc'),
    Locale('scn'),
    Locale('sd'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sm'),
    Locale('sn'),
    Locale('so'),
    Locale('sq'),
    Locale('sr'),
    Locale('st'),
    Locale('su'),
    Locale('sv'),
    Locale('sw'),
    Locale('szl'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('tk'),
    Locale('tl'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vec'),
    Locale('vi'),
    Locale('xh'),
    Locale('yi'),
    Locale('yo'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zu')
  ];

  /// Label displaying the application build number on the App Info screen.
  ///
  /// In en, this message translates to:
  /// **'Build Number'**
  String get appInfoBuild;

  /// Label displaying the device hardware model name on the App Info screen.
  ///
  /// In en, this message translates to:
  /// **'Device Model'**
  String get appInfoDevice;

  /// Label displaying the operating system name and version on the App Info screen.
  ///
  /// In en, this message translates to:
  /// **'OS Version'**
  String get appInfoOS;

  /// Label displaying the application package identifier on the App Info screen.
  ///
  /// In en, this message translates to:
  /// **'Package'**
  String get appInfoPackage;

  /// Title of the App Info screen and drawer menu navigation item.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get appInfoTitle;

  /// Label displaying the application release version on the App Info screen.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appInfoVersion;

  /// The main application branding title displayed in the app header.
  ///
  /// In en, this message translates to:
  /// **'Locato'**
  String get appTitleSchoolDiary;

  /// Action button label to open the authorized guardians list for a child.
  ///
  /// In en, this message translates to:
  /// **'Guardians'**
  String get childrenActionGuardians;

  /// Header text showing the student name whose authorized guardians are listed.
  ///
  /// In en, this message translates to:
  /// **'Authorized guardians for {name}'**
  String childrenGuardiansFor(Object name);

  /// Empty state message displayed when no authorized guardians are registered for a student.
  ///
  /// In en, this message translates to:
  /// **'No authorized guardians on file for this child.'**
  String get childrenNoGuardians;

  /// Status badge indicating that the student has been dropped off at their stop.
  ///
  /// In en, this message translates to:
  /// **'Dropped'**
  String get childrenStatusDropped;

  /// Status badge indicating that the student pickup or drop-off is currently pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get childrenStatusPending;

  /// Status badge indicating that the student has been picked up onto the bus.
  ///
  /// In en, this message translates to:
  /// **'Picked'**
  String get childrenStatusPicked;

  /// Screen title for the student roster list on the specified route.
  ///
  /// In en, this message translates to:
  /// **'Children - {routeName}'**
  String childrenTitle(Object routeName);

  /// Section header in the evacuation drill checklist for students marked absent or not onboard.
  ///
  /// In en, this message translates to:
  /// **'ABSENT / NOT ON BUS ({count})'**
  String drillChecklistAbsentTitle(Object count);

  /// Bus identifier label displayed in the drill checklist header.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busNumber}'**
  String drillChecklistBus(Object busNumber);

  /// Action button or status label marking a student as safely evacuated during the drill.
  ///
  /// In en, this message translates to:
  /// **'Evacuated'**
  String get drillChecklistEvacuated;

  /// Progress counter showing the number of evacuated students out of total present students.
  ///
  /// In en, this message translates to:
  /// **'Evacuated: {evacuatedCount}/{totalCount}'**
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount);

  /// Informational message shown when all route students are present on the bus for the drill.
  ///
  /// In en, this message translates to:
  /// **'No absent students.'**
  String get drillChecklistNoAbsentStudents;

  /// Empty state message displayed when no students were marked onboard the bus.
  ///
  /// In en, this message translates to:
  /// **'No students marked on bus.'**
  String get drillChecklistNoStudentsOnBus;

  /// Status badge indicating that the student was not present onboard the bus during the drill.
  ///
  /// In en, this message translates to:
  /// **'NOT ON BUS'**
  String get drillChecklistNotOnBus;

  /// Status badge warning that a student is onboard the bus and has not yet evacuated.
  ///
  /// In en, this message translates to:
  /// **'ON BUS - NOT EVACUATED'**
  String get drillChecklistOnBusNotEvacuated;

  /// Section header in the drill checklist showing students currently onboard the bus.
  ///
  /// In en, this message translates to:
  /// **'ON BUS ({count})'**
  String drillChecklistOnBusTitle(Object count);

  /// Button label to proceed from the evacuation checklist to mandatory evidence capture.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO EVIDENCE CAPTURE'**
  String get drillChecklistProceed;

  /// Header subtitle showing the active live route name for the evacuation drill.
  ///
  /// In en, this message translates to:
  /// **'Route (Live): {routeName}'**
  String drillChecklistRouteLive(Object routeName);

  /// Screen title for the evacuation drill execution checklist.
  ///
  /// In en, this message translates to:
  /// **'Evacuation Drill Checklist'**
  String get drillChecklistTitle;

  /// Warning banner alerting the driver to remaining students who have not yet evacuated.
  ///
  /// In en, this message translates to:
  /// **'{count} Unaccounted Student(s) Remaining!'**
  String drillChecklistUnaccountedWarning(Object count);

  /// Body message in the confirmation dialog asking the driver to confirm drill log submission.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to submit this drill log? This action cannot be undone.'**
  String get drillEvidenceConfirmMessage;

  /// Title of the confirmation dialog displayed before submitting the evacuation drill log.
  ///
  /// In en, this message translates to:
  /// **'Confirm Drill Submission'**
  String get drillEvidenceConfirmSubmission;

  /// Placeholder hint text for the driver notes field describing drill execution details.
  ///
  /// In en, this message translates to:
  /// **'Describe drill execution, student behavior, exit paths used, and any exceptions observed...'**
  String get drillEvidenceDriverNotesHint;

  /// Label for the mandatory driver notes field in the drill evidence capture screen.
  ///
  /// In en, this message translates to:
  /// **'Driver Notes (Minimum 10 characters):'**
  String get drillEvidenceDriverNotesLabel;

  /// Header title displayed on the failure screen when drill log submission fails.
  ///
  /// In en, this message translates to:
  /// **'Submission Failed'**
  String get drillEvidenceFailed;

  /// Validation warning message indicating that at least one photo or video attachment is required.
  ///
  /// In en, this message translates to:
  /// **'At least 1 photo or video evidence is mandatory to submit drill.'**
  String get drillEvidenceMandatoryWarning;

  /// Button label to open the camera and record a video as drill evidence.
  ///
  /// In en, this message translates to:
  /// **'Record Video'**
  String get drillEvidenceRecordVideo;

  /// Button label to re-attempt submitting the drill log after a network or upload failure.
  ///
  /// In en, this message translates to:
  /// **'RETRY SUBMISSION'**
  String get drillEvidenceRetrySubmission;

  /// Button label to navigate back to the home or drills dashboard after completing a drill.
  ///
  /// In en, this message translates to:
  /// **'RETURN TO DASHBOARD'**
  String get drillEvidenceReturnToDashboard;

  /// Primary button label to submit the evacuation drill log and attached evidence.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT DRILL LOG'**
  String get drillEvidenceSubmitButton;

  /// Loading message displayed while the drill log and media are being uploaded.
  ///
  /// In en, this message translates to:
  /// **'Submitting Drill Log...'**
  String get drillEvidenceSubmitting;

  /// Success header title displayed after the drill log is successfully uploaded.
  ///
  /// In en, this message translates to:
  /// **'Submission Successful!'**
  String get drillEvidenceSuccess;

  /// Informational message explaining that the drill log was submitted and is pending administrator approval.
  ///
  /// In en, this message translates to:
  /// **'The evacuation drill log has been successfully uploaded and is pending approval.'**
  String get drillEvidenceSuccessMessage;

  /// Button label to launch the camera and capture a photo as drill evidence.
  ///
  /// In en, this message translates to:
  /// **'Take Photo'**
  String get drillEvidenceTakePhoto;

  /// Screen title for the mandatory drill evidence capture and notes step.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Drill Evidence'**
  String get drillEvidenceTitle;

  /// Progress description displayed during the upload of drill evidence media and checklist data.
  ///
  /// In en, this message translates to:
  /// **'Uploading evidence and checklist data'**
  String get drillEvidenceUploading;

  /// Bus identifier label displayed in the drill roster header.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busNumber}'**
  String drillRosterBus(Object busNumber);

  /// Label displaying the selected evacuation drill classification in the roster header.
  ///
  /// In en, this message translates to:
  /// **'Drill: {drillType}'**
  String drillRosterDrillType(Object drillType);

  /// Section instruction prompting the driver to mark student attendance before starting the drill.
  ///
  /// In en, this message translates to:
  /// **'Mark Attendance'**
  String get drillRosterMarkAttendance;

  /// Empty state message displayed when no students are registered for the selected route.
  ///
  /// In en, this message translates to:
  /// **'No students registered on this route.'**
  String get drillRosterNoStudents;

  /// Attendance counter showing the number of present students out of total registered students.
  ///
  /// In en, this message translates to:
  /// **'Present: {presentCount} / {totalCount}'**
  String drillRosterPresentCount(Object presentCount, Object totalCount);

  /// Button label to confirm student attendance and proceed to the drill checklist.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO DRILL CHECKLIST'**
  String get drillRosterProceed;

  /// Route name label displayed in the drill roster header.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String drillRosterRoute(Object routeName);

  /// Detail label showing the assigned seat number for a student in the roster list.
  ///
  /// In en, this message translates to:
  /// **'Seat: {seatNumber}'**
  String drillRosterSeat(Object seatNumber);

  /// Button or checkbox label to select all students as present in the roster.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get drillRosterSelectAll;

  /// Section header in the drill summary displaying review notes from administrators.
  ///
  /// In en, this message translates to:
  /// **'Admin Notes'**
  String get drillSummaryAdminNotesTitle;

  /// Timestamp label showing when the evacuation drill log was approved by administration.
  ///
  /// In en, this message translates to:
  /// **'Approved At: {date}'**
  String drillSummaryApprovedAt(Object date);

  /// Field label for the approval timestamp in the drill summary details.
  ///
  /// In en, this message translates to:
  /// **'Approved At'**
  String get drillSummaryApprovedAtLabel;

  /// Button label to navigate back to the evacuation drills dashboard.
  ///
  /// In en, this message translates to:
  /// **'Back to Drills'**
  String get drillSummaryBackToDrills;

  /// Field label for the bus number in the drill summary metadata card.
  ///
  /// In en, this message translates to:
  /// **'Bus Number'**
  String get drillSummaryBusNumber;

  /// Subtitle showing the name of the driver or staff member who conducted the drill.
  ///
  /// In en, this message translates to:
  /// **'Conducted By: {name}'**
  String drillSummaryConductedBy(Object name);

  /// Card header for the general drill details and metadata section.
  ///
  /// In en, this message translates to:
  /// **'Drill Details'**
  String get drillSummaryDetailsTitle;

  /// Card header displaying the notes recorded by the driver during drill execution.
  ///
  /// In en, this message translates to:
  /// **'Driver Notes'**
  String get drillSummaryDriverNotesTitle;

  /// Field label for the total time elapsed during the evacuation drill.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get drillSummaryDuration;

  /// Formatted duration string displaying elapsed minutes and seconds of the drill.
  ///
  /// In en, this message translates to:
  /// **'{minutes} min {seconds} sec'**
  String drillSummaryDurationValue(Object minutes, Object seconds);

  /// Field label for the timestamp when the drill concluded.
  ///
  /// In en, this message translates to:
  /// **'End Time'**
  String get drillSummaryEndTime;

  /// Evacuation metric showing the number of safely evacuated students out of total present students.
  ///
  /// In en, this message translates to:
  /// **'Evacuated: {evacuatedCount}/{totalCount}'**
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount);

  /// Timestamp badge indicating the exact time a specific student evacuated.
  ///
  /// In en, this message translates to:
  /// **'Evacuated {time}'**
  String drillSummaryEvacuatedTime(Object time);

  /// Section header for photo and video evidence attachments in the drill summary.
  ///
  /// In en, this message translates to:
  /// **'Evidence Media Attachments'**
  String get drillSummaryEvidenceTitle;

  /// Field label for the geographic GPS coordinates where the drill took place.
  ///
  /// In en, this message translates to:
  /// **'GPS Coordinates'**
  String get drillSummaryGps;

  /// Formatted latitude and longitude GPS coordinates displayed in the drill summary.
  ///
  /// In en, this message translates to:
  /// **'Lat: {lat}, Lng: {lng}'**
  String drillSummaryGpsValue(Object lat, Object lng);

  /// Error message displayed when loading drill summary details fails for a specific drill ID.
  ///
  /// In en, this message translates to:
  /// **'Failed to load drill summary for ID #{id}.\n{error}'**
  String drillSummaryLoadFailed(Object error, Object id);

  /// Empty state message displayed when no drill summary data is found.
  ///
  /// In en, this message translates to:
  /// **'No drill data found.'**
  String get drillSummaryNoData;

  /// Status badge in student evacuation log for students who were absent or not on the bus.
  ///
  /// In en, this message translates to:
  /// **'Not On Bus'**
  String get drillSummaryNotOnBus;

  /// Status badge in student evacuation log for students who did not evacuate the bus.
  ///
  /// In en, this message translates to:
  /// **'ON BUS - NOT EVACUATED'**
  String get drillSummaryOnBusNotEvacuated;

  /// Section header for photo evidence media attachments in the drill summary.
  ///
  /// In en, this message translates to:
  /// **'Photo Evidence'**
  String get drillSummaryPhotoEvidence;

  /// Field label for the route identifier in the drill summary metadata.
  ///
  /// In en, this message translates to:
  /// **'Route ID'**
  String get drillSummaryRouteId;

  /// Detail label showing the student's assigned seat number in the evacuation log.
  ///
  /// In en, this message translates to:
  /// **'Seat: {seatNumber}'**
  String drillSummarySeat(Object seatNumber);

  /// Field label for the timestamp when the evacuation drill began.
  ///
  /// In en, this message translates to:
  /// **'Start Time'**
  String get drillSummaryStartTime;

  /// Field label for the current approval or completion status of the drill.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get drillSummaryStatus;

  /// Section header for the individual student evacuation outcome log.
  ///
  /// In en, this message translates to:
  /// **'Student Evacuation Log'**
  String get drillSummaryStudentLogTitle;

  /// Screen title for the evacuation drill summary displaying the drill ID.
  ///
  /// In en, this message translates to:
  /// **'Drill Summary (#{id})'**
  String drillSummaryTitle(Object id);

  /// Field label for the evacuation drill classification type.
  ///
  /// In en, this message translates to:
  /// **'Drill Type'**
  String get drillSummaryType;

  /// Section header for video evidence media attachments in the drill summary.
  ///
  /// In en, this message translates to:
  /// **'Video Evidence'**
  String get drillSummaryVideoEvidence;

  /// Bus identifier label displayed in the drill type selection header.
  ///
  /// In en, this message translates to:
  /// **'Bus {busNumber}'**
  String drillTypeBus(Object busNumber);

  /// Instruction header asking the driver to choose an evacuation drill classification.
  ///
  /// In en, this message translates to:
  /// **'Choose drill classification:'**
  String get drillTypeClassification;

  /// Input placeholder text for entering a custom evacuation drill classification.
  ///
  /// In en, this message translates to:
  /// **'Enter custom evacuation drill type...'**
  String get drillTypeCustomHint;

  /// Error message displayed when attempting to start a drill with an invalid vehicle or route state.
  ///
  /// In en, this message translates to:
  /// **'Invalid vehicle or route state.'**
  String get drillTypeInvalidState;

  /// Evacuation drill classification option for a simulated bus fire scenario.
  ///
  /// In en, this message translates to:
  /// **'Bus Fire'**
  String get drillTypeNameBusFire;

  /// Evacuation drill classification option for bus loading and unloading danger zones.
  ///
  /// In en, this message translates to:
  /// **'Danger Zone'**
  String get drillTypeNameDangerZone;

  /// Evacuation drill classification option for driver incapacitation emergency response.
  ///
  /// In en, this message translates to:
  /// **'Driver Incapacitation'**
  String get drillTypeNameDriverIncapacitation;

  /// Evacuation drill classification option for emergency safety equipment familiarization.
  ///
  /// In en, this message translates to:
  /// **'Equipment Orientation'**
  String get drillTypeNameEquipmentOrientation;

  /// Evacuation drill classification option for front door emergency exit evacuation.
  ///
  /// In en, this message translates to:
  /// **'Front Door'**
  String get drillTypeNameFrontDoor;

  /// Evacuation drill classification option for custom or other emergency evacuation scenarios.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get drillTypeNameOthers;

  /// Evacuation drill classification option for rear emergency door evacuation.
  ///
  /// In en, this message translates to:
  /// **'Rear Door'**
  String get drillTypeNameRearDoor;

  /// Evacuation drill classification option for side emergency door or roof hatch evacuation.
  ///
  /// In en, this message translates to:
  /// **'Side Or Roof'**
  String get drillTypeNameSideOrRoof;

  /// Evacuation drill classification option for split emergency exit evacuation.
  ///
  /// In en, this message translates to:
  /// **'Split'**
  String get drillTypeNameSplit;

  /// Validation warning shown when proceeding without selecting a route for the drill.
  ///
  /// In en, this message translates to:
  /// **'No Route Selected'**
  String get drillTypeNoRouteSelected;

  /// Header section title for evacuation drill preparation guidelines and safety checks.
  ///
  /// In en, this message translates to:
  /// **'DRILL PREPARATION'**
  String get drillTypePreparation;

  /// Button label to proceed from drill type selection to the student roster marking screen.
  ///
  /// In en, this message translates to:
  /// **'PROCEED TO STUDENT ROSTER'**
  String get drillTypeProceed;

  /// Route name label displayed on the drill type selection screen.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String drillTypeRoute(Object routeName);

  /// Section label prompting the driver to select a route for the drill.
  ///
  /// In en, this message translates to:
  /// **'Select Route:'**
  String get drillTypeSelectRoute;

  /// Field label prompting the driver to enter a custom drill type description.
  ///
  /// In en, this message translates to:
  /// **'Specify Drill Type Description:'**
  String get drillTypeSpecifyCustom;

  /// Screen title for selecting the evacuation drill type and route.
  ///
  /// In en, this message translates to:
  /// **'Select Drill Type'**
  String get drillTypeTitle;

  /// Safety reminder instructing the driver to safely park the bus before beginning drill execution.
  ///
  /// In en, this message translates to:
  /// **'Ensure vehicle is parked safely before beginning execution.'**
  String get drillTypeWarning;

  /// Card label displaying the vehicle currently assigned to the driver on the drills dashboard.
  ///
  /// In en, this message translates to:
  /// **'Assigned Vehicle'**
  String get drillsAssignedVehicle;

  /// Status text shown while checking vehicle and route eligibility to start an evacuation drill.
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get drillsChecking;

  /// List item header displaying the drill ID and classification type.
  ///
  /// In en, this message translates to:
  /// **'Drill #{id} - {type}'**
  String drillsHeader(Object id, Object type);

  /// Warning banner indicating that no bus is assigned to the current driver.
  ///
  /// In en, this message translates to:
  /// **'No Bus Assigned'**
  String get drillsNoBusAssigned;

  /// Empty state message displayed when no evacuation drills have been logged for the bus.
  ///
  /// In en, this message translates to:
  /// **'No drills recorded for bus {busNumber}'**
  String drillsNoDrillsRecorded(Object busNumber);

  /// Warning state message shown when no active routes are available to start a drill.
  ///
  /// In en, this message translates to:
  /// **'No routes available to start a drill.'**
  String get drillsNoRoutesAvailable;

  /// Button label to view the full summary details of a completed evacuation drill.
  ///
  /// In en, this message translates to:
  /// **'Show Summary'**
  String get drillsShowSummary;

  /// Primary action button label to initiate a new evacuation drill.
  ///
  /// In en, this message translates to:
  /// **'Start Drill'**
  String get drillsStartDrill;

  /// List item subtitle displaying the date conducted and current status of a drill.
  ///
  /// In en, this message translates to:
  /// **'Conducted: {date}\nStatus: {status}'**
  String drillsSubtitle(Object date, Object status);

  /// Screen title for the Evacuation Drills dashboard and registry.
  ///
  /// In en, this message translates to:
  /// **'Evacuation Drills'**
  String get drillsTitle;

  /// Alert dialog title shown when the assigned vehicle is marked out of service.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Out of Service'**
  String get drillsVehicleOutOfService;

  /// Alert message explaining that the vehicle is out of service and cannot conduct drills.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is currently out of service and cannot be used for drills.'**
  String get drillsVehicleOutOfServiceMessage;

  /// Field label for the Commercial Driver's License class.
  ///
  /// In en, this message translates to:
  /// **'CDL Class'**
  String get driverDetailsCdlClassLabel;

  /// Section header for the digital driving license card.
  ///
  /// In en, this message translates to:
  /// **'DRIVING LICENSE'**
  String get driverDetailsDrivingLicenseLabel;

  /// Formatted driver full name displayed on the digital license card.
  ///
  /// In en, this message translates to:
  /// **'NAME: {name}'**
  String driverDetailsDrivingLicenseName(Object name);

  /// Formatted license number displayed on the digital license card.
  ///
  /// In en, this message translates to:
  /// **'LIC: {licenseNo}'**
  String driverDetailsDrivingLicenseNo(Object licenseNo);

  /// Badge label for Passenger (P) transport endorsement authorization.
  ///
  /// In en, this message translates to:
  /// **'Passenger'**
  String get driverDetailsEndorsementPassenger;

  /// Badge label for School Bus (S) operation endorsement authorization.
  ///
  /// In en, this message translates to:
  /// **'School Bus'**
  String get driverDetailsEndorsementSchoolBus;

  /// Section title displaying the special endorsements held on the driver's license.
  ///
  /// In en, this message translates to:
  /// **'Endorsements Held'**
  String get driverDetailsEndorsementsTitle;

  /// Field label for the driver's license expiration date.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get driverDetailsExpiryDateLabel;

  /// Label above the digital signature box on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'HOLDER SIGNATURE'**
  String get driverDetailsHolderSignature;

  /// Detail label showing the unique driver identification number.
  ///
  /// In en, this message translates to:
  /// **'ID: {driverId}'**
  String driverDetailsId(Object driverId);

  /// Field label for the driver's license issue date.
  ///
  /// In en, this message translates to:
  /// **'Issue Date'**
  String get driverDetailsIssueDateLabel;

  /// Section title for the uploaded driving license document image preview.
  ///
  /// In en, this message translates to:
  /// **'License Document'**
  String get driverDetailsLicenseDocTitle;

  /// Field label for the driver's license number.
  ///
  /// In en, this message translates to:
  /// **'License No'**
  String get driverDetailsLicenseNoLabel;

  /// Card header for the driving license details section.
  ///
  /// In en, this message translates to:
  /// **'License Details'**
  String get driverDetailsLicenseTitle;

  /// Field label for the type or class of driving license.
  ///
  /// In en, this message translates to:
  /// **'License Type'**
  String get driverDetailsLicenseTypeLabel;

  /// Label for the official issuing authority seal on the digital license card.
  ///
  /// In en, this message translates to:
  /// **'OFFICIAL SEAL'**
  String get driverDetailsOfficialSeal;

  /// Preview label showing the CDL class on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'CLASS: {cdlClass}'**
  String driverDetailsPreviewClass(Object cdlClass);

  /// Preview label showing the driver's date of birth on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'DOB: {dob}'**
  String driverDetailsPreviewDob(Object dob);

  /// Preview label showing the endorsements string on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'ENDORSE: {endorsements}'**
  String driverDetailsPreviewEndorse(Object endorsements);

  /// Preview label showing the expiration date on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'EXP: {expiryDate}'**
  String driverDetailsPreviewExp(Object expiryDate);

  /// Preview label showing the license number on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'LN: {licenseNo}'**
  String driverDetailsPreviewLicenseNo(Object licenseNo);

  /// Preview label showing the driver's full name on the driving license card.
  ///
  /// In en, this message translates to:
  /// **'FN: {name}'**
  String driverDetailsPreviewName(Object name);

  /// Action hint prompting the user to tap and view the full driving license document image.
  ///
  /// In en, this message translates to:
  /// **'Tap to View DL Document'**
  String get driverDetailsTapToView;

  /// Screen title displaying the driver's profile and license credentials.
  ///
  /// In en, this message translates to:
  /// **'Driver Details'**
  String get driverDetailsTitle;

  /// DVIR inspection category for school bus specific safety systems like stop arms and emergency exits.
  ///
  /// In en, this message translates to:
  /// **'Bus-Specific Safety Systems'**
  String get dvirCategoryBusSafetySystems;

  /// DVIR inspection category for vehicle coupling devices and towing hitch connections.
  ///
  /// In en, this message translates to:
  /// **'Coupling Devices'**
  String get dvirCategoryCouplingDevices;

  /// DVIR inspection category for onboard emergency equipment including fire extinguishers and first aid kits.
  ///
  /// In en, this message translates to:
  /// **'Emergency Equipment'**
  String get dvirCategoryEmergencyEquipment;

  /// DVIR inspection category for testing vehicle warning horn operation.
  ///
  /// In en, this message translates to:
  /// **'Horn'**
  String get dvirCategoryHorn;

  /// DVIR inspection category for vehicle lighting devices, turn signals, and reflectors.
  ///
  /// In en, this message translates to:
  /// **'Lighting Devices & Reflectors'**
  String get dvirCategoryLightingReflectors;

  /// DVIR inspection category for rearview and side safety mirrors condition and alignment.
  ///
  /// In en, this message translates to:
  /// **'Rear-Vision Mirrors'**
  String get dvirCategoryMirrors;

  /// DVIR inspection category for the parking brake and emergency braking system.
  ///
  /// In en, this message translates to:
  /// **'Parking Brake'**
  String get dvirCategoryParkingBrake;

  /// DVIR inspection category for passenger seating, handrails, and seat restraints.
  ///
  /// In en, this message translates to:
  /// **'Passenger Seating & Restraints'**
  String get dvirCategoryPassengerSeating;

  /// DVIR inspection category for the primary service brake performance and components.
  ///
  /// In en, this message translates to:
  /// **'Service Brakes'**
  String get dvirCategoryServiceBrakes;

  /// DVIR inspection category for steering wheel, column, and linkage mechanisms.
  ///
  /// In en, this message translates to:
  /// **'Steering Mechanism'**
  String get dvirCategorySteeringMechanism;

  /// DVIR inspection category for tire condition, tread depth, and air pressure.
  ///
  /// In en, this message translates to:
  /// **'Tires'**
  String get dvirCategoryTires;

  /// DVIR inspection category for wheels, lug nuts, and wheel rims condition.
  ///
  /// In en, this message translates to:
  /// **'Wheels and Rims'**
  String get dvirCategoryWheelsRims;

  /// DVIR inspection category for windshield wipers and washer fluid system.
  ///
  /// In en, this message translates to:
  /// **'Windshield Wipers'**
  String get dvirCategoryWipers;

  /// Button label to capture a photo of an observed vehicle defect during post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'CAPTURE DEFECT PHOTO'**
  String get dvirPostTripCapturePhoto;

  /// Section title for the regulatory compliance certification in post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'COMPLIANCE CERTIFICATION'**
  String get dvirPostTripComplianceTitle;

  /// Toggle button option to mark an inspection zone or component as having a defect.
  ///
  /// In en, this message translates to:
  /// **'DEFECT'**
  String get dvirPostTripDefectButton;

  /// Title of confirmation dialog when submitting a defect without photo evidence.
  ///
  /// In en, this message translates to:
  /// **'Reporting Defect Without Photo'**
  String get dvirPostTripDefectWithoutPhotoTitle;

  /// Warning message in confirmation dialog when submitting defect reports without attached photos.
  ///
  /// In en, this message translates to:
  /// **'Warning: You are reporting a defect on safety zones ({zones}) without attaching a photo. Are you sure you want to submit anyway?'**
  String dvirPostTripDefectWithoutPhotoWarning(Object zones);

  /// Screen header showing the bus number undergoing defect reporting walkaround inspection.
  ///
  /// In en, this message translates to:
  /// **'Report Defects: Bus {busNumber}'**
  String dvirPostTripInspectionTitle(Object busNumber);

  /// Input placeholder for describing the safety concern or defect details.
  ///
  /// In en, this message translates to:
  /// **'Enter details of the safety concern...'**
  String get dvirPostTripNotesDefectHint;

  /// Section header for defect notes in post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'NOTES (MANDATORY)'**
  String get dvirPostTripNotesLabel;

  /// Section header for defect photo attachment in post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'PHOTO (OPTIONAL)'**
  String get dvirPostTripPhotoLabel;

  /// Placeholder text shown when an inspection zone is marked passed and notes are disabled.
  ///
  /// In en, this message translates to:
  /// **'Select DEFECT to enter safety concern details...'**
  String get dvirPostTripNotesPassedHint;

  /// Step header for entering the current bus odometer reading in post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'Current Odometer Reading'**
  String get dvirPostTripOdometerHeader;

  /// Guidance instructing the driver to enter the mileage reading directly from the instrument cluster.
  ///
  /// In en, this message translates to:
  /// **'Enter the mileage reading exactly as shown on the bus instrument panel:'**
  String get dvirPostTripOdometerInstructions;

  /// Input field label for entering the bus odometer reading in miles.
  ///
  /// In en, this message translates to:
  /// **'Odometer (Miles)'**
  String get dvirPostTripOdometerLabel;

  /// Section title for the vehicle run time and mileage metric step.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE RUN TIME METRIC'**
  String get dvirPostTripOdometerTitle;

  /// Validation warning shown when the driver attempts to proceed without entering the odometer reading.
  ///
  /// In en, this message translates to:
  /// **'Please enter the odometer reading before proceeding.'**
  String get dvirPostTripOdometerWarning;

  /// Toggle button option to mark an inspection zone or component as passed with no defects.
  ///
  /// In en, this message translates to:
  /// **'PASS'**
  String get dvirPostTripPassButton;

  /// Confirmation message indicating a photo has been attached to the defect report.
  ///
  /// In en, this message translates to:
  /// **'Photo attached successfully.'**
  String get dvirPostTripPhotoAttached;

  /// Label for the progress bar tracking completed post-trip walkaround zones.
  ///
  /// In en, this message translates to:
  /// **'Inspection Progress'**
  String get dvirPostTripProgressLabel;

  /// Status message confirming that the driver's signature has been recorded.
  ///
  /// In en, this message translates to:
  /// **'Signature captured.'**
  String get dvirPostTripSignatureCaptured;

  /// Legal certification statement confirming the walkaround inspection complies with FMCSA 396.11 regulations.
  ///
  /// In en, this message translates to:
  /// **'I certify that this vehicle walkaround checklist report has been completed in compliance with FMCSA 396.11 regulations.'**
  String get dvirPostTripSignatureCert;

  /// Section title for the driver signature verification step in post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'Driver Signature Verification'**
  String get dvirPostTripSignatureTitle;

  /// Primary button label to submit the completed post-trip DVIR report.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT INSPECTION'**
  String get dvirPostTripSubmitButton;

  /// Confirmation message displayed after successfully submitting the post-trip DVIR report.
  ///
  /// In en, this message translates to:
  /// **'eDVIR submitted successfully.'**
  String get dvirPostTripSubmitSuccess;

  /// Step header showing the active inspection zone index out of total zones.
  ///
  /// In en, this message translates to:
  /// **'ZONE {current} OF {total}'**
  String dvirPostTripZoneHeader(Object current, Object total);

  /// Progress text showing the number of completed inspection zones out of the total.
  ///
  /// In en, this message translates to:
  /// **'{current} / {total} Zones'**
  String dvirPostTripZonesProgress(Object current, Object total);

  /// Checkbox acknowledgment text for the driver to certify review of prior defects and vehicle safety.
  ///
  /// In en, this message translates to:
  /// **'I acknowledge that I have reviewed the last submitted defect report and verified the repairs(if any) and state that the bus is safe for operation.'**
  String get dvirPreTripAcknowledgmentText;

  /// Status message confirming the bus is active, has no open defects, and is safe for operation.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is Active and has no open defects. It is verified and safe for operation.'**
  String get dvirPreTripActiveMessage;

  /// Header label displaying the active route assigned for pre-trip verification.
  ///
  /// In en, this message translates to:
  /// **'Active Route: {routeName}'**
  String dvirPreTripActiveRoute(Object routeName);

  /// Alert header displayed when unresolved defects from previous post-trip inspections exist.
  ///
  /// In en, this message translates to:
  /// **'ATTENTION REQUIRED: PRIOR DAY DEFECTS LOGGED'**
  String get dvirPreTripAttentionRequiredTitle;

  /// Bus number label displayed in the pre-trip verification header card.
  ///
  /// In en, this message translates to:
  /// **'Bus Number: {busNumber}'**
  String dvirPreTripBusNumber(Object busNumber);

  /// Card header for the vehicle dispatch readiness verification section.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE DISPATCH CHECK'**
  String get dvirPreTripDispatchCheckTitle;

  /// Error message displayed when driver signature verification fails during pre-trip check.
  ///
  /// In en, this message translates to:
  /// **'Failed to sign: {error}'**
  String dvirPreTripFailedToSign(Object error);

  /// Status title indicating that no prior defects were logged on the vehicle.
  ///
  /// In en, this message translates to:
  /// **'No Prior Defects Logged'**
  String get dvirPreTripNoPriorDefects;

  /// Informational message confirming the vehicle had zero defects logged in the previous post-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'This vehicle was reported clean in the previous post-trip shift inspection.'**
  String get dvirPreTripNoPriorDefectsMessage;

  /// Status message confirming that no maintenance repairs are required for safe operation.
  ///
  /// In en, this message translates to:
  /// **'No repairs needed for safe operation.'**
  String get dvirPreTripNoRepairsNeeded;

  /// Alert message explaining that the vehicle is out of service for repairs and cannot be dispatched.
  ///
  /// In en, this message translates to:
  /// **'This vehicle is Out of Service for repairs/maintenance. Safety concerns must be resolved by shop staff before dispatch.'**
  String get dvirPreTripOutOfServiceMessage;

  /// Button or badge label indicating that the vehicle is currently out of service.
  ///
  /// In en, this message translates to:
  /// **'VEHICLE OUT OF SERVICE'**
  String get dvirPreTripOutofServiceButton;

  /// Label displaying the recorded reason why a vehicle is marked out of service.
  ///
  /// In en, this message translates to:
  /// **'Reason: {reason}'**
  String dvirPreTripReason(Object reason);

  /// List item label displaying a defect description that has been marked as repaired.
  ///
  /// In en, this message translates to:
  /// **'{description} (REPAIRED)'**
  String dvirPreTripRepairedDefect(Object description);

  /// Button label allowing the driver to report newly observed defects during pre-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'REPORT NEW DEFECTS'**
  String get dvirPreTripReportNewDefectsButton;

  /// Informational notice indicating new defect reporting is disabled while repairs are in progress.
  ///
  /// In en, this message translates to:
  /// **'Reporting new defects is disabled during repairs.'**
  String get dvirPreTripReportNewDefectsDisabled;

  /// Label displaying the maintenance sub-administrator's resolution status for prior defects.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String dvirPreTripResolutionStatus(Object status);

  /// Section header for the maintenance sub-administrator's repair resolution report.
  ///
  /// In en, this message translates to:
  /// **'TRANSPORT SUB-ADMIN RESOLUTION'**
  String get dvirPreTripResolutionTitle;

  /// Navigation button label to return to the home screen when vehicle is out of service.
  ///
  /// In en, this message translates to:
  /// **'RETURN TO HOME'**
  String get dvirPreTripReturnToHomeButton;

  /// Section title for the pre-trip driver sign-off step.
  ///
  /// In en, this message translates to:
  /// **'SIGN-OFF TO PROCEED TO WALKAROUND'**
  String get dvirPreTripSignOffTitle;

  /// Success notification indicating pre-trip verification is signed and pre-trip walkaround is unlocked.
  ///
  /// In en, this message translates to:
  /// **'Verification signed successfully. Pre-Trip unlocked.'**
  String get dvirPreTripSignedSuccess;

  /// Button label to submit the completed pre-trip verification sign-off.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT VERIFICATION'**
  String get dvirPreTripSubmitVerificationButton;

  /// Screen title for the Pre-Trip Vehicle Verification module.
  ///
  /// In en, this message translates to:
  /// **'Pre-Trip Verification'**
  String get dvirPreTripTitle;

  /// Label displaying the current operational status of the vehicle in pre-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Status: {status}'**
  String dvirPreTripVehicleStatus(Object status);

  /// Screen or dialog title for the digital signature drawing pad.
  ///
  /// In en, this message translates to:
  /// **'Draw Signature'**
  String get dvirSigDrawTitle;

  /// Label displayed above the image preview of the captured driver signature.
  ///
  /// In en, this message translates to:
  /// **'Captured Signature Preview:'**
  String get dvirSigPreviewLabel;

  /// Button label to clear the current drawing and re-sign on the signature pad.
  ///
  /// In en, this message translates to:
  /// **'REDRAW'**
  String get dvirSigRedraw;

  /// Button label to confirm and save the drawn digital signature.
  ///
  /// In en, this message translates to:
  /// **'SAVE SIGNATURE'**
  String get dvirSigSave;

  /// Action placeholder prompt inviting the driver to tap and open the signature drawing pad.
  ///
  /// In en, this message translates to:
  /// **'TAP TO DRAW SIGNATURE (REQUIRED)'**
  String get dvirSigTapToDraw;

  /// Watermark orientation guide on the signature pad instructing vertical bottom-to-top signing.
  ///
  /// In en, this message translates to:
  /// **'Sign Vertically (Bottom to Top)'**
  String get dvirSigWatermark;

  /// Button label to cancel and close the forgot password dialog.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get forgotPasswordCancel;

  /// Input field label for entering the account email address in password recovery.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get forgotPasswordEmailLabel;

  /// Form validation error displayed when an invalid email format is entered in password recovery.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get forgotPasswordInvalidEmail;

  /// Button label to send the password reset email request.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get forgotPasswordSend;

  /// Success confirmation message displayed after sending a password reset request.
  ///
  /// In en, this message translates to:
  /// **'If that email exists, a reset link has been sent.'**
  String get forgotPasswordSuccess;

  /// Generic button label to navigate back to the previous screen or step.
  ///
  /// In en, this message translates to:
  /// **'BACK'**
  String get genericBack;

  /// Generic button label to cancel the active operation or dismiss a dialog.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get genericCancel;

  /// Generic button label to clear form fields or drawing inputs.
  ///
  /// In en, this message translates to:
  /// **'CLEAR'**
  String get genericClear;

  /// Generic button label to close a dialog, bottom sheet, or view.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get genericClose;

  /// Generic button label to confirm an action in a modal or dialog.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get genericConfirm;

  /// Generic button label to edit a field or record.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get genericEdit;

  /// Generic error title or message displayed when an unexpected error occurs.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get genericError;

  /// Generic loading indicator text displayed during asynchronous tasks.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get genericLoading;

  /// Generic button label to advance to the next step in a multi-step workflow.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get genericNext;

  /// Generic button label to acknowledge an alert dialog.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get genericOk;

  /// Generic button label to re-attempt a failed network operation.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get genericRetry;

  /// Generic success title or status message.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get genericSuccess;

  /// Card label displaying the assigned bus identifier on the home screen.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busId}'**
  String homeBusLabel(Object busId);

  /// Status badge indicating that vehicle dispatch is blocked due to unresolved maintenance.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Blocked'**
  String get homeDispatchBlocked;

  /// Dialog title shown when vehicle dispatch is blocked from starting a trip.
  ///
  /// In en, this message translates to:
  /// **'Dispatch Blocked'**
  String get homeDispatchBlockedTitle;

  /// Error alert shown when pre-trip inspection cannot be opened because no routes are assigned.
  ///
  /// In en, this message translates to:
  /// **'No routes available to perform Pre-Trip.'**
  String get homeErrorNoRoutesPreTrip;

  /// Error message displayed when starting a route trip fails on the server.
  ///
  /// In en, this message translates to:
  /// **'Failed to start trip on server: {error}'**
  String homeFailedToStartTrip(Object error);

  /// Personalized greeting header welcoming the logged-in driver on the home screen.
  ///
  /// In en, this message translates to:
  /// **'Hi, {name}'**
  String homeHi(Object name);

  /// Drawer menu item label to log out of the application.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get homeLogout;

  /// Drawer menu item label navigating to the application information screen.
  ///
  /// In en, this message translates to:
  /// **'App Info'**
  String get homeMenuAppInfo;

  /// Drawer menu item label navigating to the evacuation drills management screen.
  ///
  /// In en, this message translates to:
  /// **'Drill'**
  String get homeMenuDrill;

  /// Drawer menu item label navigating to the driver details and license screen.
  ///
  /// In en, this message translates to:
  /// **'Driver Details'**
  String get homeMenuDriverDetails;

  /// Drawer menu item label navigating to the language preferences screen.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get homeMenuLanguage;

  /// Drawer menu item label navigating to the pre-trip DVIR inspection screen.
  ///
  /// In en, this message translates to:
  /// **'Pre-Trip Inspection'**
  String get homeMenuPreTrip;

  /// Drawer menu item label navigating to the defect reporting inspection screen.
  ///
  /// In en, this message translates to:
  /// **'Report Defects'**
  String get homeMenuReportDefects;

  /// Error message shown when attempting to report defects without any assigned routes.
  ///
  /// In en, this message translates to:
  /// **'No routes available to report defects'**
  String get homeErrorNoRoutesReportDefects;

  /// Empty state message displayed on the home screen when no routes are assigned to the driver.
  ///
  /// In en, this message translates to:
  /// **'No routes available'**
  String get homeNoRoutes;

  /// Action button label on the home screen prompting the driver to complete pre-trip verification.
  ///
  /// In en, this message translates to:
  /// **'Review & Verify Pre-Trip'**
  String get homeReviewVerifyPreTrip;

  /// Placeholder text in the search input for filtering routes on the home dashboard.
  ///
  /// In en, this message translates to:
  /// **'Search routes'**
  String get homeSearchHint;

  /// Button label to start tracking and executing an assigned route trip.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get homeStart;

  /// Screen title and app bar header for the Home dashboard.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTitle;

  /// Warning banner on the home screen indicating the vehicle is out of service.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is currently OUT OF SERVICE.'**
  String get homeVehicleOutOfServiceDefault;

  /// Status banner on the home screen confirming the bus is inspected and ready for service.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is ready and verified for safe operation.'**
  String get homeVehicleReady;

  /// Screen title and header for the language selection preferences screen.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// Primary button label to submit login credentials and sign in.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// Input field label for entering the username, email, or phone number.
  ///
  /// In en, this message translates to:
  /// **'Email or phone number'**
  String get loginEmailOrPhoneLabel;

  /// Form validation error displayed when the password field is left empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get loginErrorEnterPassword;

  /// Form validation error displayed when the username field is left empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get loginErrorEnterUsername;

  /// Error banner message displayed when authentication fails.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please try again.'**
  String get loginErrorFailed;

  /// Form validation error displayed when an invalid email or phone format is entered.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email or phone number'**
  String get loginErrorInvalidEmailOrPhone;

  /// Link button label to open the forgot password recovery dialog.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get loginForgotPassword;

  /// Input field label for entering the user account password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// Map action button tooltip for opening the onboard children and guardians list.
  ///
  /// In en, this message translates to:
  /// **'Children & guardians'**
  String get mapChildrenTooltip;

  /// Body message in confirmation dialog asking the driver to confirm ending the active trip.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to close the trip?'**
  String get mapConfirmMessage;

  /// Title of confirmation dialog displayed when ending an active route trip.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get mapConfirmTitle;

  /// Tooltip or marker label indicating the current GPS location of the vehicle on the map.
  ///
  /// In en, this message translates to:
  /// **'Current Position'**
  String get mapCurrentPosition;

  /// Negative action button in map confirmation dialogs.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get mapNo;

  /// Warning banner message displayed when live location updates fail due to network loss.
  ///
  /// In en, this message translates to:
  /// **'Location update failing frequently, Please check your internet.'**
  String get mapReconnectMessage;

  /// Dialog title for live tracking network reconnection alerts.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get mapReconnectTitle;

  /// Action button label to stop tracking and end the current route trip.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get mapStop;

  /// Button state label shown while the trip termination request is processing.
  ///
  /// In en, this message translates to:
  /// **'Stopping...'**
  String get mapStopping;

  /// Map action button tooltip for opening the route stops list.
  ///
  /// In en, this message translates to:
  /// **'Stops'**
  String get mapStopsTooltip;

  /// Status subtitle indicating elapsed seconds since the last successful vehicle GPS update.
  ///
  /// In en, this message translates to:
  /// **'Updated {seconds}s ago'**
  String mapUpdatedAgo(Object seconds);

  /// Status message displayed while acquiring initial GPS satellite signal.
  ///
  /// In en, this message translates to:
  /// **'Waiting for GPS...'**
  String get mapWaitingGps;

  /// Affirmative action button in map confirmation dialogs.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get mapYes;

  /// Application subtitle and role branding displayed on the splash launch screen.
  ///
  /// In en, this message translates to:
  /// **'Driver App'**
  String get splashDriverApp;

  /// Action button label to undo the most recent student pickup or drop-off action.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get stopsActionUndo;

  /// Snackbar message confirming the cancellation of a student stop action.
  ///
  /// In en, this message translates to:
  /// **'Cancelled successfully'**
  String get stopsCancelledSuccess;

  /// Default fallback label for an unnamed stop in the route stops roster.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stopsDefaultLabel;

  /// Error message displayed when an error occurs during student pickup or drop-off operations.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get stopsGenericError;

  /// Status descriptor indicating all student pickup or drop-off tasks at a stop are complete.
  ///
  /// In en, this message translates to:
  /// **'complete'**
  String get stopsStatusComplete;

  /// Status descriptor indicating student pickup or drop-off operations are finished.
  ///
  /// In en, this message translates to:
  /// **'done'**
  String get stopsStatusDone;

  /// Primary button label to submit student pickup or drop-off counts for the current stop.
  ///
  /// In en, this message translates to:
  /// **'Submit ({count})'**
  String stopsSubmitCount(Object count);

  /// Snackbar notification confirming student pickup or drop-off actions were successfully submitted.
  ///
  /// In en, this message translates to:
  /// **'Submitted successfully'**
  String get stopsSubmittedSuccess;

  /// Summary text displaying selected student counts and completed operations at a stop.
  ///
  /// In en, this message translates to:
  /// **'{selected} selected · {done}/{total} {status}'**
  String stopsSummary(Object done, Object selected, Object status, Object total);

  /// Badge label indicating a student drop-off stop type or action.
  ///
  /// In en, this message translates to:
  /// **'Drop'**
  String get stopsTypeDrop;

  /// Badge label indicating a student pickup stop type or action.
  ///
  /// In en, this message translates to:
  /// **'Pick'**
  String get stopsTypePick;

  /// Button label to undo a specified number of student pickup or drop-off actions.
  ///
  /// In en, this message translates to:
  /// **'Undo ({count})'**
  String stopsUndoCount(Object count);

  /// Tooltip explaining the action to undo student pickup or drop-off operations.
  ///
  /// In en, this message translates to:
  /// **'Undo pick/drop'**
  String get stopsUndoTooltip;

  /// Button label to cancel and dismiss the trip action confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get tripConfirmCancel;

  /// Button label to confirm and proceed with the trip action.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get tripConfirmOk;

  /// Title of the trip confirmation dialog in the tracking module.
  ///
  /// In en, this message translates to:
  /// **'Tracker'**
  String get tripConfirmTitle;

  /// Error alert explaining that location permission is mandatory to start route tracking.
  ///
  /// In en, this message translates to:
  /// **'Location permission is required to start a trip.'**
  String get tripErrorLocationRequired;

  /// Drawer menu item label navigating to the post-crash incident reporting module.
  ///
  /// In en, this message translates to:
  /// **'Post-Crash Report'**
  String get homeMenuPostCrashReporting;

  /// Detail label displaying why the vehicle is out of service on the home dashboard.
  ///
  /// In en, this message translates to:
  /// **'Reason: {reason}'**
  String homeVehicleReason(Object reason);

  /// Detail label displaying the vehicle operational status on the home dashboard.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String homeVehicleStatus(Object status);

  /// Coordinate display showing latitude and longitude on the crash location picker map.
  ///
  /// In en, this message translates to:
  /// **'Lat: {lat}, Lang: {lng}'**
  String crashLocationPickerCoords(Object lat, Object lng);

  /// Placeholder text in the search input on the crash location picker map.
  ///
  /// In en, this message translates to:
  /// **'Search Location (e.g. Market St.)'**
  String get crashLocationPickerSearchHint;

  /// Screen title for selecting the crash location on an interactive map.
  ///
  /// In en, this message translates to:
  /// **'Select Location on Map'**
  String get crashLocationPickerTitle;

  /// Floating action button tooltip to confirm the selected crash location coordinates.
  ///
  /// In en, this message translates to:
  /// **'Confirm location'**
  String get crashLocationPickerTooltip;

  /// Descriptive subtitle on the post-crash incident management dashboard.
  ///
  /// In en, this message translates to:
  /// **'Select an action to proceed with incident management or view past reports.'**
  String get incidentDashboardDescription;

  /// Main header headline on the post-crash incident management dashboard.
  ///
  /// In en, this message translates to:
  /// **'Post-Crash Incident Reporting'**
  String get incidentDashboardHeadline;

  /// Card title button to start logging a new post-crash incident report.
  ///
  /// In en, this message translates to:
  /// **'Log new crash'**
  String get incidentDashboardLogNew;

  /// Subtitle describing the action to start a step-by-step post-crash intake report.
  ///
  /// In en, this message translates to:
  /// **'Initiate a new step by step crash report'**
  String get incidentDashboardLogNewSubtitle;

  /// Screen title for the post-crash incident management dashboard.
  ///
  /// In en, this message translates to:
  /// **'Post-Crash Incident'**
  String get incidentDashboardTitle;

  /// Card title button to view past post-crash incident reports and statuses.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get incidentDashboardViewHistory;

  /// Subtitle describing the incident history and registry view option.
  ///
  /// In en, this message translates to:
  /// **'View previous crash reports and status'**
  String get incidentDashboardViewHistorySubtitle;

  /// Card or tab title for the generated administrative transmittal letter.
  ///
  /// In en, this message translates to:
  /// **'Admin Letter'**
  String get incidentDetailsAdminLetter;

  /// Section title for the 2-hour federal DOT post-crash alcohol testing countdown timer.
  ///
  /// In en, this message translates to:
  /// **'DOT Alcohol Test Countdown (2-hour limit)'**
  String get incidentDetailsAlcoholCountdown;

  /// Field label displaying the school district or branch identifier in incident details.
  ///
  /// In en, this message translates to:
  /// **'Branch ID'**
  String get incidentDetailsBranchId;

  /// Field label displaying the license plate number of the involved school bus.
  ///
  /// In en, this message translates to:
  /// **'Bus License Number'**
  String get incidentDetailsBusPlate;

  /// Field text explaining how traffic citations impact DOT post-crash testing requirements.
  ///
  /// In en, this message translates to:
  /// **'Citation Impact: {explanation}'**
  String incidentDetailsCitationImpact(Object explanation);

  /// Detail row indicating whether a traffic citation was issued to the driver.
  ///
  /// In en, this message translates to:
  /// **'Citation issued to driver'**
  String get incidentDetailsCitationIssued;

  /// Detail label displaying the GPS latitude and longitude of the crash location.
  ///
  /// In en, this message translates to:
  /// **'Coordinates: Lat {lat}, Lng {lng}'**
  String incidentDetailsCoordinates(Object lat, Object lng);

  /// Toast message confirming that report details or transmittal letter were copied to clipboard.
  ///
  /// In en, this message translates to:
  /// **'{title} copied to clipboard!'**
  String incidentDetailsCopiedToClipboard(Object title);

  /// Button label to copy transmittal letter or report text to the clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to the clipboard'**
  String get incidentDetailsCopyToClipboard;

  /// Card section header grouping crash circumstances and driver citation details.
  ///
  /// In en, this message translates to:
  /// **'Crash & Citation Info'**
  String get incidentDetailsCrashCitationInfo;

  /// Detail label displaying the date and time when the crash occurred.
  ///
  /// In en, this message translates to:
  /// **'Date & Time: {dateTime}'**
  String incidentDetailsDateTime(Object dateTime);

  /// Button or tab label for the State Department of Education incident report.
  ///
  /// In en, this message translates to:
  /// **'DOE Report'**
  String get incidentDetailsDoeReport;

  /// Section header for the optional State Department of Education notification report.
  ///
  /// In en, this message translates to:
  /// **'State DOE report (optional)'**
  String get incidentDetailsDoeReportTitle;

  /// Header for the section displaying driver notes submitted in the crash report.
  ///
  /// In en, this message translates to:
  /// **'Driver\'s Notes:'**
  String get incidentDetailsDriverNotes;

  /// Field label displaying the driver's unique system user ID in incident details.
  ///
  /// In en, this message translates to:
  /// **'Driver user ID'**
  String get incidentDetailsDriverUserId;

  /// Section title for the 8-hour federal DOT post-crash drug testing countdown timer.
  ///
  /// In en, this message translates to:
  /// **'DOT Drug Test Countdown (8-hour limit)'**
  String get incidentDetailsDrugCountdown;

  /// Detail row indicating whether a fatality occurred as a result of the crash.
  ///
  /// In en, this message translates to:
  /// **'Fatality Occurred'**
  String get incidentDetailsFatalityOccurred;

  /// App bar title displaying the incident report identification number.
  ///
  /// In en, this message translates to:
  /// **'Incident #{id}'**
  String incidentDetailsHeaderTitle(Object id);

  /// Detail row indicating whether injuries requiring off-scene medical treatment occurred.
  ///
  /// In en, this message translates to:
  /// **'Injuries Requiring Medical Treatment'**
  String get incidentDetailsInjuriesMedTreatment;

  /// Field label displaying the responding police or highway patrol agency name.
  ///
  /// In en, this message translates to:
  /// **'Law enforcement agency'**
  String get incidentDetailsLawEnforcement;

  /// Error message displayed when loading incident report details fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to load details.'**
  String get incidentDetailsLoadFailed;

  /// Detail label displaying the physical street address or intersection of the crash.
  ///
  /// In en, this message translates to:
  /// **'Location: {location}'**
  String incidentDetailsLocation(Object location);

  /// Section header for photos and media attached to the incident report.
  ///
  /// In en, this message translates to:
  /// **'Media attachments'**
  String get incidentDetailsMediaAttachments;

  /// Label displaying the upload or review status of incident media attachments.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String incidentDetailsMediaStatus(Object status);

  /// Negative response badge for binary incident attributes in details view.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get incidentDetailsNo;

  /// Empty state message displayed when no photos or videos are attached to the report.
  ///
  /// In en, this message translates to:
  /// **'No photos or videos attached.'**
  String get incidentDetailsNoMediaAttachments;

  /// Informational message indicating no students were onboard the bus during the crash.
  ///
  /// In en, this message translates to:
  /// **'No students were marked onboard during the incident.'**
  String get incidentDetailsNoStudentsOnboard;

  /// Description explaining transmittal letters and notifications sent to district supervisors.
  ///
  /// In en, this message translates to:
  /// **'Generate notification reports and send templated letters to district supervisors or administration.'**
  String get incidentDetailsNotificationsDesc;

  /// Section header for administrative transmittal notifications and letters.
  ///
  /// In en, this message translates to:
  /// **'Transmittal Notifications'**
  String get incidentDetailsNotificationsTitle;

  /// Card section header displaying the responding police officer's details.
  ///
  /// In en, this message translates to:
  /// **'Officer\'s Details'**
  String get incidentDetailsOfficer;

  /// Field label displaying the official police report case number.
  ///
  /// In en, this message translates to:
  /// **'Police Report Number'**
  String get incidentDetailsPoliceReport;

  /// Header label above the pre-populated transmittal letter for school administrators.
  ///
  /// In en, this message translates to:
  /// **'Pre-populated transmission letter:'**
  String get incidentDetailsPrePopulatedLetter;

  /// Header label for the federal regulatory basis governing DOT testing requirements.
  ///
  /// In en, this message translates to:
  /// **'Regulatory Basis:'**
  String get incidentDetailsRegulatoryBasis;

  /// Field label displaying the route identifier associated with the incident.
  ///
  /// In en, this message translates to:
  /// **'Route ID'**
  String get incidentDetailsRouteId;

  /// Section title for notifications dispatched to school administration.
  ///
  /// In en, this message translates to:
  /// **'School Admin Notification'**
  String get incidentDetailsSchoolAdminTitle;

  /// Status badge indicating that an incident report or testing action is pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get incidentDetailsStatusPending;

  /// Detail label showing injury notes and notes recorded for an involved student.
  ///
  /// In en, this message translates to:
  /// **'Details: {notes}'**
  String incidentDetailsStudentDetails(Object notes);

  /// Status badge indicating that the student sustained injuries during the crash.
  ///
  /// In en, this message translates to:
  /// **'Injured'**
  String get incidentDetailsStudentInjured;

  /// Status badge indicating that the student was uninjured during the crash.
  ///
  /// In en, this message translates to:
  /// **'No Injury'**
  String get incidentDetailsStudentNoInjury;

  /// Detail label displaying the injury severity level for an involved student.
  ///
  /// In en, this message translates to:
  /// **'Severity: {severity}'**
  String incidentDetailsStudentSeverity(Object severity);

  /// Detail label showing the hospital or medical facility where the student was transported.
  ///
  /// In en, this message translates to:
  /// **'Transported to: {facility}'**
  String incidentDetailsStudentTransportedTo(Object facility);

  /// Section header listing students who were onboard the bus during the incident.
  ///
  /// In en, this message translates to:
  /// **'Students Onboard ({count})'**
  String incidentDetailsStudentsOnboard(Object count);

  /// Prominent warning title indicating federal DOT post-crash drug/alcohol testing is mandatory.
  ///
  /// In en, this message translates to:
  /// **'DOT post-crash testing required'**
  String get incidentDetailsTestingRequiredTitle;

  /// Label displaying the current operational status of the DOT testing countdown timer.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String incidentDetailsTimerStatus(Object status);

  /// Screen title for the Post-Crash Incident Details screen.
  ///
  /// In en, this message translates to:
  /// **'Incident Details'**
  String get incidentDetailsTitle;

  /// Detail row indicating whether a vehicle required towing due to disabling damage.
  ///
  /// In en, this message translates to:
  /// **'Vehicle towed'**
  String get incidentDetailsVehicleTowed;

  /// Affirmative response badge for binary incident attributes in details view.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get incidentDetailsYes;

  /// Empty state message displayed when no crash incident logs exist for the vehicle.
  ///
  /// In en, this message translates to:
  /// **'No incident logs registered for this vehicle.'**
  String get incidentHistoryEmpty;

  /// Error message displayed when loading the post-crash incident history fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve logs: {error}'**
  String incidentHistoryFailed(Object error);

  /// Subtitle format string for incident history list items displaying time, bus, and testing status.
  ///
  /// In en, this message translates to:
  /// **'Time: {time} Bus: {busNumber} Testing: {testingStatus}'**
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time);

  /// Title format string for incident history list items displaying the report ID.
  ///
  /// In en, this message translates to:
  /// **'Incident #{id}'**
  String incidentHistoryItemTitle(Object id);

  /// Status tag indicating DOT post-crash testing was not required for the incident.
  ///
  /// In en, this message translates to:
  /// **'Not required'**
  String get incidentHistoryTestingNotRequired;

  /// Status tag indicating DOT post-crash testing was mandatory for the incident.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get incidentHistoryTestingRequired;

  /// Screen title for the Post-Crash Incident Registry and history list.
  ///
  /// In en, this message translates to:
  /// **'Post-Crash Incident Registry'**
  String get incidentHistoryTitle;

  /// Button label to attach an additional photo to the crash intake report.
  ///
  /// In en, this message translates to:
  /// **'Add Another Photo'**
  String get incidentIntakeAddAnotherPhoto;

  /// Form validation error displayed when the police officer badge number is missing.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get incidentIntakeBadgeNumberError;

  /// Form field label for the investigating police officer's badge number.
  ///
  /// In en, this message translates to:
  /// **'Badge number*'**
  String get incidentIntakeBadgeNumberLabel;

  /// Bus number label in the incident intake vehicle and driver summary header.
  ///
  /// In en, this message translates to:
  /// **'Bus number: {busNumber}'**
  String incidentIntakeBus(Object busNumber);

  /// Button label to open camera and capture a photo of the crash scene.
  ///
  /// In en, this message translates to:
  /// **'Capture Incident Scene Photo'**
  String get incidentIntakeCaptureScenePhoto;

  /// Explanatory question asking if a moving traffic violation citation was issued to the driver.
  ///
  /// In en, this message translates to:
  /// **'Was a moving traffic violation citation issued to the school bus driver?'**
  String get incidentIntakeCitationSubtitle;

  /// Section title question asking whether a traffic citation was issued to the driver.
  ///
  /// In en, this message translates to:
  /// **'Citation Issued?'**
  String get incidentIntakeCitationTitle;

  /// Form field label for selecting the date and time when the crash occurred.
  ///
  /// In en, this message translates to:
  /// **'Crash Date & Time*'**
  String get incidentIntakeDateTimeLabel;

  /// Determination banner indicating DOT drug and alcohol testing is not required.
  ///
  /// In en, this message translates to:
  /// **'DOT Testing NOT required'**
  String get incidentIntakeDotTestingNotRequired;

  /// Determination banner indicating mandatory DOT drug and alcohol testing is required.
  ///
  /// In en, this message translates to:
  /// **'DOT Testing required'**
  String get incidentIntakeDotTestingRequired;

  /// Driver name label in the incident intake summary header.
  ///
  /// In en, this message translates to:
  /// **'Driver: {driverName}'**
  String incidentIntakeDriver(Object driverName);

  /// Placeholder hint text for optional driver notes regarding the collision.
  ///
  /// In en, this message translates to:
  /// **'Enter any additional notes regarding the collision...'**
  String get incidentIntakeDriverNotesHint;

  /// Section header for the driver's narrative account of the crash.
  ///
  /// In en, this message translates to:
  /// **'Driver Incident Notes'**
  String get incidentIntakeDriverNotesTitle;

  /// Error message displayed when loading route passengers fails during incident intake.
  ///
  /// In en, this message translates to:
  /// **'Failed to load route passengers: {error}'**
  String incidentIntakeErrorRoutePassengers(Object error);

  /// Section header for mandatory photo evidence attachments in crash intake.
  ///
  /// In en, this message translates to:
  /// **'Attach Evidence (Photos) *'**
  String get incidentIntakeEvidenceTitle;

  /// Explanatory question asking if any fatalities resulted from the crash.
  ///
  /// In en, this message translates to:
  /// **'Did any fatalities occur as a result of this crash?'**
  String get incidentIntakeFatalitySubtitle;

  /// Section title question asking whether any fatalities occurred in the crash.
  ///
  /// In en, this message translates to:
  /// **'Fatality Occurred?'**
  String get incidentIntakeFatalityTitle;

  /// Form field label displaying the GPS coordinates of the crash location.
  ///
  /// In en, this message translates to:
  /// **'GPS Coordinates*'**
  String get incidentIntakeGpsLabel;

  /// App bar action tooltip to open the incident history registry.
  ///
  /// In en, this message translates to:
  /// **'View history'**
  String get incidentIntakeHistoryTooltip;

  /// Explanatory question asking if anyone suffered injuries requiring off-scene medical treatment.
  ///
  /// In en, this message translates to:
  /// **'Did any person get a physical injury requiring immediate medical treatment away from the scene?'**
  String get incidentIntakeInjuriesSubtitle;

  /// Section title question asking whether injuries requiring medical treatment occurred.
  ///
  /// In en, this message translates to:
  /// **'Injuries Requiring Medical Treatment?'**
  String get incidentIntakeInjuriesTitle;

  /// Form validation error displayed when injury notes are missing for an injured student.
  ///
  /// In en, this message translates to:
  /// **'Injury notes are mandatory for injured students'**
  String get incidentIntakeInjuryNotesError;

  /// Form field label for entering notes detailing a student's injuries.
  ///
  /// In en, this message translates to:
  /// **'Injury notes / details (mandatory) *'**
  String get incidentIntakeInjuryNotesLabel;

  /// Dropdown label for selecting the injury severity level of an injured student.
  ///
  /// In en, this message translates to:
  /// **'Injury Severity *'**
  String get incidentIntakeInjurySeverityLabel;

  /// Form validation error displayed when the law enforcement agency is omitted.
  ///
  /// In en, this message translates to:
  /// **'Please enter law enforcement agency'**
  String get incidentIntakeLawEnforcementAgencyError;

  /// Form field label for the investigating law enforcement agency name.
  ///
  /// In en, this message translates to:
  /// **'Law enforcement agency (e.g. State Highway Patrol)*'**
  String get incidentIntakeLawEnforcementAgencyLabel;

  /// Wizard step section header for law enforcement and police report information.
  ///
  /// In en, this message translates to:
  /// **'Law enforcement and police report'**
  String get incidentIntakeLawEnforcementTitle;

  /// Form validation error displayed when the crash location description is omitted.
  ///
  /// In en, this message translates to:
  /// **'Please enter location description'**
  String get incidentIntakeLocationDescError;

  /// Form field label for entering the street intersection or crash location description.
  ///
  /// In en, this message translates to:
  /// **'Location Description (e.g. Market St & 5th Ave) *'**
  String get incidentIntakeLocationDescLabel;

  /// Form field label for the medical facility or hospital where a student was transported.
  ///
  /// In en, this message translates to:
  /// **'Medical facility transported to'**
  String get incidentIntakeMedicalFacilityLabel;

  /// Search filter message displayed when no students match the search query.
  ///
  /// In en, this message translates to:
  /// **'No matching students.'**
  String get incidentIntakeNoMatchingStudents;

  /// Message displayed when no student records are found for the active route.
  ///
  /// In en, this message translates to:
  /// **'No students found.'**
  String get incidentIntakeNoStudentsFound;

  /// Informational banner indicating no students were onboard during the crash.
  ///
  /// In en, this message translates to:
  /// **'No students on board, please press NEXT to continue.'**
  String get incidentIntakeNoStudentsOnboard;

  /// Message displayed when no students are registered on the selected route.
  ///
  /// In en, this message translates to:
  /// **'No students registered for this route.'**
  String get incidentIntakeNoStudentsRoute;

  /// Form validation error displayed when the investigating officer name is omitted.
  ///
  /// In en, this message translates to:
  /// **'Please enter the officer\'s name.'**
  String get incidentIntakeOfficerNameError;

  /// Form field label for the investigating police officer's name.
  ///
  /// In en, this message translates to:
  /// **'Officer name*'**
  String get incidentIntakeOfficerNameLabel;

  /// Form validation error displayed when the police report case number is omitted.
  ///
  /// In en, this message translates to:
  /// **'Please enter the police report number'**
  String get incidentIntakePoliceReportNumberError;

  /// Form field label for the official police report case number.
  ///
  /// In en, this message translates to:
  /// **'Police report number *'**
  String get incidentIntakePoliceReportNumberLabel;

  /// Route name label in the incident intake vehicle and driver summary header.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String incidentIntakeRoute(Object routeName);

  /// Wizard step title for route, vehicle, and driver information.
  ///
  /// In en, this message translates to:
  /// **'Route and driver information'**
  String get incidentIntakeRouteDriverInfo;

  /// Placeholder text for searching and filtering the injured student list.
  ///
  /// In en, this message translates to:
  /// **'Search injured child...'**
  String get incidentIntakeSearchInjuredHint;

  /// Placeholder text for searching students onboard the bus during intake.
  ///
  /// In en, this message translates to:
  /// **'Search student...'**
  String get incidentIntakeSearchStudentHint;

  /// Checkbox label to select all registered route students as onboard during the crash.
  ///
  /// In en, this message translates to:
  /// **'Select all students'**
  String get incidentIntakeSelectAll;

  /// Button label to open the interactive map and pinpoint the crash location coordinates.
  ///
  /// In en, this message translates to:
  /// **'Select on Map'**
  String get incidentIntakeSelectOnMap;

  /// Dropdown option for fatal student injury severity.
  ///
  /// In en, this message translates to:
  /// **'Fatal'**
  String get incidentIntakeSeverityFatal;

  /// Dropdown option for minor student injury severity.
  ///
  /// In en, this message translates to:
  /// **'Minor'**
  String get incidentIntakeSeverityMinor;

  /// Dropdown option for moderate student injury severity.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get incidentIntakeSeverityModerate;

  /// Dropdown option for severe student injury severity.
  ///
  /// In en, this message translates to:
  /// **'Severe'**
  String get incidentIntakeSeveritySevere;

  /// Wizard step section header for federal DOT crash threshold criteria variables.
  ///
  /// In en, this message translates to:
  /// **'Crash Severity Variables'**
  String get incidentIntakeSeverityTitle;

  /// Detail label displaying the student ID in the incident passenger checklist.
  ///
  /// In en, this message translates to:
  /// **'ID: {id}'**
  String incidentIntakeStudentId(Object id);

  /// Primary button label to submit the completed post-crash intake report.
  ///
  /// In en, this message translates to:
  /// **'Submit Report'**
  String get incidentIntakeSubmitButton;

  /// Screen title for the step-by-step Post-Crash Incident Intake wizard.
  ///
  /// In en, this message translates to:
  /// **'Post-Crash Incident Intake'**
  String get incidentIntakeTitle;

  /// Explanatory question asking if any vehicle required towing due to disabling damage.
  ///
  /// In en, this message translates to:
  /// **'Did any vehicle receive disabling damage requiring it to be towed from the scene?'**
  String get incidentIntakeTowedSubtitle;

  /// Section title question asking whether any involved vehicle was towed from the scene.
  ///
  /// In en, this message translates to:
  /// **'Vehicle towed?'**
  String get incidentIntakeTowedTitle;

  /// Checkbox or toggle asking if a specific student sustained injuries in the crash.
  ///
  /// In en, this message translates to:
  /// **'Was Injured?'**
  String get incidentIntakeWasInjured;

  /// Bus identifier label displayed in the pre-trip verification header.
  ///
  /// In en, this message translates to:
  /// **'Bus: {busNumber}'**
  String dvirPreTripBusLabel(Object busNumber);

  /// Button label to close the defect photo preview modal.
  ///
  /// In en, this message translates to:
  /// **'Close up'**
  String get dvirPreTripClose;

  /// Form field label for optional driver comments in the pre-trip verification form.
  ///
  /// In en, this message translates to:
  /// **'Driver comments / notes (optional)'**
  String get dvirPreTripDriverCommentsLabel;

  /// Fallback text displayed in the review step when no driver comments were added.
  ///
  /// In en, this message translates to:
  /// **'No comments added.'**
  String get dvirPreTripNoComments;

  /// Detail label displaying the reason why the bus is out of service.
  ///
  /// In en, this message translates to:
  /// **'Reason: {reason}'**
  String dvirPreTripReasonLabel(Object reason);

  /// Route name label displayed on the pre-trip verification screen.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String dvirPreTripRouteLabel(Object routeName);

  /// Confirmation message indicating the driver's signature was successfully captured for pre-trip.
  ///
  /// In en, this message translates to:
  /// **'Signature successfully captured.'**
  String get dvirPreTripSigCaptured;

  /// Validation error message indicating that a signature is required before proceeding.
  ///
  /// In en, this message translates to:
  /// **'Signature is missing.'**
  String get dvirPreTripSigMissing;

  /// Validation warning urging the driver to sign and verify repair completion of prior defects.
  ///
  /// In en, this message translates to:
  /// **'Please sign to verify repair of previous defects.'**
  String get dvirPreTripSignDefectWarning;

  /// Stepper label for the driver sign-off step in pre-trip verification.
  ///
  /// In en, this message translates to:
  /// **'Sign off'**
  String get dvirPreTripStepSignOff;

  /// Stepper label for the final submission step in pre-trip verification.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get dvirPreTripStepSubmit;

  /// Stepper label for the prior defect verification step in pre-trip verification.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get dvirPreTripStepVerify;

  /// Instruction prompt guiding the driver to tap next to proceed through the pre-trip steps.
  ///
  /// In en, this message translates to:
  /// **'Please tap NEXT to proceed.'**
  String get dvirPreTripTapNext;

  /// Status banner title indicating that the vehicle is out of service.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is out of service'**
  String get dvirPreTripVehicleOutOfService;

  /// Status banner title indicating that the vehicle is verified and ready for service.
  ///
  /// In en, this message translates to:
  /// **'Vehicle is ready for service'**
  String get dvirPreTripVehicleReady;

  /// Section header for the verified repair checklist in pre-trip inspection.
  ///
  /// In en, this message translates to:
  /// **'Verified Repair Status:'**
  String get dvirPreTripVerifiedRepairStatus;

  /// Validation warning requesting the driver to check off each repaired defect item to proceed.
  ///
  /// In en, this message translates to:
  /// **'Please verify that all reported defects have been repaired by checking the box next to each defect.'**
  String get dvirPreTripVerifyCheckWarning;

  /// Field label displaying the driver's added comments on the pre-trip summary card.
  ///
  /// In en, this message translates to:
  /// **'Your comments:'**
  String get dvirPreTripYourComments;

  /// Empty state message displayed in the country picker when no countries match the search.
  ///
  /// In en, this message translates to:
  /// **'No countries found'**
  String get countryPickerNoCountries;

  /// Placeholder text in the country picker search field for filtering countries.
  ///
  /// In en, this message translates to:
  /// **'Search by country name, code, or dial code...'**
  String get countryPickerSearchHint;

  /// Title of the bottom sheet for selecting a country phone code.
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get countryPickerTitle;

  /// Default fallback label for an unnamed route stop on the live tracking map.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get mapDefaultStop;

  /// Marker label or indicator marking the route's final destination on the tracking map.
  ///
  /// In en, this message translates to:
  /// **'End location'**
  String get mapEndLocation;

  /// Marker label or indicator marking the route's initial starting location on the tracking map.
  ///
  /// In en, this message translates to:
  /// **'Start location'**
  String get mapStartLocation;

  /// Snackbar message indicating that there are no student actions available to undo.
  ///
  /// In en, this message translates to:
  /// **'No changes available to undo.'**
  String get stopsNoChangesToUndo;

  /// Empty state message displayed when no stops are configured for the route.
  ///
  /// In en, this message translates to:
  /// **'No stops available.'**
  String get stopsNoStopsAvailable;

  /// Dialog title shown when GPS detects the bus has parked inside the depot geofence.
  ///
  /// In en, this message translates to:
  /// **'Depot Arrival Detected'**
  String get depotArrivalDetectedTitle;

  /// Dialog prompt asking driver to end trip and begin mandatory child safety check upon arrival at depot.
  ///
  /// In en, this message translates to:
  /// **'The bus is parked at the depot. Would you like to end the trip and start the mandatory sleeping child safety check now?'**
  String get depotArrivalDetectedMessage;

  /// Button action to end trip and launch mandatory child safety check.
  ///
  /// In en, this message translates to:
  /// **'End Trip & Start Check'**
  String get depotArrivalEndTripAndStartCheck;

  /// App bar title for the sleeping child / child left behind inspection screen.
  ///
  /// In en, this message translates to:
  /// **'Mandatory Child Safety Check'**
  String get childSafetyCheckTitle;

  /// Alert banner title shown when the countdown timer expires without rear check confirmation.
  ///
  /// In en, this message translates to:
  /// **'TIME EXPIRED - DISPATCH ALERTED'**
  String get childSafetyCheckTimeExpiredTitle;

  /// Alert banner title shown during the active post-route inspection countdown.
  ///
  /// In en, this message translates to:
  /// **'MANDATORY POST-ROUTE CHECK'**
  String get childSafetyCheckMandatoryPostRouteTitle;

  /// Alert banner subtitle shown when time expires urging immediate submission.
  ///
  /// In en, this message translates to:
  /// **'Submit rear inspection immediately to record compliance.'**
  String get childSafetyCheckTimeExpiredSubtitle;

  /// Alert banner subtitle instructing the driver to walk down the aisle.
  ///
  /// In en, this message translates to:
  /// **'Walk down the center aisle to the rear. Inspect under all seats.'**
  String get childSafetyCheckMandatoryPostRouteSubtitle;

  /// Card header above the active countdown timer.
  ///
  /// In en, this message translates to:
  /// **'Time Remaining to Inspect Bus'**
  String get childSafetyCheckTimeRemainingHeader;

  /// Label indicating the route name on the safety check timer card.
  ///
  /// In en, this message translates to:
  /// **'Route: {routeName}'**
  String childSafetyCheckRouteLabel(String routeName);

  /// Header for the step-by-step driver inspection checklist.
  ///
  /// In en, this message translates to:
  /// **'Inspection Checklist'**
  String get childSafetyCheckInspectionChecklistTitle;

  /// Step 1 instruction in the child safety check checklist.
  ///
  /// In en, this message translates to:
  /// **'Turn off vehicle engine and secure parking brake.'**
  String get childSafetyCheckStep1;

  /// Step 2 instruction in the child safety check checklist.
  ///
  /// In en, this message translates to:
  /// **'Walk to the rear of the bus, looking under and between every seat.'**
  String get childSafetyCheckStep2;

  /// Step 3 instruction in the child safety check checklist.
  ///
  /// In en, this message translates to:
  /// **'Verify no sleeping or unattended children remain.'**
  String get childSafetyCheckStep3;

  /// Step 4 instruction in the child safety check checklist.
  ///
  /// In en, this message translates to:
  /// **'Reach the back row and tap Confirm to capture rear GPS fix.'**
  String get childSafetyCheckStep4;

  /// Header for the child inspection result intake section.
  ///
  /// In en, this message translates to:
  /// **'Child Inspection Result'**
  String get childSafetyCheckResultTitle;

  /// Option selected when no sleeping or unattended children are found on the bus.
  ///
  /// In en, this message translates to:
  /// **'All Clear'**
  String get childSafetyCheckAllClear;

  /// Option selected when a sleeping or unattended child is discovered on the bus.
  ///
  /// In en, this message translates to:
  /// **'Child Found'**
  String get childSafetyCheckChildFound;

  /// Label for the count of children found during inspection.
  ///
  /// In en, this message translates to:
  /// **'Number of Children Found: '**
  String get childSafetyCheckNumberOfChildrenFound;

  /// Form field label for describing child location and condition.
  ///
  /// In en, this message translates to:
  /// **'Child details & seat location *'**
  String get childSafetyCheckChildDetailsLabel;

  /// Placeholder hint text for the child details input.
  ///
  /// In en, this message translates to:
  /// **'e.g., Student found sleeping in Row 4 left seat. Safe and awake.'**
  String get childSafetyCheckChildDetailsHint;

  /// Button loading label while high accuracy GPS is being captured.
  ///
  /// In en, this message translates to:
  /// **'Capturing Rear GPS & Submitting...'**
  String get childSafetyCheckCapturingGps;

  /// Primary action button to confirm rear bus inspection when all clear.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM REAR INSPECTION'**
  String get childSafetyCheckConfirmButton;

  /// Primary action button to submit inspection with child found incident.
  ///
  /// In en, this message translates to:
  /// **'SUBMIT CHILD REPORT & REAR CHECK'**
  String get childSafetyCheckSubmitReportButton;

  /// Validation warning when notes are empty while reporting a child found.
  ///
  /// In en, this message translates to:
  /// **'Please enter notes describing the child location.'**
  String get childSafetyCheckNotesRequiredWarning;

  /// Snackbar message indicating successful submission and GPS logging.
  ///
  /// In en, this message translates to:
  /// **'Child Safety Check confirmed successfully. Rear GPS recorded.'**
  String get childSafetyCheckSuccessMessage;

  /// Title of the emergency modal dialog after submitting a child found report.
  ///
  /// In en, this message translates to:
  /// **'Child Reported on Bus'**
  String get childSafetyCheckChildReportedDialogTitle;

  /// Emergency protocol instruction body shown to driver when a child is left on bus.
  ///
  /// In en, this message translates to:
  /// **'School dispatch and supervisors have been alerted immediately.\n\nPlease stay with the student and follow district emergency protocol. Do not leave the vehicle until authorized.'**
  String get childSafetyCheckChildReportedDialogBody;

  /// Action button to dismiss emergency dialog and proceed to post-trip DVIR.
  ///
  /// In en, this message translates to:
  /// **'Acknowledge & Proceed'**
  String get childSafetyCheckAcknowledgeProceedButton;

  /// Drawer menu item label navigating to the child safety check screen.
  ///
  /// In en, this message translates to:
  /// **'Child Safety Check'**
  String get homeMenuChildSafetyCheck;

  /// Dialog title warning the driver that they are not currently at the depot location.
  ///
  /// In en, this message translates to:
  /// **'Away from Depot Location'**
  String get childSafetyAwayWarningTitle;

  /// Dialog body instructing driver to go to depot to mark child safety.
  ///
  /// In en, this message translates to:
  /// **'You are not at the depot location. Please go to the depot location and perform the Child Safety Check there.'**
  String get childSafetyAwayWarningBody;

  /// Button option OK in child safety check dialogs.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get childSafetyOptionOk;

  /// Button option allowing driver to proceed with marking at current location.
  ///
  /// In en, this message translates to:
  /// **'No, Mark Here Only'**
  String get childSafetyOptionMarkHere;

  /// Dialog title confirming driver intends to mark away from depot location.
  ///
  /// In en, this message translates to:
  /// **'Warning: Marking Away from Location'**
  String get childSafetyConfirmAwayTitle;

  /// Dialog body warning driver about submitting safety check away from depot location.
  ///
  /// In en, this message translates to:
  /// **'You are about to mark the Child Safety Check away from the designated depot location. Are you sure you want to proceed?'**
  String get childSafetyConfirmAwayBody;

  /// Button option Cancel in child safety check dialogs.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get childSafetyOptionCancel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['af', 'am', 'ar', 'ast', 'az', 'be', 'bg', 'bn', 'bo', 'bs', 'ca', 'ceb', 'ckb', 'co', 'cs', 'cy', 'da', 'de', 'doi', 'dv', 'el', 'en', 'eo', 'es', 'et', 'eu', 'fa', 'ff', 'fi', 'fil', 'fo', 'fr', 'fur', 'fy', 'ga', 'gaa', 'gd', 'gl', 'gn', 'gu', 'ha', 'haw', 'he', 'hi', 'hil', 'hmn', 'hr', 'ht', 'hu', 'hy', 'id', 'ig', 'ilo', 'is', 'it', 'ja', 'jv', 'ka', 'kk', 'km', 'kn', 'ko', 'ku', 'ky', 'la', 'lb', 'li', 'lij', 'lmo', 'lo', 'lt', 'ltg', 'lv', 'mg', 'mi', 'mk', 'ml', 'mn', 'mr', 'ms', 'mt', 'my', 'ne', 'nl', 'no', 'ny', 'or', 'pa', 'pl', 'ps', 'pt', 'ro', 'ru', 'rw', 'sc', 'scn', 'sd', 'si', 'sk', 'sl', 'sm', 'sn', 'so', 'sq', 'sr', 'st', 'su', 'sv', 'sw', 'szl', 'ta', 'te', 'tg', 'th', 'tk', 'tl', 'tr', 'ug', 'uk', 'ur', 'uz', 'vec', 'vi', 'xh', 'yi', 'yo', 'zh', 'zu'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh': {
  switch (locale.countryCode) {
    case 'CN': return AppLocalizationsZhCn();
case 'TW': return AppLocalizationsZhTw();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af': return AppLocalizationsAf();
    case 'am': return AppLocalizationsAm();
    case 'ar': return AppLocalizationsAr();
    case 'ast': return AppLocalizationsAst();
    case 'az': return AppLocalizationsAz();
    case 'be': return AppLocalizationsBe();
    case 'bg': return AppLocalizationsBg();
    case 'bn': return AppLocalizationsBn();
    case 'bo': return AppLocalizationsBo();
    case 'bs': return AppLocalizationsBs();
    case 'ca': return AppLocalizationsCa();
    case 'ceb': return AppLocalizationsCeb();
    case 'ckb': return AppLocalizationsCkb();
    case 'co': return AppLocalizationsCo();
    case 'cs': return AppLocalizationsCs();
    case 'cy': return AppLocalizationsCy();
    case 'da': return AppLocalizationsDa();
    case 'de': return AppLocalizationsDe();
    case 'doi': return AppLocalizationsDoi();
    case 'dv': return AppLocalizationsDv();
    case 'el': return AppLocalizationsEl();
    case 'en': return AppLocalizationsEn();
    case 'eo': return AppLocalizationsEo();
    case 'es': return AppLocalizationsEs();
    case 'et': return AppLocalizationsEt();
    case 'eu': return AppLocalizationsEu();
    case 'fa': return AppLocalizationsFa();
    case 'ff': return AppLocalizationsFf();
    case 'fi': return AppLocalizationsFi();
    case 'fil': return AppLocalizationsFil();
    case 'fo': return AppLocalizationsFo();
    case 'fr': return AppLocalizationsFr();
    case 'fur': return AppLocalizationsFur();
    case 'fy': return AppLocalizationsFy();
    case 'ga': return AppLocalizationsGa();
    case 'gaa': return AppLocalizationsGaa();
    case 'gd': return AppLocalizationsGd();
    case 'gl': return AppLocalizationsGl();
    case 'gn': return AppLocalizationsGn();
    case 'gu': return AppLocalizationsGu();
    case 'ha': return AppLocalizationsHa();
    case 'haw': return AppLocalizationsHaw();
    case 'he': return AppLocalizationsHe();
    case 'hi': return AppLocalizationsHi();
    case 'hil': return AppLocalizationsHil();
    case 'hmn': return AppLocalizationsHmn();
    case 'hr': return AppLocalizationsHr();
    case 'ht': return AppLocalizationsHt();
    case 'hu': return AppLocalizationsHu();
    case 'hy': return AppLocalizationsHy();
    case 'id': return AppLocalizationsId();
    case 'ig': return AppLocalizationsIg();
    case 'ilo': return AppLocalizationsIlo();
    case 'is': return AppLocalizationsIs();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'jv': return AppLocalizationsJv();
    case 'ka': return AppLocalizationsKa();
    case 'kk': return AppLocalizationsKk();
    case 'km': return AppLocalizationsKm();
    case 'kn': return AppLocalizationsKn();
    case 'ko': return AppLocalizationsKo();
    case 'ku': return AppLocalizationsKu();
    case 'ky': return AppLocalizationsKy();
    case 'la': return AppLocalizationsLa();
    case 'lb': return AppLocalizationsLb();
    case 'li': return AppLocalizationsLi();
    case 'lij': return AppLocalizationsLij();
    case 'lmo': return AppLocalizationsLmo();
    case 'lo': return AppLocalizationsLo();
    case 'lt': return AppLocalizationsLt();
    case 'ltg': return AppLocalizationsLtg();
    case 'lv': return AppLocalizationsLv();
    case 'mg': return AppLocalizationsMg();
    case 'mi': return AppLocalizationsMi();
    case 'mk': return AppLocalizationsMk();
    case 'ml': return AppLocalizationsMl();
    case 'mn': return AppLocalizationsMn();
    case 'mr': return AppLocalizationsMr();
    case 'ms': return AppLocalizationsMs();
    case 'mt': return AppLocalizationsMt();
    case 'my': return AppLocalizationsMy();
    case 'ne': return AppLocalizationsNe();
    case 'nl': return AppLocalizationsNl();
    case 'no': return AppLocalizationsNo();
    case 'ny': return AppLocalizationsNy();
    case 'or': return AppLocalizationsOr();
    case 'pa': return AppLocalizationsPa();
    case 'pl': return AppLocalizationsPl();
    case 'ps': return AppLocalizationsPs();
    case 'pt': return AppLocalizationsPt();
    case 'ro': return AppLocalizationsRo();
    case 'ru': return AppLocalizationsRu();
    case 'rw': return AppLocalizationsRw();
    case 'sc': return AppLocalizationsSc();
    case 'scn': return AppLocalizationsScn();
    case 'sd': return AppLocalizationsSd();
    case 'si': return AppLocalizationsSi();
    case 'sk': return AppLocalizationsSk();
    case 'sl': return AppLocalizationsSl();
    case 'sm': return AppLocalizationsSm();
    case 'sn': return AppLocalizationsSn();
    case 'so': return AppLocalizationsSo();
    case 'sq': return AppLocalizationsSq();
    case 'sr': return AppLocalizationsSr();
    case 'st': return AppLocalizationsSt();
    case 'su': return AppLocalizationsSu();
    case 'sv': return AppLocalizationsSv();
    case 'sw': return AppLocalizationsSw();
    case 'szl': return AppLocalizationsSzl();
    case 'ta': return AppLocalizationsTa();
    case 'te': return AppLocalizationsTe();
    case 'tg': return AppLocalizationsTg();
    case 'th': return AppLocalizationsTh();
    case 'tk': return AppLocalizationsTk();
    case 'tl': return AppLocalizationsTl();
    case 'tr': return AppLocalizationsTr();
    case 'ug': return AppLocalizationsUg();
    case 'uk': return AppLocalizationsUk();
    case 'ur': return AppLocalizationsUr();
    case 'uz': return AppLocalizationsUz();
    case 'vec': return AppLocalizationsVec();
    case 'vi': return AppLocalizationsVi();
    case 'xh': return AppLocalizationsXh();
    case 'yi': return AppLocalizationsYi();
    case 'yo': return AppLocalizationsYo();
    case 'zh': return AppLocalizationsZh();
    case 'zu': return AppLocalizationsZu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
