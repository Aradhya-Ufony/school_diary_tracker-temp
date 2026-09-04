import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ga (`gaa`).
class AppLocalizationsGaa extends AppLocalizations {
  AppLocalizationsGaa([String locale = 'gaa']) : super(locale);

  @override
  String get appInfoBuild => 'Build Number';

  @override
  String get appInfoDevice => 'Device Model';

  @override
  String get appInfoOS => 'OS Version';

  @override
  String get appInfoPackage => 'Package';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App Version';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardians';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Authorized guardians for $name';
  }

  @override
  String get childrenNoGuardians => 'No authorized guardians on file for this child.';

  @override
  String get childrenStatusDropped => 'Dropped';

  @override
  String get childrenStatusPending => 'Pending';

  @override
  String get childrenStatusPicked => 'Picked';

  @override
  String childrenTitle(Object routeName) {
    return 'Children — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ABSENT / NOT ON BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuated';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuated: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No absent students.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No students marked on bus.';

  @override
  String get drillChecklistNotOnBus => 'NOT ON BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'ON BUS — NOT EVACUATED';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'ON BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'PROCEED TO EVIDENCE CAPTURE';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evacuation Drill Checklist';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Unaccounted Student(s) Remaining!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Are you sure you want to submit this drill log? This action cannot be undone.';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirm Drill Submission';

  @override
  String get drillEvidenceDriverNotesHint => 'Describe drill execution, student behavior, exit paths used, and any exceptions observed...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Driver Notes (Minimum 10 characters):';

  @override
  String get drillEvidenceFailed => 'Submission Failed';

  @override
  String get drillEvidenceMandatoryWarning => 'At least 1 photo or video evidence is mandatory to submit drill.';

  @override
  String get drillEvidenceRecordVideo => 'Record Video';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY SUBMISSION';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN TO DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'Submitting Drill Log...';

  @override
  String get drillEvidenceSuccess => 'Submission Successful!';

  @override
  String get drillEvidenceSuccessMessage => 'The evacuation drill log has been successfully uploaded and is pending approval.';

  @override
  String get drillEvidenceTakePhoto => 'Take Photo';

  @override
  String get drillEvidenceTitle => 'Mandatory Drill Evidence';

  @override
  String get drillEvidenceUploading => 'Uploading evidence and checklist data';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark Attendance';

  @override
  String get drillRosterNoStudents => 'No students registered on this route.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Present: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEED TO DRILL CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Seat: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Select All';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notes';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approved At: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approved At';

  @override
  String get drillSummaryBackToDrills => 'Back to Drills';

  @override
  String get drillSummaryBusNumber => 'Bus Number';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conducted By: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill Details';

  @override
  String get drillSummaryDriverNotesTitle => 'Driver Notes';

  @override
  String get drillSummaryDuration => 'Duration';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'End Time';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuated: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuated $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Evidence Media Attachments';

  @override
  String get drillSummaryGps => 'GPS Coordinates';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Failed to load drill summary for ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'No drill data found.';

  @override
  String get drillSummaryNotOnBus => 'Not On Bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'ON BUS - NOT EVACUATED';

  @override
  String get drillSummaryPhotoEvidence => 'Photo Evidence';

  @override
  String get drillSummaryRouteId => 'Route ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Seat: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Start Time';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Student Evacuation Log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String get drillSummaryType => 'Drill Type';

  @override
  String get drillSummaryVideoEvidence => 'Video Evidence';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Choose drill classification:';

  @override
  String get drillTypeCustomHint => 'Enter custom evacuation drill type...';

  @override
  String get drillTypeInvalidState => 'Invalid vehicle or route state.';

  @override
  String get drillTypeNameBusFire => 'Bus Fire';

  @override
  String get drillTypeNameDangerZone => 'Danger Zone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Driver Incapacitation';

  @override
  String get drillTypeNameEquipmentOrientation => 'Equipment Orientation';

  @override
  String get drillTypeNameFrontDoor => 'Front Door';

  @override
  String get drillTypeNameOthers => 'Others';

  @override
  String get drillTypeNameRearDoor => 'Rear Door';

  @override
  String get drillTypeNameSideOrRoof => 'Side Or Roof';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'No Route Selected';

  @override
  String get drillTypePreparation => 'DRILL PREPARATION';

  @override
  String get drillTypeProceed => 'PROCEED TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Select Route:';

  @override
  String get drillTypeSpecifyCustom => 'Specify Drill Type Description:';

  @override
  String get drillTypeTitle => 'Select Drill Type';

  @override
  String get drillTypeWarning => 'Ensure vehicle is parked safely before beginning execution.';

  @override
  String get drillsAssignedVehicle => 'Assigned Vehicle';

  @override
  String get drillsChecking => 'Checking...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'No Bus Assigned';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No drills recorded for bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No routes available to start a drill.';

  @override
  String get drillsShowSummary => 'Show Summary';

  @override
  String get drillsStartDrill => 'Start Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conducted: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Evacuation Drills';

  @override
  String get drillsVehicleOutOfService => 'Vehicle Out of Service';

  @override
  String get drillsVehicleOutOfServiceMessage => 'This vehicle is currently out of service and cannot be used for drills.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL Class';

  @override
  String get driverDetailsDrivingLicenseLabel => 'DRIVING LICENSE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passenger';

  @override
  String get driverDetailsEndorsementSchoolBus => 'School Bus';

  @override
  String get driverDetailsEndorsementsTitle => 'Endorsements Held';

  @override
  String get driverDetailsExpiryDateLabel => 'Expiry Date';

  @override
  String get driverDetailsHolderSignature => 'HOLDER SIGNATURE';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Issue Date';

  @override
  String get driverDetailsLicenseDocTitle => 'License Document';

  @override
  String get driverDetailsLicenseNoLabel => 'License No';

  @override
  String get driverDetailsLicenseTitle => 'License Details';

  @override
  String get driverDetailsLicenseTypeLabel => 'License Type';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIAL SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASS: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORSE: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Tap to View DL Document';

  @override
  String get driverDetailsTitle => 'Driver Details';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-Specific Safety Systems';

  @override
  String get dvirCategoryCouplingDevices => 'Coupling Devices';

  @override
  String get dvirCategoryEmergencyEquipment => 'Emergency Equipment';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Lighting Devices & Reflectors';

  @override
  String get dvirCategoryMirrors => 'Rear-Vision Mirrors';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Passenger Seating & Restraints';

  @override
  String get dvirCategoryServiceBrakes => 'Service Brakes';

  @override
  String get dvirCategorySteeringMechanism => 'Steering Mechanism';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Wheels and Rims';

  @override
  String get dvirCategoryWipers => 'Windshield Wipers';

  @override
  String get dvirPostTripCapturePhoto => 'CAPTURE DEFECT PHOTO';

  @override
  String get dvirPostTripComplianceTitle => 'COMPLIANCE CERTIFICATION';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Reporting Defect Without Photo';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Warning: You are reporting a defect on safety zones ($zones) without attaching a photo. Are you sure you want to submit anyway?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspection: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Enter details of the safety concern...';

  @override
  String get dvirPostTripNotesLabel => 'NOTES (MANDATORY ON DEFECT) & PHOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Select DEFECT to enter safety concern details...';

  @override
  String get dvirPostTripOdometerHeader => 'Current Odometer Reading';

  @override
  String get dvirPostTripOdometerInstructions => 'Enter the mileage reading exactly as shown on the bus instrument panel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VEHICLE RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Please enter the odometer reading before proceeding.';

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripPhotoAttached => 'Photo attached successfully.';

  @override
  String get dvirPostTripProgressLabel => 'Inspection Progress';

  @override
  String get dvirPostTripSignatureCaptured => 'Signature captured.';

  @override
  String get dvirPostTripSignatureCert => 'I certify that this vehicle walkaround checklist report has been completed in compliance with FMCSA 396.11 regulations.';

  @override
  String get dvirPostTripSignatureTitle => 'Driver Signature Verification';

  @override
  String get dvirPostTripSubmitButton => 'SUBMIT INSPECTION';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR submitted successfully.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zones';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'I acknowledge that I have reviewed the last submitted defect report and verified the repairs(if any) and state that the bus is safe for operation.';

  @override
  String get dvirPreTripActiveMessage => 'This vehicle is Active and has no open defects. It is verified and safe for operation.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Active Route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENTION REQUIRED: PRIOR DAY DEFECTS LOGGED';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Bus Number: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VEHICLE DISPATCH CHECK';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Failed to sign: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No Prior Defects Logged';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'This vehicle was reported clean in the previous post-trip shift inspection.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No repairs needed for safe operation.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'This vehicle is Out of Service for repairs/maintenance. Safety concerns must be resolved by shop staff before dispatch.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEHICLE OUT OF SERVICE';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPAIRED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORT NEW DEFECTS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Reporting new defects is disabled during repairs.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'TRANSPORT SUB-ADMIN RESOLUTION';

  @override
  String get dvirPreTripReturnToHomeButton => 'RETURN TO HOME';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF TO PROCEED TO WALKAROUND';

  @override
  String get dvirPreTripSignedSuccess => 'Verification signed successfully. Pre-Trip unlocked.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SUBMIT VERIFICATION';

  @override
  String get dvirPreTripTitle => 'Pre-Trip Verification';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Vehicle Status: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Draw Signature';

  @override
  String get dvirSigPreviewLabel => 'Captured Signature Preview:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVE SIGNATURE';

  @override
  String get dvirSigTapToDraw => 'TAP TO DRAW SIGNATURE (REQUIRED)';

  @override
  String get dvirSigWatermark => 'Sign Vertically (Bottom to Top)';

  @override
  String get forgotPasswordCancel => 'Cancel';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Please enter a valid email';

  @override
  String get forgotPasswordSend => 'Send';

  @override
  String get forgotPasswordSuccess => 'If that email exists, a reset link has been sent.';

  @override
  String get genericBack => 'BACK';

  @override
  String get genericCancel => 'Cancel';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Close';

  @override
  String get genericConfirm => 'Confirm';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericError => 'Something went wrong';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericNext => 'NEXT';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Retry';

  @override
  String get genericSuccess => 'Success';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Dispatch Blocked';

  @override
  String get homeDispatchBlockedTitle => 'Dispatch Blocked';

  @override
  String get homeErrorNoRoutesPreTrip => 'No routes available to perform Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Failed to start trip on server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hi, $name';
  }

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Driver Details';

  @override
  String get homeMenuLanguage => 'Language';

  @override
  String get homeMenuPreTrip => 'Pre-Trip Inspection';

  @override
  String get homeNoRoutes => 'No routes available';

  @override
  String get homeReviewVerifyPreTrip => 'Review & Verify Pre-Trip';

  @override
  String get homeSearchHint => 'Search routes';

  @override
  String get homeStart => 'Start';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vehicle is currently OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Vehicle is ready and verified for safe operation.';

  @override
  String get languageTitle => 'Language';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Email or phone number';

  @override
  String get loginErrorEnterPassword => 'Please enter password';

  @override
  String get loginErrorEnterUsername => 'Please enter username';

  @override
  String get loginErrorFailed => 'Login failed. Please try again.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Please enter a valid email or phone number';

  @override
  String get loginForgotPassword => 'Forgot password?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Children & guardians';

  @override
  String get mapConfirmMessage => 'Do you really want to close the trip?';

  @override
  String get mapConfirmTitle => 'Confirm';

  @override
  String get mapCurrentPosition => 'Current Position';

  @override
  String get mapNo => 'No';

  @override
  String get mapReconnectMessage => 'Location update failing frequently, Please check your internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapStopping => 'Stopping...';

  @override
  String get mapStopsTooltip => 'Stops';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Waiting for GPS...';

  @override
  String get mapYes => 'Yes';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'Undo';

  @override
  String get stopsCancelledSuccess => 'Cancelled successfully';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String get stopsGenericError => 'Something went wrong. Please try again.';

  @override
  String get stopsStatusComplete => 'complete';

  @override
  String get stopsStatusDone => 'done';

  @override
  String stopsSubmitCount(Object count) {
    return 'Submit ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Submitted successfully';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected selected · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsTypePick => 'Pick';

  @override
  String stopsUndoCount(Object count) {
    return 'Undo ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Undo pick/drop';

  @override
  String get tripConfirmCancel => 'Cancel';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Location permission is required to start a trip.';

  @override
  String get homeMenuPostCrashReporting => 'Post-Crash Report';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lang: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Search Location (e.g. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Select Location on Map';

  @override
  String get crashLocationPickerTooltip => 'Confirm location';

  @override
  String get incidentDashboardDescription => 'Select an action to proceed with incident management or view past reports.';

  @override
  String get incidentDashboardHeadline => 'Post-Crash Incident Reporting';

  @override
  String get incidentDashboardLogNew => 'Log new crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Initiate a new step by step crash report';

  @override
  String get incidentDashboardTitle => 'Post-Crash Incident';

  @override
  String get incidentDashboardViewHistory => 'View History';

  @override
  String get incidentDashboardViewHistorySubtitle => 'View previous crash reports and status';

  @override
  String get incidentDetailsAdminLetter => 'Admin Letter';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcohol Test Countdown (2-hour limit)';

  @override
  String get incidentDetailsBranchId => 'Branch ID';

  @override
  String get incidentDetailsBusPlate => 'Bus License Number';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citation Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citation issued to driver';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinates: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copied to clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copy to the clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Date & Time: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE Report';

  @override
  String get incidentDetailsDoeReportTitle => 'State DOE report (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Driver\'s Notes:';

  @override
  String get incidentDetailsDriverUserId => 'Driver user ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8-hour limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Fatality Occurred';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injuries Requiring Medical Treatment';

  @override
  String get incidentDetailsLawEnforcement => 'Law enforcement agency';

  @override
  String get incidentDetailsLoadFailed => 'Failed to load details.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Location: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Media attachments';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No photos or videos attached.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No students were marked onboard during the incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generate notification reports and send templated letters to district supervisors or administration.';

  @override
  String get incidentDetailsNotificationsTitle => 'Transmittal Notifications';

  @override
  String get incidentDetailsOfficer => 'Officer\'s Details';

  @override
  String get incidentDetailsPoliceReport => 'Police Report Number';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Pre-populated transmission letter:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulatory Basis:';

  @override
  String get incidentDetailsRouteId => 'Route ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'School Admin Notification';

  @override
  String get incidentDetailsStatusPending => 'Pending';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Details: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Injured';

  @override
  String get incidentDetailsStudentNoInjury => 'No Injury';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Severity: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transported to: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Students Onboard ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT post-crash testing required';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Incident Details';

  @override
  String get incidentDetailsVehicleTowed => 'Vehicle towed';

  @override
  String get incidentDetailsYes => 'Yes';

  @override
  String get incidentHistoryEmpty => 'No incident logs registered for this vehicle.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Failed to retrieve logs: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Time: $time Bus: $busNumber Testing: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Not required';

  @override
  String get incidentHistoryTestingRequired => 'Required';

  @override
  String get incidentHistoryTitle => 'Post-Crash Incident Registry';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Add Another Photo';

  @override
  String get incidentIntakeBadgeNumberError => 'Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Badge number*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bus number: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capture Incident Scene Photo';

  @override
  String get incidentIntakeCitationSubtitle => 'Was a moving traffic violation citation issued to the school bus driver?';

  @override
  String get incidentIntakeCitationTitle => 'Citation Issued?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT Testing NOT required';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT Testing required';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Driver: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Enter any additional notes regarding the collision...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Driver Incident Notes';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Failed to load route passengers: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Attach Evidence (Photos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Did any fatalities occur as a result of this crash?';

  @override
  String get incidentIntakeFatalityTitle => 'Fatality Occurred?';

  @override
  String get incidentIntakeGpsLabel => 'GPS Coordinates*';

  @override
  String get incidentIntakeHistoryTooltip => 'View history';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Did any person get a physical injury requiring immediate medical treatment away from the scene?';

  @override
  String get incidentIntakeInjuriesTitle => 'Injuries Requiring Medical Treatment?';

  @override
  String get incidentIntakeInjuryNotesError => 'Injury notes are mandatory for injured students';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Injury notes / details (mandatory) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Injury Severity *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Please enter law enforcement agency';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Law enforcement agency (e.g. State Highway Patrol)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Law enforcement and police report';

  @override
  String get incidentIntakeLocationDescError => 'Please enter location description';

  @override
  String get incidentIntakeLocationDescLabel => 'Location Description (e.g. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medical facility transported to';

  @override
  String get incidentIntakeNoMatchingStudents => 'No matching students.';

  @override
  String get incidentIntakeNoStudentsFound => 'No students found.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No students on board, please press NEXT to continue.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No students registered for this route.';

  @override
  String get incidentIntakeOfficerNameError => 'Please enter the officer\'s name.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Officer name*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Please enter the police report number';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Police report number *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Route and driver information';

  @override
  String get incidentIntakeSearchInjuredHint => 'Search injured child...';

  @override
  String get incidentIntakeSearchStudentHint => 'Search student...';

  @override
  String get incidentIntakeSelectAll => 'Select all students';

  @override
  String get incidentIntakeSelectOnMap => 'Select on Map';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderate';

  @override
  String get incidentIntakeSeveritySevere => 'Severe';

  @override
  String get incidentIntakeSeverityTitle => 'Crash Severity Variables';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Submit Report';

  @override
  String get incidentIntakeTitle => 'Post-Crash Incident Intake';

  @override
  String get incidentIntakeTowedSubtitle => 'Did any vehicle receive disabling damage requiring it to be towed from the scene?';

  @override
  String get incidentIntakeTowedTitle => 'Vehicle towed?';

  @override
  String get incidentIntakeWasInjured => 'Was Injured?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Close up';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Driver comments / notes (optional)';

  @override
  String get dvirPreTripNoComments => 'No comments added.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signature successfully captured.';

  @override
  String get dvirPreTripSigMissing => 'Signature is missing.';

  @override
  String get dvirPreTripSignDefectWarning => 'Please sign to verify repair of previous defects.';

  @override
  String get dvirPreTripStepSignOff => 'Sign off';

  @override
  String get dvirPreTripStepSubmit => 'Submit';

  @override
  String get dvirPreTripStepVerify => 'Verify';

  @override
  String get dvirPreTripTapNext => 'Please tap NEXT to proceed.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vehicle is out of service';

  @override
  String get dvirPreTripVehicleReady => 'Vehicle is ready for service';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verified Repair Status:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Please verify that all reported defects have been repaired by checking the box next to each defect.';

  @override
  String get dvirPreTripYourComments => 'Your comments:';

  @override
  String get countryPickerNoCountries => 'No countries found';

  @override
  String get countryPickerSearchHint => 'Search by country name, code, or dial code...';

  @override
  String get countryPickerTitle => 'Select country';

  @override
  String get mapDefaultStop => 'Stop';

  @override
  String get mapEndLocation => 'End location';

  @override
  String get mapStartLocation => 'Start location';

  @override
  String get stopsNoChangesToUndo => 'No changes available to undo.';

  @override
  String get stopsNoStopsAvailable => 'No stops available.';
}
