import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appInfoBuild => 'Izveidojiet numuru';

  @override
  String get appInfoDevice => 'Aparāta modeļa';

  @override
  String get appInfoOS => 'OS versija';

  @override
  String get appInfoPackage => 'Pakete';

  @override
  String get appInfoTitle => 'Aplikācijas informācija';

  @override
  String get appInfoVersion => 'Aplikācijas versija';

  @override
  String get appTitleSchoolDiary => 'SD izskanētājs';

  @override
  String get childrenActionGuardians => 'Strādnieki';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Autorisēti par $name aizstāvji';
  }

  @override
  String get childrenNoGuardians => 'Nav pilnvarots aizbildnis par šo bērnu.';

  @override
  String get childrenStatusDropped => 'Izšķērdināts';

  @override
  String get childrenStatusPending => 'Pārsteidzoši';

  @override
  String get childrenStatusPicked => 'Izvēlies';

  @override
  String childrenTitle(Object routeName) {
    return 'Bērni  __ V0__';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NIEJESĪBĀ / NIE BUSS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuēti';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuēti: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Neatkarīgi no studentu.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Neviens students nav reģistrēts autobuss.';

  @override
  String get drillChecklistNotOnBus => 'Nē, autobuss';

  @override
  String get drillChecklistOnBusNotEvacuated => 'BUSS  NEKĀ evakuēts';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUSS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Lai iegūtu pierādījumus';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rūte (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuācijas vadīšanas pārbaudes saraksts';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Nesaukts students!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Vai esat pārliecināts, ka vēlaties iesniegt šo triksnes žurnālu?';

  @override
  String get drillEvidenceConfirmSubmission => 'Apstiprināt uzvedību';

  @override
  String get drillEvidenceDriverNotesHint => 'Apzīmējiet uzvedību, studentus uzvedību, izmantoto izceļošanas ceļu un visus novērojamos izņēmumus...';

  @override
  String get drillEvidenceDriverNotesLabel => '\"SportaCentrs.com\" ir uzņēmums, kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, un kas veic uzņēmējdarbību, kas veic uzņēmējdarbību, un kas veic uzņēmējdarb';

  @override
  String get drillEvidenceFailed => 'Izdevums neizpildīts';

  @override
  String get drillEvidenceMandatoryWarning => 'Lai iesniegtu uzvedību, ir obligāti jāiesniedz vismaz viens foto vai video pierādījums.';

  @override
  String get drillEvidenceRecordVideo => 'Video ieraksts';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY SUBmission';

  @override
  String get drillEvidenceReturnToDashboard => 'Atpakaļ uz DIŠKĀLĀ';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Attiec uz drēbju žurnālu...';

  @override
  String get drillEvidenceSuccess => 'Atbildība ir veiksmīga!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakuācijas uzvedumu žurnāls ir veiksmīgi uzlabojots un ir gaidāms apstiprinājums.';

  @override
  String get drillEvidenceTakePhoto => 'Fotogrāfiju';

  @override
  String get drillEvidenceTitle => 'obligāti pierādījumi par triešanu';

  @override
  String get drillEvidenceUploading => 'Attestācijas un kontroles sarakstu datu uzlabojums';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'V.V.';
  }

  @override
  String get drillRosterMarkAttendance => 'Markas apmeklējums';

  @override
  String get drillRosterNoStudents => 'Šim maršrutam nav reģistrēti studenti.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Pieeja: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'STOPING TO DROW CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rītā:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sēdes:';
  }

  @override
  String get drillRosterSelectAll => 'Izvēli visus';

  @override
  String get drillSummaryAdminNotesTitle => 'Administratora piezīmes';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Apstiprināts: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Apstiprināts';

  @override
  String get drillSummaryBackToDrills => 'Atpakaļ uz drill';

  @override
  String get drillSummaryBusNumber => 'Autobusa numurs';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Jautājums:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Izkliedēšanas detaļas';

  @override
  String get drillSummaryDriverNotesTitle => 'Autovadītāja piezīmes';

  @override
  String get drillSummaryDuration => 'Laikstāve';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Pagaidu laiks';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuēti: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuēts';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Attestācijas mediju pievienošanās';

  @override
  String get drillSummaryGps => 'GPS koordināti';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nav iespējams iekļūst uzvilkšanas kopsavilkumu ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Neatrodas drilling datu.';

  @override
  String get drillSummaryNotOnBus => 'Ne autobussā';

  @override
  String get drillSummaryOnBusNotEvacuated => 'BUSS - NEKĀ evakuēts';

  @override
  String get drillSummaryPhotoEvidence => 'Fotogrāfijas pierādījumi';

  @override
  String get drillSummaryRouteId => 'Rutas identifikācija';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sēdes:';
  }

  @override
  String get drillSummaryStartTime => 'Sākuma laiks';

  @override
  String get drillSummaryStatus => 'Statuss';

  @override
  String get drillSummaryStudentLogTitle => 'Studentu evakuācijas žurnāls';

  @override
  String drillSummaryTitle(Object id) {
    return 'Izkliedēšanas kopsavilkums (#$id)';
  }

  @override
  String get drillSummaryType => 'Izkūšanas veids';

  @override
  String get drillSummaryVideoEvidence => 'Video pierādījumi';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobuss';
  }

  @override
  String get drillTypeClassification => 'Izvēliet burvju klasifikāciju:';

  @override
  String get drillTypeCustomHint => 'Ievietojiet kustamiskās evakuācijas drills tipa...';

  @override
  String get drillTypeInvalidState => 'Invalides transportlīdzekļa vai maršruta stāvoklis.';

  @override
  String get drillTypeNameBusFire => 'Autobusa uguns';

  @override
  String get drillTypeNameDangerZone => 'Nepieciešamības zona';

  @override
  String get drillTypeNameDriverIncapacitation => 'Vēršuma traucējumi';

  @override
  String get drillTypeNameEquipmentOrientation => 'Izstrādājumu orientācija';

  @override
  String get drillTypeNameFrontDoor => 'Pretējā durvis';

  @override
  String get drillTypeNameOthers => 'Citi';

  @override
  String get drillTypeNameRearDoor => 'Aizmugures durvis';

  @override
  String get drillTypeNameSideOrRoof => 'Rīka vai stūra';

  @override
  String get drillTypeNameSplit => 'Apdalīšana';

  @override
  String get drillTypeNoRouteSelected => 'Neizvēlēta maršruts';

  @override
  String get drillTypePreparation => 'DROIL PREPARATION';

  @override
  String get drillTypeProceed => 'STOPING TO STUDENT RIST';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rītā:';
  }

  @override
  String get drillTypeSelectRoute => 'Izvēli maršrutu:';

  @override
  String get drillTypeSpecifyCustom => 'Specificē drilling tipa aprakstu:';

  @override
  String get drillTypeTitle => 'Izvēliet viršanas veidu';

  @override
  String get drillTypeWarning => 'Pārliecināt, ka transportlīdzeklis ir drošībā stāvs pirms izpildes sākuma.';

  @override
  String get drillsAssignedVehicle => 'Piešķirtais transportlīdzeklis';

  @override
  String get drillsChecking => 'Pārbaudēju...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Izkliedēšana #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Neatšķirts autobuss';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nav reģistrētas triksnes autobusu $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nav pieejamas maršrutes, lai sāktu uzvadīšanu.';

  @override
  String get drillsShowSummary => 'Izskatīt aprakstu';

  @override
  String get drillsStartDrill => 'Sākotnēji';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Izvadīts: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuācijas vadība';

  @override
  String get drillsVehicleOutOfService => 'Transportlīdzeklis no ekspluatācijas';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Šis transportlīdzeklis šobrīd nav ekspluatēts un nevar izmantot uzvadīšanai.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL klase';

  @override
  String get driverDetailsDrivingLicenseLabel => 'KĀRĪBAS LICENCE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAMĀ: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasažers';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Skolas autobuss';

  @override
  String get driverDetailsEndorsementsTitle => 'Pieprasījumi';

  @override
  String get driverDetailsExpiryDateLabel => 'Izpirkšanas diena';

  @override
  String get driverDetailsHolderSignature => 'PILKAS PILKAS';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Izslēgtā datums';

  @override
  String get driverDetailsLicenseDocTitle => 'Licences dokuments';

  @override
  String get driverDetailsLicenseNoLabel => 'Licences Nr.';

  @override
  String get driverDetailsLicenseTitle => 'Licences ziņas';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licences veids';

  @override
  String get driverDetailsOfficialSeal => 'Oficiālais SILS';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLAŠS:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'V.V.';
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
  String get driverDetailsTapToView => 'Slepiniet , lai redzētu DL dokumentu';

  @override
  String get driverDetailsTitle => 'Vairotāja detalizācijas';

  @override
  String get dvirCategoryBusSafetySystems => 'Autobusa drošības sistēmas';

  @override
  String get dvirCategoryCouplingDevices => 'Kopšanas ierīces';

  @override
  String get dvirCategoryEmergencyEquipment => 'Ieguldījumu aprīkojums';

  @override
  String get dvirCategoryHorn => 'Rūns';

  @override
  String get dvirCategoryLightingReflectors => 'Apgādes un reflektoru ierīces';

  @override
  String get dvirCategoryMirrors => 'Aizmugurējais redzesglāzs';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Pasažeru sēdekļi un ierobežojumi';

  @override
  String get dvirCategoryServiceBrakes => 'Darbības bremzes';

  @override
  String get dvirCategorySteeringMechanism => 'Vadīšanas mehānisms';

  @override
  String get dvirCategoryTires => 'Pleses';

  @override
  String get dvirCategoryWheelsRims => 'Rīci un rimu';

  @override
  String get dvirCategoryWipers => 'Vārda stikla čūkas';

  @override
  String get dvirPostTripCapturePhoto => 'PILKAS SILKAS PILKAS PILKAS';

  @override
  String get dvirPostTripComplianceTitle => 'SILDĪBA ANOŠOVĪŠU';

  @override
  String get dvirPostTripDefectButton => 'DEFEKTS';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Iztaudēt defektus bez fotogrāfijas';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'brīdinājums: Jūs ziņojat par defektu drošības zonās ($zones) bez fotogrāfijas pievienošanas.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekcija: autobuss $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Ievietojiet informāciju par drošības jautājumiem...';

  @override
  String get dvirPostTripNotesLabel => 'Piezīmes (PĀRĀKAM par defektus) un FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Izvēlieties DEFECT, lai ievadītu drošības jautājumus...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktuālā Odometra skaitīšana';

  @override
  String get dvirPostTripOdometerInstructions => 'Ievietojiet kilometru skaitli tieši tā, kā tas ir parādīts autobusa instrumentālā paneļā:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VECIEL RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Pirms uzsākšanas iesakām iesakām kilometru skaitli.';

  @override
  String get dvirPostTripPassButton => 'Pasts';

  @override
  String get dvirPostTripPhotoAttached => 'Fotogrāfija ir pievienota veiksmīgi.';

  @override
  String get dvirPostTripProgressLabel => 'Inspekcijas attīstība';

  @override
  String get dvirPostTripSignatureCaptured => 'Atņemts paraksts.';

  @override
  String get dvirPostTripSignatureCert => 'Es apliecinu, ka šo transportlīdzekļa pārrobežu pārbaudes saraksta ziņojumu ir pabeigts saskaņā ar FMCSA 396.11 noteikumiem.';

  @override
  String get dvirPostTripSignatureTitle => 'Vairotāja paraksta pārbaude';

  @override
  String get dvirPostTripSubmitButton => 'IESIEDU INSPEKTIJA';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR tika iesniegts ar panākumu.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total zonas';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Atzīst, ka es esmu pārskata pēdējo iesniegto defektu ziņojumu un pārbaudījis remontus (ja tādi ir) un norādījis, ka autobuss ir drošs ekspluatācijai.';

  @override
  String get dvirPreTripActiveMessage => 'Šis transportlīdzeklis ir aktīvs un bez atklātiem defektem.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivs maršruts: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'IESVĒR DARAM: iepriekšējā dienā konstatēti defekti';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobusa numurs: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VISIEKLAS DISPATŠIEKS';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nav parakstīts: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Neatkarīgi no iepriekšējās defektes';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Šī transportlīdzekļa pārbaude pēc ceļojuma tika veikta ar informāciju par tīrību.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nevajadzētu veikt remontus, lai nodrošinātu drošu darbību.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Šis transportlīdzeklis ir no remonta/apgādes ekspluatācijas.';

  @override
  String get dvirPreTripOutofServiceButton => 'VĒKILS NESVĒJAS';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reizons:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'NVO DEFEKTI';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Atbalsta laikā nav iespējams ziņot par jaunajiem defektēm.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statuss: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transportas apakšadmines rezolūcija';

  @override
  String get dvirPreTripReturnToHomeButton => 'Atgriezieties uz mājām';

  @override
  String get dvirPreTripSignOffTitle => 'SIGNAUDE, lai turpinātu piebraukt';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikācija ir apstiprināta.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Sniedz apstiprinājumu';

  @override
  String get dvirPreTripTitle => 'Pre-turis pārbaude';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Transportlīdzekļa statuss: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Izdotu parakstu';

  @override
  String get dvirSigPreviewLabel => 'Apņemta paraksta priekšizskats:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVE SIGNATURE';

  @override
  String get dvirSigTapToDraw => 'TAP, lai pievilcētu parakstu (VARAS)';

  @override
  String get dvirSigWatermark => 'Atzīmē vertikāli (no apakšā uz augšu)';

  @override
  String get forgotPasswordCancel => 'Atcelt';

  @override
  String get forgotPasswordEmailLabel => 'E-pasts';

  @override
  String get forgotPasswordInvalidEmail => 'Lūdzu, iesakjiet spēkā esošu e-pastu';

  @override
  String get forgotPasswordSend => 'Sūtiet';

  @override
  String get forgotPasswordSuccess => 'Ja tas e-pasts ir, ir nosūtīts atkārtotas saikne.';

  @override
  String get genericBack => 'Atgriežoties';

  @override
  String get genericCancel => 'Atcelt';

  @override
  String get genericClear => 'KLEAR';

  @override
  String get genericClose => 'Pieci';

  @override
  String get genericConfirm => 'Apstiprināt';

  @override
  String get genericEdit => 'Editēt';

  @override
  String get genericError => 'Ko es domāju?';

  @override
  String get genericLoading => 'Uzkraušana...';

  @override
  String get genericNext => 'Nākamais';

  @override
  String get genericOk => 'Labi.';

  @override
  String get genericRetry => 'Izdzīvojiet';

  @override
  String get genericSuccess => 'Atbalsts';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobuss:';
  }

  @override
  String get homeDispatchBlocked => 'Izsūtīšana blokēta';

  @override
  String get homeDispatchBlockedTitle => 'Izsūtīšana blokēta';

  @override
  String get homeErrorNoRoutesPreTrip => 'Pre-Trip veikšanai nav pieejamas maršrutus.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nav sākts brauciens serverā: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Sveicam, V0__';
  }

  @override
  String get homeLogout => 'Izslēgums';

  @override
  String get homeMenuAppInfo => 'Aplikācijas informācija';

  @override
  String get homeMenuDrill => 'Izkliedēšana';

  @override
  String get homeMenuDriverDetails => 'Vairotāja detalizācijas';

  @override
  String get homeMenuLanguage => 'Raksts';

  @override
  String get homeMenuPreTrip => 'Pre-turis inspekcija';

  @override
  String get homeNoRoutes => 'Neatbalsta maršruts';

  @override
  String get homeReviewVerifyPreTrip => 'Pārskatīt un pārbaudīt pirms ceļojuma';

  @override
  String get homeSearchHint => 'Ievautības maršruts';

  @override
  String get homeStart => 'Sākums';

  @override
  String get homeTitle => 'Kādu';

  @override
  String get homeVehicleOutOfServiceDefault => 'Transportlīdzeklis ir pašlaik \"OUT_OF_SERVICE\".';

  @override
  String get homeVehicleReady => 'Transportlīdzeklis ir gatavs un pārbaudīts drošai ekspluatācijai.';

  @override
  String get languageTitle => 'Raksts';

  @override
  String get loginButton => 'Pievienošanās';

  @override
  String get loginEmailOrPhoneLabel => 'E-pasts vai tālruņa numurs';

  @override
  String get loginErrorEnterPassword => 'Lūdzu, iesakjiet salas vārdus';

  @override
  String get loginErrorEnterUsername => 'Lūdzu, iesakjiet lietotāja vārdu';

  @override
  String get loginErrorFailed => 'Vārds nav veikts.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Lūdzu, iesakjiet spēkā esošu e-pastu vai tālruņa numuru';

  @override
  String get loginForgotPassword => 'Atcerēsi pasauli?';

  @override
  String get loginPasswordLabel => 'Paslēpces';

  @override
  String get mapChildrenTooltip => 'Bērni un aizbildētāji';

  @override
  String get mapConfirmMessage => 'Vai tu tiešām gribi slēgt ceļojumu?';

  @override
  String get mapConfirmTitle => 'Apstiprināt';

  @override
  String get mapCurrentPosition => 'Aktuālā stāvokļa';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'Viņu atrašanās vieta atjaunināšana bieži nesasniedz, lūdzu, pārbaudiet interneta.';

  @override
  String get mapReconnectTitle => 'Sarakšotājs';

  @override
  String get mapStop => 'Nē, beidz.';

  @override
  String get mapStopping => '- Nē, beidz.';

  @override
  String get mapStopsTooltip => 'Stojās';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Jautāts pirms 5 gadiem';
  }

  @override
  String get mapWaitingGps => 'Pagaidiet GPS...';

  @override
  String get mapYes => 'Jā, tā ir.';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'Neatkarīgi';

  @override
  String get stopsCancelledSuccess => 'Atceltas ar panākumu';

  @override
  String get stopsDefaultLabel => 'Nē, beidz.';

  @override
  String get stopsGenericError => 'Koga nav kārtībā, pabandiniet vēlreiz.';

  @override
  String get stopsStatusComplete => 'pilnīgs';

  @override
  String get stopsStatusDone => 'darīts';

  @override
  String stopsSubmitCount(Object count) {
    return 'Atdevēts ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sniedzis ar panākumu';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Ja jūs esat izvēlējies, jūs varat izmantot šo metodi.';
  }

  @override
  String get stopsTypeDrop => 'Izstājiet';

  @override
  String get stopsTypePick => 'Izvēli';

  @override
  String stopsUndoCount(Object count) {
    return 'Neatkarīgi no tā, vai tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to, ka tas ir saistīts ar to,';
  }

  @override
  String get stopsUndoTooltip => 'Neatkarīgi no izvēles/izņemšanas';

  @override
  String get tripConfirmCancel => 'Atcelt';

  @override
  String get tripConfirmOk => 'Labi.';

  @override
  String get tripConfirmTitle => 'Sarakšotājs';

  @override
  String get tripErrorLocationRequired => 'Lai uzsāktu ceļojumu, ir nepieciešama vieta.';

  @override
  String get homeMenuPostCrashReporting => 'Izskats pēc katastrofas';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reizons:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statuss: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Ievautīšanas vieta (piemēram, Market St)';

  @override
  String get crashLocationPickerTitle => 'Izvēliet vietu mapā';

  @override
  String get crashLocationPickerTooltip => 'Piebilst vieta';

  @override
  String get incidentDashboardDescription => 'Izvēliet darbību, lai turpinātu incidentu pārvaldību vai apskatītu iepriekšējos ziņojumus.';

  @override
  String get incidentDashboardHeadline => 'Informācija par notikumiem pēc katastrofas';

  @override
  String get incidentDashboardLogNew => 'Logs Jaunā kraša';

  @override
  String get incidentDashboardLogNewSubtitle => 'Sākot jaunu pakāpenisko avārijas ziņojumu';

  @override
  String get incidentDashboardTitle => 'Incidents pēc katastrofas';

  @override
  String get incidentDashboardViewHistory => 'Izskatīt vēsturi';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Izskatīt iepriekšējos avārijas ziņojumus un stāvokli';

  @override
  String get incidentDetailsAdminLetter => 'Administratora vēstulis';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkohols testu atkārtotas skaitīšanas (2 stundu ierobežojums)';

  @override
  String get incidentDetailsBranchId => 'Filiāla identifikācija';

  @override
  String get incidentDetailsBusPlate => 'Autobusa apliecības plāksne';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citācijas ietekme: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Autovadītāja apliecība';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordināti: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopēts uz klīppbrūci!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopīji uz klīpbordu';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datums un laiks: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE ziņojums';

  @override
  String get incidentDetailsDoeReportTitle => 'Valsts DOE ziņojums (pēc izvēles)';

  @override
  String get incidentDetailsDriverNotes => 'Autovadītāja piezīmes:';

  @override
  String get incidentDetailsDriverUserId => 'Vairotāja lietotāja identifikācija';

  @override
  String get incidentDetailsDrugCountdown => 'DOT narkotiku testu atkārtotas skaitīšanas (8 stundu ierobežojums)';

  @override
  String get incidentDetailsFatalityOccurred => 'Nosaukums: sabiedrība ar ierobežotu atbildību \"PASS\"';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidents #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Sādījumi, kam nepieciešama medicīniska ārstēšana';

  @override
  String get incidentDetailsLawEnforcement => 'Tiesības izpildes aģentūra';

  @override
  String get incidentDetailsLoadFailed => 'Neatkarīgi no detaļu.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Vieta:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medījas pievienošanās';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statuss: $status';
  }

  @override
  String get incidentDetailsNo => 'Ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nav pievienotas fotogrāfijas vai video.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Incidenta laikā kuģa kuģa uzbrukumā nebija atzīmēta neviens skolotājs.';

  @override
  String get incidentDetailsNotificationsDesc => 'Izveido paziņojumu ziņojumus un nosūtīt šampulētu vēstuli apgabala uzraudzītājiem vai administratīvai.';

  @override
  String get incidentDetailsNotificationsTitle => 'Pārvadīšanas paziņojumi';

  @override
  String get incidentDetailsOfficer => 'Oficiāla informācija';

  @override
  String get incidentDetailsPoliceReport => 'Policijas ziņojuma numurs';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Pre-populēts nosūtīšanas vēstulis:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulators:';

  @override
  String get incidentDetailsRouteId => 'Rutas identifikācija';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Skolās administratora paziņojums';

  @override
  String get incidentDetailsStatusPending => 'Pārsteidzoši';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalizēti: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Sādītie';

  @override
  String get incidentDetailsStudentNoInjury => 'Neizvadīta';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Sagra: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportēts uz: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti uz kuģa ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NESPRIEDZAS POST-CASH TESTING';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statuss: $status';
  }

  @override
  String get incidentDetailsTitle => 'Incidenta sīki izstrādātas ziņas';

  @override
  String get incidentDetailsVehicleTowed => 'Izvadīta transportlīdzekļa';

  @override
  String get incidentDetailsYes => 'Jā, tā ir.';

  @override
  String get incidentHistoryEmpty => 'Nav reģistrētas incidentes ar šo transportlīdzekļu.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nav iespējams atgūties žurnālus: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tas ir ļoti svarīgi, lai jūs varētu izmantot šo ierīci.';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidents #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NEKOJĀTI';

  @override
  String get incidentHistoryTestingRequired => 'IESLĪBA';

  @override
  String get incidentHistoryTitle => 'Izskats par notikumiem pēc katastrofas';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Pievieno vēl kādu fotogrāfiju';

  @override
  String get incidentIntakeBadgeNumberError => 'Vajadzība';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Zinātņu numurs *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobusa numurs: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotogrāfija no notikuma vietas';

  @override
  String get incidentIntakeCitationSubtitle => 'Vai skolā autobusu vadītājam tika izsniegts kustības pārkāpuma paziņojums?';

  @override
  String get incidentIntakeCitationTitle => 'Vai ir izdoti citāti?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Datums un laiks *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NESPĀRKĀT TESTING';

  @override
  String get incidentIntakeDotTestingRequired => 'NESPRIEDZAS TESTINGAS';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Jautājums:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Ievietojiet papildu notus par saskaties...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Autovadītāja notikumu atzīmes';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nelaidīti maršruta pasažieri: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Pievienojiet pierādījumus (fotogrāfijas) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Vai šajā katastrofā ir bijuši bojājumi?';

  @override
  String get incidentIntakeFatalityTitle => 'Vai ir notikusi nāves cēlonis?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordināti *';

  @override
  String get incidentIntakeHistoryTooltip => 'Izskatīt vēsturi';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Vai kāds no viņiem ir ievainojis, un viņam ir vajadzīga ārsta palīdzība?';

  @override
  String get incidentIntakeInjuriesTitle => 'Vai ir nepieciešams ārstēt?';

  @override
  String get incidentIntakeInjuryNotesError => 'Sastāvot bojājumus, studenti ir obligāti';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Sāršanas atzīmes / sīki izstrādātas ziņas (pamatīgi) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Skaņas smagu *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Lūdzu, ievietojiet tiesvedību.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Tiesības izpildes aģentūra (piemēram, Valsts autostrādes patruļa) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Tiesas izpildes un policijas ziņojums';

  @override
  String get incidentIntakeLocationDescError => 'Lūdzu, iesakjiet vietas aprakstu';

  @override
  String get incidentIntakeLocationDescLabel => 'Vieta: \"Pārvadītājdzīvnieku\"';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicīnas centrs, kura tika pārvests';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nevienlīdzīgi studenti.';

  @override
  String get incidentIntakeNoStudentsFound => 'Neatrodas studentes.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Neviens students nav uz kuģa.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Šim maršrutam nav reģistrēti studenti.';

  @override
  String get incidentIntakeOfficerNameError => 'Lūdzu, iesakjiet amatpersonas vārdu';

  @override
  String get incidentIntakeOfficerNameLabel => 'Oficiera vārds *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Lūdzu, iesakjiet policijas ziņojuma numuru.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policijas ziņojuma numurs *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rītā:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Rītas un vadītāja informācija';

  @override
  String get incidentIntakeSearchInjuredHint => 'Iecerot ievainošo bērnu...';

  @override
  String get incidentIntakeSearchStudentHint => 'Ievainojam studentu...';

  @override
  String get incidentIntakeSelectAll => 'Izvēli visus skolēni';

  @override
  String get incidentIntakeSelectOnMap => 'RĪZSĪBU MAPI';

  @override
  String get incidentIntakeSeverityFatal => 'Sakatīgs';

  @override
  String get incidentIntakeSeverityMinor => 'Mājpiemērs';

  @override
  String get incidentIntakeSeverityModerate => 'Apmierināts';

  @override
  String get incidentIntakeSeveritySevere => 'Skarbi';

  @override
  String get incidentIntakeSeverityTitle => 'Izmērs, kas ir atkarīgs no transportlīdzekļa slīpuma';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'IESLANDĪS ziņojums';

  @override
  String get incidentIntakeTitle => 'Pēc avārijas lietošanas';

  @override
  String get incidentIntakeTowedSubtitle => 'Vai kāds transportlīdzeklis ir zaudējis funkciju un tas ir nepieciešams, lai to ievietotu no vietas?';

  @override
  String get incidentIntakeTowedTitle => 'Auto uzved?';

  @override
  String get incidentIntakeWasInjured => 'Vai viņš ir ievainots?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String get dvirPreTripClose => 'NESPĀJ';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Jautājums / piezīmes (izņemot)';

  @override
  String get dvirPreTripNoComments => 'Neatkarīgi no tā.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reizons:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rītā:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Atbalsta parakstus.';

  @override
  String get dvirPreTripSigMissing => 'Atkāpjas paraksts.';

  @override
  String get dvirPreTripSignDefectWarning => 'Lūdzu, parakstīt, lai pārbaudītu iepriekšēju defektu remontu.';

  @override
  String get dvirPreTripStepSignOff => 'Atbalsts';

  @override
  String get dvirPreTripStepSubmit => 'Attieciet';

  @override
  String get dvirPreTripStepVerify => 'Pārbaudiet';

  @override
  String get dvirPreTripTapNext => 'Lūdzu, pavērsīsim uz NEXT.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Transportlīdzeklis nav ekspluatācijā';

  @override
  String get dvirPreTripVehicleReady => 'Transportlīdzeklis gatavs ekspluatācijai';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verificēta remonta stāvoklis:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Ja vēlaties, lai jūsu ārsts varētu veikt šo pārbaudi, varat veikt pārbaudi, lai novērstu vai novērstu visus konstatētos defektus.';

  @override
  String get dvirPreTripYourComments => 'Jūsu komentāri:';

  @override
  String get countryPickerNoCountries => 'Neatrodas valstis';

  @override
  String get countryPickerSearchHint => 'Izmeklējiet pēc valsts nosaukuma, kodu vai numura kodu...';

  @override
  String get countryPickerTitle => 'Izvēli valsts';

  @override
  String get mapDefaultStop => 'Nē, beidz.';

  @override
  String get mapEndLocation => 'Galvenā vieta';

  @override
  String get mapStartLocation => 'Sākuma vieta';

  @override
  String get stopsNoChangesToUndo => 'Nav nekādu pārmaiņu, ko var atcelt.';

  @override
  String get stopsNoStopsAvailable => 'Nav pieejamas pārtraukšanas.';

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
