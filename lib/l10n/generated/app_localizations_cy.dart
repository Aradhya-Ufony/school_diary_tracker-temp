import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Welsh (`cy`).
class AppLocalizationsCy extends AppLocalizations {
  AppLocalizationsCy([String locale = 'cy']) : super(locale);

  @override
  String get appInfoBuild => 'Gwnewch nifer';

  @override
  String get appInfoDevice => 'Model y dyfais';

  @override
  String get appInfoOS => 'Gwefan OS';

  @override
  String get appInfoPackage => 'Cefnogi';

  @override
  String get appInfoTitle => 'Gwybodaeth y cais';

  @override
  String get appInfoVersion => 'Gwefan App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Gwarchodwyr';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Gwarchodwyr awdurdodedig ar gyfer $name';
  }

  @override
  String get childrenNoGuardians => 'Nid oes gofalwyr awdurdodol ar fail ar gyfer y plentyn hwn.';

  @override
  String get childrenStatusDropped => 'Wedi\'i ddisgwyl';

  @override
  String get childrenStatusPending => 'Ar aros';

  @override
  String get childrenStatusPicked => 'Dylech ddewis';

  @override
  String childrenTitle(Object routeName) {
    return 'Plant  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'GOR/NID ar BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Ewacuwyd';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Ewacuwyd: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nid oes myfyrwyr absenol.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nid oes myfyrwyr wedi eu nodi ar y bws.';

  @override
  String get drillChecklistNotOnBus => 'Nid ar BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Ar BUS  Nid yw\'n cael ei ryddhau';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Ar BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Y CYFYRHYL I Ddyfnyddio Ddyfyg';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rwydwaith (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Rhestr Golygu\'r Gyrfa Ewacuasiwn';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Uncounted Myfyriwr (s) gweddill!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ydych chi\'n siŵr eich bod am gyflwyno\'r log yr ymyrryd?';

  @override
  String get drillEvidenceConfirmSubmission => 'Cytunwch y Cyflwyniad y Dros';

  @override
  String get drillEvidenceDriverNotesHint => 'Disgrifiwch weithredu\'r ymosodiad, ymddygiad myfyrwyr, llwybrau allanol a ddefnyddir, a unrhyw eithriadau a welwyd...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nodynnau y gyrrwr (Minimwm 10 cymeriadau):';

  @override
  String get drillEvidenceFailed => 'Ymuniaeth Gwrthodedig';

  @override
  String get drillEvidenceMandatoryWarning => 'Mae\'n gorfodol cyflwyno o leiaf 1 dystiolaeth llun neu fideo i\'r bore.';

  @override
  String get drillEvidenceRecordVideo => 'Grŵp o Fideo';

  @override
  String get drillEvidenceRetrySubmission => 'CYFYRYFYR';

  @override
  String get drillEvidenceReturnToDashboard => 'ADDYGRAF I DASBORD';

  @override
  String get drillEvidenceSubmitButton => 'Ystyr geiriau:';

  @override
  String get drillEvidenceSubmitting => 'Cyflwyno Log y Drin...';

  @override
  String get drillEvidenceSuccess => 'Mae\'r Cyfyngiad yn llwyddiannus!';

  @override
  String get drillEvidenceSuccessMessage => 'Mae\'r log yr ymyrryd ymosodiad wedi\'i lawrlwytho yn llwyddiannus ac mae\'n aros i gymeradwyo.';

  @override
  String get drillEvidenceTakePhoto => 'Gwirwedd';

  @override
  String get drillEvidenceTitle => 'Dystiolaeth Ddirfodol o\'r Dros';

  @override
  String get drillEvidenceUploading => 'I lawrlwytho dystiolaeth a data rhestr archwilio';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Dros: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Mae Mark yn bresennol';

  @override
  String get drillRosterNoStudents => 'Nid oes myfyrwyr wedi cofrestru ar y llwybr hwn.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presenol: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Y CYFYRHYL I Drosglwyddo';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Y ffordd: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Seic: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Dewiswch Y cyfan';

  @override
  String get drillSummaryAdminNotesTitle => 'Nodynnau Rheoli';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Cyfarwyddedig ar: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Cyfarwyddedig ar';

  @override
  String get drillSummaryBackToDrills => 'Yn ôl i\'r Drills';

  @override
  String get drillSummaryBusNumber => 'Rhestr Bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Yn cael ei arwain gan: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Cyfrifiadau\'r drill';

  @override
  String get drillSummaryDriverNotesTitle => 'Nodynnau y gyrrwr';

  @override
  String get drillSummaryDuration => 'Dyddiant';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Amser y diwedd';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Ewacuwyd: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Ewacuwyd $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Mae tystiolaeth Ynghellwyd Media';

  @override
  String get drillSummaryGps => 'Coordinau GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Yng:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nid oedd yn llwytho cyfres yr ymyl ar gyfer ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nid oes unrhyw ddata\'r bore a gafodd.';

  @override
  String get drillSummaryNotOnBus => 'Nid ar y Bws';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Ar BUS - Nid Efacwyd';

  @override
  String get drillSummaryPhotoEvidence => 'Dystiolaeth o Ddiwedd';

  @override
  String get drillSummaryRouteId => 'ID llwybr';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Seic: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Amser Dechreuad';

  @override
  String get drillSummaryStatus => 'Staed';

  @override
  String get drillSummaryStudentLogTitle => 'Log Ewacuasiwn Myfyriwr';

  @override
  String drillSummaryTitle(Object id) {
    return 'Ystyr geiriau:';
  }

  @override
  String get drillSummaryType => 'Tyb o drill';

  @override
  String get drillSummaryVideoEvidence => 'Dystiolaeth o Fideo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Dewiswch sail y drill:';

  @override
  String get drillTypeCustomHint => 'Rhowch fath o drill ymosodiad addasu...';

  @override
  String get drillTypeInvalidState => 'Staed y cerbyd neu\'r llwybr yn anghywir.';

  @override
  String get drillTypeNameBusFire => 'Tân Bus';

  @override
  String get drillTypeNameDangerZone => 'Y Dref Ymeddwl';

  @override
  String get drillTypeNameDriverIncapacitation => 'Di-ddymunedd y gyrrwr';

  @override
  String get drillTypeNameEquipmentOrientation => 'Cyfeiriadur y Trefn';

  @override
  String get drillTypeNameFrontDoor => 'Drwy drws';

  @override
  String get drillTypeNameOthers => 'Y rhai eraill';

  @override
  String get drillTypeNameRearDoor => 'Drwy drws y tu ôl';

  @override
  String get drillTypeNameSideOrRoof => 'Y Llen neu\'r Dwy';

  @override
  String get drillTypeNameSplit => 'Cyd-ddil';

  @override
  String get drillTypeNoRouteSelected => 'Nid oes llwybr wedi\'i ddewis';

  @override
  String get drillTypePreparation => 'PREDYRACRAF DROIL';

  @override
  String get drillTypeProceed => 'Y CYFYRHYL i\'r RHYSTUDENT';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Y ffordd: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Dewiswch Lwybr:';

  @override
  String get drillTypeSpecifyCustom => 'Cyfrifiad o Dtip Drill:';

  @override
  String get drillTypeTitle => 'Dewiswch Dtip y Drill';

  @override
  String get drillTypeWarning => 'Sicrhau bod cerbyd wedi\'i pharcio\'n ddiogel cyn dechrau\'r weithredu.';

  @override
  String get drillsAssignedVehicle => 'Cerdyn wedi\'i gymwys';

  @override
  String get drillsChecking => 'Golygu...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Ymbroes #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nid oes Bus wedi ei Ordealu';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nid oes unrhyw ymyrraeth wedi\'i gofnodi ar gyfer bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nid oes llwybrau ar gael i ddechrau\'r ymyrryd.';

  @override
  String get drillsShowSummary => 'Mae\'r arddangosfa yn cael ei gyfyngu';

  @override
  String get drillsStartDrill => 'Dechreuwch Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Gweithrededig: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Ystwythurau diogelu';

  @override
  String get drillsVehicleOutOfService => 'Y Cerdyn Wedi\'i Gweithredu';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Mae\'r cerbyd hwn ar hyn o bryd ar gael ac ni ellir ei ddefnyddio ar gyfer ymyrraeth.';

  @override
  String get driverDetailsCdlClassLabel => 'Class CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'CYRYSAB yr Arweinydd';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAN: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasgenydd';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Bus ysgol';

  @override
  String get driverDetailsEndorsementsTitle => 'Cynnal Cymeradwyo';

  @override
  String get driverDetailsExpiryDateLabel => 'Dyddiad cau';

  @override
  String get driverDetailsHolderSignature => 'YMHYCHRYF';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Dyddiad Cyhoeddi';

  @override
  String get driverDetailsLicenseDocTitle => 'Document drwydded';

  @override
  String get driverDetailsLicenseNoLabel => 'Cyfarwydded Rhif';

  @override
  String get driverDetailsLicenseTitle => 'Cyfrifiadau\'r drwydded';

  @override
  String get driverDetailsLicenseTypeLabel => 'Y math o drwydded';

  @override
  String get driverDetailsOfficialSeal => 'Seil swyddogol';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLAS: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'YDY: $endorsements';
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
  String get driverDetailsTapToView => 'Tap i Wylio Docwm DL';

  @override
  String get driverDetailsTitle => 'Cyfrifiadau y gyrrwr';

  @override
  String get dvirCategoryBusSafetySystems => 'Gweithdrau diogelwch bus penodol';

  @override
  String get dvirCategoryCouplingDevices => 'Pwrpasiau cwmpu';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipiau ar gyfer argyfwng';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Pwnciau a\'r Athroledwyr';

  @override
  String get dvirCategoryMirrors => 'Y Gwyrddon Y Ddyfnydd';

  @override
  String get dvirCategoryParkingBrake => 'Brws Parcio';

  @override
  String get dvirCategoryPassengerSeating => 'Seitiau a\'r Cyfyngiadau ar gyfer Pasgenwyr';

  @override
  String get dvirCategoryServiceBrakes => 'Brwsiau gwasanaeth';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanis Rheoli';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Roedd a Rhymiau';

  @override
  String get dvirCategoryWipers => 'Mae\'r gwastraff gwydr';

  @override
  String get dvirPostTripCapturePhoto => 'PHOTO Gifyriad Gifyriad';

  @override
  String get dvirPostTripComplianceTitle => 'CYFYRHYFNAS CYFYR';

  @override
  String get dvirPostTripDefectButton => 'Defekt';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Mae\'r adroddiad am ddiffyg heb ddelwedd';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Rhybudd: Rydych yn adrodd am ddiffyg ar ardaloedd diogelwch ($zones) heb ychwanegu llun. Ydych chi\'n siŵr eich bod chi\'n dymuno cyflwyno\'r wybodaeth yn y llaw arall?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Arolwg: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Rhowch manylion y pryderon diogelwch...';

  @override
  String get dvirPostTripNotesLabel => 'NOTICE (MANDATORY ON DEFECT) & FHOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Seleiwch DEFECT i roi manylion am bryderon diogelwch...';

  @override
  String get dvirPostTripOdometerHeader => 'Darllen y Odometer Gorau';

  @override
  String get dvirPostTripOdometerInstructions => 'Rhowch y canllaw o\'r millai yn union fel y dangosir ar y panel instrument y bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Mile)';

  @override
  String get dvirPostTripOdometerTitle => 'YMERCYL RUN TIME';

  @override
  String get dvirPostTripOdometerWarning => 'Rhowch y canllaw o\'r odometer cyn parhau.';

  @override
  String get dvirPostTripPassButton => 'Pas';

  @override
  String get dvirPostTripPhotoAttached => 'Ffocws wedi\'i gysylltu\'n llwyddiannus.';

  @override
  String get dvirPostTripProgressLabel => 'Cynnydd y Archwiliad';

  @override
  String get dvirPostTripSignatureCaptured => 'Argrafwyd ar-lein.';

  @override
  String get dvirPostTripSignatureCert => 'Rwy\'n cadarnhau bod y adroddiad rhestr archwilio cerdded o\'r cerbyd hwn wedi\'i gwblhau yn unol â rheoliadau FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Gwirio arwyddion y gyrrwr';

  @override
  String get dvirPostTripSubmitButton => 'YMHYCHRYF';

  @override
  String get dvirPostTripSubmitSuccess => 'Cyflwynwyd eDVIR yn llwyddiannus.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Y DUW $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Mae\'r rhain yn cynnwys y fannau:';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Rwy\'n cydnabod fy mod wedi adolygu\'r adroddiad diffyg olaf a gyflwynwyd ac wedi gwirio\'r atgyweirio (os oes) a dweud bod y bys yn ddiogel i\'w weithredu.';

  @override
  String get dvirPreTripActiveMessage => 'Mae\'r cerbyd hwn yn Gweithredol ac nid oes ganddo ddiffektau agored.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Ydylen weithgar: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'YMYTHYCH: Defedion y diwrnod blaenorol';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Rhestr Bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Gweithiad ar gyfer DISPATCH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Diarwyddwyd i\'w llofnodi: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nid oes unrhyw ddiffygiau blaenorol wedi\'u cofnodi';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Cafodd y cerbyd hwn ei adrodd yn glinyd yn yr archwilio gwersyll ôl y daith flaenorol.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nid oes angen trafnidiaeth ar gyfer gweithredu diogel.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Mae\'r cerbyd hwn wedi\'i ddi-dorfod ar gyfer atgyweirio/garwain. Mae\'n rhaid i staff y siop ddatrys pryderon diogelwch cyn ei anfon.';

  @override
  String get dvirPreTripOutofServiceButton => 'YWYCLION O\'r Gwasanaeth';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Rheswm: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (CYFYRHYR)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Raport Y Gweithgareddau Gweithredol';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Mae adrodd am ddiffygiau newydd yn cael ei ddiffyg ar gyfer atgyweirio.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Staws: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'YDY CYFYLDRH YDY Gweinidog';

  @override
  String get dvirPreTripReturnToHomeButton => 'DYDYDYDYDYDYDYDYDYDYDYDYD';

  @override
  String get dvirPreTripSignOffTitle => 'Sign-OFF i fynd i\'r daith';

  @override
  String get dvirPreTripSignedSuccess => 'Mae\'r barch wedi\'i hanfon yn llwyddiannus.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Ystyriaeth';

  @override
  String get dvirPreTripTitle => 'Gwiriant Cyn y Taith';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Staed y cerbyd: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Drosgoriad Arwyddion';

  @override
  String get dvirSigPreviewLabel => 'Cynhelir arwyddion wedi\'u dal:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'CYFYRHYRYDYR';

  @override
  String get dvirSigTapToDraw => 'TAP I DRAW SUGNAF (CYFFYR)';

  @override
  String get dvirSigWatermark => 'Signo\'r Llen (O\'r Isod i\'r Uchaf)';

  @override
  String get forgotPasswordCancel => 'Canclu';

  @override
  String get forgotPasswordEmailLabel => 'E-bost';

  @override
  String get forgotPasswordInvalidEmail => 'Rhowch e-bost ddilys';

  @override
  String get forgotPasswordSend => 'anfon';

  @override
  String get forgotPasswordSuccess => 'Os oes y e-bost hwnnw, mae cysylltiad ail-ddosbarthu wedi\'i anfon.';

  @override
  String get genericBack => 'Ychwanegwch';

  @override
  String get genericCancel => 'Canclu';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Yng nghyfwng';

  @override
  String get genericConfirm => 'Cytunwch';

  @override
  String get genericEdit => 'Edrychwch';

  @override
  String get genericError => 'Roedd rhywbeth yn mynd yn anghywir';

  @override
  String get genericLoading => 'Lladd...';

  @override
  String get genericNext => 'YDAC';

  @override
  String get genericOk => 'Mae\'n iawn.';

  @override
  String get genericRetry => 'Rhowch gynnig eto';

  @override
  String get genericSuccess => 'Lwyddiant';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Yddyliadau wedi\'u rhwystro';

  @override
  String get homeDispatchBlockedTitle => 'Yddyliadau wedi\'u rhwystro';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nid oes unrhyw orthreithiau ar gael i wneud Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Diarweiniodd i ddechrau trip ar y gweinydd: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ddo, V0__';
  }

  @override
  String get homeLogout => 'Logwch allan';

  @override
  String get homeMenuAppInfo => 'Gwybodaeth y cais';

  @override
  String get homeMenuDrill => 'Gwrw';

  @override
  String get homeMenuDriverDetails => 'Cyfrifiadau y gyrrwr';

  @override
  String get homeMenuLanguage => 'Y Gymraeg';

  @override
  String get homeMenuPreTrip => 'Archwiliad cyn teithio';

  @override
  String get homeNoRoutes => 'Nid oes unrhyw orthrefn ar gael';

  @override
  String get homeReviewVerifyPreTrip => 'Adolygu & Gwirio Cyn Trefn';

  @override
  String get homeSearchHint => 'Lwybrau chwilio';

  @override
  String get homeStart => 'Dechreuwch';

  @override
  String get homeTitle => 'Y cartref';

  @override
  String get homeVehicleOutOfServiceDefault => 'Mae\'r cerbyd ar hyn o bryd OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Mae\'r cerbyd ar gael a gwirio ar gyfer gweithredu diogel.';

  @override
  String get languageTitle => 'Y Gymraeg';

  @override
  String get loginButton => 'Loginio';

  @override
  String get loginEmailOrPhoneLabel => 'E-bost neu rhif ffôn';

  @override
  String get loginErrorEnterPassword => 'Rhowch gyfrinach';

  @override
  String get loginErrorEnterUsername => 'Rhowch enw defnyddiwr';

  @override
  String get loginErrorFailed => 'Gweithredodd y login.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Rhowch e-bost neu rhif ffôn ddilys';

  @override
  String get loginForgotPassword => 'Gobeithio eich cyfrinair?';

  @override
  String get loginPasswordLabel => 'Pasword';

  @override
  String get mapChildrenTooltip => 'Plant & gofalwyr';

  @override
  String get mapConfirmMessage => 'Ydych chi wir eisiau gorffen y daith?';

  @override
  String get mapConfirmTitle => 'Cytunwch';

  @override
  String get mapCurrentPosition => 'Y sefyllfa bresennol';

  @override
  String get mapNo => 'Nid yw';

  @override
  String get mapReconnectMessage => 'Mae diweddariad lleoliad yn methu\'n aml, cysylltwch â\'ch rhyngrwyd.';

  @override
  String get mapReconnectTitle => 'Tracer';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapStopping => 'Stopio...';

  @override
  String get mapStopsTooltip => 'Mae\'n stopio';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Adnewyddu ${seconds}s yn ôl';
  }

  @override
  String get mapWaitingGps => 'Ar aros am GPS...';

  @override
  String get mapYes => 'Y mae hynny\'n wir';

  @override
  String get splashDriverApp => 'App y Gweithwyr';

  @override
  String get stopsActionUndo => 'Ydros-dros';

  @override
  String get stopsCancelledSuccess => 'Wedi\'i ganslo yn llwyddiannus';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String get stopsGenericError => 'Mae rhywbeth wedi mynd yn anghywir.';

  @override
  String get stopsStatusComplete => 'cyflawn';

  @override
  String get stopsStatusDone => 'wedi\'i wneud';

  @override
  String stopsSubmitCount(Object count) {
    return 'Cyflwyno ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Wedi\'i gyflwyno\'n llwyddiannus';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected dewiswyd _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Tynnwch';

  @override
  String get stopsTypePick => 'Dewiswch';

  @override
  String stopsUndoCount(Object count) {
    return 'Ystyr ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Ystyr o\'r broses';

  @override
  String get tripConfirmCancel => 'Canclu';

  @override
  String get tripConfirmOk => 'Mae\'n iawn.';

  @override
  String get tripConfirmTitle => 'Tracer';

  @override
  String get tripErrorLocationRequired => 'Mae angen caniatâd lleoliad i ddechrau teithio.';

  @override
  String get homeMenuPostCrashReporting => 'Raportyfu ar ôl y crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Rheswm: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Staws: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Yng:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Lle chwilio (e.e. Market St)';

  @override
  String get crashLocationPickerTitle => 'Dewiswch Lle ar y Map';

  @override
  String get crashLocationPickerTooltip => 'Cydnabod lleoliad';

  @override
  String get incidentDashboardDescription => 'Dewiswch weithredu i fynd ymlaen â rheoli digwyddiadau neu weld adroddiadau blaenorol.';

  @override
  String get incidentDashboardHeadline => 'Raporthau\'r digwyddiad ar ôl y crash';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Cychwyn adroddiad gwrthdaro newydd camau ar ôl camau';

  @override
  String get incidentDashboardTitle => 'Y digwyddiad ar ôl y crash';

  @override
  String get incidentDashboardViewHistory => 'Darllen hanes';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Darllen raportaethau trais blaenorol a status';

  @override
  String get incidentDetailsAdminLetter => 'Llythyr Administrywr';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Cofnodi\'r Arolwg Arf Arfwy (Llimed 2 awr)';

  @override
  String get incidentDetailsBranchId => 'ID y branch';

  @override
  String get incidentDetailsBusPlate => 'Platrwydd y Cyfarwydded Bus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Ystyr geiriau:';
  }

  @override
  String get incidentDetailsCitationIssued => 'Cyfeiriad a gyhoeddwyd i\'r gyrrwr';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinau: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copied i clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copiwch i\'r clypboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Dyddiad a Tham: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Rapor DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Arolwg DOE y State (Optional)';

  @override
  String get incidentDetailsDriverNotes => 'Nodynnau y gyrrwr:';

  @override
  String get incidentDetailsDriverUserId => 'ID defnyddiwr y gyrrwr';

  @override
  String get incidentDetailsDrugCountdown => 'Cyn cyfrif ôl prawf cyffuriau DOT (Llimd 8 awr)';

  @override
  String get incidentDetailsFatalityOccurred => 'Mae\'r Fethal wedi digwydd';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Y digwyddiad #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Y Weddiau sy\'n Anghenion Trinigaeth Meddygol';

  @override
  String get incidentDetailsLawEnforcement => 'Cyfarfodydd Deddfwriaeth';

  @override
  String get incidentDetailsLoadFailed => 'Ni chafodd llwytho manylion.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lle: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Ychwanegadau cyfryngau';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Staws: $status';
  }

  @override
  String get incidentDetailsNo => 'Ystyr geiriau:';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nid oes lluniau neu fideo yn gysylltiedig.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nid oedd unrhyw fyfyrwyr ar y llong yn ystod y digwyddiad.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generwch adroddiadau hysbysiad a anfon llythyrau teamplau i oruchwyliaid neu gymuned ardal.';

  @override
  String get incidentDetailsNotificationsTitle => 'Cyhoeddiadau trosglwyddo';

  @override
  String get incidentDetailsOfficer => 'Cyfrifydd';

  @override
  String get incidentDetailsPoliceReport => 'Rhestr adroddiad yr heddlu';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Llythyr trosglwyddo wedi\'i llenwi ymlaen llaw:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Cyfyngiad Rheoliadol:';

  @override
  String get incidentDetailsRouteId => 'ID llwybr';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Cyhoeddiad ar y Cyfarwyddwr Ysgol';

  @override
  String get incidentDetailsStatusPending => 'Ar aros';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Cyfrif: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Yngoglymiedig';

  @override
  String get incidentDetailsStudentNoInjury => 'Dim Cwynion';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Cyfyngder: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Wedi\'i ddal i: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Y myfyrwyr ar Bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Mae angen prawf ar ôl y crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Staws: $status';
  }

  @override
  String get incidentDetailsTitle => 'Cyfrifnau\'r digwyddiad';

  @override
  String get incidentDetailsVehicleTowed => 'Cerdyn a Drosglwyd';

  @override
  String get incidentDetailsYes => 'YDY';

  @override
  String get incidentHistoryEmpty => 'Nid oes cofnodion digwyddiad wedi\'i gofrestru ar gyfer y cerbyd hwn.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Diarhelir i gael codi cofnodion: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Amser: Bus: V1__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Y digwyddiad #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Nid yw\'n ofynnol';

  @override
  String get incidentHistoryTestingRequired => 'Ystyr';

  @override
  String get incidentHistoryTitle => 'Rhestr Ymewng Ar ôl y Crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Ychwanegwch llun arall';

  @override
  String get incidentIntakeBadgeNumberError => 'Mae\'n ofynnol';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Rhadd o\'r badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Rhestr Bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capture Cynhadledd Photo';

  @override
  String get incidentIntakeCitationSubtitle => 'A gafodd cyfeiriad dros drosedd traffig symudol i gyrrwr bus yr ysgol?';

  @override
  String get incidentIntakeCitationTitle => 'Ystyrwyd Cyflwyniad?';

  @override
  String get incidentIntakeDateTimeLabel => 'Dyddiad a Tham y Crash *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DID oes angen prawf';

  @override
  String get incidentIntakeDotTestingRequired => 'Mae angen profi';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Rheolwr: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Rhowch unrhyw nodiadau ychwanegol ynghylch y gwrthdaro...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Nodynnau Ymyriad y Cerddwyr';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nid oedd yn llwytho pasgeiriaid llwybr: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Cysylltwch â\'r tystiolaeth (Felweddau) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'A ddigwyddodd unrhyw farwolaethau o ganlyniad i\'r gwrthdaro hwn?';

  @override
  String get incidentIntakeFatalityTitle => 'A Bu Fethal yn digwydd?';

  @override
  String get incidentIntakeGpsLabel => 'Coordinau GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Darllen hanes';

  @override
  String get incidentIntakeInjuriesSubtitle => 'A oes unrhyw un wedi cael eu closi\'n gorfforol a oedd angen triniaeth meddygol ar unwaith y tu allan i\'r lle?';

  @override
  String get incidentIntakeInjuriesTitle => 'Ydy\'n Angen sy\'n Angen Cydymffurfio Meddygol?';

  @override
  String get incidentIntakeInjuryNotesError => 'Mae nodiadau anawsterau yn gorfodol i fyfyrwyr anawsterau';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Nodynnau / manylion o\'r anafiadau (Cymymymhleth) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Anfantais Yngyriadau *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Rhowch i mewn i\'r swyddfa gorfodi gyfraith';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Cyfarfodydd y gyfraith (e.e. Patrol y Ddinasoedd Cyhoeddus) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rapor y Gweithredu Deddfwriaeth a\'r Heddlu';

  @override
  String get incidentIntakeLocationDescError => 'Rhowch ddisgrifiad lleoliad';

  @override
  String get incidentIntakeLocationDescLabel => 'Disgrifiad lleoliad (e.e. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Ystâd Meddygol a Gwaredwyd i';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nid oes myfyrwyr sy\'n cyd-fynd.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nid oes myfyrwyr wedi\'u dod o hyd.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nid oes myfyrwyr ar y llong.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nid oes myfyrwyr wedi cofrestru ar gyfer y llwybr hwn.';

  @override
  String get incidentIntakeOfficerNameError => 'Rhowch enw swyddog';

  @override
  String get incidentIntakeOfficerNameLabel => 'Enw swyddog *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Rhowch rhif adroddiad yr heddlu';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Rhestr adroddiad yr heddlu *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Y ffordd: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Gwybodaeth am y llwybr & y gyrrwr';

  @override
  String get incidentIntakeSearchInjuredHint => 'Archwilio plentyn anafu...';

  @override
  String get incidentIntakeSearchStudentHint => 'Ymchwilio myfyrwyr...';

  @override
  String get incidentIntakeSelectAll => 'Dewiswch yr holl fyfyrwyr';

  @override
  String get incidentIntakeSelectOnMap => 'Dewiswch ar y map';

  @override
  String get incidentIntakeSeverityFatal => 'Fethol';

  @override
  String get incidentIntakeSeverityMinor => 'Mwy o blant';

  @override
  String get incidentIntakeSeverityModerate => 'Cyfyngedig';

  @override
  String get incidentIntakeSeveritySevere => 'Cyfyngedig';

  @override
  String get incidentIntakeSeverityTitle => 'Mae\'r amrywiolydd o ddifrifoldeb y gwrthdaro';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Ystyrdeb';

  @override
  String get incidentIntakeTitle => 'Ymbell o ddigwyddiadau ar ôl y crash';

  @override
  String get incidentIntakeTowedSubtitle => 'A gafodd unrhyw gerbyd ddiffyg difrifol sy\'n gofyn i\'w dynnu oddi wrth y lle?';

  @override
  String get incidentIntakeTowedTitle => 'Y car a dorriwyd?';

  @override
  String get incidentIntakeWasInjured => 'A oedd yn cael ei anafu?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'CYFYR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Nodweddion / Nodweddion y gyrrwr (Optional)';

  @override
  String get dvirPreTripNoComments => 'Nid oes sylwadau wedi\'u ychwanegu.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Rheswm: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Y ffordd: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Mae\'r arwydd wedi cael ei ddal yn llwyddiannus.';

  @override
  String get dvirPreTripSigMissing => 'Mae\'r arwydd yn colli.';

  @override
  String get dvirPreTripSignDefectWarning => 'Os gwelwch yn dda arwyddo i gadarnhau\'r ailgyweirio o ddiffygiau blaenorol.';

  @override
  String get dvirPreTripStepSignOff => 'Arwydd';

  @override
  String get dvirPreTripStepSubmit => 'Cyflwyno';

  @override
  String get dvirPreTripStepVerify => 'Gwirio';

  @override
  String get dvirPreTripTapNext => 'Cysylltwch â\'r pwynt hwn.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Y Cerdyn wedi\'i Orfod';

  @override
  String get dvirPreTripVehicleReady => 'Y Cerdyn yn barod i wasanaethu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Staed Repair Wedi\'i Gwirio:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Cysylltwch â\'r fwrdd ar ochr pob difrifoldeb.';

  @override
  String get dvirPreTripYourComments => 'Eich sylwadau:';

  @override
  String get countryPickerNoCountries => 'Nid oes unrhyw wledydd a ddarganfod';

  @override
  String get countryPickerSearchHint => 'Ymchwilio gan enw gwlad, cod, neu ddal cod...';

  @override
  String get countryPickerTitle => 'Dewiswch Wlad';

  @override
  String get mapDefaultStop => 'Stop';

  @override
  String get mapEndLocation => 'Lle pen draw';

  @override
  String get mapStartLocation => 'Dechrau lleoliad';

  @override
  String get stopsNoChangesToUndo => 'Nid oes unrhyw newidiadau ar gael i\'w ddileu.';

  @override
  String get stopsNoStopsAvailable => 'Nid oes unrhyw orffen ar gael.';

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
