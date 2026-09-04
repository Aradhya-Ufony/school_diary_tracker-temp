import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Cebuano (`ceb`).
class AppLocalizationsCeb extends AppLocalizations {
  AppLocalizationsCeb([String locale = 'ceb']) : super(locale);

  @override
  String get appInfoBuild => 'Numero sa Pagbuhat';

  @override
  String get appInfoDevice => 'Modelo sa Device';

  @override
  String get appInfoOS => 'Bersyon sa OS';

  @override
  String get appInfoPackage => 'Pakete';

  @override
  String get appInfoTitle => 'Impormasyon sa App';

  @override
  String get appInfoVersion => 'Bersyon sa App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Mga Tigbantay';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Awtorisado nga mga tigbantay alang kang $name';
  }

  @override
  String get childrenNoGuardians => 'Walay awtorisado nga mga tigbantay nga narehistro alang niini nga bata.';

  @override
  String get childrenStatusDropped => 'Gihulog';

  @override
  String get childrenStatusPending => 'Naghuwat';

  @override
  String get childrenStatusPicked => 'Gipunit';

  @override
  String childrenTitle(Object routeName) {
    return 'Mga Bata — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'WALA / WALA SA BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Gipabakwit';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Gipabakwit: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Walay absent nga mga estudyante.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Walay mga estudyante nga gimarkahan sa bus.';

  @override
  String get drillChecklistNotOnBus => 'WALA SA BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'SA BUS — WALA GIPABAKWIT';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'SA BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'IPADAYON SA PAGKUHA SA EVIDENSYA';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rota (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Checklist sa Evacuation Drill';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Wala Ma-account nga Estudyante(s) Nabilin!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Sigurado ka ba nga gusto nimong isumite kini nga drill log? Kini nga aksyon dili na mabawi.';

  @override
  String get drillEvidenceConfirmSubmission => 'Kumpirmahi ang Pagsumite sa Drill';

  @override
  String get drillEvidenceDriverNotesHint => 'Ihulagway ang pagpatuman sa drill, kinaiya sa estudyante, mga agianan sa paggawas nga gigamit, ug bisan unsang mga eksepsiyon nga naobserbahan...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Mga Nota sa Driver (Minimum 10 ka karakter):';

  @override
  String get drillEvidenceFailed => 'Napakyas ang Pagsumite';

  @override
  String get drillEvidenceMandatoryWarning => 'Kinahanglan ang labing menos 1 ka litrato o video nga ebidensya aron isumite ang drill.';

  @override
  String get drillEvidenceRecordVideo => 'Irehistro ang Video';

  @override
  String get drillEvidenceRetrySubmission => 'SULAYI PAG-USAB ANG PAGSUMITE';

  @override
  String get drillEvidenceReturnToDashboard => 'BALIK SA DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'ISUMITE ANG DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'Gisumite ang Drill Log...';

  @override
  String get drillEvidenceSuccess => 'Malampuson ang Pagsumite!';

  @override
  String get drillEvidenceSuccessMessage => 'Ang evacuation drill log malampusong na-upload ug naghuwat sa pag-apruba.';

  @override
  String get drillEvidenceTakePhoto => 'Pagkuha og Litrato';

  @override
  String get drillEvidenceTitle => 'Mandatory nga Ebidensya sa Drill';

  @override
  String get drillEvidenceUploading => 'Gi-upload ang ebidensya ug data sa checklist';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Markahi ang Pagtambong';

  @override
  String get drillRosterNoStudents => 'Walay mga estudyante nga narehistro niini nga ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'IPADAYON SA DRILL CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rota: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Lingkoranan: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Pilia Tanan';

  @override
  String get drillSummaryAdminNotesTitle => 'Mga Nota sa Admin';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Gi-aprobahan Sa: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Gi-aprobahan Sa';

  @override
  String get drillSummaryBackToDrills => 'Balik sa mga Drills';

  @override
  String get drillSummaryBusNumber => 'Numero sa Bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Gipahigayon Ni: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Mga Detalye sa Drill';

  @override
  String get drillSummaryDriverNotesTitle => 'Mga Nota sa Driver';

  @override
  String get drillSummaryDuration => 'Gidugayon';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds seg';
  }

  @override
  String get drillSummaryEndTime => 'Oras sa Pagtapos';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Gipabakwit: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Gipabakwit $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Mga Attachment sa Media sa Ebidensya';

  @override
  String get drillSummaryGps => 'Mga Koordinasyon sa GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Napakyas sa pag-load sa summary sa drill alang sa ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Walay nakit-an nga data sa drill.';

  @override
  String get drillSummaryNotOnBus => 'Wala Sa Bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'SA BUS - WALA GIPABAKWIT';

  @override
  String get drillSummaryPhotoEvidence => 'Ebidensya sa Litrato';

  @override
  String get drillSummaryRouteId => 'ID sa Rota';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Lingkoranan: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Oras sa Pagsugod';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Log sa Evacuation sa Estudyante';

  @override
  String drillSummaryTitle(Object id) {
    return 'Summary sa Drill (#$id)';
  }

  @override
  String get drillSummaryType => 'Klase sa Drill';

  @override
  String get drillSummaryVideoEvidence => 'Ebidensya sa Video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Pilia ang klasipikasyon sa drill:';

  @override
  String get drillTypeCustomHint => 'Isulod ang custom nga klase sa evacuation drill...';

  @override
  String get drillTypeInvalidState => 'Dili balido nga estado sa sakyanan o ruta.';

  @override
  String get drillTypeNameBusFire => 'Sunog sa Bus';

  @override
  String get drillTypeNameDangerZone => 'Delikado nga Sona';

  @override
  String get drillTypeNameDriverIncapacitation => 'Pagka-incapacitate sa Driver';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientasyon sa Kagamitan';

  @override
  String get drillTypeNameFrontDoor => 'Pultahan sa Atubangan';

  @override
  String get drillTypeNameOthers => 'Uban pa';

  @override
  String get drillTypeNameRearDoor => 'Pultahan sa Luyo';

  @override
  String get drillTypeNameSideOrRoof => 'Kilid O Atop';

  @override
  String get drillTypeNameSplit => 'Gibahin';

  @override
  String get drillTypeNoRouteSelected => 'Walay Ruta nga Napili';

  @override
  String get drillTypePreparation => 'PAGPANGANDAM SA DRILL';

  @override
  String get drillTypeProceed => 'IPADAYON SA ROSTER SA ESTUDYANTE';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rota: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Pilia ang Ruta:';

  @override
  String get drillTypeSpecifyCustom => 'Ipiho ang Deskripsyon sa Klase sa Drill:';

  @override
  String get drillTypeTitle => 'Pilia ang Klase sa Drill';

  @override
  String get drillTypeWarning => 'Siguroha nga ang sakyanan nakaparada nga luwas sa dili pa magsugod sa pagpatuman.';

  @override
  String get drillsAssignedVehicle => 'Gi-assign nga Sakyanan';

  @override
  String get drillsChecking => 'Gisusi...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Walay Bus nga Gi-assign';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Walay mga drills nga narekord alang sa bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Walay mga ruta nga anaa aron magsugod og drill.';

  @override
  String get drillsShowSummary => 'Ipakita ang Summary';

  @override
  String get drillsStartDrill => 'Sugdi ang Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Gipahigayon: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Mga Evacuation Drills';

  @override
  String get drillsVehicleOutOfService => 'Sakyanan Wala sa Serbisyo';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Kini nga sakyanan kasamtangang wala sa serbisyo ug dili magamit alang sa mga drills.';

  @override
  String get driverDetailsCdlClassLabel => 'Klase sa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LISENSYA SA PAGMANEHO';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NGALAN: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIS: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasahero';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Bus sa Eskwelahan';

  @override
  String get driverDetailsEndorsementsTitle => 'Mga Endorsement nga Gihuptan';

  @override
  String get driverDetailsExpiryDateLabel => 'Petsa sa Pag-expire';

  @override
  String get driverDetailsHolderSignature => 'PIRMA SA NAGHUPOT';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Petsa sa Pag-isyu';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokumento sa Lisensya';

  @override
  String get driverDetailsLicenseNoLabel => 'Numero sa Lisensya';

  @override
  String get driverDetailsLicenseTitle => 'Mga Detalye sa Lisensya';

  @override
  String get driverDetailsLicenseTypeLabel => 'Klase sa Lisensya';

  @override
  String get driverDetailsOfficialSeal => 'OPISYAL NGA SELYADO';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLASE: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Petsa sa Pagkatawo: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORSO: $endorsements';
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
  String get driverDetailsTapToView => 'Pindota aron Tan-awon ang Dokumento sa DL';

  @override
  String get driverDetailsTitle => 'Mga Detalye sa Driver';

  @override
  String get dvirCategoryBusSafetySystems => 'Mga Sistema sa Kaluwasan nga Espesipiko sa Bus';

  @override
  String get dvirCategoryCouplingDevices => 'Mga Device sa Pagkonektar';

  @override
  String get dvirCategoryEmergencyEquipment => 'Kagamitan sa Emerhensya';

  @override
  String get dvirCategoryHorn => 'Baho';

  @override
  String get dvirCategoryLightingReflectors => 'Mga Device sa Pagdan-ag ug Reflector';

  @override
  String get dvirCategoryMirrors => 'Mga Salamin sa Luyo';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Paglingkod ug Restraints sa Pasahero';

  @override
  String get dvirCategoryServiceBrakes => 'Mga Service Brake';

  @override
  String get dvirCategorySteeringMechanism => 'Mekanismo sa Pagmaneho';

  @override
  String get dvirCategoryTires => 'Mga Ligid';

  @override
  String get dvirCategoryWheelsRims => 'Mga Ligid ug Rims';

  @override
  String get dvirCategoryWipers => 'Mga Wiper sa Windshield';

  @override
  String get dvirPostTripCapturePhoto => 'KUHA OG LITRATO SA DEPEKTO';

  @override
  String get dvirPostTripComplianceTitle => 'SERTIPIKASYON SA PAGSUNOD';

  @override
  String get dvirPostTripDefectButton => 'DEPEKTO';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Pagreport sa Depekto nga Walay Litrato';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Pahimangno: Nagreport ka og depekto sa mga safety zone ($zones) nga walay gilakip nga litrato. Sigurado ka ba nga gusto nimong isumite gihapon?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspeksyon: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Isulod ang mga detalye sa kabalaka sa kaluwasan...';

  @override
  String get dvirPostTripNotesLabel => 'MGA NOTA (MANDATORY SA DEPEKTO) & LITRATO';

  @override
  String get dvirPostTripNotesPassedHint => 'Pilia ang DEPEKTO aron isulod ang mga detalye sa kabalaka sa kaluwasan...';

  @override
  String get dvirPostTripOdometerHeader => 'Kasalukuyang Pagbasa sa Odometer';

  @override
  String get dvirPostTripOdometerInstructions => 'Isulod ang pagbasa sa mileage eksakto sama sa gipakita sa instrument panel sa bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Milya)';

  @override
  String get dvirPostTripOdometerTitle => 'METRIC SA ORAS SA PAGDAGAN SA SAKYANAN';

  @override
  String get dvirPostTripOdometerWarning => 'Palihug isulod ang pagbasa sa odometer sa dili pa mopadayon.';

  @override
  String get dvirPostTripPassButton => 'PASAR';

  @override
  String get dvirPostTripPhotoAttached => 'Malampusong gilakip ang litrato.';

  @override
  String get dvirPostTripProgressLabel => 'Progress sa Inspeksyon';

  @override
  String get dvirPostTripSignatureCaptured => 'Nakuha ang pirma.';

  @override
  String get dvirPostTripSignatureCert => 'Ako nagpamatuod nga kini nga report sa checklist sa paglakaw-lakaw sa sakyanan nahuman subay sa mga regulasyon sa FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Pag-verify sa Pirma sa Driver';

  @override
  String get dvirPostTripSubmitButton => 'ISUMITE ANG INSPEKSYON';

  @override
  String get dvirPostTripSubmitSuccess => 'Malampusong gisumite ang eDVIR.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'SONA $current SA $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total nga mga Sona';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ako nagpamatuod nga akong nasusi ang katapusang gisumite nga report sa depekto ug napamatud-an ang mga pag-ayo (kung aduna man) ug nagpahayag nga ang bus luwas alang sa operasyon.';

  @override
  String get dvirPreTripActiveMessage => 'Kini nga sakyanan Aktibo ug walay bukas nga depekto. Kini napamatud-an ug luwas alang sa operasyon.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktibo nga Ruta: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'KINAHANGLAN ANG PAGTAGAD: MGA DEPEKTO SA MIAGING ADLAW NGA NALISTA';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numero sa Bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'PAGSusi SA DISPATCH SA SAKYANAN';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Napakyas sa pagpirma: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Walay Nalista nga mga Depekto Kaniadto';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Kini nga sakyanan gi-report nga limpyo sa miaging post-trip shift inspection.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Walay kinahanglan nga pag-ayo alang sa luwas nga operasyon.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Kini nga sakyanan Wala sa Serbisyo alang sa pag-ayo/maintenance. Ang mga kabalaka sa kaluwasan kinahanglang sulbaron sa mga kawani sa tindahan sa dili pa ipadala.';

  @override
  String get dvirPreTripOutofServiceButton => 'SAKYANAN WALA SA SERBISYO';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Rason: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (GI-AYO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'I-REPORT ANG BAG-ONG MGA DEPEKTO';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Ang pagreport sa bag-ong mga depekto gi-disable atol sa pag-ayo.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RESOLUSYON SA TRANSPORT SUB-ADMIN';

  @override
  String get dvirPreTripReturnToHomeButton => 'BALIK SA HOME';

  @override
  String get dvirPreTripSignOffTitle => 'PIRMAHI ARON MOPADAYON SA WALKAROUND';

  @override
  String get dvirPreTripSignedSuccess => 'Malampusong napirmahan ang verification. Na-unlock ang Pre-Trip.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ISUMITE ANG VERIFICATION';

  @override
  String get dvirPreTripTitle => 'Pre-Trip Verification';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status sa Sakyanan: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Idrowing ang Pirma';

  @override
  String get dvirSigPreviewLabel => 'Preview sa Nakuha nga Pirma:';

  @override
  String get dvirSigRedraw => 'IDROWING PAG-USAB';

  @override
  String get dvirSigSave => 'I-SAVE ANG PIRMA';

  @override
  String get dvirSigTapToDraw => 'PINDOTA ARON IDROWING ANG PIRMA (KINAHANGLAN)';

  @override
  String get dvirSigWatermark => 'Pirmahi nga Vertikal (Gikan sa Ubos Paingon sa Ibabaw)';

  @override
  String get forgotPasswordCancel => 'Kanselahon';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Palihug isulod ang balido nga email';

  @override
  String get forgotPasswordSend => 'Ipadala';

  @override
  String get forgotPasswordSuccess => 'Kung kana nga email naglungtad, usa ka reset link ang gipadala.';

  @override
  String get genericBack => 'BALIK';

  @override
  String get genericCancel => 'Kanselahon';

  @override
  String get genericClear => 'LIMPYOHON';

  @override
  String get genericClose => 'Isira';

  @override
  String get genericConfirm => 'Kumpirmahi';

  @override
  String get genericEdit => 'I-edit';

  @override
  String get genericError => 'Adunay sayop nga nahitabo';

  @override
  String get genericLoading => 'Nag-load...';

  @override
  String get genericNext => 'SUNOD';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Sulayi Pag-usab';

  @override
  String get genericSuccess => 'Malampuson';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Nababag ang Dispatch';

  @override
  String get homeDispatchBlockedTitle => 'Nababag ang Dispatch';

  @override
  String get homeErrorNoRoutesPreTrip => 'Walay mga ruta nga anaa aron himoon ang Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Napakyas sa pagsugod sa biyahe sa server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Kumusta, $name';
  }

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuAppInfo => 'Impormasyon sa App';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Mga Detalye sa Driver';

  @override
  String get homeMenuLanguage => 'Pinulongan';

  @override
  String get homeMenuPreTrip => 'Pre-Trip Inspection';

  @override
  String get homeNoRoutes => 'Walay mga ruta nga anaa';

  @override
  String get homeReviewVerifyPreTrip => 'Susiha ug I-verify ang Pre-Trip';

  @override
  String get homeSearchHint => 'Pangitaa ang mga ruta';

  @override
  String get homeStart => 'Sugdi';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeVehicleOutOfServiceDefault => 'Ang sakyanan kasamtangang WALA_SA_SERBISYO.';

  @override
  String get homeVehicleReady => 'Ang sakyanan andam na ug napamatud-an alang sa luwas nga operasyon.';

  @override
  String get languageTitle => 'Pinulongan';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Email o numero sa telepono';

  @override
  String get loginErrorEnterPassword => 'Palihug isulod ang password';

  @override
  String get loginErrorEnterUsername => 'Palihug isulod ang username';

  @override
  String get loginErrorFailed => 'Napakyas ang login. Palihug sulayi pag-usab.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Palihug isulod ang balido nga email o numero sa telepono';

  @override
  String get loginForgotPassword => 'Nakalimot sa password?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Mga bata ug tigbantay';

  @override
  String get mapConfirmMessage => 'Gusto ba gyud nimong isira ang biyahe?';

  @override
  String get mapConfirmTitle => 'Kumpirmahi';

  @override
  String get mapCurrentPosition => 'Kasalukuyang Posisyon';

  @override
  String get mapNo => 'Dili';

  @override
  String get mapReconnectMessage => 'Kanunay nga napakyas ang pag-update sa lokasyon, Palihug susiha ang imong internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Hunong';

  @override
  String get mapStopping => 'Nagahunong...';

  @override
  String get mapStopsTooltip => 'Mga Hunonganan';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Gi-update ${seconds}s ang milabay';
  }

  @override
  String get mapWaitingGps => 'Naghuwat sa GPS...';

  @override
  String get mapYes => 'Oo';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'I-undo';

  @override
  String get stopsCancelledSuccess => 'Malampusong gikansela';

  @override
  String get stopsDefaultLabel => 'Hunong';

  @override
  String get stopsGenericError => 'Adunay sayop nga nahitabo. Palihug sulayi pag-usab.';

  @override
  String get stopsStatusComplete => 'kompleto';

  @override
  String get stopsStatusDone => 'nahuman';

  @override
  String stopsSubmitCount(Object count) {
    return 'Isumite ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Malampusong gisumite';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected napili · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Ihulog';

  @override
  String get stopsTypePick => 'Puniton';

  @override
  String stopsUndoCount(Object count) {
    return 'I-undo ($count)';
  }

  @override
  String get stopsUndoTooltip => 'I-undo ang pick/drop';

  @override
  String get tripConfirmCancel => 'Kanselahon';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Kinahanglan ang permiso sa lokasyon aron magsugod og biyahe.';

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
