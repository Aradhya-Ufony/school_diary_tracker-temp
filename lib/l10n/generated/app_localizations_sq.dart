import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appInfoBuild => 'Ndërtoni numrin';

  @override
  String get appInfoDevice => 'Modeli i pajisjes';

  @override
  String get appInfoOS => 'Versioni i OS';

  @override
  String get appInfoPackage => 'Paketa';

  @override
  String get appInfoTitle => 'Informacioni i aplikacionit';

  @override
  String get appInfoVersion => 'Versioni i aplikacionit';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Mbikëqyrësit';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Mbikëqyrësit e autorizuar për $name';
  }

  @override
  String get childrenNoGuardians => 'Nuk ka kujdestarë të autorizuar në dosje për këtë fëmijë.';

  @override
  String get childrenStatusDropped => 'Të hyrë';

  @override
  String get childrenStatusPending => 'Pritje';

  @override
  String get childrenStatusPicked => 'I zgjedhur';

  @override
  String childrenTitle(Object routeName) {
    return 'Fëmijët  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'APAJË / JO Në BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobusi:';
  }

  @override
  String get drillChecklistEvacuated => 'Evuar';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'E evakuuar: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nuk ka studentë të mungesshëm.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nuk ka nxënës të shënuar në autobus.';

  @override
  String get drillChecklistNotOnBus => 'Jo në autobus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Në autobus  JO EVAKUAT';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Në autobus ($count)';
  }

  @override
  String get drillChecklistProceed => 'PROCESI për të kapur dëshmitë';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rruga (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista e kontrollit të stërvitjeve të evakuimit';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Student i paftuar... mbetet!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'A jeni i sigurt që doni ta dorëzoni këtë log të stërvitjes?';

  @override
  String get drillEvidenceConfirmSubmission => 'Për konfirmim të dorëzimit të stërvitjes';

  @override
  String get drillEvidenceDriverNotesHint => 'Përshkruani ekzekutimin e stërvitjes, sjelljen e studentëve, rrugët e daljes të përdorura, dhe çdo përjashtim të vërejtur...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notat e shoferit (minimum 10 karaktere):';

  @override
  String get drillEvidenceFailed => 'S\'ka arritur të paraqitet';

  @override
  String get drillEvidenceMandatoryWarning => 'Të paktën 1 foto ose video dëshmi është e detyrueshme për të paraqitur stërvitje.';

  @override
  String get drillEvidenceRecordVideo => 'Për regjistrimin e videot';

  @override
  String get drillEvidenceRetrySubmission => 'SENDIM I RETRIO';

  @override
  String get drillEvidenceReturnToDashboard => 'Kthehu në dashboard';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Sendoj regjistrimin e stërvitjes...';

  @override
  String get drillEvidenceSuccess => 'Përgjigja ka sukses!';

  @override
  String get drillEvidenceSuccessMessage => 'Log i stërvitjes së evakuimit është ngarkuar me sukses dhe është në pritje të miratimit.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografoni';

  @override
  String get drillEvidenceTitle => 'Dëshmi e detyrueshme për të bërë stërvitje';

  @override
  String get drillEvidenceUploading => 'Ngarkimi i provave dhe të dhënave të listës së kontrollit';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobusi:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vëzhgu:';
  }

  @override
  String get drillRosterMarkAttendance => 'Marku pranon';

  @override
  String get drillRosterNoStudents => 'Nuk ka studentë të regjistruar në këtë rrugë.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prezenta: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCESI për të nxjerrë një listë të kontrollit';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rruga:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Shtëpi:';
  }

  @override
  String get drillRosterSelectAll => 'Zgjidh të gjitha';

  @override
  String get drillSummaryAdminNotesTitle => 'Notat e administratës';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Miratuar në: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Miratohet në';

  @override
  String get drillSummaryBackToDrills => 'Kthehemi tek \"Dryers\"';

  @override
  String get drillSummaryBusNumber => 'Numri i autobusit';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'I drejtuar nga: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detaje të përpiqjes';

  @override
  String get drillSummaryDriverNotesTitle => 'Notat e shoferit';

  @override
  String get drillSummaryDuration => 'Vepra e kohës';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Koha e fundit';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'E evakuuar: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'E evakuuar';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Përkrahjet e mediave të provave';

  @override
  String get drillSummaryGps => 'Koordinata GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nuk e ngarkuam përmbledhjen e stërvitjes për ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nuk gjetën të dhëna të stërvitjes.';

  @override
  String get drillSummaryNotOnBus => 'Jo në autobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Në autobus - JO EAKUAT';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografitë';

  @override
  String get drillSummaryRouteId => 'ID-ja e rrugës';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Shtëpi:';
  }

  @override
  String get drillSummaryStartTime => 'Koha e fillimit';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Log i evakuimit të studentëve';

  @override
  String drillSummaryTitle(Object id) {
    return 'Përshkrimi i stërvitjes (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipi i ekzaminimit';

  @override
  String get drillSummaryVideoEvidence => 'Dëshmi nga video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobusi';
  }

  @override
  String get drillTypeClassification => 'Zgjidhni klasifikimin e stërvitjeve:';

  @override
  String get drillTypeCustomHint => 'Shkoni tipin e një stërvitjeje të evakuimit të përshtatshëm...';

  @override
  String get drillTypeInvalidState => 'Shteti i automjetit ose rrugës të pavlefshme.';

  @override
  String get drillTypeNameBusFire => 'Djegimi i autobusit';

  @override
  String get drillTypeNameDangerZone => 'Zona e rrezikut';

  @override
  String get drillTypeNameDriverIncapacitation => 'Pa aftësi të shoferit';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientimi i pajisjeve';

  @override
  String get drillTypeNameFrontDoor => 'Dhurë e përparme';

  @override
  String get drillTypeNameOthers => 'Të tjerë';

  @override
  String get drillTypeNameRearDoor => 'Dyer e pasme';

  @override
  String get drillTypeNameSideOrRoof => 'Shkupa ose çati';

  @override
  String get drillTypeNameSplit => 'Ndarja';

  @override
  String get drillTypeNoRouteSelected => 'Nuk zgjidhet rrugë';

  @override
  String get drillTypePreparation => 'Përgatitja e drill';

  @override
  String get drillTypeProceed => 'PROCESI për të bërë studentin';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rruga:';
  }

  @override
  String get drillTypeSelectRoute => 'Zgjidhni rrugën:';

  @override
  String get drillTypeSpecifyCustom => 'Përcaktoni përshkrimin e llojit të thyerjes:';

  @override
  String get drillTypeTitle => 'Zgjidhni llojin e thellit';

  @override
  String get drillTypeWarning => 'Sigurohuni që automjeti është i parkuar në mënyrë të sigurt para se të fillojë ekzekutimi.';

  @override
  String get drillsAssignedVehicle => 'Automjet i caktuar';

  @override
  String get drillsChecking => 'Kontrolloj...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Përpiqja #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Asnjë autobus nuk është caktuar';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nuk ka regjistruar stërvitje për autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nuk ka rrugë të disponueshme për të filluar një stërvitje.';

  @override
  String get drillsShowSummary => 'Përshkrimi i shfaqjes';

  @override
  String get drillsStartDrill => 'Filloni të stërvitni';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Të kryer: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Përdorimet e evakuimit';

  @override
  String get drillsVehicleOutOfService => 'Automjet i jashtëdrejtë';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ky automjet është aktualisht i jashtë përdorimit dhe nuk mund të përdoret për stërvitje.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LEJZONI I SHUFIMIT';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Emri:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasagjer';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobusi shkollor';

  @override
  String get driverDetailsEndorsementsTitle => 'Të mbështetur';

  @override
  String get driverDetailsExpiryDateLabel => 'Data e skadimit';

  @override
  String get driverDetailsHolderSignature => 'FALIMË NJERËS';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data e publikimit';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument i licencës';

  @override
  String get driverDetailsLicenseNoLabel => 'Numri i licencës';

  @override
  String get driverDetailsLicenseTitle => 'Detajet e licencës';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lloji i licencës';

  @override
  String get driverDetailsOfficialSeal => 'SELUL I Zyrtar';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasa:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'FUNDIM:';
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
  String get driverDetailsTapToView => 'Shtypni për të parë dokumentin DL';

  @override
  String get driverDetailsTitle => 'Detajet e shoferit';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemet e sigurisë për autobusët';

  @override
  String get dvirCategoryCouplingDevices => 'Përpunimet e lidhjes';

  @override
  String get dvirCategoryEmergencyEquipment => 'Pajisje emergjente';

  @override
  String get dvirCategoryHorn => 'Gëzë';

  @override
  String get dvirCategoryLightingReflectors => 'Pajisjet e ndriçimit dhe reflektorët';

  @override
  String get dvirCategoryMirrors => 'Pasqyra e pasqyeshme';

  @override
  String get dvirCategoryParkingBrake => 'Freni i parkimit';

  @override
  String get dvirCategoryPassengerSeating => 'Shtëpi dhe kufizime për pasagjerët';

  @override
  String get dvirCategoryServiceBrakes => 'Frena e shërbimit';

  @override
  String get dvirCategorySteeringMechanism => 'Mekanikë drejtimi';

  @override
  String get dvirCategoryTires => 'Plakët';

  @override
  String get dvirCategoryWheelsRims => 'Rrota dhe rimi';

  @override
  String get dvirCategoryWipers => 'Shkatërrësit e paraqeshës';

  @override
  String get dvirPostTripCapturePhoto => 'Fotografia e defektit të kapturës';

  @override
  String get dvirPostTripComplianceTitle => 'SERTIFIKIM I pajtimit';

  @override
  String get dvirPostTripDefectButton => 'DEFEKT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Raportohet defekti pa foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Përkujtim: Po raportoni një defekt në zonat e sigurisë ($zones) pa ngjitur një foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektimi: Autobusi $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Shkruani detaje të shqetësimit për sigurinë...';

  @override
  String get dvirPostTripNotesLabel => 'NOTA (MANDATORIA mbi defektet) & FOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Zgjidhni DEFECT për të futur detajet e shqetësimeve të sigurisë...';

  @override
  String get dvirPostTripOdometerHeader => 'Leximi aktual i Odometerit';

  @override
  String get dvirPostTripOdometerInstructions => 'Shkruani leximin e kilometrave saktësisht siç tregohet në panelin e instrumentit të autobusit:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'METRIK I Kohave të Automjetit';

  @override
  String get dvirPostTripOdometerWarning => 'Ju lutemi, shkruani leximin e kilometrit para se të vazhdoni.';

  @override
  String get dvirPostTripPassButton => 'Pas';

  @override
  String get dvirPostTripPhotoAttached => 'Foto e lidhur me sukses.';

  @override
  String get dvirPostTripProgressLabel => 'Progresi i inspektimit';

  @override
  String get dvirPostTripSignatureCaptured => 'Të kapurit nënshkrimet.';

  @override
  String get dvirPostTripSignatureCert => 'Unë certifikoj se ky raport i kontrollit të udhëtimit të automjetit është përfunduar në përputhje me rregulloret FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifikimi i nënshkrimit të shoferit';

  @override
  String get dvirPostTripSubmitButton => 'Inspektimi i dorëzimit';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR është paraqitur me sukses.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONË $current I $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zonave të V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Unë e pranoj se kam rishikuar raportin e fundit të defectit të dorëzuar dhe e kam verifikuar riparimet (nëse ka) dhe deklaroj se autobusi është i sigurt për funksionim.';

  @override
  String get dvirPreTripActiveMessage => 'Ky automjet është i aktivizuar dhe nuk ka defekte të hapura.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Rruga aktive: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'DËMBAJIM I DËMBAJT: Mëshira e ditës së mëparshme';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numri i autobusit: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Kontrolli i DISPATHIMIT të automjetit';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Dështimi për të nënshkruar: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nuk janë regjistruar defekte të mëparshme';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ky automjet u raportua i pastër në inspektimin e mëparshëm pas udhëtimit.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nuk ka nevojë për riparime për një funksion të sigurt.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ky automjet është jashtë përdorimit për riparime/mirëmbajtje.';

  @override
  String get dvirPreTripOutofServiceButton => 'AUTO I LËRËNË NË SHERBIM';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Arsyeja:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARuar)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Raportojnë defekte të reja';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Raportimi i defekteve të reja është i pafunksionuar gjatë riparimeve.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Rrezolutë e nën-adminit të transportit';

  @override
  String get dvirPreTripReturnToHomeButton => 'Kthehuni në shtëpi';

  @override
  String get dvirPreTripSignOffTitle => 'Shënim për të shkuar në rrugë.';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikimi është nënshkruar me sukses.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERIFIKIM I Sunduar';

  @override
  String get dvirPreTripTitle => 'Verifikimi para udhëtimit';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status i automjetit: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Vështirni nënshkrimin';

  @override
  String get dvirSigPreviewLabel => 'Shikimi i paraqitjes së nënshkrimit:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Shpëto nënshkrimin';

  @override
  String get dvirSigTapToDraw => 'TAP për të tërhequr nënshkrimin (të kërkuar)';

  @override
  String get dvirSigWatermark => 'Shkruani vertikalisht (nga poshtë deri lart)';

  @override
  String get forgotPasswordCancel => 'Kanclojnë';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Ju lutemi futni një email të vlefshëm';

  @override
  String get forgotPasswordSend => 'dërgojmë';

  @override
  String get forgotPasswordSuccess => 'Nëse e-mail ekziston, një lidhje të rivendosjes është dërguar.';

  @override
  String get genericBack => 'Kthehu';

  @override
  String get genericCancel => 'Kanclojnë';

  @override
  String get genericClear => 'SHAJRIM';

  @override
  String get genericClose => 'Afër';

  @override
  String get genericConfirm => 'Për konfirmim';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericError => 'Diçka shkoi keq.';

  @override
  String get genericLoading => 'Ngarkesa...';

  @override
  String get genericNext => 'NËVËR';

  @override
  String get genericOk => 'Mirë.';

  @override
  String get genericRetry => 'Përpiquni përsëri';

  @override
  String get genericSuccess => 'Suksesi';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobusi:';
  }

  @override
  String get homeDispatchBlocked => 'Dërgimi i bllokuar';

  @override
  String get homeDispatchBlockedTitle => 'Dërgimi i bllokuar';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nuk ka rrugë të disponueshme për të kryer Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nuk ka filluar udhëtimin në server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Zonj, V0__';
  }

  @override
  String get homeLogout => 'Logut';

  @override
  String get homeMenuAppInfo => 'Informacioni i aplikacionit';

  @override
  String get homeMenuDrill => 'Përpiqja';

  @override
  String get homeMenuDriverDetails => 'Detajet e shoferit';

  @override
  String get homeMenuLanguage => 'Gjuha';

  @override
  String get homeMenuPreTrip => 'Inspektimi para udhëtimit';

  @override
  String get homeNoRoutes => 'Nuk ka rrugë të disponueshme';

  @override
  String get homeReviewVerifyPreTrip => 'Përsëritja & Verifikimi Para-Trip';

  @override
  String get homeSearchHint => 'Rrugat e kërkimit';

  @override
  String get homeStart => 'Filloni';

  @override
  String get homeTitle => 'Shtëpi';

  @override
  String get homeVehicleOutOfServiceDefault => 'Automjet është aktualisht jashtë shërbimit.';

  @override
  String get homeVehicleReady => 'Automjet është gati dhe i verifikuar për funksionim të sigurt.';

  @override
  String get languageTitle => 'Gjuha';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Numri i e-mail-it ose telefonit';

  @override
  String get loginErrorEnterPassword => 'Ju lutemi futni fjalëkalimin';

  @override
  String get loginErrorEnterUsername => 'Ju lutemi futni emrin e përdoruesit';

  @override
  String get loginErrorFailed => 'Login dështoi, ju lutem provoni përsëri.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Ju lutemi shkruani një email të vlefshëm ose numrin e telefonit';

  @override
  String get loginForgotPassword => 'I harrova fjalëkalimin?';

  @override
  String get loginPasswordLabel => 'Parola';

  @override
  String get mapChildrenTooltip => 'Fëmijët & kujdestarët';

  @override
  String get mapConfirmMessage => 'Do ta mbyllësh vërtet udhëtimin?';

  @override
  String get mapConfirmTitle => 'Për konfirmim';

  @override
  String get mapCurrentPosition => 'Pozicioni aktual';

  @override
  String get mapNo => 'Jo, jo.';

  @override
  String get mapReconnectMessage => 'Përsëritja e vendndodhjes dështon shpesh, ju lutemi kontrolloni internetin tuaj.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Ndalo.';

  @override
  String get mapStopping => 'Ndalo...';

  @override
  String get mapStopsTooltip => 'Ndalojnë';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aktualisi _${seconds}s më parë';
  }

  @override
  String get mapWaitingGps => 'Duke pritur GPS...';

  @override
  String get mapYes => 'Po, po.';

  @override
  String get splashDriverApp => 'Aplikacioni i shoferit';

  @override
  String get stopsActionUndo => 'Të ndaluar';

  @override
  String get stopsCancelledSuccess => 'Kanceluar me sukses';

  @override
  String get stopsDefaultLabel => 'Ndalo.';

  @override
  String get stopsGenericError => 'Desha përsëri.';

  @override
  String get stopsStatusComplete => 'e plotë';

  @override
  String get stopsStatusDone => 'bërë';

  @override
  String stopsSubmitCount(Object count) {
    return 'Sjellja ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'I dorëzuar me sukses';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected të zgjedhur _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Lëvi';

  @override
  String get stopsTypePick => 'Zgjidhni';

  @override
  String stopsUndoCount(Object count) {
    return 'Shpërthimi i njëjtë';
  }

  @override
  String get stopsUndoTooltip => 'Përndryshe marrja/ngjitja';

  @override
  String get tripConfirmCancel => 'Kanclojnë';

  @override
  String get tripConfirmOk => 'Mirë.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Permeshja e vendndodhjes është e nevojshme për të filluar një udhëtim.';

  @override
  String get homeMenuPostCrashReporting => 'Raportimi pas përplasjes';

  @override
  String homeVehicleReason(Object reason) {
    return 'Arsyeja:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Vendndodhja e kërkimit (p.sh. Market St)';

  @override
  String get crashLocationPickerTitle => 'Zgjidhni vendndodhjen në hartë';

  @override
  String get crashLocationPickerTooltip => 'Për konfirmim të vendndodhjes';

  @override
  String get incidentDashboardDescription => 'Zgjidhni një veprim për të vazhduar me menaxhimin e incidentit ose shikoni raportet e mëparshme.';

  @override
  String get incidentDashboardHeadline => 'Raportimi i incidentit pas rrëzimit';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Të nisësh një raport të ri hap pas hapi për përplasje';

  @override
  String get incidentDashboardTitle => 'Incidenti pas rrëzimit';

  @override
  String get incidentDashboardViewHistory => 'Shikoni historinë';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Shih raportet e mëparshme të aksidentit dhe statusin';

  @override
  String get incidentDetailsAdminLetter => 'Letër e administratorit';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Numri i kthimit i testimit të alkoolit (2- orë)';

  @override
  String get incidentDetailsBranchId => 'ID i degës';

  @override
  String get incidentDetailsBusPlate => 'Pllaka e Licencës së Autobusit';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Ndikimi i Citatit: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citat i lëshuar shoferit';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinata: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopjuar në klipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopjoje në klipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data dhe Koha: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raporti i DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raporti i DOE-së (pushkeqësor)';

  @override
  String get incidentDetailsDriverNotes => 'Shënimet e shoferit:';

  @override
  String get incidentDetailsDriverUserId => 'ID përdoruesi i shoferit';

  @override
  String get incidentDetailsDrugCountdown => 'Shkumet e kthese të testimit të drogës DOT (8- orë)';

  @override
  String get incidentDetailsFatalityOccurred => 'Ngjarja fatale';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidenti #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Plagosjet që kërkojnë trajtim mjekësor';

  @override
  String get incidentDetailsLawEnforcement => 'Agjencia e zbatimit të ligjit';

  @override
  String get incidentDetailsLoadFailed => 'Nuk e kam ngarkuar detajet.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Vendndodhje:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Përkrahjet e mediave';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Jo';

  @override
  String get incidentDetailsNoMediaAttachments => 'Asnjë foto ose video të lidhura.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Asnjë student nuk ishte shënuar në bord gjatë incidentit.';

  @override
  String get incidentDetailsNotificationsDesc => 'Të gjenerojnë raporte njoftimi dhe të dërgojnë letra të mallkuar tek mbikëqyrësit e rrethit ose administratën.';

  @override
  String get incidentDetailsNotificationsTitle => 'Njoftime për transmetim';

  @override
  String get incidentDetailsOfficer => 'Detaje të oficerit';

  @override
  String get incidentDetailsPoliceReport => 'Numri i raportimit të policisë';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Letra e transmetuar e mbushur me para:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Baza rregullatore:';

  @override
  String get incidentDetailsRouteId => 'ID-ja e rrugës';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Njoftimi i administratorit të shkollës';

  @override
  String get incidentDetailsStatusPending => 'Pritje';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detaje: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Të lënduar';

  @override
  String get incidentDetailsStudentNoInjury => 'Pa lëndime';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Shtresë e rëndë:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportuar në: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studentët në bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TESTIMË NË PËR-KRASHËN I Vërtetur';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Detaje për incidentin';

  @override
  String get incidentDetailsVehicleTowed => 'Automjet i tërhequr';

  @override
  String get incidentDetailsYes => 'Po';

  @override
  String get incidentHistoryEmpty => 'Nuk ka regjistruar asnjë regjistrim incidentesh për këtë automjet.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Dështimi për të marrë logat: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Koha: V0__ Autobusi: V1__ Testimi: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidenti #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'JO I Vërtetur';

  @override
  String get incidentHistoryTestingRequired => 'I Duhet';

  @override
  String get incidentHistoryTitle => 'Regjistri i incidentit pas rrëzimit';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Shtoj një foto tjetër';

  @override
  String get incidentIntakeBadgeNumberError => 'Të nevojshme';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numri i shenjës *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numri i autobusit: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografia e skenës së ngjarjes';

  @override
  String get incidentIntakeCitationSubtitle => 'A u lëshoi një deklaratë për shkelje të trafikut drejtuesit të autobusit shkollor?';

  @override
  String get incidentIntakeCitationTitle => 'A është lëshuar citat?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data dhe Koha e përplasjes *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'S\'KËN nevojë për testime';

  @override
  String get incidentIntakeDotTestingRequired => 'DETESTIMI I Duhet';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Shofer:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Shkruani ndonjë shënim të tjerë lidhur me përplasjen...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notat për incidentet me shoferin';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Pa ngarkuar pasagjerët e rrugës: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Përkrah dëshmi (Foto) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'A ka ndodhur ndonjë vdekje si rezultat i këtij aksidenti?';

  @override
  String get incidentIntakeFatalityTitle => 'A ka ndodhur një vdekje?';

  @override
  String get incidentIntakeGpsLabel => 'Koordinata GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Shikoni historinë';

  @override
  String get incidentIntakeInjuriesSubtitle => 'A ka pasur ndonjë person që ka pësuar dëmtim fizik që kërkon menjëherë trajtim mjekësor larg skenës?';

  @override
  String get incidentIntakeInjuriesTitle => 'Vëndimet që kërkojnë trajtim mjekësor?';

  @override
  String get incidentIntakeInjuryNotesError => 'Notat e lëndimeve janë të detyrueshme për studentët e lënduar';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Shënimet e dëmtimit / detajet (të detyrueshme) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Shtresë e rëndë *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Ju lutemi hyni në agjencinë e zbatimit të ligjit';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agjencia e zbatimit të ligjit (p.sh. Patrullia Shtetërore e Rrugës) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raporti i zbatimit të ligjit dhe policisë';

  @override
  String get incidentIntakeLocationDescError => 'Ju lutemi shkruani përshkrimin e vendndodhjes';

  @override
  String get incidentIntakeLocationDescLabel => 'Përshkrimi i vendndodhjes (p.sh. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Zyra mjekësore e transportuar në';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nuk ka studentë të përshtatshëm.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nuk gjenden studentë.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Mos keni studentë në bord, shtypni NEXT për të vazhduar.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nuk ka studentë të regjistruar për këtë rrugë.';

  @override
  String get incidentIntakeOfficerNameError => 'Ju lutemi shkruani emrin e oficerit';

  @override
  String get incidentIntakeOfficerNameLabel => 'Emri i oficerit *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Ju lutemi shkruani numrin e raportimit të policisë';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numri i raportimit të policisë *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rruga:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacioni i rrugës dhe shoferit';

  @override
  String get incidentIntakeSearchInjuredHint => 'Kërkoni fëmijën e plagosur...';

  @override
  String get incidentIntakeSearchStudentHint => 'Studente kërkimi...';

  @override
  String get incidentIntakeSelectAll => 'Zgjidhni të gjithë studentët';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT ON MAP';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Të mitur';

  @override
  String get incidentIntakeSeverityModerate => 'Moderat';

  @override
  String get incidentIntakeSeveritySevere => 'Të rëndë';

  @override
  String get incidentIntakeSeverityTitle => 'Ndryshimet e rëndë të përplasjes';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Raporti i dorëzuar';

  @override
  String get incidentIntakeTitle => 'Shportat e para nga aksidenti';

  @override
  String get incidentIntakeTowedSubtitle => 'A ka pasur ndonjë automjet dëmtim të dëmshëm që kërkon ta tërheqë nga vendi i ngjarjes?';

  @override
  String get incidentIntakeTowedTitle => 'Vetura e tërhequr?';

  @override
  String get incidentIntakeWasInjured => '- U plagos?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobusi:';
  }

  @override
  String get dvirPreTripClose => 'NËZË';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Komente / shënime të shoferit (Fundional)';

  @override
  String get dvirPreTripNoComments => 'Nuk shtohen komentet.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Arsyeja:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rruga:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Firma e kapur me sukses.';

  @override
  String get dvirPreTripSigMissing => 'Fjalë e panjohur.';

  @override
  String get dvirPreTripSignDefectWarning => 'Ju lutemi nënshkruani për të verifikuar riparimin e defekteve të mëparshme.';

  @override
  String get dvirPreTripStepSignOff => 'Shkrimi';

  @override
  String get dvirPreTripStepSubmit => 'Sottometi';

  @override
  String get dvirPreTripStepVerify => 'Verifikoni';

  @override
  String get dvirPreTripTapNext => 'Ju lutemi prekni NEXT për të vazhduar.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Automjeti është jashtë shërbimit';

  @override
  String get dvirPreTripVehicleReady => 'Automjeti është gati për shërbim';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Status i riparimit të verifikuar:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Ju lutemi kontrolloni se të gjitha defektet e raportuara janë riparuar duke kontrolluar kutinë pranë çdo defekti.';

  @override
  String get dvirPreTripYourComments => 'Komentet tuaja:';

  @override
  String get countryPickerNoCountries => 'Nuk gjenden vende';

  @override
  String get countryPickerSearchHint => 'Kërkoje sipas emrit të vendit, kodit ose kodit të numrit...';

  @override
  String get countryPickerTitle => 'Zgjidhni vend';

  @override
  String get mapDefaultStop => 'Ndalo.';

  @override
  String get mapEndLocation => 'Vendndodhje e fundit';

  @override
  String get mapStartLocation => 'Start Location';

  @override
  String get stopsNoChangesToUndo => 'Nuk ka ndryshime që mund të ndryshohen.';

  @override
  String get stopsNoStopsAvailable => 'Nuk ka ndalesa të disponueshme.';
}
