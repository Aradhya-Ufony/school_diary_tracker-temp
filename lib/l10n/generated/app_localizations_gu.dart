import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appInfoBuild => 'બિલ્ડ નંબર';

  @override
  String get appInfoDevice => 'ઉપકરણ મોડેલ';

  @override
  String get appInfoOS => 'OS સંસ્કરણ';

  @override
  String get appInfoPackage => 'પેકેજ';

  @override
  String get appInfoTitle => 'એપ્લિકેશન માહિતી';

  @override
  String get appInfoVersion => 'એપ સંસ્કરણ';

  @override
  String get appTitleSchoolDiary => 'SD ટ્રેકર';

  @override
  String get childrenActionGuardians => 'વાલીઓ';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name માટે અધિકૃત વાલીઓ';
  }

  @override
  String get childrenNoGuardians => 'આ બાળક માટે ફાઇલ પર કોઈ અધિકૃત વાલીઓ નથી.';

  @override
  String get childrenStatusDropped => 'ડ્રોપ કર્યા';

  @override
  String get childrenStatusPending => 'બાકી';

  @override
  String get childrenStatusPicked => 'પિકઅપ કર્યા';

  @override
  String childrenTitle(Object routeName) {
    return 'બાળકો - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ગેરહાજર / બસમાં નથી ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'બસ: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'બહાર કાઢ્યા';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'બહાર કાઢ્યા: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'કોઈ વિદ્યાર્થી ગેરહાજર નથી.';

  @override
  String get drillChecklistNoStudentsOnBus => 'બસમાં કોઈ વિદ્યાર્થી નોંધાયેલ નથી.';

  @override
  String get drillChecklistNotOnBus => 'બસમાં નથી';

  @override
  String get drillChecklistOnBusNotEvacuated => 'બસમાં છે - બહાર કાઢ્યા નથી';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'બસમાં ($count)';
  }

  @override
  String get drillChecklistProceed => 'પુરાવા કેપ્ચર કરવા આગળ વધો';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'રૂટ (લાઇવ): $routeName';
  }

  @override
  String get drillChecklistTitle => 'ખાલી કરાવવાની કવાયત ચેકલિસ્ટ';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count અજાણ્યા વિદ્યાર્થી(ઓ) બાકી છે!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'શું તમે ખરેખર આ ડ્રિલ લોગ સબમિટ કરવા માંગો છો? આ ક્રિયાને પૂર્વવત્ કરી શકાતી નથી.';

  @override
  String get drillEvidenceConfirmSubmission => 'ડ્રિલ સબમિશનની પુષ્ટિ કરો';

  @override
  String get drillEvidenceDriverNotesHint => 'ડ્રિલનું અમલીકરણ, વિદ્યાર્થીનું વર્તન, બહાર નીકળવાના રસ્તાઓ અને જોવા મળેલા કોઈપણ અપવાદોનું વર્ણન કરો...';

  @override
  String get drillEvidenceDriverNotesLabel => 'ડ્રાઈવર નોંધો (ઓછામાં ઓછા 10 અક્ષરો):';

  @override
  String get drillEvidenceFailed => 'સબમિશન નિષ્ફળ ગયું';

  @override
  String get drillEvidenceMandatoryWarning => 'ડ્રિલ સબમિટ કરવા માટે ઓછામાં ઓછો 1 ફોટો અથવા વીડિયો પુરાવો ફરજિયાત છે.';

  @override
  String get drillEvidenceRecordVideo => 'વીડિયો રેકોર્ડ કરો';

  @override
  String get drillEvidenceRetrySubmission => 'ફરીથી સબમિટ કરો';

  @override
  String get drillEvidenceReturnToDashboard => 'ડેશબોર્ડ પર પાછા ફરો';

  @override
  String get drillEvidenceSubmitButton => 'ડ્રિલ લોગ સબમિટ કરો';

  @override
  String get drillEvidenceSubmitting => 'ડ્રિલ લોગ સબમિટ થઈ રહ્યો છે...';

  @override
  String get drillEvidenceSuccess => 'સબમિશન સફળ!';

  @override
  String get drillEvidenceSuccessMessage => 'ખાલી કરાવવાની કવાયત લોગ સફળતાપૂર્વક અપલોડ કરવામાં આવ્યો છે અને મંજૂરી માટે બાકી છે.';

  @override
  String get drillEvidenceTakePhoto => 'ફોટો લો';

  @override
  String get drillEvidenceTitle => 'ફરજિયાત ડ્રિલ પુરાવા';

  @override
  String get drillEvidenceUploading => 'પુરાવા અને ચેકલિસ્ટ ડેટા અપલોડ થઈ રહ્યો છે';

  @override
  String drillRosterBus(Object busNumber) {
    return 'બસ: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'ડ્રિલ: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'હાજરી પૂરો';

  @override
  String get drillRosterNoStudents => 'આ રૂટ પર કોઈ વિદ્યાર્થી નોંધાયેલ નથી.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'હાજર: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'ડ્રિલ ચેકલિસ્ટ પર આગળ વધો';

  @override
  String drillRosterRoute(Object routeName) {
    return 'રૂટ: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'સીટ: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'બધા પસંદ કરો';

  @override
  String get drillSummaryAdminNotesTitle => 'એડમિન નોંધો';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'મંજૂર કરેલ સમય: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'મંજૂર કરેલ સમય';

  @override
  String get drillSummaryBackToDrills => 'ડ્રિલ્સ પર પાછા જાઓ';

  @override
  String get drillSummaryBusNumber => 'બસ નંબર';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'દ્વારા આયોજિત: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'ડ્રિલ વિગતો';

  @override
  String get drillSummaryDriverNotesTitle => 'ડ્રાઈવર નોંધો';

  @override
  String get drillSummaryDuration => 'સમયગાળો';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes મિનિટ $seconds સેકન્ડ';
  }

  @override
  String get drillSummaryEndTime => 'સમાપ્તિ સમય';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'બહાર કાઢ્યા: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'બહાર કાઢ્યા $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'પુરાવા મીડિયા જોડાણો';

  @override
  String get drillSummaryGps => 'GPS કોઓર્ડિનેટ્સ';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'અક્ષાંશ: $lat, રેખાંશ: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'ID #$id માટે ડ્રિલ સારાંશ લોડ કરવામાં નિષ્ફળ.\n$error';
  }

  @override
  String get drillSummaryNoData => 'કોઈ ડ્રિલ ડેટા મળ્યો નથી.';

  @override
  String get drillSummaryNotOnBus => 'બસમાં નથી';

  @override
  String get drillSummaryOnBusNotEvacuated => 'બસમાં છે - બહાર કાઢ્યા નથી';

  @override
  String get drillSummaryPhotoEvidence => 'ફોટો પુરાવા';

  @override
  String get drillSummaryRouteId => 'રૂટ ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'સીટ: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'શરૂઆતનો સમય';

  @override
  String get drillSummaryStatus => 'સ્થિતિ';

  @override
  String get drillSummaryStudentLogTitle => 'વિદ્યાર્થી ખાલી કરાવવાનો લોગ';

  @override
  String drillSummaryTitle(Object id) {
    return 'ડ્રિલ સારાંશ (#$id)';
  }

  @override
  String get drillSummaryType => 'ડ્રિલનો પ્રકાર';

  @override
  String get drillSummaryVideoEvidence => 'વીડિયો પુરાવા';

  @override
  String drillTypeBus(Object busNumber) {
    return 'બસ $busNumber';
  }

  @override
  String get drillTypeClassification => 'ડ્રિલ વર્ગીકરણ પસંદ કરો:';

  @override
  String get drillTypeCustomHint => 'કસ્ટમ ખાલી કરાવવાની કવાયત પ્રકાર દાખલ કરો...';

  @override
  String get drillTypeInvalidState => 'અમાન્ય વાહન અથવા રૂટની સ્થિતિ.';

  @override
  String get drillTypeNameBusFire => 'બસમાં આગ';

  @override
  String get drillTypeNameDangerZone => 'ડેન્જર ઝોન';

  @override
  String get drillTypeNameDriverIncapacitation => 'ડ્રાઈવરની અસમર્થતા';

  @override
  String get drillTypeNameEquipmentOrientation => 'સાધનોની ઓળખ';

  @override
  String get drillTypeNameFrontDoor => 'આગળનો દરવાજો';

  @override
  String get drillTypeNameOthers => 'અન્ય';

  @override
  String get drillTypeNameRearDoor => 'પાછળનો દરવાજો';

  @override
  String get drillTypeNameSideOrRoof => 'બાજુ અથવા છત';

  @override
  String get drillTypeNameSplit => 'વિભાજીત';

  @override
  String get drillTypeNoRouteSelected => 'કોઈ રૂટ પસંદ કર્યો નથી';

  @override
  String get drillTypePreparation => 'ડ્રિલની તૈયારી';

  @override
  String get drillTypeProceed => 'વિદ્યાર્થી રોસ્ટર પર આગળ વધો';

  @override
  String drillTypeRoute(Object routeName) {
    return 'રૂટ: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'રૂટ પસંદ કરો:';

  @override
  String get drillTypeSpecifyCustom => 'ડ્રિલ પ્રકારનું વર્ણન સ્પષ્ટ કરો:';

  @override
  String get drillTypeTitle => 'ડ્રિલ પ્રકાર પસંદ કરો';

  @override
  String get drillTypeWarning => 'અમલીકરણ શરૂ કરતા પહેલા વાહન સુરક્ષિત રીતે પાર્ક કરેલું છે તેની ખાતરી કરો.';

  @override
  String get drillsAssignedVehicle => 'સોંપેલ વાહન';

  @override
  String get drillsChecking => 'તપાસી રહ્યું છે...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'ડ્રિલ #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'કોઈ બસ સોંપેલ નથી';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'બસ $busNumber માટે કોઈ ડ્રિલ નોંધવામાં આવી નથી';
  }

  @override
  String get drillsNoRoutesAvailable => 'ડ્રિલ શરૂ કરવા માટે કોઈ રૂટ ઉપલબ્ધ નથી.';

  @override
  String get drillsShowSummary => 'સારાંશ બતાવો';

  @override
  String get drillsStartDrill => 'ડ્રિલ શરૂ કરો';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'આયોજિત: $date\nસ્થિતિ: $status';
  }

  @override
  String get drillsTitle => 'ખાલી કરાવવાની કવાયતો';

  @override
  String get drillsVehicleOutOfService => 'વાહન સેવા બહાર છે';

  @override
  String get drillsVehicleOutOfServiceMessage => 'આ વાહન હાલમાં સેવા બહાર છે અને ડ્રિલ માટે તેનો ઉપયોગ કરી શકાતો નથી.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL ક્લાસ';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ડ્રાઇવિંગ લાઇસન્સ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'નામ: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'લાઇસન્સ: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'મુસાફર';

  @override
  String get driverDetailsEndorsementSchoolBus => 'સ્કૂલ બસ';

  @override
  String get driverDetailsEndorsementsTitle => 'પ્રાપ્ત સમર્થન';

  @override
  String get driverDetailsExpiryDateLabel => 'સમાપ્તિ તારીખ';

  @override
  String get driverDetailsHolderSignature => 'ધારકની સહી';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'ઇશ્યૂ તારીખ';

  @override
  String get driverDetailsLicenseDocTitle => 'લાયસન્સ દસ્તાવેજ';

  @override
  String get driverDetailsLicenseNoLabel => 'લાયસન્સ નં';

  @override
  String get driverDetailsLicenseTitle => 'લાયસન્સ વિગતો';

  @override
  String get driverDetailsLicenseTypeLabel => 'લાયસન્સ પ્રકાર';

  @override
  String get driverDetailsOfficialSeal => 'સત્તાવાર મહોર';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'ક્લાસ: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'જન્મતારીખ: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'સમર્થન: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'સમાપ્તિ: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'લાયસન્સ નં: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'નામ: $name';
  }

  @override
  String get driverDetailsTapToView => 'DL દસ્તાવેજ જોવા માટે ટેપ કરો';

  @override
  String get driverDetailsTitle => 'ડ્રાઈવરની વિગતો';

  @override
  String get dvirCategoryBusSafetySystems => 'બસ-વિશિષ્ટ સુરક્ષા સિસ્ટમ્સ';

  @override
  String get dvirCategoryCouplingDevices => 'કપ્લિંગ સાધનો';

  @override
  String get dvirCategoryEmergencyEquipment => 'ઇમરજન્સી સાધનો';

  @override
  String get dvirCategoryHorn => 'હોર્ન';

  @override
  String get dvirCategoryLightingReflectors => 'લાઇટિંગ સાધનો અને રિફ્લેક્ટર';

  @override
  String get dvirCategoryMirrors => 'રીઅર-વિઝન અરીસાઓ';

  @override
  String get dvirCategoryParkingBrake => 'પાર્કિંગ બ્રેક';

  @override
  String get dvirCategoryPassengerSeating => 'પેસેન્જર બેઠક અને નિયંત્રણો';

  @override
  String get dvirCategoryServiceBrakes => 'સર્વિસ બ્રેક્સ';

  @override
  String get dvirCategorySteeringMechanism => 'સ્ટીયરિંગ મિકેનિઝમ';

  @override
  String get dvirCategoryTires => 'ટાયર';

  @override
  String get dvirCategoryWheelsRims => 'વ્હીલ્સ અને રિમ્સ્';

  @override
  String get dvirCategoryWipers => 'વિન્ડશિલ્ડ વાઇપર્સ';

  @override
  String get dvirPostTripCapturePhoto => 'ખામીનો ફોટો કેપ્ચર કરો';

  @override
  String get dvirPostTripComplianceTitle => 'પાલન પ્રમાણપત્ર';

  @override
  String get dvirPostTripDefectButton => 'ખામી';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'ફોટો વિના ખામીની જાણ કરવી';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'ચેતવણી: તમે ફોટો જોડ્યા વિના સેફ્ટી ઝોન ($zones) પર ખામીની જાણ કરી રહ્યાં છો. શું તમને ખાતરી છે કે તમે કોઈપણ રીતે સબમિટ કરવા માંગો છો?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'નિરીક્ષણ: બસ $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'સુરક્ષા સમસ્યાની વિગતો દાખલ કરો...';

  @override
  String get dvirPostTripNotesLabel => 'નોંધો (ખામી પર ફરજિયાત) અને ફોટો';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'સુરક્ષા સમસ્યાની વિગતો દાખલ કરવા માટે ખામી પસંદ કરો...';

  @override
  String get dvirPostTripOdometerHeader => 'વર્તમાન ઓડોમીટર રીડિંગ';

  @override
  String get dvirPostTripOdometerInstructions => 'બસ ઇન્સ્ટ્રુમેન્ટ પેનલ પર બતાવ્યા પ્રમાણે બરાબર માઇલેજ રીડિંગ દાખલ કરો:';

  @override
  String get dvirPostTripOdometerLabel => 'ઓડોમીટર (માઇલ)';

  @override
  String get dvirPostTripOdometerTitle => 'વાહન રન ટાઈમ મેટ્રિક';

  @override
  String get dvirPostTripOdometerWarning => 'આગળ વધતા પહેલા કૃપા કરીને ઓડોમીટર રીડિંગ દાખલ કરો.';

  @override
  String get dvirPostTripPassButton => 'પાસ';

  @override
  String get dvirPostTripPhotoAttached => 'ફોટો સફળતાપૂર્વક જોડાયેલ છે.';

  @override
  String get dvirPostTripProgressLabel => 'નિરીક્ષણ પ્રગતિ';

  @override
  String get dvirPostTripSignatureCaptured => 'સહી કેપ્ચર કરી.';

  @override
  String get dvirPostTripSignatureCert => 'હું પ્રમાણિત કરું છું કે આ વાહનનું વોકઅરાઉન્ડ નિરીક્ષણ રિપોર્ટ FMCSA 396.11 નિયમોના પાલનમાં પૂર્ણ કરવામાં આવ્યો છે.';

  @override
  String get dvirPostTripSignatureTitle => 'ડ્રાઈવરની સહી ચકાસણી';

  @override
  String get dvirPostTripSubmitButton => 'નિરીક્ષણ સબમિટ કરો';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR સફળતાપૂર્વક સબમિટ થયો.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ઝોન $current / $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ઝોન';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'હું સ્વીકારું છું કે મેં છેલ્લો સબમિટ કરેલ ખામી રિપોર્ટ તપાસ્યો છે અને સમારકામ (જો કોઈ હોય તો) ચકાસ્યું છે અને જણાવું છું કે બસ સંચાલન માટે સુરક્ષિત છે.';

  @override
  String get dvirPreTripActiveMessage => 'આ વાહન સક્રિય છે અને તેમાં કોઈ ખામી નથી. તે ચકાસાયેલ છે અને સંચાલન માટે સુરક્ષિત છે.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'સક્રિય રૂટ: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ધ્યાન જરૂરી: અગાઉના દિવસની ખામીઓ નોંધવામાં આવી';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'બસ નંબર: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'વાહન ડિસ્પેચ ચેક';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'સહી કરવામાં નિષ્ફળ: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'અગાઉની કોઈ ખામીઓ નોંધવામાં આવી નથી';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'અગાઉની પોસ્ટ-ટ્રિપ શિફ્ટ નિરીક્ષણમાં આ વાહન સ્વચ્છ હોવાનું નોંધવામાં આવ્યું હતું.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'સલામત કામગીરી માટે કોઈ સમારકામની જરૂર નથી.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'આ વાહન સમારકામ/જાળવણી માટે સેવા બહાર છે. મોકલતા પહેલા દુકાનના કર્મચારીઓ દ્વારા સુરક્ષા સમસ્યાઓનું નિરાકરણ લાવવું આવશ્યક છે.';

  @override
  String get dvirPreTripOutofServiceButton => 'વાહન સેવા બહાર છે';

  @override
  String dvirPreTripReason(Object reason) {
    return 'કારણ: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (રિપેર કરેલ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'નવી ખામીઓની જાણ કરો';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'સમારકામ દરમિયાન નવી ખામીઓની જાણ કરવાનું અક્ષમ છે.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'સ્થિતિ: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'ટ્રાન્સપોર્ટ સબ-એડમિન રિઝોલ્યુશન';

  @override
  String get dvirPreTripReturnToHomeButton => 'હોમ પર પાછા ફરો';

  @override
  String get dvirPreTripSignOffTitle => 'વોકઅરાઉન્ડમાં આગળ વધવા માટે સાઇન-ઓફ';

  @override
  String get dvirPreTripSignedSuccess => 'ચકાસણી પર સફળતાપૂર્વક સહી કરવામાં આવી. પ્રી-ટ્રિપ અનલોક થઈ.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ચકાસણી સબમિટ કરો';

  @override
  String get dvirPreTripTitle => 'પ્રી-ટ્રિપ ચકાસણી';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'વાહનની સ્થિતિ: $status';
  }

  @override
  String get dvirSigDrawTitle => 'સહી કરો';

  @override
  String get dvirSigPreviewLabel => 'કેપ્ચર કરેલ સહીનું પૂર્વાવલોકન:';

  @override
  String get dvirSigRedraw => 'ફરીથી દોરો';

  @override
  String get dvirSigSave => 'સહી સાચવો';

  @override
  String get dvirSigTapToDraw => 'સહી કરવા માટે ટેપ કરો (ફરજિયાત)';

  @override
  String get dvirSigWatermark => 'ઊભી સહી કરો (નીચેથી ઉપર)';

  @override
  String get forgotPasswordCancel => 'રદ કરો';

  @override
  String get forgotPasswordEmailLabel => 'ઇમેઇલ';

  @override
  String get forgotPasswordInvalidEmail => 'કૃપા કરીને માન્ય ઇમેઇલ દાખલ કરો';

  @override
  String get forgotPasswordSend => 'મોકલો';

  @override
  String get forgotPasswordSuccess => 'જો તે ઇમેઇલ અસ્તિત્વમાં છે, તો રીસેટ લિંક મોકલવામાં આવી છે.';

  @override
  String get genericBack => 'પાછળ';

  @override
  String get genericCancel => 'રદ કરો';

  @override
  String get genericClear => 'સાફ કરો';

  @override
  String get genericClose => 'બંધ કરો';

  @override
  String get genericConfirm => 'પુષ્ટિ કરો';

  @override
  String get genericEdit => 'સંપાદિત કરો';

  @override
  String get genericError => 'કંઈક ખોટું થયું છે';

  @override
  String get genericLoading => 'લોડ થઈ રહ્યું છે...';

  @override
  String get genericNext => 'આગળ';

  @override
  String get genericOk => 'બરાબર';

  @override
  String get genericRetry => 'ફરી પ્રયાસ કરો';

  @override
  String get genericSuccess => 'સફળ';

  @override
  String homeBusLabel(Object busId) {
    return 'બસ: $busId';
  }

  @override
  String get homeDispatchBlocked => 'ડિસ્પેચ અવરોધિત';

  @override
  String get homeDispatchBlockedTitle => 'ડિસ્પેચ અવરોધિત';

  @override
  String get homeErrorNoRoutesPreTrip => 'પ્રી-ટ્રિપ કરવા માટે કોઈ રૂટ ઉપલબ્ધ નથી.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'સર્વર પર ટ્રિપ શરૂ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String homeHi(Object name) {
    return 'નમસ્તે, $name';
  }

  @override
  String get homeLogout => 'લૉગ આઉટ';

  @override
  String get homeMenuAppInfo => 'એપ માહિતી';

  @override
  String get homeMenuDrill => 'ડ્રિલ';

  @override
  String get homeMenuDriverDetails => 'ડ્રાઈવર વિગતો';

  @override
  String get homeMenuLanguage => 'ભાષા';

  @override
  String get homeMenuPreTrip => 'પ્રી-ટ્રિપ નિરીક્ષણ';

  @override
  String get homeNoRoutes => 'કોઈ રૂટ ઉપલબ્ધ નથી';

  @override
  String get homeReviewVerifyPreTrip => 'પ્રી-ટ્રિપની સમીક્ષા અને ચકાસણી કરો';

  @override
  String get homeSearchHint => 'રૂટ્સ શોધો';

  @override
  String get homeStart => 'શરૂ કરો';

  @override
  String get homeTitle => 'હોમ';

  @override
  String get homeVehicleOutOfServiceDefault => 'વાહન હાલમાં સેવા બહાર છે.';

  @override
  String get homeVehicleReady => 'વાહન તૈયાર છે અને સલામત સંચાલન માટે ચકાસાયેલ છે.';

  @override
  String get languageTitle => 'ભાષા';

  @override
  String get loginButton => 'લૉગિન';

  @override
  String get loginEmailOrPhoneLabel => 'ઇમેઇલ અથવા ફોન નંબર';

  @override
  String get loginErrorEnterPassword => 'કૃપા કરીને પાસવર્ડ દાખલ કરો';

  @override
  String get loginErrorEnterUsername => 'કૃપા કરીને વપરાશકર્તા નામ દાખલ કરો';

  @override
  String get loginErrorFailed => 'લૉગિન નિષ્ફળ ગયું. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'કૃપા કરીને માન્ય ઇમેઇલ અથવા ફોન નંબર દાખલ કરો';

  @override
  String get loginForgotPassword => 'પાસવર્ડ ભૂલી ગયા છો?';

  @override
  String get loginPasswordLabel => 'પાસવર્ડ';

  @override
  String get mapChildrenTooltip => 'બાળકો અને વાલીઓ';

  @override
  String get mapConfirmMessage => 'શું તમે ખરેખર ટ્રિપ બંધ કરવા માંગો છો?';

  @override
  String get mapConfirmTitle => 'પુષ્ટિ કરો';

  @override
  String get mapCurrentPosition => 'વર્તમાન સ્થાન';

  @override
  String get mapNo => 'ના';

  @override
  String get mapReconnectMessage => 'સ્થાન અપડેટ વારંવાર નિષ્ફળ જાય છે, કૃપા કરીને તમારું ઇન્ટરનેટ તપાસો.';

  @override
  String get mapReconnectTitle => 'ટ્રેકર';

  @override
  String get mapStop => 'થોભો';

  @override
  String get mapStopping => 'થોભી રહ્યું છે...';

  @override
  String get mapStopsTooltip => 'સ્ટોપ્સ';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds સેકન્ડ પહેલાં અપડેટ કરેલ';
  }

  @override
  String get mapWaitingGps => 'GPS ની રાહ જોઈ રહ્યું છે...';

  @override
  String get mapYes => 'હા';

  @override
  String get splashDriverApp => 'ડ્રાઈવર એપ';

  @override
  String get stopsActionUndo => 'પૂર્વવત્ કરો';

  @override
  String get stopsCancelledSuccess => 'સફળતાપૂર્વક રદ કર્યું';

  @override
  String get stopsDefaultLabel => 'સ્ટોપ';

  @override
  String get stopsGenericError => 'કંઈક ખોટું થયું છે. કૃપા કરીને ફરી પ્રયાસ કરો.';

  @override
  String get stopsStatusComplete => 'પૂર્ણ';

  @override
  String get stopsStatusDone => 'થઈ ગયું';

  @override
  String stopsSubmitCount(Object count) {
    return 'સબમિટ કરો ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'સફળતાપૂર્વક સબમિટ કર્યું';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected પસંદ કરેલ · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'ડ્રોપ';

  @override
  String get stopsTypePick => 'પિકઅપ';

  @override
  String stopsUndoCount(Object count) {
    return 'પૂર્વવત્ કરો ($count)';
  }

  @override
  String get stopsUndoTooltip => 'પિકઅપ/ડ્રોપ પૂર્વવત્ કરો';

  @override
  String get tripConfirmCancel => 'રદ કરો';

  @override
  String get tripConfirmOk => 'બરાબર';

  @override
  String get tripConfirmTitle => 'ટ્રેકર';

  @override
  String get tripErrorLocationRequired => 'ટ્રિપ શરૂ કરવા માટે સ્થાન પરવાનગી જરૂરી છે.';

  @override
  String get homeMenuPostCrashReporting => 'અકસ્માત પછીનો રિપોર્ટ';

  @override
  String homeVehicleReason(Object reason) {
    return 'કારણ: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'સ્થિતિ: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'અક્ષાંશ: $lat, રેખાંશ: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'સ્થાન શોધો (દા.ત. માર્કેટ સ્ટ્રીટ)';

  @override
  String get crashLocationPickerTitle => 'નકશા પર સ્થાન પસંદ કરો';

  @override
  String get crashLocationPickerTooltip => 'સ્થાનની પુષ્ટિ કરો';

  @override
  String get incidentDashboardDescription => 'ઘટના વ્યવસ્થાપન સાથે આગળ વધવા માટે અથવા અગાઉના અહેવાલો જોવા માટે ક્રિયા પસંદ કરો.';

  @override
  String get incidentDashboardHeadline => 'અકસ્માત પછીની ઘટનાનો અહેવાલ';

  @override
  String get incidentDashboardLogNew => 'નવો અકસ્માત લોગ કરો';

  @override
  String get incidentDashboardLogNewSubtitle => 'નવો સ્ટેપ-બાય-સ્ટેપ ક્રેશ રિપોર્ટ શરૂ કરો';

  @override
  String get incidentDashboardTitle => 'અકસ્માત પછીની ઘટના';

  @override
  String get incidentDashboardViewHistory => 'ઇતિહાસ જુઓ';

  @override
  String get incidentDashboardViewHistorySubtitle => 'અગાઉના ક્રેશ અહેવાલો અને સ્થિતિ જુઓ';

  @override
  String get incidentDetailsAdminLetter => 'એડમિન લેટર';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT આલ્કોહોલ ટેસ્ટ કાઉન્ટડાઉન (2-કલાક મર્યાદા)';

  @override
  String get incidentDetailsBranchId => 'બ્રાન્ચ ID';

  @override
  String get incidentDetailsBusPlate => 'બસ લાઇસન્સ નંબર';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'ચલણની અસર: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'ડ્રાઈવરને ચલણ જારી કરાયું';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'કોઓર્ડિનેટ્સ: અક્ષાંશ $lat, રેખાંશ $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title ક્લિપબોર્ડ પર કૉપિ કર્યું!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'ક્લિપબોર્ડ પર કૉપિ કરો';

  @override
  String get incidentDetailsCrashCitationInfo => 'અકસ્માત અને ચલણ માહિતી';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'તારીખ અને સમય: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE રિપોર્ટ';

  @override
  String get incidentDetailsDoeReportTitle => 'રાજ્ય DOE રિપોર્ટ (વૈકલ્પિક)';

  @override
  String get incidentDetailsDriverNotes => 'ડ્રાઈવરની નોંધો:';

  @override
  String get incidentDetailsDriverUserId => 'ડ્રાઈવર વપરાશકર્તા ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT ડ્રગ ટેસ્ટ કાઉન્ટડાઉન (8-કલાક મર્યાદા)';

  @override
  String get incidentDetailsFatalityOccurred => 'જાનહાનિ થઈ';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'ઘટના #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'તબીબી સારવારની જરૂર હોય તેવી ઇજાઓ';

  @override
  String get incidentDetailsLawEnforcement => 'કાયદા અમલીકરણ એજન્સી';

  @override
  String get incidentDetailsLoadFailed => 'વિગતો લોડ કરવામાં નિષ્ફળ.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'સ્થાન: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'મીડિયા જોડાણો';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'સ્થિતિ: $status';
  }

  @override
  String get incidentDetailsNo => 'ના';

  @override
  String get incidentDetailsNoMediaAttachments => 'કોઈ ફોટા અથવા વીડિયો જોડાયેલ નથી.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'ઘટના દરમિયાન બસમાં કોઈ વિદ્યાર્થીઓને નોંધવામાં આવ્યા ન હતા.';

  @override
  String get incidentDetailsNotificationsDesc => 'સૂચના અહેવાલો બનાવો અને જિલ્લા નિરીક્ષકો અથવા વહીવટને ટેમ્પલેટ કરેલા પત્રો મોકલો.';

  @override
  String get incidentDetailsNotificationsTitle => 'ટ્રાન્સમિટલ સૂચનાઓ';

  @override
  String get incidentDetailsOfficer => 'અધિકારીની વિગતો';

  @override
  String get incidentDetailsPoliceReport => 'પોલીસ રિપોર્ટ નંબર';

  @override
  String get incidentDetailsPrePopulatedLetter => 'પહેલાથી ભરેલો ટ્રાન્સમિશન પત્ર:';

  @override
  String get incidentDetailsRegulatoryBasis => 'નિયમનકારી આધાર:';

  @override
  String get incidentDetailsRouteId => 'રૂટ ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'શાળા એડમિન સૂચના';

  @override
  String get incidentDetailsStatusPending => 'બાકી છે';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'વિગતો: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'ઇજાગ્રસ્ત';

  @override
  String get incidentDetailsStudentNoInjury => 'કોઈ ઈજા નથી';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'ગંભીરતા: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'અહીં લઈ જવામાં આવ્યા: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'બસમાં સવાર વિદ્યાર્થીઓ ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT અકસ્માત પછીની ટેસ્ટિંગ જરૂરી';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'સ્થિતિ: $status';
  }

  @override
  String get incidentDetailsTitle => 'ઘટનાની વિગતો';

  @override
  String get incidentDetailsVehicleTowed => 'વાહન ટો કરવામાં આવ્યું';

  @override
  String get incidentDetailsYes => 'હા';

  @override
  String get incidentHistoryEmpty => 'આ વાહન માટે કોઈ ઘટના લોગ નોંધાયેલા નથી.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'લોગ મેળવવામાં નિષ્ફળ: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'સમય: $time બસ: $busNumber ટેસ્ટિંગ: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'ઘટના #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'જરૂરી નથી';

  @override
  String get incidentHistoryTestingRequired => 'જરૂરી છે';

  @override
  String get incidentHistoryTitle => 'અકસ્માત પછીની ઘટના રજિસ્ટ્રી';

  @override
  String get incidentIntakeAddAnotherPhoto => 'બીજો ફોટો ઉમેરો';

  @override
  String get incidentIntakeBadgeNumberError => 'જરૂરી છે';

  @override
  String get incidentIntakeBadgeNumberLabel => 'બેજ નંબર*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'બસ નંબર: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'ઘટના સ્થળનો ફોટો કેપ્ચર કરો';

  @override
  String get incidentIntakeCitationSubtitle => 'શું સ્કૂલ બસ ડ્રાઇવરને ચલતી ટ્રાફિકનું ઉલ્લંઘન ચલણ જારી કરવામાં આવ્યું હતું?';

  @override
  String get incidentIntakeCitationTitle => 'ચલણ જારી કરાયું?';

  @override
  String get incidentIntakeDateTimeLabel => 'અકસ્માતની તારીખ અને સમય*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT ટેસ્ટિંગ જરૂરી નથી';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT ટેસ્ટિંગ જરૂરી છે';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'ડ્રાઈવર: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'અકસ્માત અંગે કોઈ વધારાની નોંધો દાખલ કરો...';

  @override
  String get incidentIntakeDriverNotesTitle => 'ડ્રાઈવરની ઘટના નોંધો';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'રૂટ મુસાફરો લોડ કરવામાં નિષ્ફળ: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'પુરાવા જોડો (ફોટા) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'શું આ અકસ્માતના પરિણામે કોઈ જાનહાનિ થઈ છે?';

  @override
  String get incidentIntakeFatalityTitle => 'જાનહાનિ થઈ?';

  @override
  String get incidentIntakeGpsLabel => 'GPS કોઓર્ડિનેટ્સ*';

  @override
  String get incidentIntakeHistoryTooltip => 'ઇતિહાસ જુઓ';

  @override
  String get incidentIntakeInjuriesSubtitle => 'શું કોઈ વ્યક્તિને સ્થળથી દૂર તાત્કાલિક તબીબી સારવારની જરૂર પડે તેવી શારીરિક ઈજા થઈ હતી?';

  @override
  String get incidentIntakeInjuriesTitle => 'તબીબી સારવારની જરૂર હોય તેવી ઇજાઓ?';

  @override
  String get incidentIntakeInjuryNotesError => 'ઇજાગ્રસ્ત વિદ્યાર્થીઓ માટે ઇજાની નોંધો ફરજિયાત છે';

  @override
  String get incidentIntakeInjuryNotesLabel => 'ઇજાની નોંધો / વિગતો (ફરજિયાત) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'ઇજાની ગંભીરતા *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'કૃપા કરીને કાયદા અમલીકરણ એજન્સી દાખલ કરો';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'કાયદા અમલીકરણ એજન્સી (દા.ત. રાજ્ય હાઇવે પેટ્રોલ)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'કાયદા અમલીકરણ અને પોલીસ રિપોર્ટ';

  @override
  String get incidentIntakeLocationDescError => 'કૃપા કરીને સ્થાનનું વર્ણન દાખલ કરો';

  @override
  String get incidentIntakeLocationDescLabel => 'સ્થાનનું વર્ણન (દા.ત. માર્કેટ સ્ટ્રીટ અને 5મી એવન્યુ) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'તબીબી સુવિધામાં લઈ જવામાં આવ્યા';

  @override
  String get incidentIntakeNoMatchingStudents => 'કોઈ મેળ ખાતા વિદ્યાર્થીઓ નથી.';

  @override
  String get incidentIntakeNoStudentsFound => 'કોઈ વિદ્યાર્થીઓ મળ્યા નથી.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'બસમાં કોઈ વિદ્યાર્થીઓ નથી, કૃપા કરીને આગળ વધવા માટે આગળ દબાવો.';

  @override
  String get incidentIntakeNoStudentsRoute => 'આ રૂટ માટે કોઈ વિદ્યાર્થી નોંધાયેલ નથી.';

  @override
  String get incidentIntakeOfficerNameError => 'કૃપા કરીને અધિકારીનું નામ દાખલ કરો.';

  @override
  String get incidentIntakeOfficerNameLabel => 'અધિકારીનું નામ*';

  @override
  String get incidentIntakePoliceReportNumberError => 'કૃપા કરીને પોલીસ રિપોર્ટ નંબર દાખલ કરો';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'પોલીસ રિપોર્ટ નંબર *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'રૂટ: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'રૂટ અને ડ્રાઈવર માહિતી';

  @override
  String get incidentIntakeSearchInjuredHint => 'ઈજાગ્રસ્ત બાળકને શોધો...';

  @override
  String get incidentIntakeSearchStudentHint => 'વિદ્યાર્થી શોધો...';

  @override
  String get incidentIntakeSelectAll => 'બધા વિદ્યાર્થીઓ પસંદ કરો';

  @override
  String get incidentIntakeSelectOnMap => 'નકશા પર પસંદ કરો';

  @override
  String get incidentIntakeSeverityFatal => 'ઘાતક';

  @override
  String get incidentIntakeSeverityMinor => 'સામાન્ય';

  @override
  String get incidentIntakeSeverityModerate => 'મધ્યમ';

  @override
  String get incidentIntakeSeveritySevere => 'ગંભીર';

  @override
  String get incidentIntakeSeverityTitle => 'અકસ્માતની ગંભીરતાના ચલો';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'રિપોર્ટ સબમિટ કરો';

  @override
  String get incidentIntakeTitle => 'અકસ્માત પછીની ઘટનાની નોંધણી';

  @override
  String get incidentIntakeTowedSubtitle => 'શું કોઈ વાહનને નુકસાન થયું છે જેથી તેને સ્થળ પરથી ટો કરવાની જરૂર પડે?';

  @override
  String get incidentIntakeTowedTitle => 'વાહન ટો કરવામાં આવ્યું?';

  @override
  String get incidentIntakeWasInjured => 'ઇજાગ્રસ્ત થયા?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'બસ: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'બંધ કરો';

  @override
  String get dvirPreTripDriverCommentsLabel => 'ડ્રાઈવર ટિપ્પણીઓ / નોંધો (વૈકલ્પિક)';

  @override
  String get dvirPreTripNoComments => 'કોઈ ટિપ્પણીઓ ઉમેરવામાં આવી નથી.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'કારણ: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'રૂટ: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'સહી સફળતાપૂર્વક કેપ્ચર કરી.';

  @override
  String get dvirPreTripSigMissing => 'સહી ગુમ છે.';

  @override
  String get dvirPreTripSignDefectWarning => 'અગાઉની ખામીઓના સમારકામની ચકાસણી કરવા માટે કૃપા કરીને સહી કરો.';

  @override
  String get dvirPreTripStepSignOff => 'સાઇન ઑફ';

  @override
  String get dvirPreTripStepSubmit => 'સબમિટ કરો';

  @override
  String get dvirPreTripStepVerify => 'ચકાસણી કરો';

  @override
  String get dvirPreTripTapNext => 'કૃપા કરીને આગળ વધવા માટે \'આગળ\' ટેપ કરો.';

  @override
  String get dvirPreTripVehicleOutOfService => 'વાહન સેવા બહાર છે';

  @override
  String get dvirPreTripVehicleReady => 'વાહન સેવા માટે તૈયાર છે';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'ચકાસાયેલ રિપેર સ્થિતિ:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'દરેક ખામીની બાજુના બોક્સને ચેક કરીને કૃપા કરીને ચકાસો કે બધી નોંધાયેલી ખામીઓ રિપેર કરવામાં આવી છે.';

  @override
  String get dvirPreTripYourComments => 'તમારી ટિપ્પણીઓ:';

  @override
  String get countryPickerNoCountries => 'કોઈ દેશ મળ્યા નથી';

  @override
  String get countryPickerSearchHint => 'દેશના નામ, કોડ અથવા ડાયલ કોડ દ્વારા શોધો...';

  @override
  String get countryPickerTitle => 'દેશ પસંદ કરો';

  @override
  String get mapDefaultStop => 'સ્ટોપ';

  @override
  String get mapEndLocation => 'અંતિમ સ્થાન';

  @override
  String get mapStartLocation => 'શરૂઆતનું સ્થાન';

  @override
  String get stopsNoChangesToUndo => 'પૂર્વવત્ કરવા માટે કોઈ ફેરફારો ઉપલબ્ધ નથી.';

  @override
  String get stopsNoStopsAvailable => 'કોઈ સ્ટોપ્સ ઉપલબ્ધ નથી.';

  @override
  String get depotArrivalDetectedTitle => 'Depot Arrival Detected';

  @override
  String get depotArrivalDetectedMessage => 'The bus is parked at the depot. Would you like to end the trip and start the mandatory sleeping child safety check now?';

  @override
  String get depotArrivalEndTripAndStartCheck => 'End Trip & Start Check';

  @override
  String get childSafetyCheckTitle => 'Mandatory Child Safety Check';

  @override
  String get childSafetyCheckTimeExpiredTitle => 'TIME EXPIRED - DISPATCH ALERTED';

  @override
  String get childSafetyCheckMandatoryPostRouteTitle => 'MANDATORY POST-ROUTE CHECK';

  @override
  String get childSafetyCheckTimeExpiredSubtitle => 'Submit rear inspection immediately to record compliance.';

  @override
  String get childSafetyCheckMandatoryPostRouteSubtitle => 'Walk down the center aisle to the rear. Inspect under all seats.';

  @override
  String get childSafetyCheckTimeRemainingHeader => 'Time Remaining to Inspect Bus';

  @override
  String childSafetyCheckRouteLabel(String routeName) {
    return 'Route: $routeName';
  }

  @override
  String get childSafetyCheckInspectionChecklistTitle => 'Inspection Checklist';

  @override
  String get childSafetyCheckStep1 => 'Turn off vehicle engine and secure parking brake.';

  @override
  String get childSafetyCheckStep2 => 'Walk to the rear of the bus, looking under and between every seat.';

  @override
  String get childSafetyCheckStep3 => 'Verify no sleeping or unattended children remain.';

  @override
  String get childSafetyCheckStep4 => 'Reach the back row and tap Confirm to capture rear GPS fix.';

  @override
  String get childSafetyCheckResultTitle => 'Child Inspection Result';

  @override
  String get childSafetyCheckAllClear => 'All Clear';

  @override
  String get childSafetyCheckChildFound => 'Child Found';

  @override
  String get childSafetyCheckNumberOfChildrenFound => 'Number of Children Found: ';

  @override
  String get childSafetyCheckChildDetailsLabel => 'Child details & seat location *';

  @override
  String get childSafetyCheckChildDetailsHint => 'e.g., Student found sleeping in Row 4 left seat. Safe and awake.';

  @override
  String get childSafetyCheckCapturingGps => 'Capturing Rear GPS & Submitting...';

  @override
  String get childSafetyCheckConfirmButton => 'CONFIRM REAR INSPECTION';

  @override
  String get childSafetyCheckSubmitReportButton => 'SUBMIT CHILD REPORT & REAR CHECK';

  @override
  String get childSafetyCheckNotesRequiredWarning => 'Please enter notes describing the child location.';

  @override
  String get childSafetyCheckSuccessMessage => 'Child Safety Check confirmed successfully. Rear GPS recorded.';

  @override
  String get childSafetyCheckChildReportedDialogTitle => 'Child Reported on Bus';

  @override
  String get childSafetyCheckChildReportedDialogBody => 'School dispatch and supervisors have been alerted immediately.\n\nPlease stay with the student and follow district emergency protocol. Do not leave the vehicle until authorized.';

  @override
  String get childSafetyCheckAcknowledgeProceedButton => 'Acknowledge & Proceed';
}
