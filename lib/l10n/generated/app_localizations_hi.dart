import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get genericLoading => 'लोड हो रहा है, कृपया प्रतीक्षा करें';

  @override
  String get genericError => 'क्षमा करें, हमारे सर्वर पर एक त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String get genericRetry => 'पुनः प्रयास करें';

  @override
  String get genericSuccess => 'Success';

  @override
  String get genericOk => 'Ok';

  @override
  String get loginEmailOrPhoneLabel => 'Email or phone number';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginButton => 'Login';

  @override
  String get loginForgotPassword => 'Forgot password?';

  @override
  String get loginErrorEnterUsername => 'Please enter username';

  @override
  String get loginErrorEnterPassword => 'Please enter password';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Please enter a valid email or phone number';

  @override
  String get loginErrorFailed => 'Login failed. Please try again.';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordSend => 'Send';

  @override
  String get forgotPasswordCancel => 'Cancel';

  @override
  String get forgotPasswordSuccess => 'If that email exists, a reset link has been sent.';

  @override
  String get forgotPasswordInvalidEmail => 'Please enter a valid email';

  @override
  String get homeTitle => 'Home';

  @override
  String homeHi(String name) {
    return 'Hi, $name';
  }

  @override
  String get homeSearchHint => 'Search routes';

  @override
  String get homeNoRoutes => 'No routes available';

  @override
  String get homeStart => 'Start';

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuLanguage => 'Language';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get languageTitle => 'Language';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App Version';

  @override
  String get appInfoBuild => 'Build Number';

  @override
  String get appInfoPackage => 'Package';

  @override
  String get appInfoDevice => 'Device Model';

  @override
  String get appInfoOS => 'OS Version';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripConfirmCancel => 'Cancel';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripErrorLocationRequired => 'Location permission is required to start a trip.';

  @override
  String get stopsUndoTooltip => 'Undo pick/drop';

  @override
  String stopsSubmitCount(int count) {
    return 'Submit ($count)';
  }

  @override
  String stopsUndoCount(int count) {
    return 'Undo ($count)';
  }

  @override
  String get stopsCancelledSuccess => 'Cancelled successfully';

  @override
  String get stopsSubmittedSuccess => 'Submitted successfully';

  @override
  String get stopsGenericError => 'Something went wrong. Please try again.';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String stopsSummary(int selected, int done, int total, String status) {
    return '$selected selected · $done/$total $status';
  }

  @override
  String get stopsStatusDone => 'done';

  @override
  String get stopsStatusComplete => 'complete';

  @override
  String get stopsTypePick => 'Pick';

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsActionUndo => 'Undo';

  @override
  String childrenTitle(String routeName) {
    return 'Children — $routeName';
  }

  @override
  String get childrenStatusPicked => 'Picked';

  @override
  String get childrenStatusDropped => 'Dropped';

  @override
  String get childrenStatusPending => 'Pending';

  @override
  String get childrenActionGuardians => 'Guardians';

  @override
  String get childrenNoGuardians => 'No authorized guardians on file for this child.';

  @override
  String childrenGuardiansFor(String name) {
    return 'Authorized guardians for $name';
  }

  @override
  String get mapStopsTooltip => 'Stops';

  @override
  String get mapChildrenTooltip => 'Children & guardians';

  @override
  String get mapWaitingGps => 'Waiting for GPS...';

  @override
  String mapUpdatedAgo(int seconds) {
    return 'Updated ${seconds}s ago';
  }

  @override
  String get mapConfirmTitle => 'Confirm';

  @override
  String get mapConfirmMessage => 'Do you really want to close the trip?';

  @override
  String get mapNo => 'No';

  @override
  String get mapYes => 'Yes';

  @override
  String get mapStopping => 'Stopping...';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapReconnectMessage => 'Location update failing frequently, Please check your internet.';

  @override
  String get mapCurrentPosition => 'Current Position';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get genericCancel => 'Cancel';

  @override
  String get genericConfirm => 'Confirm';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericClose => 'Close';

  @override
  String get genericBack => 'BACK';

  @override
  String get genericNext => 'NEXT';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get drillsTitle => 'Evacuation Drills';

  @override
  String get drillsAssignedVehicle => 'Assigned Vehicle';

  @override
  String get drillsNoBusAssigned => 'No Bus Assigned';

  @override
  String get drillsChecking => 'Checking...';

  @override
  String get drillsStartDrill => 'Start Drill';

  @override
  String get drillsNoRoutesAvailable => 'No routes available to start a drill.';

  @override
  String get drillsVehicleOutOfService => 'Vehicle Out of Service';

  @override
  String get drillsVehicleOutOfServiceMessage => 'This vehicle is currently out of service and cannot be used for drills.';

  @override
  String drillsNoDrillsRecorded(String busNumber) {
    return 'No drills recorded for bus $busNumber';
  }

  @override
  String drillsHeader(String id, String type) {
    return 'Drill #$id - $type';
  }

  @override
  String drillsSubtitle(String date, String status) {
    return 'Conducted: $date\nStatus: $status';
  }

  @override
  String get drillsShowSummary => 'Show Summary';

  @override
  String get drillRosterMarkAttendance => 'Mark Attendance';

  @override
  String drillRosterRoute(String routeName) {
    return 'Route: $routeName';
  }

  @override
  String drillRosterBus(String busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(String drillType) {
    return 'Drill: $drillType';
  }

  @override
  String drillRosterPresentCount(int presentCount, int totalCount) {
    return 'Present: $presentCount / $totalCount';
  }

  @override
  String get drillRosterSelectAll => 'Select All';

  @override
  String get drillRosterNoStudents => 'No students registered on this route.';

  @override
  String drillRosterSeat(String seatNumber) {
    return 'Seat: $seatNumber';
  }

  @override
  String get drillRosterProceed => 'PROCEED TO DRILL CHECKLIST';

  @override
  String drillSummaryTitle(int id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String drillSummaryLoadFailed(int id, Object error) {
    return 'Failed to load drill summary for ID #$id.\n$error';
  }

  @override
  String get drillSummaryBackToDrills => 'Back to Drills';

  @override
  String get drillSummaryNoData => 'No drill data found.';

  @override
  String drillSummaryApprovedAt(String date) {
    return 'Approved At: $date';
  }

  @override
  String drillSummaryConductedBy(String name) {
    return 'Conducted By: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill Details';

  @override
  String get drillSummaryType => 'Drill Type';

  @override
  String get drillSummaryRouteId => 'Route ID';

  @override
  String get drillSummaryBusNumber => 'Bus Number';

  @override
  String get drillSummaryStartTime => 'Start Time';

  @override
  String get drillSummaryEndTime => 'End Time';

  @override
  String get drillSummaryDuration => 'Duration';

  @override
  String drillSummaryDurationValue(int minutes, int seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryGps => 'GPS Coordinates';

  @override
  String drillSummaryGpsValue(double lat, double lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryApprovedAtLabel => 'Approved At';

  @override
  String get drillSummaryDriverNotesTitle => 'Driver Notes';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notes';

  @override
  String get drillSummaryStudentLogTitle => 'Student Evacuation Log';

  @override
  String drillSummaryEvacuatedCount(int evacuatedCount, int totalCount) {
    return 'Evacuated: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(String time) {
    return 'Evacuated $time';
  }

  @override
  String get drillSummaryOnBusNotEvacuated => 'ON BUS - NOT EVACUATED';

  @override
  String get drillSummaryNotOnBus => 'Not On Bus';

  @override
  String drillSummarySeat(String seatNumber) {
    return 'Seat: $seatNumber';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Evidence Media Attachments';

  @override
  String get drillSummaryVideoEvidence => 'Video Evidence';

  @override
  String get drillSummaryPhotoEvidence => 'Photo Evidence';

  @override
  String get drillTypeTitle => 'Select Drill Type';

  @override
  String get drillTypePreparation => 'DRILL PREPARATION';

  @override
  String drillTypeBus(String busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String drillTypeRoute(String routeName) {
    return 'Route: $routeName';
  }

  @override
  String get drillTypeNoRouteSelected => 'No Route Selected';

  @override
  String get drillTypeWarning => 'Ensure vehicle is parked safely before beginning execution.';

  @override
  String get drillTypeSelectRoute => 'Select Route:';

  @override
  String get drillTypeClassification => 'Choose drill classification:';

  @override
  String get drillTypeNameFrontDoor => 'Front Door';

  @override
  String get drillTypeNameRearDoor => 'Rear Door';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNameSideOrRoof => 'Side Or Roof';

  @override
  String get drillTypeNameBusFire => 'Bus Fire';

  @override
  String get drillTypeNameDriverIncapacitation => 'Driver Incapacitation';

  @override
  String get drillTypeNameDangerZone => 'Danger Zone';

  @override
  String get drillTypeNameEquipmentOrientation => 'Equipment Orientation';

  @override
  String get drillTypeNameOthers => 'Others';

  @override
  String get drillTypeSpecifyCustom => 'Specify Drill Type Description:';

  @override
  String get drillTypeCustomHint => 'Enter custom evacuation drill type...';

  @override
  String get drillTypeInvalidState => 'Invalid vehicle or route state.';

  @override
  String get drillTypeProceed => 'PROCEED TO STUDENT ROSTER';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirm Drill Submission';

  @override
  String get drillEvidenceConfirmMessage => 'Are you sure you want to submit this drill log? This action cannot be undone.';

  @override
  String get drillEvidenceSubmitting => 'Submitting Drill Log...';

  @override
  String get drillEvidenceUploading => 'Uploading evidence and checklist data';

  @override
  String get drillEvidenceSuccess => 'Submission Successful!';

  @override
  String get drillEvidenceFailed => 'Submission Failed';

  @override
  String get drillEvidenceSuccessMessage => 'The evacuation drill log has been successfully uploaded and is pending approval.';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN TO DASHBOARD';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY SUBMISSION';

  @override
  String get drillEvidenceTitle => 'Mandatory Drill Evidence';

  @override
  String get drillEvidenceMandatoryWarning => 'At least 1 photo or video evidence is mandatory to submit drill.';

  @override
  String get drillEvidenceTakePhoto => 'Take Photo';

  @override
  String get drillEvidenceRecordVideo => 'Record Video';

  @override
  String get drillEvidenceDriverNotesLabel => 'Driver Notes (Minimum 10 characters):';

  @override
  String get drillEvidenceDriverNotesHint => 'Describe drill execution, student behavior, exit paths used, and any exceptions observed...';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String drillChecklistOnBusTitle(int count) {
    return 'ON BUS ($count)';
  }

  @override
  String drillChecklistEvacuatedProgress(int evacuatedCount, int totalCount) {
    return 'Evacuated: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoStudentsOnBus => 'No students marked on bus.';

  @override
  String get drillChecklistEvacuated => 'Evacuated';

  @override
  String get drillChecklistOnBusNotEvacuated => 'ON BUS — NOT EVACUATED';

  @override
  String drillChecklistAbsentTitle(int count) {
    return 'ABSENT / NOT ON BUS ($count)';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No absent students.';

  @override
  String get drillChecklistNotOnBus => 'NOT ON BUS';

  @override
  String get drillChecklistTitle => 'Evacuation Drill Checklist';

  @override
  String drillChecklistUnaccountedWarning(int count) {
    return '$count Unaccounted Student(s) Remaining!';
  }

  @override
  String drillChecklistBus(String busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillChecklistRouteLive(String routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistProceed => 'PROCEED TO EVIDENCE CAPTURE';

  @override
  String get dvirPreTripSignedSuccess => 'Verification signed successfully. Pre-Trip unlocked.';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Failed to sign: $error';
  }

  @override
  String get dvirPreTripTitle => 'Pre-Trip Verification';

  @override
  String dvirPreTripVehicleStatus(String status) {
    return 'Vehicle Status: $status';
  }

  @override
  String get dvirPreTripActiveMessage => 'This vehicle is Active and has no open defects. It is verified and safe for operation.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'This vehicle is Out of Service for repairs/maintenance. Safety concerns must be resolved by shop staff before dispatch.';

  @override
  String dvirPreTripReason(String reason) {
    return 'Reason: $reason';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VEHICLE DISPATCH CHECK';

  @override
  String dvirPreTripBusNumber(String busNumber) {
    return 'Bus Number: $busNumber';
  }

  @override
  String dvirPreTripActiveRoute(String routeName) {
    return 'Active Route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENTION REQUIRED: PRIOR DAY DEFECTS LOGGED';

  @override
  String dvirPreTripRepairedDefect(String description) {
    return '$description (REPAIRED)';
  }

  @override
  String get dvirPreTripResolutionTitle => 'TRANSPORT SUB-ADMIN RESOLUTION';

  @override
  String dvirPreTripResolutionStatus(String status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripNoRepairsNeeded => 'No repairs needed for safe operation.';

  @override
  String get dvirPreTripAcknowledgmentText => 'I acknowledge that I have reviewed the last submitted defect report and verified the repairs(if any) and state that the bus is safe for operation.';

  @override
  String get dvirPreTripNoPriorDefects => 'No Prior Defects Logged';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'This vehicle was reported clean in the previous post-trip shift inspection.';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF TO PROCEED TO WALKAROUND';

  @override
  String get dvirPreTripOutofServiceButton => 'VEHICLE OUT OF SERVICE';

  @override
  String get dvirPreTripReturnToHomeButton => 'RETURN TO HOME';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SUBMIT VERIFICATION';

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORT NEW DEFECTS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Reporting new defects is disabled during repairs.';

  @override
  String get dvirPostTripPhotoAttached => 'Photo attached successfully.';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Reporting Defect Without Photo';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(String zones) {
    return 'Warning: You are reporting a defect on safety zones ($zones) without attaching a photo. Are you sure you want to submit anyway?';
  }

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR submitted successfully.';

  @override
  String dvirPostTripInspectionTitle(String busNumber) {
    return 'Inspection: Bus $busNumber';
  }

  @override
  String get dvirPostTripProgressLabel => 'Inspection Progress';

  @override
  String dvirPostTripZonesProgress(int current, int total) {
    return '$current / $total Zones';
  }

  @override
  String dvirPostTripZoneHeader(int current, int total) {
    return 'ZONE $current OF $total';
  }

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripNotesLabel => 'NOTES (MANDATORY ON DEFECT) & PHOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Select DEFECT to enter safety concern details...';

  @override
  String get dvirPostTripNotesDefectHint => 'Enter details of the safety concern...';

  @override
  String get dvirPostTripCapturePhoto => 'CAPTURE DEFECT PHOTO';

  @override
  String get dvirPostTripOdometerTitle => 'VEHICLE RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerHeader => 'Current Odometer Reading';

  @override
  String get dvirPostTripOdometerInstructions => 'Enter the mileage reading exactly as shown on the bus instrument panel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerWarning => 'Please enter the odometer reading before proceeding.';

  @override
  String get dvirPostTripComplianceTitle => 'COMPLIANCE CERTIFICATION';

  @override
  String get dvirPostTripSignatureTitle => 'Driver Signature Verification';

  @override
  String get dvirPostTripSignatureCert => 'I certify that this vehicle walkaround checklist report has been completed in compliance with FMCSA 396.11 regulations.';

  @override
  String get dvirPostTripSignatureCaptured => 'Signature captured.';

  @override
  String get dvirPostTripSubmitButton => 'SUBMIT INSPECTION';

  @override
  String get dvirCategoryServiceBrakes => 'Service Brakes';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategorySteeringMechanism => 'Steering Mechanism';

  @override
  String get dvirCategoryLightingReflectors => 'Lighting Devices & Reflectors';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryWipers => 'Windshield Wipers';

  @override
  String get dvirCategoryMirrors => 'Rear-Vision Mirrors';

  @override
  String get dvirCategoryWheelsRims => 'Wheels and Rims';

  @override
  String get dvirCategoryEmergencyEquipment => 'Emergency Equipment';

  @override
  String get dvirCategoryCouplingDevices => 'Coupling Devices';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-Specific Safety Systems';

  @override
  String get dvirCategoryPassengerSeating => 'Passenger Seating & Restraints';

  @override
  String get dvirSigDrawTitle => 'Draw Signature';

  @override
  String get dvirSigWatermark => 'Sign Vertically (Bottom to Top)';

  @override
  String get dvirSigSave => 'SAVE SIGNATURE';

  @override
  String get dvirSigPreviewLabel => 'Captured Signature Preview:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigTapToDraw => 'TAP TO DRAW SIGNATURE (REQUIRED)';

  @override
  String get driverDetailsTitle => 'Driver Details';

  @override
  String driverDetailsId(String driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsLicenseTitle => 'License Details';

  @override
  String get driverDetailsLicenseNoLabel => 'License No';

  @override
  String get driverDetailsLicenseTypeLabel => 'License Type';

  @override
  String get driverDetailsCdlClassLabel => 'CDL Class';

  @override
  String get driverDetailsIssueDateLabel => 'Issue Date';

  @override
  String get driverDetailsExpiryDateLabel => 'Expiry Date';

  @override
  String get driverDetailsEndorsementsTitle => 'Endorsements Held';

  @override
  String get driverDetailsEndorsementPassenger => 'Passenger';

  @override
  String get driverDetailsEndorsementSchoolBus => 'School Bus';

  @override
  String get driverDetailsLicenseDocTitle => 'License Document';

  @override
  String get driverDetailsDrivingLicenseLabel => 'DRIVING LICENSE';

  @override
  String driverDetailsDrivingLicenseName(String name) {
    return 'NAME: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(String licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsTapToView => 'Tap to View DL Document';

  @override
  String driverDetailsPreviewLicenseNo(String licenseNo) {
    return 'LN: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(String name) {
    return 'FN: $name';
  }

  @override
  String driverDetailsPreviewDob(String dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewClass(String cdlClass) {
    return 'CLASS: $cdlClass';
  }

  @override
  String driverDetailsPreviewEndorse(String endorsements) {
    return 'ENDORSE: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(String expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String get driverDetailsOfficialSeal => 'OFFICIAL SEAL';

  @override
  String get driverDetailsHolderSignature => 'HOLDER SIGNATURE';

  @override
  String get homeMenuDriverDetails => 'Driver Details';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuPreTrip => 'Pre-Trip Inspection';

  @override
  String get homeErrorNoRoutesPreTrip => 'No routes available to perform Pre-Trip.';

  @override
  String homeBusLabel(String busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Dispatch Blocked';

  @override
  String get homeVehicleReady => 'Vehicle is ready and verified for safe operation.';

  @override
  String get homeReviewVerifyPreTrip => 'Review & Verify Pre-Trip';

  @override
  String get homeDispatchBlockedTitle => 'Dispatch Blocked';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vehicle is currently OUT_OF_SERVICE.';

  @override
  String homeFailedToStartTrip(String error) {
    return 'Failed to start trip on server: $error';
  }
}
