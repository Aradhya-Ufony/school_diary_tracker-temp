import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appInfoBuild => 'Eraiki zenbakia';

  @override
  String get appInfoDevice => 'Gailuaren eredua';

  @override
  String get appInfoOS => 'Sistema eragilearen bertsioa';

  @override
  String get appInfoPackage => 'Paketea';

  @override
  String get appInfoTitle => 'Aplikazioaren informazioa';

  @override
  String get appInfoVersion => 'Aplikazioaren bertsioa';

  @override
  String get appTitleSchoolDiary => 'SD jarraitzailea';

  @override
  String get childrenActionGuardians => 'Zaindariak';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Zaintzaile baimenduta $name';
  }

  @override
  String get childrenNoGuardians => 'Ez dago haur honen artxiboan zaintzarik.';

  @override
  String get childrenStatusDropped => 'Erori egin da.';

  @override
  String get childrenStatusPending => 'Zain';

  @override
  String get childrenStatusPicked => 'Aukeratu dut.';

  @override
  String childrenTitle(Object routeName) {
    return 'Umeak';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Ez dago autobusik.';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobusa:';
  }

  @override
  String get drillChecklistEvacuated => 'Ebakuazioa';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Ebakuazioa:';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ez dago ikaslerik.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ez dago ikaslerik autobusetan.';

  @override
  String get drillChecklistNotOnBus => 'Ez autobus batean.';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Autobus batean ez dute ebakuatu.';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Autobus batean (V0)';
  }

  @override
  String get drillChecklistProceed => 'Froga atzemateko prozesua';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ibilbidea:';
  }

  @override
  String get drillChecklistTitle => 'Ebakuazio-bulegoen zerrenda';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Ikasle desagertu bat geratzen da!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ziur zaude log hau aurkeztu nahi duzula?';

  @override
  String get drillEvidenceConfirmSubmission => 'Baieztatu zundatze-eskaria.';

  @override
  String get drillEvidenceDriverNotesHint => 'Deskriba ezazu ariketa, ikasleen jokabidea, erabili diren irteera bideak eta...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Gidariaren oharrak (10 karaktere gutxienez):';

  @override
  String get drillEvidenceFailed => 'Aurkezpenak porrot egin du';

  @override
  String get drillEvidenceMandatoryWarning => 'Beharrezkoa da gutxienez argazki edo bideo bat.';

  @override
  String get drillEvidenceRecordVideo => 'Grabatu bideoak';

  @override
  String get drillEvidenceRetrySubmission => 'Erretiroa ematea';

  @override
  String get drillEvidenceReturnToDashboard => 'Itzul zaitez taula gainera.';

  @override
  String get drillEvidenceSubmitButton => 'Zuzendariaren bulegoa';

  @override
  String get drillEvidenceSubmitting => 'Zundaketaren egunkaria aurkezten...';

  @override
  String get drillEvidenceSuccess => 'Errespetua arrakastatsua izan da!';

  @override
  String get drillEvidenceSuccessMessage => 'Ebakuazio-bulegoko egunkaria igo da eta onarpena zain dago.';

  @override
  String get drillEvidenceTakePhoto => 'Argazki bat atera.';

  @override
  String get drillEvidenceTitle => 'Zundaketaren beharrezko ebidentziak';

  @override
  String get drillEvidenceUploading => 'Froga eta kontrol zerrenda igotzen';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobusa:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '-Barkatu.';
  }

  @override
  String get drillRosterMarkAttendance => 'Markeko bertaratzeak';

  @override
  String get drillRosterNoStudents => 'Ez dago ikaslerik ibilbide honetan.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Oraintxe bertan:';
  }

  @override
  String get drillRosterProceed => 'Zerrenda bat egin behar da.';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Bidea:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Eserlekuak:';
  }

  @override
  String get drillRosterSelectAll => 'Aukeratu guztiak';

  @override
  String get drillSummaryAdminNotesTitle => 'Administrazio-ohartxoak';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Onartuta:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Onartuta';

  @override
  String get drillSummaryBackToDrills => 'Bueltatu zulatzeetara';

  @override
  String get drillSummaryBusNumber => 'Autobusaren zenbakia';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Zuzendari:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Zundatzearen xehetasunak';

  @override
  String get drillSummaryDriverNotesTitle => 'Gidariaren oharrak';

  @override
  String get drillSummaryDuration => 'Iraupena';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- Ez dut uste.';
  }

  @override
  String get drillSummaryEndTime => 'Azken ordua';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Ebakuazioa:';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Ebakuazioa';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Froga komunikabideen eranskinean';

  @override
  String get drillSummaryGps => 'GPSko koordenatuak';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return '- Ez, ez.';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ez dut kargatu #$id ID-aren zulatze-azterketa. $error';
  }

  @override
  String get drillSummaryNoData => 'Ez dago zundatze-datuik.';

  @override
  String get drillSummaryNotOnBus => 'Ez autobus batean.';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Autobus batean, ez dute ebakuatu.';

  @override
  String get drillSummaryPhotoEvidence => 'Argazki-ebidentzia';

  @override
  String get drillSummaryRouteId => 'Ibilbidearen identifikazioa';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Eserlekuak:';
  }

  @override
  String get drillSummaryStartTime => 'Hasiera-ordua';

  @override
  String get drillSummaryStatus => 'Egoera';

  @override
  String get drillSummaryStudentLogTitle => 'Ikasleen ebakuazio egunkaria';

  @override
  String drillSummaryTitle(Object id) {
    return 'Zundaketaren laburpena (#$id)';
  }

  @override
  String get drillSummaryType => 'Zundatze mota';

  @override
  String get drillSummaryVideoEvidence => 'Bideoak';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobusa';
  }

  @override
  String get drillTypeClassification => 'Hautagaien sailkapena aukeratu:';

  @override
  String get drillTypeCustomHint => 'Sartu ebakuazio-builadura pertsonalizatu bat...';

  @override
  String get drillTypeInvalidState => 'Ibilgailu edo ibilbidearen egoera ezgauza.';

  @override
  String get drillTypeNameBusFire => 'Autobusetako sute bat';

  @override
  String get drillTypeNameDangerZone => 'Arriskuaren gunea';

  @override
  String get drillTypeNameDriverIncapacitation => 'Gidariaren ezintasuna';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ekipamenduaren orientazioa';

  @override
  String get drillTypeNameFrontDoor => 'Aurreko atea';

  @override
  String get drillTypeNameOthers => 'Beste batzuk';

  @override
  String get drillTypeNameRearDoor => 'Atzeko atea';

  @override
  String get drillTypeNameSideOrRoof => 'Alde edo teilatua';

  @override
  String get drillTypeNameSplit => 'Banatu egin da.';

  @override
  String get drillTypeNoRouteSelected => 'Ez dago biderik.';

  @override
  String get drillTypePreparation => 'Zuzenean prestatzen';

  @override
  String get drillTypeProceed => 'Ikasleak izendatu';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Bidea:';
  }

  @override
  String get drillTypeSelectRoute => 'Ibilbidea hautatu:';

  @override
  String get drillTypeSpecifyCustom => 'Esateko zulatzeko mota deskribapena:';

  @override
  String get drillTypeTitle => 'Hautagaiak aukeratu';

  @override
  String get drillTypeWarning => 'Ziurtatu ibilgailua segurua dela exekuzioa hasi aurretik.';

  @override
  String get drillsAssignedVehicle => 'Ibilgailu esleitua';

  @override
  String get drillsChecking => 'Begiratuko dut...';

  @override
  String drillsHeader(Object id, Object type) {
    return '#_V0__________________________________________________________________________________________________________________________';
  }

  @override
  String get drillsNoBusAssigned => 'Autobusei ez zaie ezer ematen.';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ez dago tramankulu-eskualdirik.';
  }

  @override
  String get drillsNoRoutesAvailable => 'Ez dago biderik.';

  @override
  String get drillsShowSummary => 'Erakusketa laburpena';

  @override
  String get drillsStartDrill => 'Hasi zulatzen';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Egindakoak: $date Egoera: $status';
  }

  @override
  String get drillsTitle => 'Ebakuazio-eskolak';

  @override
  String get drillsVehicleOutOfService => 'Ibilgailuak ez du funtzionatzen';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ibilgailu hau ez dago erabileran eta ezin da erabili ariketetarako.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL klasea';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Gidatzeko baimena';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Izenburua:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Bidaiaria';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Eskola autobusa';

  @override
  String get driverDetailsEndorsementsTitle => 'Onarpenak';

  @override
  String get driverDetailsExpiryDateLabel => 'Garai iraungi';

  @override
  String get driverDetailsHolderSignature => 'Sinadura edukitzailea';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikazioa:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Argitaratze data';

  @override
  String get driverDetailsLicenseDocTitle => 'Lizentzia-agiria';

  @override
  String get driverDetailsLicenseNoLabel => 'Baimenik ez';

  @override
  String get driverDetailsLicenseTitle => 'Lizentzia-detailak';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lizentzia mota';

  @override
  String get driverDetailsOfficialSeal => 'SEAL ofiziala';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasea:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return '- Zer gertatzen da?';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return '- Ez, ez.';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return '\"Barkatu, ez dut uste\".';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: V0';
  }

  @override
  String get driverDetailsTapToView => 'Sakatu DL dokumentuak ikusteko';

  @override
  String get driverDetailsTitle => 'Gidariaren xehetasunak';

  @override
  String get dvirCategoryBusSafetySystems => 'Autobusen segurtasun sistemak';

  @override
  String get dvirCategoryCouplingDevices => 'Kopulazio gailuak';

  @override
  String get dvirCategoryEmergencyEquipment => 'Larrialdietarako tresnak';

  @override
  String get dvirCategoryHorn => 'Adarra';

  @override
  String get dvirCategoryLightingReflectors => 'Argindarra eta argi-irudia';

  @override
  String get dvirCategoryMirrors => 'Atzeko ikuspegiko ispiluak';

  @override
  String get dvirCategoryParkingBrake => 'Aparkalekuak';

  @override
  String get dvirCategoryPassengerSeating => 'Bidaiarien eserlekuak eta mugak';

  @override
  String get dvirCategoryServiceBrakes => 'Zerbitzu-lasterrak';

  @override
  String get dvirCategorySteeringMechanism => 'Zuzendaritza mekanismoa';

  @override
  String get dvirCategoryTires => 'Pneumatikoak';

  @override
  String get dvirCategoryWheelsRims => 'Gurpilak eta txirbilak';

  @override
  String get dvirCategoryWipers => 'Aurreko kristala kentzeko makina';

  @override
  String get dvirPostTripCapturePhoto => 'Argazki bat.';

  @override
  String get dvirPostTripComplianceTitle => 'Eusko Jaurlaritzaren laguntzarekin egindako azpitituluak';

  @override
  String get dvirPostTripDefectButton => 'Akatsak';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Argazkirik gabe akats bat salatu';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Oharra: Segurtasun-guneetan akats bat salatu duzu argazki bat erantsirik gabe.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ikuskapena: Autobusa $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Sartu segurtasun-arazoen xehetasunak...';

  @override
  String get dvirPostTripNotesLabel => 'Oharrak (defektuen inguruko aginduak) eta argazkia';

  @override
  String get dvirPostTripNotesPassedHint => 'Defektua hautatu segurtasun-kontuen xehetasunak sartzeko...';

  @override
  String get dvirPostTripOdometerHeader => 'Odometroaren oraingo irakurketa';

  @override
  String get dvirPostTripOdometerInstructions => 'Sartu kilometrajearen irakurketa autobusaren tresna-panelen agertzen den bezala:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometroa (milak)';

  @override
  String get dvirPostTripOdometerTitle => 'Ibilgailuak ibiltzeko denbora metrikoa';

  @override
  String get dvirPostTripOdometerWarning => 'Mesedez, sartu odometroaren irakurketa.';

  @override
  String get dvirPostTripPassButton => 'Pasatu egin behar da.';

  @override
  String get dvirPostTripPhotoAttached => 'Argazkia arrakastaz erantsita.';

  @override
  String get dvirPostTripProgressLabel => 'Inspekzioaren aurrerapena';

  @override
  String get dvirPostTripSignatureCaptured => 'Sinadura harrapatu dugu.';

  @override
  String get dvirPostTripSignatureCert => 'Ziurtatzen dut ibilgailuen kontrol zerrenda hau osatua dagoela FMCSA 396.11 araudiaren arabera.';

  @override
  String get dvirPostTripSignatureTitle => 'Gidariaren sinadura egiaztatzea';

  @override
  String get dvirPostTripSubmitButton => '-Bazterketa bat egin behar da.';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR arrakastatsua izan da.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA _V0__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '-Zonaldeak';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Onartzen dut azken akats txostenaren berri eman dudala eta konponketak egiaztatu ditudala eta autobusa segurua dela adierazi dudala.';

  @override
  String get dvirPreTripActiveMessage => 'Ibilgailu hau aktiboa da, eta ez du akatsik.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Ibilbide aktiboa:';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'AEBetako lege-aldaketa-zerbitzuek';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobusaren zenbakia:';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Ibilgailuen banaketa egiaztatu';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Sinatu ez dutena:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Ez dago aurreko akatsik.';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ibilgailu hau garbia izan da bidaia ostean egin zen lehenengo txanda-ikusketan.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ez dago konponketarik behar.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ibilgailu hau konponketak egiteko edo mantentzeko erabilera gaindituta dago.';

  @override
  String get dvirPreTripOutofServiceButton => 'Ibilgailuak ez dira zerbitzuan egongo.';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Arrazoiak:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- ... (Konponduta)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Akats berriak';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Erreparatu bitartean, akats berriak salatzea ez da posible.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Egoera:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Garraioaren Administrazioaren azpiko ebazpena';

  @override
  String get dvirPreTripReturnToHomeButton => 'Etxera bueltatu';

  @override
  String get dvirPreTripSignOffTitle => 'Ibiliko gara.';

  @override
  String get dvirPreTripSignedSuccess => 'Egiaztapenak arrakastaz sinatu du.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Ekarri egiaztapen bat';

  @override
  String get dvirPreTripTitle => 'Bidaia aurretik egiaztatzea';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Ibilgailuaren egoera:';
  }

  @override
  String get dvirSigDrawTitle => 'Sinadura marraztu';

  @override
  String get dvirSigPreviewLabel => 'Sinadura aurrez-aurrean:';

  @override
  String get dvirSigRedraw => '- Ez.';

  @override
  String get dvirSigSave => 'Sinadura salbatu';

  @override
  String get dvirSigTapToDraw => 'Tape bat sinadura egiteko (eskatua)';

  @override
  String get dvirSigWatermark => 'Sinatu bertikalki (behetik goitik)';

  @override
  String get forgotPasswordCancel => 'Bertan behera utz';

  @override
  String get forgotPasswordEmailLabel => 'Mezu elektronikoa';

  @override
  String get forgotPasswordInvalidEmail => 'Mesedez, idatzi e-mail bat.';

  @override
  String get forgotPasswordSend => 'Bidali.';

  @override
  String get forgotPasswordSuccess => 'Mezu hori existitzen bada, berreskuratzeko lotura bidali dute.';

  @override
  String get genericBack => 'Atzera.';

  @override
  String get genericCancel => 'Bertan behera utz';

  @override
  String get genericClear => 'Argi dago.';

  @override
  String get genericClose => 'Hurbildu.';

  @override
  String get genericConfirm => 'Baieztatu.';

  @override
  String get genericEdit => 'Editatu';

  @override
  String get genericError => 'Zerbait gaizki atera da.';

  @override
  String get genericLoading => 'Kargatzen ari dira...';

  @override
  String get genericNext => 'Hurrengoa';

  @override
  String get genericOk => '-Ondo dago.';

  @override
  String get genericRetry => 'Berriz saiatu.';

  @override
  String get genericSuccess => 'Arrakasta';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobusa:';
  }

  @override
  String get homeDispatchBlocked => 'Bidalketa blokeatuta';

  @override
  String get homeDispatchBlockedTitle => 'Bidalketa blokeatuta';

  @override
  String get homeErrorNoRoutesPreTrip => 'Ez dago biderik pre-trip egiteko.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ez dabil zerbitzariaren bidean.';
  }

  @override
  String homeHi(Object name) {
    return 'Kaixo, V0';
  }

  @override
  String get homeLogout => 'Sarrera';

  @override
  String get homeMenuAppInfo => 'Aplikazioaren informazioa';

  @override
  String get homeMenuDrill => 'Zundatu';

  @override
  String get homeMenuDriverDetails => 'Gidariaren xehetasunak';

  @override
  String get homeMenuLanguage => 'Hizkuntza';

  @override
  String get homeMenuPreTrip => 'Bidaia aurretik ikuskatzea';

  @override
  String get homeNoRoutes => 'Ez dago ibilbiderik.';

  @override
  String get homeReviewVerifyPreTrip => 'Ibilbidetik aurrera berrikusi eta egiaztatu';

  @override
  String get homeSearchHint => 'Bilaketa ibilbideak';

  @override
  String get homeStart => 'Hasiera';

  @override
  String get homeTitle => 'Etxean';

  @override
  String get homeVehicleOutOfServiceDefault => 'Ibilgailuak ez du funtzionatzen.';

  @override
  String get homeVehicleReady => 'Ibilgailua prest dago eta segurtasun-operazioaren egiaztatua.';

  @override
  String get languageTitle => 'Hizkuntza';

  @override
  String get loginButton => 'Sartu';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail edo telefono zenbakia';

  @override
  String get loginErrorEnterPassword => 'Sartu pasahitza.';

  @override
  String get loginErrorEnterUsername => 'Sartu erabiltzaile izena.';

  @override
  String get loginErrorFailed => 'Sarrera huts egin da.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Idatzi e-mail edo telefono zenbaki bat.';

  @override
  String get loginForgotPassword => 'Pasahitza ahaztu duzu?';

  @override
  String get loginPasswordLabel => 'Pasahitza';

  @override
  String get mapChildrenTooltip => 'Umeak eta tutoreak';

  @override
  String get mapConfirmMessage => 'Benetan bidaia amaitu nahi duzu?';

  @override
  String get mapConfirmTitle => 'Baieztatu.';

  @override
  String get mapCurrentPosition => 'Egungo posizioa';

  @override
  String get mapNo => 'Ez, ez.';

  @override
  String get mapReconnectMessage => 'Kokapenaren eguneratzeak maiz huts egiten du. Begiratu zure interneteko datuak.';

  @override
  String get mapReconnectTitle => 'Jarraitzailea';

  @override
  String get mapStop => 'Gelditu.';

  @override
  String get mapStopping => 'Gelditu egin behar dut.';

  @override
  String get mapStopsTooltip => 'Geldialdiak';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Berriro eguneratu da.';
  }

  @override
  String get mapWaitingGps => 'GPSaren zain...';

  @override
  String get mapYes => 'Bai, bai.';

  @override
  String get splashDriverApp => 'Gidari aplikazioa';

  @override
  String get stopsActionUndo => 'Ez dago.';

  @override
  String get stopsCancelledSuccess => 'Erraz bertan behera utzi dute.';

  @override
  String get stopsDefaultLabel => 'Gelditu.';

  @override
  String get stopsGenericError => 'Zerbait gaizki irten da.';

  @override
  String get stopsStatusComplete => 'osatua';

  @override
  String get stopsStatusDone => 'Egina';

  @override
  String stopsSubmitCount(Object count) {
    return 'Aurkeztu ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Arrakastaz aurkeztu da';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Aukeratu egin da.';
  }

  @override
  String get stopsTypeDrop => 'Utzi.';

  @override
  String get stopsTypePick => 'Aukeratu';

  @override
  String stopsUndoCount(Object count) {
    return 'Ez dago arazorik.';
  }

  @override
  String get stopsUndoTooltip => 'Aukera/deskontua ezeztatzea';

  @override
  String get tripConfirmCancel => 'Bertan behera utz';

  @override
  String get tripConfirmOk => 'Ondo dago.';

  @override
  String get tripConfirmTitle => 'Jarraitzailea';

  @override
  String get tripErrorLocationRequired => 'Bidaia hasteko beharrezkoa da kokapen baimena.';

  @override
  String get homeMenuPostCrashReporting => 'Istripua gertatu ostean eginiko txostenak';

  @override
  String homeVehicleReason(Object reason) {
    return 'Arrazoiak:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Egoera:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return '- Ez, ez.';
  }

  @override
  String get crashLocationPickerSearchHint => 'Bilaketa-lekuak (adibidez Market St)';

  @override
  String get crashLocationPickerTitle => 'Aukeratu kokapena mapa';

  @override
  String get crashLocationPickerTooltip => 'Lekua baieztatu.';

  @override
  String get incidentDashboardDescription => 'Aukeratu ekintza bat gertakarien kudeaketa aurrera ateratzeko edo iraganeko txostenak ikus ditzazun.';

  @override
  String get incidentDashboardHeadline => 'Istripuaren ondoren gertatutakoak';

  @override
  String get incidentDashboardLogNew => 'Log berriak';

  @override
  String get incidentDashboardLogNewSubtitle => 'Hasi txosten berri bat, urratsez urrats.';

  @override
  String get incidentDashboardTitle => 'Istripuaren ondorengo gertakaria';

  @override
  String get incidentDashboardViewHistory => 'Historia ikusi';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Ikusi aurreko istripuen txostenak eta egoera';

  @override
  String get incidentDetailsAdminLetter => 'Administrazioaren gutuna';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholaren azterketa atzera-kontua (2 orduko muga)';

  @override
  String get incidentDetailsBranchId => 'Sarea identifikatu';

  @override
  String get incidentDetailsBusPlate => 'Autobusen lizentzia plaka';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Erresumoak:';
  }

  @override
  String get incidentDetailsCitationIssued => 'Gidariari egindako aipamena';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordenatuak: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return 'V0... kopia egin du!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopia egin taula gaineko orrialdeari';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Informazioa';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data eta ordua:';
  }

  @override
  String get incidentDetailsDoeReport => 'DOEren txostena';

  @override
  String get incidentDetailsDoeReportTitle => 'Estatuko DOEren txostena (hautazkoa)';

  @override
  String get incidentDetailsDriverNotes => 'Gidariaren oharrak:';

  @override
  String get incidentDetailsDriverUserId => 'Gidariaren erabiltzaile-zenbakia';

  @override
  String get incidentDetailsDrugCountdown => 'DOT droga-proba-kontuazioa (8 orduko muga)';

  @override
  String get incidentDetailsFatalityOccurred => 'Hilketa bat gertatu zen';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return '#_V0_# gertakaria';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Zauriak medikuak behar ditu';

  @override
  String get incidentDetailsLawEnforcement => 'Legearen Indargarritasun Agentzia';

  @override
  String get incidentDetailsLoadFailed => 'Ez dut xehetasunik jaso.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Kokapena:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medietan erantsitakoak';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Egoera:';
  }

  @override
  String get incidentDetailsNo => 'Ez, ez.';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ez dago argazkirik edo bideoik.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ez zegoen ikaslerik ontzian.';

  @override
  String get incidentDetailsNotificationsDesc => 'Jakinarazpen txostenak sortzen dira eta gutun ereduak bidaltzen dira auzoko gainbegiratzaileei edo administraziora.';

  @override
  String get incidentDetailsNotificationsTitle => 'Bidalketa-oharrei buruz';

  @override
  String get incidentDetailsOfficer => 'Agentearen xehetasunak';

  @override
  String get incidentDetailsPoliceReport => 'Poliziaren txostenaren zenbakia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Bidalketa-gutun aurrez beteta:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Oinarri araudiak:';

  @override
  String get incidentDetailsRouteId => 'Ibilbidearen identifikazioa';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Eskola administratzailearen jakinarazpena';

  @override
  String get incidentDetailsStatusPending => 'Zain';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Xehetasunak:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Zaurituak';

  @override
  String get incidentDetailsStudentNoInjury => 'Ez dago zauriturik.';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Grabitatea:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return '-Bideoa:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Ikasleak ontzian';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Ez da beharrezkoa.';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Egoera:';
  }

  @override
  String get incidentDetailsTitle => 'Gertaera-detailak';

  @override
  String get incidentDetailsVehicleTowed => 'Ibilgailuak arrastaka';

  @override
  String get incidentDetailsYes => 'Bai, bai.';

  @override
  String get incidentHistoryEmpty => 'Ez dago istripurik ibilgailu honetan.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ez da lortu egunerokoak berreskuratzea: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Autobusa: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return '#_V0_# gertakaria';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ez da beharrezkoa.';

  @override
  String get incidentHistoryTestingRequired => 'Beharrezkoa';

  @override
  String get incidentHistoryTitle => 'Istripuaren ondorengo gertakarien erregistroa';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Beste argazki bat gehitu';

  @override
  String get incidentIntakeBadgeNumberError => 'Beharrezkoa';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Txartel zenbakia *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobusaren zenbakia:';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Gertaera-eszenaren argazkia.';

  @override
  String get incidentIntakeCitationSubtitle => 'Eskola autobuseko gidariariari bidalitako zigor-agiria?';

  @override
  String get incidentIntakeCitationTitle => '-Hitzaldia?';

  @override
  String get incidentIntakeDateTimeLabel => '\"Eta ez da beharrezkoa\".';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Ez da beharrezkoa.';

  @override
  String get incidentIntakeDotTestingRequired => 'Froga beharrezkoa';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Gidaria:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Sartu kointzidentziaz gaineko oharrak...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Gidariaren gertakarien oharrak';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Bidaiariak kargatzeko gai ez direnak: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Froga bat gehitu (argazkiak) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Istripu honen ondorioz hildakoak izan dira?';

  @override
  String get incidentIntakeFatalityTitle => 'Hilketak gertatu dira?';

  @override
  String get incidentIntakeGpsLabel => 'GPS Koordenatuak';

  @override
  String get incidentIntakeHistoryTooltip => 'Historia ikusi';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Norbaitek kalte fisiko bat izan zuen eta medikuak berehala tratatu behar zuen.';

  @override
  String get incidentIntakeInjuriesTitle => 'Zauriak medikuaren tratamendua beharrezkoak?';

  @override
  String get incidentIntakeInjuryNotesError => 'Zaurien aurkako oharrak beharrezkoak dira zaurituen ikasleentzat.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Zauriaren oharrak / Xehetasunak (Onartezkoak) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Zauri larria';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Sartu agintaritzan.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Legearen Indargarritasun Agentzia (adibidez, Estatuko Autobideetako Patruila) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Legearen eta Poliziaren txostena';

  @override
  String get incidentIntakeLocationDescError => 'Jarri kokapen deskribapena.';

  @override
  String get incidentIntakeLocationDescLabel => 'Lekuaren deskribapena (adibidez, Market St eta 5. kalea) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Ospitale mediko batera eraman zuten.';

  @override
  String get incidentIntakeNoMatchingStudents => 'Ez dago ikaslerik.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ez dago ikaslerik.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ez dago ikaslerik, sakatu NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ez dago ikaslerik ibilbide honetarako.';

  @override
  String get incidentIntakeOfficerNameError => 'Sartu ofizial baten izena.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Agentearen izena';

  @override
  String get incidentIntakePoliceReportNumberError => 'Sartu poliziaren txostenaren zenbakia.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Poliziaren txostenaren zenbakia';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Bidea:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Ibilbide eta gidariaren informazioa';

  @override
  String get incidentIntakeSearchInjuredHint => 'Bilatu zauritutako haurra...';

  @override
  String get incidentIntakeSearchStudentHint => 'Bilaketa ikaslea...';

  @override
  String get incidentIntakeSelectAll => 'Aukeratu ikasle guztiak';

  @override
  String get incidentIntakeSelectOnMap => 'Mapa aukeratu';

  @override
  String get incidentIntakeSeverityFatal => 'Hilgarria.';

  @override
  String get incidentIntakeSeverityMinor => 'Gutxienez';

  @override
  String get incidentIntakeSeverityModerate => 'Erraza';

  @override
  String get incidentIntakeSeveritySevere => 'Oso larria';

  @override
  String get incidentIntakeSeverityTitle => 'Istripua larritasunaren aldagaiak';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikazioa:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Txosten bat aurkeztu';

  @override
  String get incidentIntakeTitle => 'Istripuaren ondorengo edaria';

  @override
  String get incidentIntakeTowedSubtitle => 'Auto batek kalte handiak jaso ditu eta lekutik atera behar da?';

  @override
  String get incidentIntakeTowedTitle => 'Ibilgailua arrastaka?';

  @override
  String get incidentIntakeWasInjured => 'Zaurituta dago?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobusa:';
  }

  @override
  String get dvirPreTripClose => 'Hurbildu zaitez.';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Gidariaren Oharrak / Oharrak (Aukeratu)';

  @override
  String get dvirPreTripNoComments => 'Ez dago komentario gehiagorik.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Arrazoiak:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Bidea:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Sinadura arrakastatsua da.';

  @override
  String get dvirPreTripSigMissing => 'Sinadura falta da.';

  @override
  String get dvirPreTripSignDefectWarning => 'Sinatu lehenago izan ziren akatsak konpontzeko.';

  @override
  String get dvirPreTripStepSignOff => 'Sinadura';

  @override
  String get dvirPreTripStepSubmit => 'Aurkeztu';

  @override
  String get dvirPreTripStepVerify => 'Egiaztatu';

  @override
  String get dvirPreTripTapNext => 'Jarrai dezagun hurrengoarekin.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Ibilgailuak ez du funtzionatzen.';

  @override
  String get dvirPreTripVehicleReady => 'Ibilgailua prest dago zerbitzuetarako.';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Konponketa egoera egiaztatua:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Mesedez, egiaztatu txostenak konpondu diren edo ez, hutsune bakoitzaren ondoan dagoen kutxa ikusita.';

  @override
  String get dvirPreTripYourComments => 'Zure iritziak:';

  @override
  String get countryPickerNoCountries => 'Ez dago herrialde aurkiturik';

  @override
  String get countryPickerSearchHint => 'Bilatu herrialdearen izena, kodea edo telefonoa...';

  @override
  String get countryPickerTitle => 'Aukeratu herrialdea';

  @override
  String get mapDefaultStop => 'Gelditu.';

  @override
  String get mapEndLocation => 'Amaierako kokapena';

  @override
  String get mapStartLocation => 'Hasiera kokapena';

  @override
  String get stopsNoChangesToUndo => 'Ez dago ezer aldatzeko.';

  @override
  String get stopsNoStopsAvailable => 'Ez dago geldialdirik.';
}
