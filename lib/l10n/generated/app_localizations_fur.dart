import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Friulian (`fur`).
class AppLocalizationsFur extends AppLocalizations {
  AppLocalizationsFur([String locale = 'fur']) : super(locale);

  @override
  String get appInfoBuild => 'Cjampâ il numar';

  @override
  String get appInfoDevice => 'Modul di dispositîf';

  @override
  String get appInfoOS => 'Version dal OS';

  @override
  String get appInfoPackage => 'Paççç';

  @override
  String get appInfoTitle => 'Informazions su la aplicazion';

  @override
  String get appInfoVersion => 'Version de aplicazion';

  @override
  String get appTitleSchoolDiary => 'Tracker SD';

  @override
  String get childrenActionGuardians => 'I guardianis';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Guardians autorizâts par $name';
  }

  @override
  String get childrenNoGuardians => 'No si à nissun tutôr autorizât par chest frut.';

  @override
  String get childrenStatusDropped => 'Dispât';

  @override
  String get childrenStatusPending => 'In atenzion';

  @override
  String get childrenStatusPicked => 'Scognude';

  @override
  String childrenTitle(Object routeName) {
    return 'Fruts  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absent / NO sul bus ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evadât';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evadât: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No si à di lassâ i students.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No si à segnâts students sul bus.';

  @override
  String get drillChecklistNotOnBus => 'No su l\' autobus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Sul bus  NO EVACUADUJAT';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Su BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Cussì si à cjapât la prove';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ruta (in live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Liste di control di scuadre di evacuazion';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Alore al reste un student cence cont!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Tu sês sigure di volê mandâ chest libri di fori?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmi la presentazion dal forament';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrivi la esecuzion dal esercit, il compuartament dai students, i viaçs di usance doprâts, e dutis lis eccezions osservadis...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notis dal diriger (minim 10 caratars):';

  @override
  String get drillEvidenceFailed => 'La presentazion no je stade fate';

  @override
  String get drillEvidenceMandatoryWarning => 'Al è obligatori presentâ almancul une prove foto o video par fâ il forament.';

  @override
  String get drillEvidenceRecordVideo => 'Grave video';

  @override
  String get drillEvidenceRetrySubmission => 'SUMISSION di pension';

  @override
  String get drillEvidenceReturnToDashboard => 'Torne a DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'Sottomettant il log di forament...';

  @override
  String get drillEvidenceSuccess => 'La sotmissioni e à vût sucès!';

  @override
  String get drillEvidenceSuccessMessage => 'Il log dal esercit di evacuazion al è stât caricât cun sucès e al è in atenzion par aprovazion.';

  @override
  String get drillEvidenceTakePhoto => 'Fâ une foto';

  @override
  String get drillEvidenceTitle => 'Pruvincis di forament obligatoriis';

  @override
  String get drillEvidenceUploading => 'Caraterizâ lis evidencis e i dâts de liste di control';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Furlan:';
  }

  @override
  String get drillRosterMarkAttendance => 'La partecipazion di Marc';

  @override
  String get drillRosterNoStudents => 'No si regjistrin students su cheste strade.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: _$presentCount / _$totalCount';
  }

  @override
  String get drillRosterProceed => 'Cussì si à di fâ il test';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rûs:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillRosterSelectAll => 'Selezionâ ducj';

  @override
  String get drillSummaryAdminNotesTitle => 'Notis di aministrazion';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvât a:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approvazion a';

  @override
  String get drillSummaryBackToDrills => 'Tornâ a Drills';

  @override
  String get drillSummaryBusNumber => 'Numar di autobus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conduît di: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detai di fori';

  @override
  String get drillSummaryDriverNotesTitle => 'Notis dal diriger';

  @override
  String get drillSummaryDuration => 'Durade';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Il timp de fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evadât: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evadât';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Attachments di prove dai media';

  @override
  String get drillSummaryGps => 'Coordenadis GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'No si è rivât a caricâ il rie dai forescj par ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'No son stâts cjatâts dâts di forament.';

  @override
  String get drillSummaryNotOnBus => 'No tal bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Sul bus - NO EVACUADUJAT';

  @override
  String get drillSummaryPhotoEvidence => 'Dinis fotografichis';

  @override
  String get drillSummaryRouteId => 'Identificazion di strade';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillSummaryStartTime => 'Timp di scomençâ';

  @override
  String get drillSummaryStatus => 'Statût';

  @override
  String get drillSummaryStudentLogTitle => 'Log di evacuazion dai students';

  @override
  String drillSummaryTitle(Object id) {
    return 'Ressumîr dal forament (#$id)';
  }

  @override
  String get drillSummaryType => 'Tip di forament';

  @override
  String get drillSummaryVideoEvidence => 'Probazion video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus _______';
  }

  @override
  String get drillTypeClassification => 'Sceglie la classificazion dai forescj:';

  @override
  String get drillTypeCustomHint => 'Intrâ il tip di forament di evacuazion adat...';

  @override
  String get drillTypeInvalidState => 'Statût di veicul o di rotis invalids.';

  @override
  String get drillTypeNameBusFire => 'Incjantât di bus';

  @override
  String get drillTypeNameDangerZone => 'Zone periculose';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapapacitât dal diriger';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientazion dai equipaments';

  @override
  String get drillTypeNameFrontDoor => 'Puarte di front';

  @override
  String get drillTypeNameOthers => 'Altris';

  @override
  String get drillTypeNameRearDoor => 'Puarte di darete';

  @override
  String get drillTypeNameSideOrRoof => 'Paron o paron';

  @override
  String get drillTypeNameSplit => 'Splitât';

  @override
  String get drillTypeNoRouteSelected => 'No si à sielzût un percors';

  @override
  String get drillTypePreparation => 'Preparazion dal dril';

  @override
  String get drillTypeProceed => 'CURSET di iscrivi al student';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rûs:';
  }

  @override
  String get drillTypeSelectRoute => 'Selezionâ la strade:';

  @override
  String get drillTypeSpecifyCustom => 'Specifiche la descrizion dal tip di forament:';

  @override
  String get drillTypeTitle => 'Selezion di tip di forament';

  @override
  String get drillTypeWarning => 'Sigûr che il veicul al sedi parcjât in mût sigûr prime di scomençâ la esecuzion.';

  @override
  String get drillsAssignedVehicle => 'Veicul assegnât';

  @override
  String get drillsChecking => 'Mi pâr che...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Furlan il cjâf al è stât sierât';
  }

  @override
  String get drillsNoBusAssigned => 'No si à assegnât nissun bus';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No son regjistrâts drits par bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No si puedin inviâ par iniziâ un esercit.';

  @override
  String get drillsShowSummary => 'Mostre riassumî';

  @override
  String get drillsStartDrill => 'Començâ il Forament';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduît: $date Stât: $status';
  }

  @override
  String get drillsTitle => 'Evadis di evacuazion';

  @override
  String get drillsVehicleOutOfService => 'Veicul disfunzionât';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Chest veicul al è in stât di disvilupâ e nol pues jessi doprât par esercitazions.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Cjase di conduzion';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NOME:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passegjôr';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolastic';

  @override
  String get driverDetailsEndorsementsTitle => 'I apogâts a son stâts tignûts';

  @override
  String get driverDetailsExpiryDateLabel => 'Data di scjadince';

  @override
  String get driverDetailsHolderSignature => 'SIGNATURE dal detent';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data di emission';

  @override
  String get driverDetailsLicenseDocTitle => 'Documents di licence';

  @override
  String get driverDetailsLicenseNoLabel => 'Licence No';

  @override
  String get driverDetailsLicenseTitle => 'Detaiis di licence';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tip di licenze';

  @override
  String get driverDetailsOfficialSeal => 'SELU OFFICIAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Classe: V0';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Infermieri:';
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
  String get driverDetailsTapToView => 'Tape par viodi il document DL';

  @override
  String get driverDetailsTitle => 'Detai dal diriger';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemis di sigurece speciâi pai autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivis di acoplament';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipament di emergenze';

  @override
  String get dvirCategoryHorn => 'Cornâl';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivis di lûs e riflettôrs';

  @override
  String get dvirCategoryMirrors => 'I speculis di vision retoriche';

  @override
  String get dvirCategoryParkingBrake => 'Parcje par freni';

  @override
  String get dvirCategoryPassengerSeating => 'Situazions e limitazions dai passegjers';

  @override
  String get dvirCategoryServiceBrakes => 'Frâcs di servizi';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanisim di direzion';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Rocs e rims';

  @override
  String get dvirCategoryWipers => 'I scjampadôrs dal vetôr';

  @override
  String get dvirPostTripCapturePhoto => 'Foto di difet di capture';

  @override
  String get dvirPostTripComplianceTitle => 'Certificazion di conformitât';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Reportâ un difet cence foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avîs: Tu riportis un difet su lis zonis di sigurece ($zones) cence attaçâ une foto. Tu sês sigûr di volê presentâlu in dut câs?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspetazion: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Dentri i detai de preocupazion di sigurece...';

  @override
  String get dvirPostTripNotesLabel => 'NOTS (MANDATORIO SUL DEFET) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Selezionâ DEFECT par inserî i detai des preocupazions di sigurece...';

  @override
  String get dvirPostTripOdometerHeader => 'Leghe dal odometri curent';

  @override
  String get dvirPostTripOdometerInstructions => 'Imporâ la leture dal kilometri come mostrât sul panel di struments dal bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'Metric di timp di funzionament dal veicul';

  @override
  String get dvirPostTripOdometerWarning => 'Si preis di meti dentri la leture dal odometri prime di continuâ.';

  @override
  String get dvirPostTripPassButton => 'Passât';

  @override
  String get dvirPostTripPhotoAttached => 'Foto atacadis cun sucès.';

  @override
  String get dvirPostTripProgressLabel => 'Progressis di ispezion';

  @override
  String get dvirPostTripSignatureCaptured => 'Firme cjapade.';

  @override
  String get dvirPostTripSignatureCert => 'O certifiei che chest rapuart di liste di control di passe dal veicul al è stât completât in conformitât cu lis normis di FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificazion de firme dal diriger';

  @override
  String get dvirPostTripSubmitButton => 'Inspetazion di presentazion';

  @override
  String get dvirPostTripSubmitSuccess => 'Il eDVIR al è stât presentât cun sucès.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current DI $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zonis di > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Mi ricognoss che o ai esaminât la ultime notifiche di difet presentade e verificât lis riparazions (se al è pussibil) e di dî che il bus al è sigûr di operâ.';

  @override
  String get dvirPreTripActiveMessage => 'Chest veicul al è ativ e nol à difets viers. Al è verificât e al è sigûr par operâ.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Rete attive: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENZIONE RICHESAVE: difets dal dì di prin';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numar di autobus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DE DISPATCH VECHIEL';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'No si è sintude: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No si son regjistrâts difets previodûts';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Chest veicul al è stât riferît net tal prin control di turnis dopo il viaç.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No coventin riparazions par un funzionament sigur.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Chest veicul al è fûr di servizi par riparazions/manutenzion.';

  @override
  String get dvirPreTripOutofServiceButton => 'Veicul fûr di servizi';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reason: V0';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '[V0__ (Ripariât) ]';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT Nûf difets';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La segnalazion di gnûfs difets e je disattivade te ore des riparazions.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statût:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUZION SUB-ADMIN dal traspuart';

  @override
  String get dvirPreTripReturnToHomeButton => 'Tornâ a cjase';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF par scomençâ a passeâ';

  @override
  String get dvirPreTripSignedSuccess => 'Verifiche signade cun sucès. Pre-trip sblocât.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERICJONE SUBMETIDUDE';

  @override
  String get dvirPreTripTitle => 'Verificazion prime dal viaç';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Stât dal veicul: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Disegni la firme';

  @override
  String get dvirSigPreviewLabel => 'Prononciation de sigurece cjapade:';

  @override
  String get dvirSigRedraw => 'REDRAW (REDRAW)';

  @override
  String get dvirSigSave => 'SPAVAR la firme';

  @override
  String get dvirSigTapToDraw => 'TAP par tirâ fûr la firme (RICERIT)';

  @override
  String get dvirSigWatermark => 'Signe verticâl (di bas in alt)';

  @override
  String get forgotPasswordCancel => 'Cancelâ';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Si preis di meti une email valide';

  @override
  String get forgotPasswordSend => 'Mandâ';

  @override
  String get forgotPasswordSuccess => 'Se chê email e esist, al è stât mandât un leam di reset.';

  @override
  String get genericBack => 'Ritornât';

  @override
  String get genericCancel => 'Cancelâ';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Incuintri';

  @override
  String get genericConfirm => 'Confirmi la notizie';

  @override
  String get genericEdit => 'Editâ';

  @override
  String get genericError => 'Al è saltât fûr cualchi robe';

  @override
  String get genericLoading => 'Cjargjo, cjantantant...';

  @override
  String get genericNext => 'Dentri';

  @override
  String get genericOk => 'Va ben, alore';

  @override
  String get genericRetry => 'Provâ di gnûf';

  @override
  String get genericSuccess => 'Succes';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'La spedizion blocade';

  @override
  String get homeDispatchBlockedTitle => 'La spedizion blocade';

  @override
  String get homeErrorNoRoutesPreTrip => 'No son disponibii rotis par fâ Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'No si è rivât a scomençâ la ativitât sul servidôr: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Bon, V0__';
  }

  @override
  String get homeLogout => 'Logonament';

  @override
  String get homeMenuAppInfo => 'Informazions su la aplicazion';

  @override
  String get homeMenuDrill => 'Forâ';

  @override
  String get homeMenuDriverDetails => 'Detai dal diriger';

  @override
  String get homeMenuLanguage => 'Lenghe';

  @override
  String get homeMenuPreTrip => 'Inspetazion prime dal viaç';

  @override
  String get homeNoRoutes => 'No si cjatin rotis';

  @override
  String get homeReviewVerifyPreTrip => 'Revizion e verifiche prime dal viaç';

  @override
  String get homeSearchHint => 'Rutes di ricercje';

  @override
  String get homeStart => 'Començâ';

  @override
  String get homeTitle => 'Cjasis di cjase';

  @override
  String get homeVehicleOutOfServiceDefault => 'Il veicul al è in stât di OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Il veicul al è pront e verificât par funzionâ in mût sigur.';

  @override
  String get languageTitle => 'Lenghe';

  @override
  String get loginButton => 'Loginâ';

  @override
  String get loginEmailOrPhoneLabel => 'Email o numar di telefon';

  @override
  String get loginErrorEnterPassword => 'Si pree di meti la password';

  @override
  String get loginErrorEnterUsername => 'Si pree di meti dentri il non di utent';

  @override
  String get loginErrorFailed => 'Login falât. Ti domandi di provâ di gnûf.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Si preis di meti un email o un numar di telefon';

  @override
  String get loginForgotPassword => 'Ti scordis la password?';

  @override
  String get loginPasswordLabel => 'Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password Password';

  @override
  String get mapChildrenTooltip => 'I fruts e i tutôrs';

  @override
  String get mapConfirmMessage => 'Tu vuelis pardabon sierâ il viaç?';

  @override
  String get mapConfirmTitle => 'Confirmi la notizie';

  @override
  String get mapCurrentPosition => 'La posizion in vore';

  @override
  String get mapNo => 'No, no, no';

  @override
  String get mapReconnectMessage => 'Si trate di une atualizazion locative che e falte dispès, ve chi di viodi la tô internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Fermi di fâlu';

  @override
  String get mapStopping => 'Par fermâsi...';

  @override
  String get mapStopsTooltip => 'Stignûts';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Astu metût a disposizion _ V0__s fa';
  }

  @override
  String get mapWaitingGps => 'A spietin il GPS...';

  @override
  String get mapYes => 'Sì, al è stât';

  @override
  String get splashDriverApp => 'App dal driver';

  @override
  String get stopsActionUndo => 'Incuintri';

  @override
  String get stopsCancelledSuccess => 'Cancelât cun sucès';

  @override
  String get stopsDefaultLabel => 'Fermi di fâlu';

  @override
  String get stopsGenericError => 'Al è saltât fûr cualchi robe. Ti domandi di provâ di gnûf.';

  @override
  String get stopsStatusComplete => 'completât';

  @override
  String get stopsStatusDone => 'finît';

  @override
  String stopsSubmitCount(Object count) {
    return 'Inviâ ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Inpostât cun sucès';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_V0__ selezionât _ _V1__/$total _V3__';
  }

  @override
  String get stopsTypeDrop => 'Clapâ';

  @override
  String get stopsTypePick => 'Scoglit';

  @override
  String stopsUndoCount(Object count) {
    return 'Incuintri ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Scoltâ/coltâ indevant';

  @override
  String get tripConfirmCancel => 'Cancelâ';

  @override
  String get tripConfirmOk => 'Va ben, alore';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Par iniziâ un viaç al è necessari un permès di localizazion.';

  @override
  String get homeMenuPostCrashReporting => 'Relazions dopo il cràs';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: V0';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statût:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localiscj di ricercje (p.e. Market St)';

  @override
  String get crashLocationPickerTitle => 'Selezion dal puest su la mape';

  @override
  String get crashLocationPickerTooltip => 'Confirmi la posizion';

  @override
  String get incidentDashboardDescription => 'Selezionâ une azion par procedî cun la gjestion dai incidents o viodi i rapuarts passâts.';

  @override
  String get incidentDashboardHeadline => 'Reporting di incidents dopo il cràs';

  @override
  String get incidentDashboardLogNew => 'Log Novis Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Intarzâ un gnûf rapuart di incressiment pas daûr pas';

  @override
  String get incidentDashboardTitle => 'Incuintri dopo il cràs';

  @override
  String get incidentDashboardViewHistory => 'Visite Storie';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visâ i rapuarts di incressiment e il stât previodût';

  @override
  String get incidentDetailsAdminLetter => 'Letare dal aministradôr';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcol test contdown (2 ore limite)';

  @override
  String get incidentDetailsBranchId => 'Identificazion di sucursâl';

  @override
  String get incidentDetailsBusPlate => 'Plate di licence dal autobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citazion Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citation Emisse al Cjofîr';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenadis: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiât su la schede di clip!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copie su la schede di iscrizion';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ore: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Relazion dal DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relazion dal DOE statâl (opzionâl)';

  @override
  String get incidentDetailsDriverNotes => 'Notis dal diriger:';

  @override
  String get incidentDetailsDriverUserId => 'ID dal utent dal diriger';

  @override
  String get incidentDetailsDrugCountdown => 'Il numar tornadôr dai test di droghe DOT (8 ore di limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Une fatalitât e je sucedude';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injuris che a coventin tratament medic';

  @override
  String get incidentDetailsLawEnforcement => 'Agjenzie di eseguiment dal just';

  @override
  String get incidentDetailsLoadFailed => 'No si è rivât a caricâ i detai.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Loc: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Attachments dai media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statût:';
  }

  @override
  String get incidentDetailsNo => 'No, no';

  @override
  String get incidentDetailsNoMediaAttachments => 'No je metude foto o video.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nissun studiant al jere segnât a bord pal incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Gjenarâ rapuarts di notificazion e inviâ letaris cun model a supervisôrs o aministrazions distretâls.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificazions di trasmission';

  @override
  String get incidentDetailsOfficer => 'Detai dai ufiscj';

  @override
  String get incidentDetailsPoliceReport => 'Numar di rapuarts de polizie';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Letare di trasmission pre-popolade:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basis normativis:';

  @override
  String get incidentDetailsRouteId => 'Identificazion di strade';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificazion dal aministradôr scolastic';

  @override
  String get incidentDetailsStatusPending => 'In atenzion';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detai:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Infermiâts';

  @override
  String get incidentDetailsStudentNoInjury => 'No si è ferît';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravece:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasportât a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'I students a bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DUT POST-CRAASH TESTING richieste';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statût:';
  }

  @override
  String get incidentDetailsTitle => 'Detai dai incidents';

  @override
  String get incidentDetailsVehicleTowed => 'Veicul tirât';

  @override
  String get incidentDetailsYes => 'Sì, al è stât fat';

  @override
  String get incidentHistoryEmpty => 'No son regjistrâts registris di incidents par chest veicul.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'No si è rivât a recuperâ i logs: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Temps: Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NO RICERIDIDUTS';

  @override
  String get incidentHistoryTestingRequired => 'RICERIDUTS';

  @override
  String get incidentHistoryTitle => 'Registri di incidents dopo il cràs';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Zonte une altre foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numar di badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numar di autobus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Immagini di scene di incident';

  @override
  String get incidentIntakeCitationSubtitle => 'Al è stât mandât un citât par violazion dal trafic al autostant dal bus scolastic?';

  @override
  String get incidentIntakeCitationTitle => 'Citazion publicade?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO CHERIT di testâ';

  @override
  String get incidentIntakeDotTestingRequired => 'DUT TESTING richieste';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Cjargne:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Cjale lis notiziis adizionâls in relazion ae colizione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notis di incidents dal condutôr';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passegjers di rotis no parâts a caricâ: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Cjale lis evidencis (Fotografie) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'A son stadis muarts di chest accident?';

  @override
  String get incidentIntakeFatalityTitle => 'Si è sucedût un fatâl?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenadis GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Visite Storie';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Cualchidun al à vût un infortuni corâl che al à domandât cure mediche imediade fûr dal scomençât?';

  @override
  String get incidentIntakeInjuriesTitle => 'Incuintri che al covente cure mediche?';

  @override
  String get incidentIntakeInjuryNotesError => 'I students ferîts a àn di vê lis notifichis di infortuni';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notis di infortuni / Detai (obligatori) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravece dai infortuns *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Si preis di jentrâ in agjenzie di rivuart';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agjenzie di eseguiment de leç (par esempli Patrie de autostrade statâl) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Riferiment di polizie e di riforniment';

  @override
  String get incidentIntakeLocationDescError => 'Si preis di meti une descrizion de localitât';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizion de posizion (par esempli Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Un impiât medic traspuartât';

  @override
  String get incidentIntakeNoMatchingStudents => 'No si cjatin i students che a si son metûts.';

  @override
  String get incidentIntakeNoStudentsFound => 'No si è cjatât nissun studiant.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No si cjatin students a bord. Si preis di pulsâ NEXT par continuâ.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No si son regjistrâts students par cheste strade.';

  @override
  String get incidentIntakeOfficerNameError => 'Si preis di meti il non dal ufitâl';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome dal ufitâl *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Viôt il numar di riferiment de polizie';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numar di riferiment de polizie *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rûs:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazions di rotis e di voidôr';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cercje un frut ferît...';

  @override
  String get incidentIntakeSearchStudentHint => 'ricercje studiant...';

  @override
  String get incidentIntakeSelectAll => 'Selezionâ ducj i students';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT su la mape';

  @override
  String get incidentIntakeSeverityFatal => 'Fatalât';

  @override
  String get incidentIntakeSeverityMinor => 'Minôr';

  @override
  String get incidentIntakeSeverityModerate => 'Moderât';

  @override
  String get incidentIntakeSeveritySevere => 'Grave';

  @override
  String get incidentIntakeSeverityTitle => 'Variabilis di gravitât dal accident';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'RAPORT di presentazion';

  @override
  String get incidentIntakeTitle => 'Intese dopo l\'incident di incressiment';

  @override
  String get incidentIntakeTowedSubtitle => 'Cualchidun al à vût un dan di disabilitât che al à domandât di jessi tirât fûr de scene?';

  @override
  String get incidentIntakeTowedTitle => 'Veicul tirât?';

  @override
  String get incidentIntakeWasInjured => 'Al è stât ferît?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'SONS al è dongje';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Coments dal diriger / Notis (Fonzionâl)';

  @override
  String get dvirPreTripNoComments => 'No si à metût in vore nissun coment.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: V0';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rûs:';
  }

  @override
  String get dvirPreTripSigCaptured => 'La firme e je stade cjapade cun sucès.';

  @override
  String get dvirPreTripSigMissing => 'La firme e mancje.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signi par verificâ la riparazion di difets previodûts.';

  @override
  String get dvirPreTripStepSignOff => 'Firme di sigurece';

  @override
  String get dvirPreTripStepSubmit => 'Inviâ';

  @override
  String get dvirPreTripStepVerify => 'Verifiche';

  @override
  String get dvirPreTripTapNext => 'Si pree di tacâ su NEXT par continuâ.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Il veicul al è fûr di servizi';

  @override
  String get dvirPreTripVehicleReady => 'Il veicul al è pront par servî';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Stât di riparazion verificât:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Si domande di verificâ che ducj i difets segnaladis a son stâts riparâts, segnant la casete dongje di ogni difet.';

  @override
  String get dvirPreTripYourComments => 'I siei coments:';

  @override
  String get countryPickerNoCountries => 'No si è cjatât nissun paîs';

  @override
  String get countryPickerSearchHint => 'Cercje par non dal paîs, codiç, o codiç di dial...';

  @override
  String get countryPickerTitle => 'Selezion dal Paîs';

  @override
  String get mapDefaultStop => 'Fermi di fâlu';

  @override
  String get mapEndLocation => 'Localisim finâl';

  @override
  String get mapStartLocation => 'Paîs di partence';

  @override
  String get stopsNoChangesToUndo => 'No si puedin tornâ a cambiâ.';

  @override
  String get stopsNoStopsAvailable => 'No si puedin fermâ.';

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
