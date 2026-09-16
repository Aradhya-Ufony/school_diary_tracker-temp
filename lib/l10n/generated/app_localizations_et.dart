import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appInfoBuild => 'Rakenda number';

  @override
  String get appInfoDevice => 'Seadme mudel';

  @override
  String get appInfoOS => 'OS versioon';

  @override
  String get appInfoPackage => 'Pakend';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App versioon';

  @override
  String get appTitleSchoolDiary => 'SD jälgikorraldja';

  @override
  String get childrenActionGuardians => 'Hooldused';

  @override
  String childrenGuardiansFor(Object name) {
    return 'V0__ jaoks volitatud hooldus';
  }

  @override
  String get childrenNoGuardians => 'Selle lapse kohta ei ole ametlikult volitatud hooldajaid.';

  @override
  String get childrenStatusDropped => 'Lükati maha';

  @override
  String get childrenStatusPending => 'Ootmine';

  @override
  String get childrenStatusPicked => 'Valitud';

  @override
  String childrenTitle(Object routeName) {
    return 'Lapsed  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'KÄRJUS / BUSSI KÄRJUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakueeritud';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakueeritud: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ei ole puuduvate õpilaste.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Õpilasi ei märgitud bussil.';

  @override
  String get drillChecklistNotOnBus => 'Mitte bussil';

  @override
  String get drillChecklistOnBusNotEvacuated => 'BUSSI  EBAVUATID';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUSis ($count)';
  }

  @override
  String get drillChecklistProceed => 'Tõendite kogumine';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rutus (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuatsioonikõrgustiku kontrolllista';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Üldiselt on jäänud.';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Kas sa tahad selle õppetöö kirja esitada?';

  @override
  String get drillEvidenceConfirmSubmission => 'Tõendage, et õppetööd on tehtud';

  @override
  String get drillEvidenceDriverNotesHint => 'Kirjelda treeningu teostamist, õpilaste käitumist, kasutatud väljapääsuteid ja kõiki täheldatud erandeid...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Juhtivate märkused (vähemalt 10 karakteri):';

  @override
  String get drillEvidenceFailed => 'Eelmine esitamine ebaõnnestunud';

  @override
  String get drillEvidenceMandatoryWarning => 'Õppe esitamiseks on kohustuslik vähemalt üks fotodelvi või videodelvi.';

  @override
  String get drillEvidenceRecordVideo => 'Video salvestamine';

  @override
  String get drillEvidenceRetrySubmission => 'TÖÖÖVELTUS';

  @override
  String get drillEvidenceReturnToDashboard => 'TÜVELDUS DASHBOARDile';

  @override
  String get drillEvidenceSubmitButton => 'Üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle- ja üle';

  @override
  String get drillEvidenceSubmitting => 'Lähedan õppetöö logist...';

  @override
  String get drillEvidenceSuccess => 'Alustus õnnestus!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakueerimiskäiklus log on edukalt üles laaditud ja on oodatud heakskiitu.';

  @override
  String get drillEvidenceTakePhoto => 'Võta foto';

  @override
  String get drillEvidenceTitle => 'Täiesti vajalik tõendid';

  @override
  String get drillEvidenceUploading => 'Tõendite ja kontrolllista andmete üles laadimine';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Õppe:';
  }

  @override
  String get drillRosterMarkAttendance => 'Märk osalemine';

  @override
  String get drillRosterNoStudents => 'Selle ritte ei registreerunud õpilasi.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Eespool: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Töötades läbi';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Ränd:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Pinna:';
  }

  @override
  String get drillRosterSelectAll => 'Vali kõik';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin märkused';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Kiidetud:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Kiidetud';

  @override
  String get drillSummaryBackToDrills => 'Tagasi õppetööd';

  @override
  String get drillSummaryBusNumber => 'Bussi number';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Juhtiv: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Röövimiste üksikasjad';

  @override
  String get drillSummaryDriverNotesTitle => 'Juhtide märkused';

  @override
  String get drillSummaryDuration => 'Kogu aeg';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sekund';
  }

  @override
  String get drillSummaryEndTime => 'Lõppajak';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakueeritud: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakueeritud';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Tõendid Meedia-ülesanded';

  @override
  String get drillSummaryGps => 'GPS-koordinadid';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'L: V1__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ei ole võimalik ID #$id jaoks varustuse kokkuvõtet laadida. $error';
  }

  @override
  String get drillSummaryNoData => 'Õppeandmeid ei leitud.';

  @override
  String get drillSummaryNotOnBus => 'Mitte bussil';

  @override
  String get drillSummaryOnBusNotEvacuated => 'BUSSI - EGA evakueerita';

  @override
  String get drillSummaryPhotoEvidence => 'Foto tõendid';

  @override
  String get drillSummaryRouteId => 'Ritte ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Pinna:';
  }

  @override
  String get drillSummaryStartTime => 'Alustamise aeg';

  @override
  String get drillSummaryStatus => 'Asjaolu';

  @override
  String get drillSummaryStudentLogTitle => 'Õpilaste evakuatsiooni log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Õppe kokkuvõte (#$id)';
  }

  @override
  String get drillSummaryType => 'Õhustuste tüüp';

  @override
  String get drillSummaryVideoEvidence => 'Videodest tõendid';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Valige õhutamise klassifikatsioon:';

  @override
  String get drillTypeCustomHint => 'Sisestage kohandatud evakuatsiooni õppe tüüp...';

  @override
  String get drillTypeInvalidState => 'Invalidi sõiduk või marsruudi seisund.';

  @override
  String get drillTypeNameBusFire => 'Bussi tulekahju';

  @override
  String get drillTypeNameDangerZone => 'Ohutu tsoon';

  @override
  String get drillTypeNameDriverIncapacitation => 'Juhtide võimetu töö';

  @override
  String get drillTypeNameEquipmentOrientation => 'Varustuste suunamine';

  @override
  String get drillTypeNameFrontDoor => 'Eespoolse ukse';

  @override
  String get drillTypeNameOthers => 'Teised';

  @override
  String get drillTypeNameRearDoor => 'Tagumõpp';

  @override
  String get drillTypeNameSideOrRoof => 'Linna või katus';

  @override
  String get drillTypeNameSplit => 'Kattu';

  @override
  String get drillTypeNoRouteSelected => 'Ei valitud teed';

  @override
  String get drillTypePreparation => 'Püüavalmis';

  @override
  String get drillTypeProceed => 'Õpilaste nimekirja tegemine';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Ränd:';
  }

  @override
  String get drillTypeSelectRoute => 'Võtke tee:';

  @override
  String get drillTypeSpecifyCustom => 'Määrake õhutussõiduki tüübi kirjeldus:';

  @override
  String get drillTypeTitle => 'Valige õhutussüsteem';

  @override
  String get drillTypeWarning => 'Veenduge, et sõiduk on enne täitmist turvaliselt parkimist.';

  @override
  String get drillsAssignedVehicle => 'Määratud sõiduk';

  @override
  String get drillsChecking => 'Kontrolli...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Õppe #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Bussi ei ole määratud';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Bussi jaoks ei ole registreeritud treeninguid $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Õppe alustamiseks ei ole võimalusi.';

  @override
  String get drillsShowSummary => 'Näita kokkuvõte';

  @override
  String get drillsStartDrill => 'Alustage õhutamine';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Juhitud: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuatsioonikoerud';

  @override
  String get drillsVehicleOutOfService => 'Sõiduki kasutusest väljas';

  @override
  String get drillsVehicleOutOfServiceMessage => 'See sõiduk on hetkel kasutusest väljas ja ei saa kasutada harjutamiseks.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL klassi';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Juhiluba';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nimi:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Sõiduki reisija';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Koolibus';

  @override
  String get driverDetailsEndorsementsTitle => 'Nõustumised';

  @override
  String get driverDetailsExpiryDateLabel => 'Kogu aegumise kuupäev';

  @override
  String get driverDetailsHolderSignature => 'PÄRKÜJUTAJAL';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Väljaandmise kuupäev';

  @override
  String get driverDetailsLicenseDocTitle => 'Litsentsidokumenti';

  @override
  String get driverDetailsLicenseNoLabel => 'Litsents nr';

  @override
  String get driverDetailsLicenseTitle => 'Litsentside üksikasjad';

  @override
  String get driverDetailsLicenseTypeLabel => 'Litsentsitüüp';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIAL SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klass:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Üldne hindamine';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'LISK:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Eksp: $expiryDate';
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
  String get driverDetailsTapToView => 'Püüa DL dokumendi nägemiseks';

  @override
  String get driverDetailsTitle => 'Juhtide üksikasjad';

  @override
  String get dvirCategoryBusSafetySystems => 'Bussiohutusüsteemid';

  @override
  String get dvirCategoryCouplingDevices => 'Kopplemisvahendid';

  @override
  String get dvirCategoryEmergencyEquipment => 'Hädaolukorra seadmed';

  @override
  String get dvirCategoryHorn => 'Rõng';

  @override
  String get dvirCategoryLightingReflectors => 'Valgusseadmed ja peegeldused';

  @override
  String get dvirCategoryMirrors => 'Tagasivaate peeglid';

  @override
  String get dvirCategoryParkingBrake => 'Parkimissõiduk';

  @override
  String get dvirCategoryPassengerSeating => 'Sõiduki reisijate istmed ja piirangud';

  @override
  String get dvirCategoryServiceBrakes => 'Teenuse pidurdused';

  @override
  String get dvirCategorySteeringMechanism => 'Juhtimismehhanism';

  @override
  String get dvirCategoryTires => 'Rööv';

  @override
  String get dvirCategoryWheelsRims => 'Rütid ja riimid';

  @override
  String get dvirCategoryWipers => 'Õhuklaasi puhastamine';

  @override
  String get dvirPostTripCapturePhoto => 'PIDALISKÜLKÜLKÜLKÜLKÜLKÜLKÜLK';

  @override
  String get dvirPostTripComplianceTitle => 'TÕBELUSKÜIDUS';

  @override
  String get dvirPostTripDefectButton => 'VÄRK';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Väärtuse teatamine ilma fototeta';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Hoiatus: Te teatate ohutuspiirkonnas ($zones) puudusest ilma fotot lisamata.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektsioon: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Kirjuta sisemised andmed ohutusprobleemidest...';

  @override
  String get dvirPostTripNotesLabel => 'Märkused (VALUS VÕI) ja PIDO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Võtke DEFECT, et sisestada ohutusprobleemide üksikasjad...';

  @override
  String get dvirPostTripOdometerHeader => 'Praegune Odometri lugemine';

  @override
  String get dvirPostTripOdometerInstructions => 'Kirjuta sõidumeesmärk täpselt nii, nagu on näidatud bussil:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (milid)';

  @override
  String get dvirPostTripOdometerTitle => 'Sõiduki jooksmine AJA METRIK';

  @override
  String get dvirPostTripOdometerWarning => 'Enne alustamist kirjuta palun sõidumeetori lugemine.';

  @override
  String get dvirPostTripPassButton => 'Üleviis';

  @override
  String get dvirPostTripPhotoAttached => 'Foto on õnnestunud.';

  @override
  String get dvirPostTripProgressLabel => 'Kontrolli edusammud';

  @override
  String get dvirPostTripSignatureCaptured => 'Alkiri kinni.';

  @override
  String get dvirPostTripSignatureCert => 'Tunnistan, et see sõidukite ümberkäikluslistide kontrollaruanne on täitetud FMCSA 396.11 eeskirjade kohaselt.';

  @override
  String get dvirPostTripSignatureTitle => 'Juhendi allkirja kontrollimine';

  @override
  String get dvirPostTripSubmitButton => 'Ülemkordne kontroll';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR esitati edukalt.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'V1 _ V1 _';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total tsoonid';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Tunnistan, et olen läbi vaadanud viimase esitatud defektiaruande ning kontrollinud parandusi (kui neid on) ning kinnitan, et buss on ohutu käitamiseks.';

  @override
  String get dvirPreTripActiveMessage => 'See sõiduk on aktiivne ja puudub avalikud defektid.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiivne marsruut: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'OTTESOIT: Eelmise päeva defektid';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Bussi number: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Sõiduki saatmise kontroll';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ega allkirjastatud: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Eelmisi puudusi ei registreeritud';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'See sõiduk oli eelneval sõidujärgsel vahetustegevusel puhas.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Turvalise töö jaoks ei ole vaja remonteid.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'See sõiduk on remondi- ja hoolduskohast välja.';

  @override
  String get dvirPreTripOutofServiceButton => 'Sõidukitööstuse lõpetamine';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Põhjus:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ÜÜLÜTATUD)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'UUDED VÕIKUD';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Uute defektide teatamine on paranduste ajal keelatud.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transpordi alljuhtade otsus';

  @override
  String get dvirPreTripReturnToHomeButton => 'TÜVELUKE KÄI';

  @override
  String get dvirPreTripSignOffTitle => 'SELTAMISKE KÄIJU';

  @override
  String get dvirPreTripSignedSuccess => 'Kontrollimine on õnnestunud.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Eeskirja kinnitus';

  @override
  String get dvirPreTripTitle => 'Reisi ettevalmistus';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Sõiduki seisund: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Rõmida allkirja';

  @override
  String get dvirSigPreviewLabel => 'Saadav allkirja eelvaate:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Säästa allkirja';

  @override
  String get dvirSigTapToDraw => 'TAPIP, et tõmmata allkirja (nõutav)';

  @override
  String get dvirSigWatermark => 'Märkige vertikaalselt (Alust Üle)';

  @override
  String get forgotPasswordCancel => 'Kannuleerumine';

  @override
  String get forgotPasswordEmailLabel => 'E-posti';

  @override
  String get forgotPasswordInvalidEmail => 'Palun kirjuta sisse kehtiv e-posti.';

  @override
  String get forgotPasswordSend => 'Saada';

  @override
  String get forgotPasswordSuccess => 'Kui see e-kirja on olemas, on saadetud uuskordne link.';

  @override
  String get genericBack => 'KASK tagasi';

  @override
  String get genericCancel => 'Kannuleerumine';

  @override
  String get genericClear => 'KLEER';

  @override
  String get genericClose => 'Lähedalt';

  @override
  String get genericConfirm => 'Vahetage';

  @override
  String get genericEdit => 'Editeerida';

  @override
  String get genericError => 'Midagi läks valesti.';

  @override
  String get genericLoading => 'Laadimine...';

  @override
  String get genericNext => 'Järgmine';

  @override
  String get genericOk => 'Olgu, olgu.';

  @override
  String get genericRetry => 'Proovige uuesti.';

  @override
  String get genericSuccess => 'Edu';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus:';
  }

  @override
  String get homeDispatchBlocked => 'Lähetus blokeeritud';

  @override
  String get homeDispatchBlockedTitle => 'Lähetus blokeeritud';

  @override
  String get homeErrorNoRoutesPreTrip => 'Pre-Trip\'i jaoks ei ole marsruutid.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Serveri käivitus ei õnnestunud: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Tere, V0__';
  }

  @override
  String get homeLogout => 'Loguut';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Päritamine';

  @override
  String get homeMenuDriverDetails => 'Juhtide üksikasjad';

  @override
  String get homeMenuLanguage => 'Keel';

  @override
  String get homeMenuPreTrip => 'Reisi ettevaatlik kontroll';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Ritte ei ole kättesaadavad';

  @override
  String get homeReviewVerifyPreTrip => 'Reisimine ja kontroll reiside eel';

  @override
  String get homeSearchHint => 'Otsinguteed';

  @override
  String get homeStart => 'Alustage';

  @override
  String get homeTitle => 'Kodus';

  @override
  String get homeVehicleOutOfServiceDefault => 'Sõiduki töö on hetkel OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Sõiduk on valmis ja ohutu käitamiseks kontrollitud.';

  @override
  String get languageTitle => 'Keel';

  @override
  String get loginButton => 'Sissepääs';

  @override
  String get loginEmailOrPhoneLabel => 'E-posti või telefoninumber';

  @override
  String get loginErrorEnterPassword => 'Palun kirjuta parool';

  @override
  String get loginErrorEnterUsername => 'Palun kirjuta kasutajanimi';

  @override
  String get loginErrorFailed => 'Sa ei saa sisse pääseda.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Palun kirjuta sisse kehtiv e-posti või telefoninumber';

  @override
  String get loginForgotPassword => 'Kas sa unustasid parooli?';

  @override
  String get loginPasswordLabel => 'Salaus';

  @override
  String get mapChildrenTooltip => 'Lapsed ja hooldused';

  @override
  String get mapConfirmMessage => 'Kas sa tõesti tahad reisi lõpetada?';

  @override
  String get mapConfirmTitle => 'Vahetage';

  @override
  String get mapCurrentPosition => 'Praegune positsioon';

  @override
  String get mapNo => 'Ei, ei.';

  @override
  String get mapReconnectMessage => 'Asukoht updateave ei tööta sageli, palun vaata oma internetti.';

  @override
  String get mapReconnectTitle => 'Jälgikorraldja';

  @override
  String get mapStop => 'Lõpeta.';

  @override
  String get mapStopping => 'Lõpetamine...';

  @override
  String get mapStopsTooltip => 'Lõpetamine';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Päevastik ${seconds}s tagasi';
  }

  @override
  String get mapWaitingGps => 'Ootades GPS-i...';

  @override
  String get mapYes => 'Jah, ma olen.';

  @override
  String get splashDriverApp => 'Juhtimisapp';

  @override
  String get stopsActionUndo => 'Kinnitamine';

  @override
  String get stopsCancelledSuccess => 'Üheks tehtud tühistamine';

  @override
  String get stopsDefaultLabel => 'Lõpeta.';

  @override
  String get stopsGenericError => 'Midagi läks valesti.';

  @override
  String get stopsStatusComplete => 'Täiesti';

  @override
  String get stopsStatusDone => 'tehtud';

  @override
  String stopsSubmitCount(Object count) {
    return 'Esitatakse ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Eduka esitamine';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'V0__ valitud · V1__/__ V2__ __ V3__';
  }

  @override
  String get stopsTypeDrop => 'Lase käia.';

  @override
  String get stopsTypePick => 'Valige';

  @override
  String stopsUndoCount(Object count) {
    return 'Väärt ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Võtmise/lõmbamise tühistamine';

  @override
  String get tripConfirmCancel => 'Kannuleerumine';

  @override
  String get tripConfirmOk => 'Olgu.';

  @override
  String get tripConfirmTitle => 'Jälgikorraldja';

  @override
  String get tripErrorLocationRequired => 'Reisi alustamiseks on vaja asukoha loa.';

  @override
  String get homeMenuPostCrashReporting => 'Rikutuse järel teatamine';

  @override
  String homeVehicleReason(Object reason) {
    return 'Põhjus:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'L: V1__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Otsingu asukoht (nt Market St)';

  @override
  String get crashLocationPickerTitle => 'Vali koht kaardil';

  @override
  String get crashLocationPickerTooltip => 'Vahesta asukoht';

  @override
  String get incidentDashboardDescription => 'Valige toiming, et jätkata sündmuste juhtimist või vaadata minevikus esitatud aruandeid.';

  @override
  String get incidentDashboardHeadline => 'Rikutuse järel toimunud sündmuste teatamine';

  @override
  String get incidentDashboardLogNew => 'Log Uus Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Alustada uue samm-sammuringu raporti';

  @override
  String get incidentDashboardTitle => 'Pärast õnnetust sündmus';

  @override
  String get incidentDashboardViewHistory => 'Vaadake ajalugu';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vaadake eelnevad õnnetusaruanded ja -status';

  @override
  String get incidentDetailsAdminLetter => 'Admin kirja';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholistestest tagasiarvutamine (2 tunni piir)';

  @override
  String get incidentDetailsBranchId => 'Ülemkogu ID';

  @override
  String get incidentDetailsBusPlate => 'Bussi litsentsite plaat';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citatsiooni mõju: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Sõidukijuhile antud tsitaat';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinad: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopeeritud kliimapall!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopioda klipplaadile';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Aeg ja kuupäev:';
  }

  @override
  String get incidentDetailsDoeReport => 'Euroopa Liidu toimimise lepingu (DOE) aruanne';

  @override
  String get incidentDetailsDoeReportTitle => 'Riigi ametikohtu aruande (valimine)';

  @override
  String get incidentDetailsDriverNotes => 'Juhtivate märkused:';

  @override
  String get incidentDetailsDriverUserId => 'Juhti kasutaja ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT uimastite testide tagasiarvutus (8-tunnise piir)';

  @override
  String get incidentDetailsFatalityOccurred => 'Tapmis sündmus';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Õnnetus #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Haavad, mille jaoks on vaja meditsiinilist ravi';

  @override
  String get incidentDetailsLawEnforcement => 'Õigustoetuse amet';

  @override
  String get incidentDetailsLoadFailed => 'Ma ei saanud üksikasju laadida.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Koht:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Meediale lisatud dokumendid';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'Ei ole';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ei ole fotosid ega videoid.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Õpilased ei olnud õnnetuse ajal pardal märgistatud.';

  @override
  String get incidentDetailsNotificationsDesc => 'Tegelege teatisearuandeid ja saatke piirkonna järelevalveametile või haldusasutusele vormiga kirjad.';

  @override
  String get incidentDetailsNotificationsTitle => 'Üleandmise teated';

  @override
  String get incidentDetailsOfficer => 'Ametnikud';

  @override
  String get incidentDetailsPoliceReport => 'Politseiaruande number';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Eelmine täidetud edastamiskirja:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Määruse alus:';

  @override
  String get incidentDetailsRouteId => 'Ritte ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Kooli juhataja teatis';

  @override
  String get incidentDetailsStatusPending => 'Ootmine';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Täpsemad andmed:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Rängunud';

  @override
  String get incidentDetailsStudentNoInjury => 'Ei vigastust.';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Raskus:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Veetakse:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Õpilased pardal ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TESTIMINIS POST-Crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Juhtumide üksikasjad';

  @override
  String get incidentDetailsVehicleTowed => 'Sõiduki tõmmine';

  @override
  String get incidentDetailsYes => 'Jah, see on tõsi.';

  @override
  String get incidentHistoryEmpty => 'Selle sõiduki kohta pole registreeritud juhtumite logid.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Löögivõimeline: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Aeg: V0__ Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Õnnetus #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Mitte nõutav';

  @override
  String get incidentHistoryTestingRequired => 'Nõutav';

  @override
  String get incidentHistoryTitle => 'Rünnakujärgne sündmuste registris';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Lisage veel üks foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Nõutav';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Piltnumber *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bussi number: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Pilt sündmusse kohta';

  @override
  String get incidentIntakeCitationSubtitle => 'Kas koolibussjuhjale oli antud liiklusrikkumise kohta kutsutud?';

  @override
  String get incidentIntakeCitationTitle => 'Kas on välja antud tsitaat?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash kuupäev ja aeg *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'KÕIKUTESTAMIS ei ole vajalik';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTIMIS on vajalik';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Juht:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Kirjuta koondumise kohta täiendavad märkused...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Juhtumi märkused';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Ritte reisijate laadimisest ebaõnnestunud: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Lisage tõendid (fotod) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Kas selle õnnetuse tagajärjel on juhtunud surmajuhtumeid?';

  @override
  String get incidentIntakeFatalityTitle => 'Kas surm on juhtunud?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-koordinadid *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vaadake ajalugu';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Kas keegi sai ruumihaavast, mis nõudis viivitamatut meditsiinilist ravi?';

  @override
  String get incidentIntakeInjuriesTitle => 'Kas vigastused vajavad meditsiinilist ravi?';

  @override
  String get incidentIntakeInjuryNotesError => 'Rängitud õpilastele on kohustuslik vigastuste märkmed.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Rängimismärgid / üksikasjad (kohustuslikud) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Ränguse raskus *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Palun sisenege õiguskaitseametisse.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Õigustoetuse amet (nt riigiprotoll) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Õigustoetused ja politseiaruanne';

  @override
  String get incidentIntakeLocationDescError => 'Palun kirjuta asukoht kirjeldus';

  @override
  String get incidentIntakeLocationDescLabel => 'Asukoht (nt Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Raviasutusesse saadetud';

  @override
  String get incidentIntakeNoMatchingStudents => 'Ei sobivaid õpilasi.';

  @override
  String get incidentIntakeNoStudentsFound => 'Õpilasi ei leitud.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Õpilased ei ole pardal.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Sellele marsruudile ei registreeritud õpilasi.';

  @override
  String get incidentIntakeOfficerNameError => 'Palun kirjuta ametniku nimi.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ametnik nime *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Palun kirjuta politseiaruande number.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Politseiaruande number *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Ränd:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Ritte ja juhtivate andmete kohta';

  @override
  String get incidentIntakeSearchInjuredHint => 'Otsige vigastatud last...';

  @override
  String get incidentIntakeSearchStudentHint => 'Otsingud üliõpilane...';

  @override
  String get incidentIntakeSelectAll => 'Vali kõik õpilased';

  @override
  String get incidentIntakeSelectOnMap => 'VALJULIS MAPI';

  @override
  String get incidentIntakeSeverityFatal => 'Kahjulik';

  @override
  String get incidentIntakeSeverityMinor => 'Väikesed';

  @override
  String get incidentIntakeSeverityModerate => 'Keskmine';

  @override
  String get incidentIntakeSeveritySevere => 'Rõhk';

  @override
  String get incidentIntakeSeverityTitle => 'Rünnaku raskusvariaablid';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'EL-i ja Euroopa Liidu toimimise lepingu artikli 4 lõike 1 punkt 1';

  @override
  String get incidentIntakeTitle => 'Pärast õnnetust tekkinud kogumäär';

  @override
  String get incidentIntakeTowedSubtitle => 'Kas mõni auto sai kahjustusi, mis nõudis selle tõmmamist kohta?';

  @override
  String get incidentIntakeTowedTitle => 'Sõiduki tõmmata?';

  @override
  String get incidentIntakeWasInjured => 'Kas ta oli vigastatud?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'Lähedalt';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Juhtide märkused / märkused (valimine)';

  @override
  String get dvirPreTripNoComments => 'Ei lisatud märkusi.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Põhjus:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Ränd:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Alkirja õnnestus saada.';

  @override
  String get dvirPreTripSigMissing => 'Alkirja puudub.';

  @override
  String get dvirPreTripSignDefectWarning => 'Palun allkirja, et kinnitada eelnevate defektide parandamine.';

  @override
  String get dvirPreTripStepSignOff => 'Alkiri';

  @override
  String get dvirPreTripStepSubmit => 'Esitada';

  @override
  String get dvirPreTripStepVerify => 'Kontrolli';

  @override
  String get dvirPreTripTapNext => 'Palun vajutage järgmise.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Sõiduk on tööst väljas';

  @override
  String get dvirPreTripVehicleReady => 'Sõiduk on teenistamiseks valmis';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Kontrollita parandamise seisund:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Kontrollige, kas kõik teatatud defektid on parandatud, kontrollima iga defekti kõrval olevat lahti.';

  @override
  String get dvirPreTripYourComments => 'Teie märkused:';

  @override
  String get countryPickerNoCountries => 'Riike ei leitud';

  @override
  String get countryPickerSearchHint => 'Otsime riigi nime, kood või numbrikoodi järgi...';

  @override
  String get countryPickerTitle => 'Vali riik';

  @override
  String get mapDefaultStop => 'Lõpeta.';

  @override
  String get mapEndLocation => 'Lõppkoht';

  @override
  String get mapStartLocation => 'Alustamiskoht';

  @override
  String get stopsNoChangesToUndo => 'Muudusi ei saa tühistada.';

  @override
  String get stopsNoStopsAvailable => 'Pole peatusi.';

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

  @override
  String get homeMenuChildSafetyCheck => 'Child Safety Check';

  @override
  String get childSafetyAwayWarningTitle => 'Away from Depot Location';

  @override
  String get childSafetyAwayWarningBody => 'You are not at the depot location. Please go to the depot location and perform the Child Safety Check there.';

  @override
  String get childSafetyOptionOk => 'OK';

  @override
  String get childSafetyOptionMarkHere => 'No, Mark Here Only';

  @override
  String get childSafetyConfirmAwayTitle => 'Warning: Marking Away from Location';

  @override
  String get childSafetyConfirmAwayBody => 'You are about to mark the Child Safety Check away from the designated depot location. Are you sure you want to proceed?';

  @override
  String get childSafetyOptionCancel => 'Cancel';
}
