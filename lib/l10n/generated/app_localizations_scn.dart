import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sicilian (`scn`).
class AppLocalizationsScn extends AppLocalizations {
  AppLocalizationsScn([String locale = 'scn']) : super(locale);

  @override
  String get appInfoBuild => 'Custruisci Numaru';

  @override
  String get appInfoDevice => 'Modellu di dispositivu';

  @override
  String get appInfoOS => 'Versioni di u sistema operativu';

  @override
  String get appInfoPackage => 'Pacchi di pacchettu';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'Versioni App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Custodi';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Custodi autorizati di $name';
  }

  @override
  String get childrenNoGuardians => 'Ùn ci hè micca tutori autorizati in archiviu per stu zitellu.';

  @override
  String get childrenStatusDropped => 'Cappatu';

  @override
  String get childrenStatusPending => 'In attesa';

  @override
  String get childrenStatusPicked => 'Scegnu';

  @override
  String childrenTitle(Object routeName) {
    return 'Picciriddi  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absenza / NON su BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuatu';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuatu: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Senza studienti assenti.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nenti studienti marcati nta l\'autobus.';

  @override
  String get drillChecklistNotOnBus => 'NON NEL BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'N\'autobus  NON EVACUATO';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'N\'autobus ($count)';
  }

  @override
  String get drillChecklistProceed => 'U prucessu di cattura di e prove';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Cuntra (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista di cuntrollu di u scavu di evacuazione';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Studenti non cunti, restanu!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'S\'è sicuru ca vulete trasmettere stu log di u foru?';

  @override
  String get drillEvidenceConfirmSubmission => 'Cunfirma la prisentazzioni di l\'esercizi';

  @override
  String get drillEvidenceDriverNotesHint => 'Discrivi l\'esecuzione di l\'eserciziu, u cumpurtamentu di l\'allievi, i percorsi di uscita usati, è ogni eccezzione osservata...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nuti di guida (minimu di 10 caratteri):';

  @override
  String get drillEvidenceFailed => 'S\'insediamentu ùn hè micca riesciutu';

  @override
  String get drillEvidenceMandatoryWarning => 'Almenu 1 prova di foto o video hè obbligatoriu per a presentazione di u furniscimu.';

  @override
  String get drillEvidenceRecordVideo => 'Registra video';

  @override
  String get drillEvidenceRetrySubmission => 'SUNDIMENTI di ritirata';

  @override
  String get drillEvidenceReturnToDashboard => 'Ritorna a DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Sottomettendu u Log di u Fornu...';

  @override
  String get drillEvidenceSuccess => 'U successu di a sottummissioni!';

  @override
  String get drillEvidenceSuccessMessage => 'U log di l\'eserciziu di evacuazione hè statu caricatu cù successu è hè in attesa di appruvazione.';

  @override
  String get drillEvidenceTakePhoto => 'Fate a foto';

  @override
  String get drillEvidenceTitle => 'Pruvate di u perforazione obbligatoriu';

  @override
  String get drillEvidenceUploading => 'Uploading evidence and checklist data';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Foru:';
  }

  @override
  String get drillRosterMarkAttendance => 'Assistenza di Mark';

  @override
  String get drillRosterNoStudents => 'Ùn ci sò micca studienti registrati nant\'à sta rotta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDU DI DIRU A CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Cuntra: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Assento: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Selezziunate Tutti';

  @override
  String get drillSummaryAdminNotesTitle => 'Nuti di amministraturi';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Appruvatu A: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Appruvatu à';

  @override
  String get drillSummaryBackToDrills => 'Ritornu a li Forni';

  @override
  String get drillSummaryBusNumber => 'Numaru di l\'autobus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conduciuti da: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Dettagli di u perforazione';

  @override
  String get drillSummaryDriverNotesTitle => 'Nuti di cunduttori';

  @override
  String get drillSummaryDuration => 'Durata';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'U tempu di a fine';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuatu: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuatu $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Attachamenti di i media di prova';

  @override
  String get drillSummaryGps => 'Coordinati GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ùn hà micca caricatu u riassuntu di u foru per ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ùn si sò trovu dati di l\'eserciziu.';

  @override
  String get drillSummaryNotOnBus => 'Non \'nta l\'autobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'NEL BUS - NON EVACUATO';

  @override
  String get drillSummaryPhotoEvidence => 'Pruvate di foto';

  @override
  String get drillSummaryRouteId => 'Identificatore di via';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Assento: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Orari di cuminciari';

  @override
  String get drillSummaryStatus => 'Statutu';

  @override
  String get drillSummaryStudentLogTitle => 'Logu di evacuazione di i studienti';

  @override
  String drillSummaryTitle(Object id) {
    return 'Raccordu di u funziunamentu (#$id)';
  }

  @override
  String get drillSummaryType => 'Tippu di furra';

  @override
  String get drillSummaryVideoEvidence => 'Pruvate video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Sceglite a classificazione di u perforazione:';

  @override
  String get drillTypeCustomHint => 'Intrate u tippu di furna di evacuazione persunalizata...';

  @override
  String get drillTypeInvalidState => 'Statutu di veiculu o di rotazione invalidu.';

  @override
  String get drillTypeNameBusFire => 'Accidenti di l\'autobus';

  @override
  String get drillTypeNameDangerZone => 'Zona di periculu';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacità di u cunduttore';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientazzioni di l\'equipaggiu';

  @override
  String get drillTypeNameFrontDoor => 'Porta d\'accantu';

  @override
  String get drillTypeNameOthers => 'Altri';

  @override
  String get drillTypeNameRearDoor => 'Porta di la trasiri';

  @override
  String get drillTypeNameSideOrRoof => 'L\'assu o u tettu';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Nun si sceglie la via';

  @override
  String get drillTypePreparation => 'PREPARATURIA di u drill';

  @override
  String get drillTypeProceed => 'PROCEDU A RISTERU STUDENTI';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Cuntra: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Selezziunate u percorsu:';

  @override
  String get drillTypeSpecifyCustom => 'Spiccifica la descrizzione di lu tippu di foru:';

  @override
  String get drillTypeTitle => 'Selezziunate u tippu di furru';

  @override
  String get drillTypeWarning => 'Assicuratevi chì u veiculu sia parchatu in modu sicuru prima di cumincià l\'esecuzione.';

  @override
  String get drillsAssignedVehicle => 'Vetturi assegnati';

  @override
  String get drillsChecking => 'Verificannu...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Forna #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nessun autobus attribuitu';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nienti esercitazioni ntra l\'autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nun c\'è via di cuminciari un\'eserciziu.';

  @override
  String get drillsShowSummary => 'Riassuntu di l\'esempiu';

  @override
  String get drillsStartDrill => 'Cuminciati a Forni';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduciuti: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Pruvate di evacuazione';

  @override
  String get drillsVehicleOutOfService => 'Vettura fora di serviziu';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Stu veiculu hè attualmente fora di serviziu è ùn pò micca esse adupratu per esercitazioni.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENZA di guida';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nomu: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passeggeri';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolasticu';

  @override
  String get driverDetailsEndorsementsTitle => 'Appruvamenti tenuti';

  @override
  String get driverDetailsExpiryDateLabel => 'Data di scadenza';

  @override
  String get driverDetailsHolderSignature => 'SIGNATURIA DEL TITOR';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data di emissioni';

  @override
  String get driverDetailsLicenseDocTitle => 'Documentu di licenza';

  @override
  String get driverDetailsLicenseNoLabel => 'Numaru di licenza';

  @override
  String get driverDetailsLicenseTitle => 'Dettaggi di licenza';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tippu di licenza';

  @override
  String get driverDetailsOfficialSeal => 'SILU UFFICIALE';

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
    return 'INTRODU:';
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
  String get driverDetailsTapToView => 'Tocca pi visualizzari u Documentu DL';

  @override
  String get driverDetailsTitle => 'Dettaggi di u cunduttore';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemi di sicurezza specifici di autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivi di accoppiamentu';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipaggiamenti di emergenza';

  @override
  String get dvirCategoryHorn => 'Cornu';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivi di luci e riflettori';

  @override
  String get dvirCategoryMirrors => 'Specchi di visione posteriore';

  @override
  String get dvirCategoryParkingBrake => 'Freno di parcheggio';

  @override
  String get dvirCategoryPassengerSeating => 'Sedi di passageri e riggenti';

  @override
  String get dvirCategoryServiceBrakes => 'Freni di serviziu';

  @override
  String get dvirCategorySteeringMechanism => 'Meccanismu di guida';

  @override
  String get dvirCategoryTires => 'Cucci';

  @override
  String get dvirCategoryWheelsRims => 'Ruote e righe';

  @override
  String get dvirCategoryWipers => 'Scugghiaturi di vetru';

  @override
  String get dvirPostTripCapturePhoto => 'FOTTO di difettu di cattura';

  @override
  String get dvirPostTripComplianceTitle => 'CERTIFICACIONE di cump cumpurtamentu';

  @override
  String get dvirPostTripDefectButton => 'DEFETtu';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapportu di difettu senza foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvertenza: si sta rifirennu un difettu ntê zoni di sicurità ($zones) senza attaccari na foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ispezzione: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Inserate i dettagli di a preoccupazione di sicurezza...';

  @override
  String get dvirPostTripNotesLabel => 'NUTTI (MANDATORIO SUL\'ADDEFETTO) e FOTTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Selezziunate DEFECT pi inseriri li detaili di li prublemi di sicurizza...';

  @override
  String get dvirPostTripOdometerHeader => 'Leggizioni attuali di l\' odometru';

  @override
  String get dvirPostTripOdometerInstructions => 'Inserisci la lettura di chilometraggiu esattamente comu ammustratu supra lu pannellu di strumentu di l\'autobus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometro (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VECILU RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Si prega di inserisce a lettura di u chilometru prima di cuntinuà.';

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripPhotoAttached => 'Foto attaccata cun successu.';

  @override
  String get dvirPostTripProgressLabel => 'Progressu di l\'ispezione';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatura catturata.';

  @override
  String get dvirPostTripSignatureCert => 'Certificu ca stu rapportu di lista di cuntrollu di u veiculu hè statu cumpletu in cunfurmità cù i regulamenti FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifica di a firma di u cunduttore';

  @override
  String get dvirPostTripSubmitButton => 'SUMMITTA INSPECZIONE';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR hè statu presentatu cù successu.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current DI $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zoni di V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ricunnoscu chì aghju esaminatu l\'ultimu rapportu di difettu inviatu è verificatu e riparazioni (se ci sò) è dichjaratu chì u bus hè sicuru per l\'operazione.';

  @override
  String get dvirPreTripActiveMessage => 'Stu veiculu hè attivu è ùn hà micca difetti aperti. Hè verificatu è sicuru per l\'operazione.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Strada attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENZIONE richiesta: difetti di u ghjornu precedente';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numaru di bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DISPATCH VECHIQUE';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Mancu à firmà: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nessun difettu precedente registratu';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Stu veiculu hè statu riprisintatu pulitu in l\'ispezione precedente di u turnu dopu u viaghju.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nenti riparazioni necessarii pi funziunari n\'autri manera.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Stu veiculu hè fora di serviziu per riparazioni/manutenzione.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEGILU D\'U Serviziu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razziuni:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (RIPARATO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT NUOVI difetti';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La riparazzioni di novi difetti è disabilitata ntâ ntravirizzioni.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statutu: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUZIONE SUB-ADMINI di u Trasportu';

  @override
  String get dvirPreTripReturnToHomeButton => 'Ritornu a casa';

  @override
  String get dvirPreTripSignOffTitle => 'Signuri di camminari';

  @override
  String get dvirPreTripSignedSuccess => 'Verifica firmata cun successu.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONFIRMATU';

  @override
  String get dvirPreTripTitle => 'Verifica prima di u viaghju';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statutu di u veiculu: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Disegna firma';

  @override
  String get dvirSigPreviewLabel => 'Prèvisioni di firmatura catturata:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SCHEDU LA SIGNATURA';

  @override
  String get dvirSigTapToDraw => 'TAPPIA PER SIGNATURARE (RICERATO)';

  @override
  String get dvirSigWatermark => 'Signura Verticalmente (Di Sutta a Supra)';

  @override
  String get forgotPasswordCancel => 'Annullari';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Si prega di inserisce un email validu';

  @override
  String get forgotPasswordSend => 'Mandate';

  @override
  String get forgotPasswordSuccess => 'S\'ellu esiste, un ligame di riimposta hè statu mandatu.';

  @override
  String get genericBack => 'RIRRORUNTati';

  @override
  String get genericCancel => 'Annullari';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Cchiù vicinu';

  @override
  String get genericConfirm => 'Cunfirma';

  @override
  String get genericEdit => 'Editari';

  @override
  String get genericError => 'Qualcosa hè andatu male';

  @override
  String get genericLoading => 'Caricamentu...';

  @override
  String get genericNext => 'ACCESSO';

  @override
  String get genericOk => 'Ok, è accussì?';

  @override
  String get genericRetry => 'Riprova';

  @override
  String get genericSuccess => 'Successu';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Spedizioni bloccate';

  @override
  String get homeDispatchBlockedTitle => 'Spedizioni bloccate';

  @override
  String get homeErrorNoRoutesPreTrip => 'Ùn ci sò micca rotte dispunibili per fà u Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Mancu a cuminciari a viaggiri supra lu server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ciao, V0__';
  }

  @override
  String get homeLogout => 'Signura';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Forni';

  @override
  String get homeMenuDriverDetails => 'Dettaggi di u cunduttore';

  @override
  String get homeMenuLanguage => 'Lingua';

  @override
  String get homeMenuPreTrip => 'Ispezioni prima di u viaghju';

  @override
  String get homeNoRoutes => 'Nienti li trasiri dispunibili';

  @override
  String get homeReviewVerifyPreTrip => 'Rivista & Verifica Pre-Trip';

  @override
  String get homeSearchHint => 'Rùte di ricerca';

  @override
  String get homeStart => 'Cuminciari';

  @override
  String get homeTitle => 'A casa';

  @override
  String get homeVehicleOutOfServiceDefault => 'U veiculu hè attualmente OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'U veiculu hè prontu è verificatu per un funziunamentu sicuru.';

  @override
  String get languageTitle => 'Lingua';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Numaru di email o di telefunu';

  @override
  String get loginErrorEnterPassword => 'Introduci la password';

  @override
  String get loginErrorEnterUsername => 'Introduci u nomu d\' usu';

  @override
  String get loginErrorFailed => 'L\'accordu fallittu.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Si prega di inserisce un email o un numeru di telefunu validu';

  @override
  String get loginForgotPassword => 'U passaportu scurdatu?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Figghiuli e tutori';

  @override
  String get mapConfirmMessage => 'Vulete veramente chiudere u viaghju?';

  @override
  String get mapConfirmTitle => 'Cunfirma';

  @override
  String get mapCurrentPosition => 'Posizione attuale';

  @override
  String get mapNo => 'No, nun';

  @override
  String get mapReconnectMessage => 'L\'aggiornamentu di a località ùn hè micca frequenti, per piacè verificate a vostra internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Fermati';

  @override
  String get mapStopping => 'Fermu...';

  @override
  String get mapStopsTooltip => 'Ferma';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aggiornata ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Aspettannu lu GPS...';

  @override
  String get mapYes => 'Si, si, si, si';

  @override
  String get splashDriverApp => 'App di driver';

  @override
  String get stopsActionUndo => 'Uderitu';

  @override
  String get stopsCancelledSuccess => 'Annullatu cun successu';

  @override
  String get stopsDefaultLabel => 'Fermati';

  @override
  String get stopsGenericError => 'Qualcosa hè andatu male. Per piacè pruvate di novu.';

  @override
  String get stopsStatusComplete => 'cumpletu';

  @override
  String get stopsStatusDone => 'fattu';

  @override
  String stopsSubmitCount(Object count) {
    return 'Sottomettiri ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sottomessu cun successu';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected selezziunatu · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Cappari';

  @override
  String get stopsTypePick => 'Sceglie';

  @override
  String stopsUndoCount(Object count) {
    return 'Indu ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Scinniri/rilassari';

  @override
  String get tripConfirmCancel => 'Annullari';

  @override
  String get tripConfirmOk => 'Va bè';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Per accuminciari un viaggiu si havi bisognu di un permessu di localizzioni.';

  @override
  String get homeMenuPostCrashReporting => 'Rapporti doppu lu crasi';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razziuni:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statutu: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localissioni di ricerca (ad es. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Selezziunate a località nantu à a mappa';

  @override
  String get crashLocationPickerTooltip => 'Cunfirma lu locu';

  @override
  String get incidentDashboardDescription => 'Selezziunate un\'azzione per cuntinuà cù a gestione di l\'incidenti o vede i rapporti passati.';

  @override
  String get incidentDashboardHeadline => 'Raportazioni di l\'incidenti doppu u crash';

  @override
  String get incidentDashboardLogNew => 'Log Nuova Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniziari nu novu raportu di crisa passu pi passu';

  @override
  String get incidentDashboardTitle => 'Incidenti doppu lu crasi';

  @override
  String get incidentDashboardViewHistory => 'Vede a storia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visualizza rapporti e statu di incidenti precedenti';

  @override
  String get incidentDetailsAdminLetter => 'Carta di l\'amministraturi';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Cuntegnu di u Test di Alcol (2 ore di limitazione)';

  @override
  String get incidentDetailsBranchId => 'Identificatore di sucetà';

  @override
  String get incidentDetailsBusPlate => 'Targa di licenza di autobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impattamenti di citazioni: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citazioni di u cunduttore';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinati: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiatu à u clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copià à u clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raportu DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raportu di u DOE di u Statu (opzionale)';

  @override
  String get incidentDetailsDriverNotes => 'Nuti di lu cundutturi:';

  @override
  String get incidentDetailsDriverUserId => 'ID d\' Utenti di u Conductor';

  @override
  String get incidentDetailsDrugCountdown => 'Cuntegnu di u Test di Drug DOT (8-ora Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'C\'hè accadutu un avvenimentu fatale';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'L\'injurie chì richiedenu un trattamentu medicu';

  @override
  String get incidentDetailsLawEnforcement => 'Agenzia di infurmazione di a lege';

  @override
  String get incidentDetailsLoadFailed => 'Non ci sò stati i dettagli.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lucazzioni: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Attachamenti di media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statutu: $status';
  }

  @override
  String get incidentDetailsNo => 'NICI';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nienti foto o video attaccati.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nisciuni studienti eranu marcati à bordu durante l\'incidenti.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generà rapporti di notifica è mandà lettere di mudellu à i supervisioni di u distrittu o à l\'amministrazione.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificazzioni di trasmissioni';

  @override
  String get incidentDetailsOfficer => 'Dettaggi di u funziunariu';

  @override
  String get incidentDetailsPoliceReport => 'Numaru di riportu di a pulizzia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Carta di trasmissione pre-puppiata:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basamenti di regulamentu:';

  @override
  String get incidentDetailsRouteId => 'Identificatore di via';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Avvisu di l\'amministraturi scolastichi';

  @override
  String get incidentDetailsStatusPending => 'In attesa';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Dettagli: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Feriti';

  @override
  String get incidentDetailsStudentNoInjury => 'Senza feriti';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravità: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasportatu A: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti A Bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'CURRITU TESTING POST-Crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statutu: $status';
  }

  @override
  String get incidentDetailsTitle => 'Dettagli di l\'incidenti';

  @override
  String get incidentDetailsVehicleTowed => 'Vettura arrugata';

  @override
  String get incidentDetailsYes => 'Si, si, si, si';

  @override
  String get incidentHistoryEmpty => 'Ùn ci hè nisun registru di incidenti registratu per stu veiculu.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Mancu à ritruvà i registri: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ora: V0 _ Bus: V1 _ Testing: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NICHE richieste';

  @override
  String get incidentHistoryTestingRequired => 'RICORDATO';

  @override
  String get incidentHistoryTitle => 'Registru di l\'Incidenti Doppu u Crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiungi un\'altra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisitu';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numaru di badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numaru di bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Cattura di scena di l\' incidente';

  @override
  String get incidentIntakeCitationSubtitle => 'Fu datu un citatu di violazione di u trafficu à u cunduttore di l\'autobus scolasticu?';

  @override
  String get incidentIntakeCitationTitle => 'Citatamenti Issu?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data e ora di u crash *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NICCIU TESTING';

  @override
  String get incidentIntakeDotTestingRequired => 'CURRITU di prova';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Inserite qualchì nota addiziunali riguardu à a collisione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notti di l\'accidenti di u cunduttore';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passeggeri di rota non arrivati a caricare: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Accumpanza a prubazioni (Fotò) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ci sò stati morti à causa di stu crash?';

  @override
  String get incidentIntakeFatalityTitle => 'Ci hè statu un successu?';

  @override
  String get incidentIntakeGpsLabel => 'Coordinati GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vede a storia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Qualchissia hà avutu un feritu fisicu chì richiede un trattamentu medicu immediatu fora di u locu di l\'accadimentu?';

  @override
  String get incidentIntakeInjuriesTitle => 'L\'injurie chì richiedenu cure mediche?';

  @override
  String get incidentIntakeInjuryNotesError => 'I biglietti di ferita sò obbligatori per i studienti feriti';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notti di ferita / Dettagli (Mandaturi) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravità di l\' infortuni *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Per piacè entra in l\' agenzia di infurzazione di a lege';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agenzia di infurmazione di a lege (per esempiu Patrulla di l\'Autostrada di Statu) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raportu di l\'infurzazioni di a lege & di a pulizia';

  @override
  String get incidentIntakeLocationDescError => 'Si prega di inserisce a descrizzione di a località';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizzione di a località (per esempiu Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Facilità Medica Trasportata';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nienti studienti uguali.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nisun studiente truvatu.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Senza studienti à bordu.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ùn ci hè statu nisun studiente registratu per sta rotta.';

  @override
  String get incidentIntakeOfficerNameError => 'Si prega di inserisce u nome di u ufficiale';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome di l\' ufficiali *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Per piacè inserite u numeru di raportu di a polizia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numaru di riportu di a pulizzia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Cuntra: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazioni di rota e di cunduttore';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cercate a picciridda ferita...';

  @override
  String get incidentIntakeSearchStudentHint => 'Studenti di ricerca...';

  @override
  String get incidentIntakeSelectAll => 'Sceglite tutti i studienti';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT su mappa';

  @override
  String get incidentIntakeSeverityFatal => 'Fatali';

  @override
  String get incidentIntakeSeverityMinor => 'Minuri';

  @override
  String get incidentIntakeSeverityModerate => 'Moderatu';

  @override
  String get incidentIntakeSeveritySevere => 'Sughjettu';

  @override
  String get incidentIntakeSeverityTitle => 'Variabili di gravità di u crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Sottomittiri Raportu';

  @override
  String get incidentIntakeTitle => 'L\'assunzioni dopu à l\'incidenti di u crash';

  @override
  String get incidentIntakeTowedSubtitle => 'Ci hè statu un veiculu chì hà ricevutu danni disabilitanti chì richiedevanu di esse rimorchiatu da a scena?';

  @override
  String get incidentIntakeTowedTitle => 'U veiculu arrubbatu?';

  @override
  String get incidentIntakeWasInjured => 'Fu feritu?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'CUNSULTATU';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commenti di lu cunduttori / Nuti (Funtzionale)';

  @override
  String get dvirPreTripNoComments => 'Nienti cummenti addizzioni.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razziuni:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Cuntra: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatura catturata cun successu.';

  @override
  String get dvirPreTripSigMissing => 'Manca la firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signati pi verificari la riparazzioni di difetti passati.';

  @override
  String get dvirPreTripStepSignOff => 'Signatura';

  @override
  String get dvirPreTripStepSubmit => 'Sottomettiri';

  @override
  String get dvirPreTripStepVerify => 'Verifica';

  @override
  String get dvirPreTripTapNext => 'Per piaciri, pulsa NEXT pi cuntinuari.';

  @override
  String get dvirPreTripVehicleOutOfService => 'U veiculu hè fora di serviziu';

  @override
  String get dvirPreTripVehicleReady => 'U veiculu hè prontu à u serviziu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statutu di riparazione verificatu:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verificate chì tutti i difetti rifiriti sò stati riparati cunfirmando a scatula vicinu à ogni difettu.';

  @override
  String get dvirPreTripYourComments => 'I vostri cummenti:';

  @override
  String get countryPickerNoCountries => 'Nenti paisi truvati';

  @override
  String get countryPickerSearchHint => 'Cercate da u nome di u paese, da u codice, da u codice di dial...';

  @override
  String get countryPickerTitle => 'Selezziunate u Paese';

  @override
  String get mapDefaultStop => 'Fermati';

  @override
  String get mapEndLocation => 'Lucazzioni di fini';

  @override
  String get mapStartLocation => 'Lucali di cummunicazioni';

  @override
  String get stopsNoChangesToUndo => 'Nenti canciamenti dispunibili pi canciari.';

  @override
  String get stopsNoStopsAvailable => 'Nun c\'è chi s\'arresta.';
}
