import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appInfoBuild => 'Numero di costruzione';

  @override
  String get appInfoDevice => 'Modello di dispositivo';

  @override
  String get appInfoOS => 'Versione OS';

  @override
  String get appInfoPackage => 'Pacco';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'Versione dell\'app';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardiani';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Guardiani autorizzati per $name';
  }

  @override
  String get childrenNoGuardians => 'Nessun tutore autorizzato per questo bambino.';

  @override
  String get childrenStatusDropped => '- Scartato';

  @override
  String get childrenStatusPending => 'In attesa';

  @override
  String get childrenStatusPicked => 'Scelto';

  @override
  String childrenTitle(Object routeName) {
    return 'Bambini  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Assente / NON SUL BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuazione';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuato: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nessun studente assente.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nessun studente segnato in autobus.';

  @override
  String get drillChecklistNotOnBus => 'Non sull\'autobus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Sull\'autobus  Non evacuato';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Sull\'autobus ($count)';
  }

  @override
  String get drillChecklistProceed => 'PROCEDO PER Catturare le prove';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Via (in diretta): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista di controllo delle prove di evacuazione';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Non ci sono studenti!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Sei sicuro di voler inviare questo registro di perforazione?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirma la presentazione del perno';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrivi l\'esecuzione del drill, il comportamento degli studenti, i percorsi di uscita utilizzati e le eccezioni osservate...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nota del conducente (minimo 10 caratteri):';

  @override
  String get drillEvidenceFailed => 'Invio fallito';

  @override
  String get drillEvidenceMandatoryWarning => 'Per presentare la prova è obbligatoria almeno una foto o un video.';

  @override
  String get drillEvidenceRecordVideo => 'Registra video';

  @override
  String get drillEvidenceRetrySubmission => 'SONDICIONE di ritiro';

  @override
  String get drillEvidenceReturnToDashboard => 'Ritorno al dashboard';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Invio di registro di esercizio...';

  @override
  String get drillEvidenceSuccess => 'La sottomissione è riuscita!';

  @override
  String get drillEvidenceSuccessMessage => 'Il registro delle prove di evacuazione è stato caricato con successo e sta in attesa di approvazione.';

  @override
  String get drillEvidenceTakePhoto => 'Prendi una foto';

  @override
  String get drillEvidenceTitle => 'Evidenza obbligatoria di perforazione';

  @override
  String get drillEvidenceUploading => 'Caricamento delle prove e dei dati della lista di controllo';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- Il forno:';
  }

  @override
  String get drillRosterMarkAttendance => 'La presenza di Marco';

  @override
  String get drillRosterNoStudents => 'Nessun studente è registrato su questa rotta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDUTO DI SEGLIMENTE';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Via:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillRosterSelectAll => 'Selezionare Tutti';

  @override
  String get drillSummaryAdminNotesTitle => 'Nota di amministrazione';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvato a:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Accreditato al';

  @override
  String get drillSummaryBackToDrills => 'Torniamo alle forate';

  @override
  String get drillSummaryBusNumber => 'Numero dell\'autobus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Diretto da: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Dettagli di perforazione';

  @override
  String get drillSummaryDriverNotesTitle => 'Nota del conducente';

  @override
  String get drillSummaryDuration => 'Durata';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- V0__ min __ V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Tempo della fine';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuato: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuato';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Legami di prova sui mezzi di comunicazione';

  @override
  String get drillSummaryGps => 'Coordinate GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'L\'esercizio di questo tipo di attività è stato completato.';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Non è stato possibile caricare il riassunto del perno per l\'ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Non sono stati trovati dati del trapano.';

  @override
  String get drillSummaryNotOnBus => 'Non in autobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Sull\'autobus - NON EVACUATO';

  @override
  String get drillSummaryPhotoEvidence => 'Foto di prove';

  @override
  String get drillSummaryRouteId => 'Identificazione del percorso';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillSummaryStartTime => 'Tempo di inizio';

  @override
  String get drillSummaryStatus => 'Statuto';

  @override
  String get drillSummaryStudentLogTitle => 'Registro di evacuazione degli studenti';

  @override
  String drillSummaryTitle(Object id) {
    return 'Riassunto del perforazione (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo di foraggio';

  @override
  String get drillSummaryVideoEvidence => 'Evidenza video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus';
  }

  @override
  String get drillTypeClassification => 'Scegliere la classificazione dei fori:';

  @override
  String get drillTypeCustomHint => 'Inserire il tipo di esercitazione di evacuazione personalizzata...';

  @override
  String get drillTypeInvalidState => 'Stato del veicolo o della rotta invalido.';

  @override
  String get drillTypeNameBusFire => 'Incendio in autobus';

  @override
  String get drillTypeNameDangerZone => 'Zona pericolosa';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacità del conducente';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientazione delle apparecchiature';

  @override
  String get drillTypeNameFrontDoor => 'Porta di ingresso';

  @override
  String get drillTypeNameOthers => 'Altri';

  @override
  String get drillTypeNameRearDoor => 'Porta posteriore';

  @override
  String get drillTypeNameSideOrRoof => 'L\'angolo';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Nessuna rotta scelta';

  @override
  String get drillTypePreparation => 'Preparazione per il perno';

  @override
  String get drillTypeProceed => 'PROCEDUTO AL RISTO DELLE STUDENTI';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Via:';
  }

  @override
  String get drillTypeSelectRoute => 'Selezionare la rotta:';

  @override
  String get drillTypeSpecifyCustom => 'Specifica la descrizione del tipo di perforazione:';

  @override
  String get drillTypeTitle => 'Selezionare il tipo di perforazione';

  @override
  String get drillTypeWarning => 'Assicurarsi che il veicolo sia parcheggiato in modo sicuro prima di iniziare l\'esecuzione.';

  @override
  String get drillsAssignedVehicle => 'Veicolo assegnato';

  @override
  String get drillsChecking => 'Controllo...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Sfondo #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nessun autobus assegnato';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nessun esercitazione registrato per l\'autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Non ci sono rotte disponibili per iniziare un\'esercitazione.';

  @override
  String get drillsShowSummary => 'Riassunto della mostra';

  @override
  String get drillsStartDrill => 'Inizia il perforazione';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Condotto: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Esercizi di evacuazione';

  @override
  String get drillsVehicleOutOfService => 'Veicolo fuori servizio';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Questo veicolo è attualmente fuori servizio e non può essere utilizzato per esercitazioni.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Permesso di guida';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nome:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passeggeri';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolastico';

  @override
  String get driverDetailsEndorsementsTitle => 'Contenuti i consensi';

  @override
  String get driverDetailsExpiryDateLabel => 'Data di scadenza';

  @override
  String get driverDetailsHolderSignature => 'SIGNATO DEL TITOR';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificazione:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data di pubblicazione';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento di licenza';

  @override
  String get driverDetailsLicenseNoLabel => 'Numero di licenza';

  @override
  String get driverDetailsLicenseTitle => 'Dettagli di licenza';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo di licenza';

  @override
  String get driverDetailsOfficialSeal => 'SEAL Ufficiale';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Classe:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'L\'esistenza di un\'attività di controllo';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Esclusione:';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Toccare per visualizzare il documento DL';

  @override
  String get driverDetailsTitle => 'Dettagli del conducente';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistema di sicurezza specifico per autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivi di accoppiamento';

  @override
  String get dvirCategoryEmergencyEquipment => 'Attrezzature di emergenza';

  @override
  String get dvirCategoryHorn => 'Corno';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivi di illuminazione e riflettori';

  @override
  String get dvirCategoryMirrors => 'Specchi retrovisionali';

  @override
  String get dvirCategoryParkingBrake => 'Freno di parcheggio';

  @override
  String get dvirCategoryPassengerSeating => 'Sedi e contenitori per passeggeri';

  @override
  String get dvirCategoryServiceBrakes => 'Freni di servizio';

  @override
  String get dvirCategorySteeringMechanism => 'Meccanismo di direzione';

  @override
  String get dvirCategoryTires => 'Pneus';

  @override
  String get dvirCategoryWheelsRims => 'Ruote e rimmi';

  @override
  String get dvirCategoryWipers => 'Sgombero per vetro';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOSSA di difetto di cattura';

  @override
  String get dvirPostTripComplianceTitle => 'Certificazione di conformità';

  @override
  String get dvirPostTripDefectButton => 'DEFETTO';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Segnalare difetti senza foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvertimento: si segnala un difetto nelle zone di sicurezza ($zones) senza allegare una foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ispezione: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Inserisci i dettagli della preoccupazione per la sicurezza...';

  @override
  String get dvirPostTripNotesLabel => 'NOTE (MANDATORIO SUL DEFETTO) e FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Selezionare DEFECT per inserire i dettagli delle preoccupazioni di sicurezza...';

  @override
  String get dvirPostTripOdometerHeader => 'Legge corrente dell\' odometro';

  @override
  String get dvirPostTripOdometerInstructions => 'Inserire la lettura della chilometraggio esattamente come mostrato sul pannello degli strumenti del bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometro (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'Metrica del tempo di esecuzione del veicolo';

  @override
  String get dvirPostTripOdometerWarning => 'Prima di procedere, inserire la lettura del chilometro.';

  @override
  String get dvirPostTripPassButton => 'Passaggio';

  @override
  String get dvirPostTripPhotoAttached => 'Foto allegata con successo.';

  @override
  String get dvirPostTripProgressLabel => 'Progresso dell\'ispezione';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatura catturata.';

  @override
  String get dvirPostTripSignatureCert => 'Conosco che questa relazione di checklist di circolazione del veicolo è stata completata in conformità con le norme FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificazione della firma del conducente';

  @override
  String get dvirPostTripSubmitButton => 'Inissione di presentazione';

  @override
  String get dvirPostTripSubmitSuccess => 'L\'eDVIR è stato presentato con successo.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DI $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zona di controllo';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Riconosco di aver esaminato l\'ultimo rapporto di difetto presentato e verificato le riparazioni (se esistono) e di aver dichiarato che l\'autobus è sicuro per l\'esercizio.';

  @override
  String get dvirPreTripActiveMessage => 'Questo veicolo è Active e non presenta difetti aperti.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Via attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'RICORGATO ATTENZIONE: difetti del giorno precedente';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numero dell\'autobus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DISPATCH VECHILE';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Non è stato firmato:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nessun difetto precedente registrato';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Questo veicolo è stato segnalato pulito nell\'ispezione precedente dopo il turno di viaggio.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nessuna riparazione necessaria per un funzionamento sicuro.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Questo veicolo è fuori servizio per riparazioni/manutenzione.';

  @override
  String get dvirPreTripOutofServiceButton => 'VETRO ESTO DEL SERVIZIO';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Ragazzo:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- V0__ (riparazione)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT NUOVI difetti';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La segnalazione di nuovi difetti è disabilitata durante le riparazioni.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statuto:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Risoluzione del sottosufficio di amministrazione del trasporto';

  @override
  String get dvirPreTripReturnToHomeButton => 'Ritorno a casa';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF per andare a fare una passeggiata';

  @override
  String get dvirPreTripSignedSuccess => 'Verifica firmata con successo.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONVERCAZIONE SUBMISTA';

  @override
  String get dvirPreTripTitle => 'Verifica pre-viaggio';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statuto del veicolo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Disegna la firma';

  @override
  String get dvirSigPreviewLabel => 'Preview della firma catturata:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Salvare la firma';

  @override
  String get dvirSigTapToDraw => 'TAP per disegnare la firma (requisito)';

  @override
  String get dvirSigWatermark => 'Segna Verticalmente (Da Sotto a Suo)';

  @override
  String get forgotPasswordCancel => 'Cancellare';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Inserire una e-mail valida';

  @override
  String get forgotPasswordSend => 'Invia';

  @override
  String get forgotPasswordSuccess => 'Se quella mail esiste, è stato inviato un collegamento di ripristino.';

  @override
  String get genericBack => 'Ritorno';

  @override
  String get genericCancel => 'Cancellare';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Chiuso';

  @override
  String get genericConfirm => 'Confirmazione';

  @override
  String get genericEdit => 'Editare';

  @override
  String get genericError => 'Qualcosa è andato storto .';

  @override
  String get genericLoading => 'Caricamento...';

  @override
  String get genericNext => 'Prossimo';

  @override
  String get genericOk => 'Ok, ok.';

  @override
  String get genericRetry => 'Riprova';

  @override
  String get genericSuccess => 'Successo';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Invio bloccato';

  @override
  String get homeDispatchBlockedTitle => 'Invio bloccato';

  @override
  String get homeErrorNoRoutesPreTrip => 'Non ci sono rotte disponibili per effettuare il Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Non è riuscito a avviare la corsa sul server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ciao, V0__';
  }

  @override
  String get homeLogout => 'Sviluppo';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Forno';

  @override
  String get homeMenuDriverDetails => 'Dettagli del conducente';

  @override
  String get homeMenuLanguage => 'Lingua';

  @override
  String get homeMenuPreTrip => 'Ispezione pre-viaggio';

  @override
  String get homeNoRoutes => 'Nessun itinerario disponibile';

  @override
  String get homeReviewVerifyPreTrip => 'Rivista e verifica pre-viazione';

  @override
  String get homeSearchHint => 'Rutte di ricerca';

  @override
  String get homeStart => 'Iniziazione';

  @override
  String get homeTitle => 'Home';

  @override
  String get homeVehicleOutOfServiceDefault => 'Il veicolo è attualmente OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Il veicolo è pronto e verificato per un funzionamento sicuro.';

  @override
  String get languageTitle => 'Lingua';

  @override
  String get loginButton => 'Innesco';

  @override
  String get loginEmailOrPhoneLabel => 'Numero di posta elettronica o di telefono';

  @override
  String get loginErrorEnterPassword => 'Inserire la password';

  @override
  String get loginErrorEnterUsername => 'Inserire il nome utente';

  @override
  String get loginErrorFailed => 'Il login non è riuscito, per favore riprova.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Inserire un numero di posta elettronica o di telefono valido';

  @override
  String get loginForgotPassword => '- Hai dimenticato la password?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Bambini e tutori';

  @override
  String get mapConfirmMessage => 'Vuoi davvero chiudere il viaggio?';

  @override
  String get mapConfirmTitle => 'Confirmazione';

  @override
  String get mapCurrentPosition => 'Posizione attuale';

  @override
  String get mapNo => '- No, no.';

  @override
  String get mapReconnectMessage => 'L\'aggiornamento della posizione non funziona spesso, controlla la tua rete.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Fermati';

  @override
  String get mapStopping => '- Fermo...';

  @override
  String get mapStopsTooltip => 'Fermo';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aggiornato ${seconds}s fa';
  }

  @override
  String get mapWaitingGps => 'Aspettando il GPS...';

  @override
  String get mapYes => '- Sì, sì.';

  @override
  String get splashDriverApp => 'App di guida';

  @override
  String get stopsActionUndo => 'Invalidato';

  @override
  String get stopsCancelledSuccess => 'Annullato con successo';

  @override
  String get stopsDefaultLabel => 'Fermati';

  @override
  String get stopsGenericError => 'Qualcosa è andato storto, per favore, riprova.';

  @override
  String get stopsStatusComplete => 'completi';

  @override
  String get stopsStatusDone => 'fatto';

  @override
  String stopsSubmitCount(Object count) {
    return 'Invio ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Invio con successo';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Selezionato';
  }

  @override
  String get stopsTypeDrop => '- Lascia perdere.';

  @override
  String get stopsTypePick => 'Scegliere';

  @override
  String stopsUndoCount(Object count) {
    return 'Innesto ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Scaricazione/rilascio';

  @override
  String get tripConfirmCancel => 'Cancellare';

  @override
  String get tripConfirmOk => '- Ok.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Per iniziare un viaggio è richiesta la licenza di localizzazione.';

  @override
  String get homeMenuPostCrashReporting => 'Relazioni dopo il crollo';

  @override
  String homeVehicleReason(Object reason) {
    return 'Ragazzo:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statuto:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'L\'esercizio di questo tipo di attività è stato completato.';
  }

  @override
  String get crashLocationPickerSearchHint => 'Località di ricerca (ad esempio Market St)';

  @override
  String get crashLocationPickerTitle => 'Selezionare la posizione sulla mappa';

  @override
  String get crashLocationPickerTooltip => 'Confirma la posizione';

  @override
  String get incidentDashboardDescription => 'Selezionare un\'azione per procedere alla gestione degli incidenti o visualizzare i rapporti precedenti.';

  @override
  String get incidentDashboardHeadline => 'Segnalazione di incidenti dopo il crash';

  @override
  String get incidentDashboardLogNew => 'Log Nuovo Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniziare un nuovo rapporto di incidente passo dopo passo';

  @override
  String get incidentDashboardTitle => 'Incidente dopo il crash';

  @override
  String get incidentDashboardViewHistory => 'Visualizza la storia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visualizza precedenti rapporti di incidente e stato';

  @override
  String get incidentDetailsAdminLetter => 'Lettera dell\'amministratore';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Conteggio a ritardo del test di alcol (2 ore limite)';

  @override
  String get incidentDetailsBranchId => 'Identificazione della filiale';

  @override
  String get incidentDetailsBusPlate => 'Targa di licenza di autobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impatto di citazione: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citato al conducente';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinate: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0__ copiato su clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copia su Clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Relazione DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relazione del DOE di Stato (opzionale)';

  @override
  String get incidentDetailsDriverNotes => 'Nota del conducente:';

  @override
  String get incidentDetailsDriverUserId => 'ID utente del driver';

  @override
  String get incidentDetailsDrugCountdown => 'Conteggio a ritardo dei test di droga DOT (limite di 8 ore)';

  @override
  String get incidentDetailsFatalityOccurred => 'C\'è stata una fatalità';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Ferite che richiedono un trattamento medico';

  @override
  String get incidentDetailsLawEnforcement => 'Agenzia di applicazione della legge';

  @override
  String get incidentDetailsLoadFailed => 'Non ho potuto caricare i dettagli.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Localizzazione:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Attachamenti ai media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statuto:';
  }

  @override
  String get incidentDetailsNo => 'Non';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nessuna foto o video allegati.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nessun studente era stato segnato a bordo durante l\'incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generare relazioni di notifica e inviare lettere con modello ai supervisori distrettuali o all\'amministrazione.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notifiche di trasmissione';

  @override
  String get incidentDetailsOfficer => 'Dettagli ufficiali';

  @override
  String get incidentDetailsPoliceReport => 'Numero di segnalazione della polizia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Lettera di trasmissione pre-pollellata:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base normativa:';

  @override
  String get incidentDetailsRouteId => 'Identificazione del percorso';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notifica all\'amministratore scolastico';

  @override
  String get incidentDetailsStatusPending => 'In attesa';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Dettagli:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Ferito';

  @override
  String get incidentDetailsStudentNoInjury => 'Nessun infortunio';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravità:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasporto a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Non è necessario effettuare test post-crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statuto:';
  }

  @override
  String get incidentDetailsTitle => 'Dettagli dell\'incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Veicolo trainato';

  @override
  String get incidentDetailsYes => 'Sì';

  @override
  String get incidentHistoryEmpty => 'Nessun registro di incidenti registrato per questo veicolo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Non è riuscito a recuperare i registri: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ora: V0 Bus: V1 Test: V2';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Non richiesto';

  @override
  String get incidentHistoryTestingRequired => 'RICORDATO';

  @override
  String get incidentHistoryTitle => 'Registro degli incidenti dopo il crollo';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiungi un\'altra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisiti';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numero di distintivo *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numero dell\'autobus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto della scena dell\'incidente';

  @override
  String get incidentIntakeCitationSubtitle => 'E\' stata rilasciata una citazione per violazione del traffico al conducente dell\'autobus scolastico?';

  @override
  String get incidentIntakeCitationTitle => '- Citazione rilasciata?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data e ora di crash *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Non è richiesto';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT TESTING richiesto';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conduzione:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Inserisci qualsiasi nota aggiuntiva riguardo alla collisione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Nota di incidente con il conducente';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passageri non rientrati nel trasporto: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Aggiungete le prove (foto) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ci sono state morti a causa di questo incidente?';

  @override
  String get incidentIntakeFatalityTitle => 'C\'è stata una fatalità?';

  @override
  String get incidentIntakeGpsLabel => 'Coordinate GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Visualizza la storia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Qualcuno ha subito lesioni corporee che richiedono immediato trattamento medico fuori dalla scena?';

  @override
  String get incidentIntakeInjuriesTitle => 'Le lesioni che richiedono cure mediche?';

  @override
  String get incidentIntakeInjuryNotesError => 'I documenti di lesioni sono obbligatori per gli studenti feriti';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Nota / dettaglio sulle lesioni (obbligabile) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravità delle lesioni *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Per favore, inserite l\'agenzia di polizia.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agenzia di esecuzione della legge (ad esempio, la Pattuglia statale delle autostrade) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rapporto dell\'applicativo e della polizia';

  @override
  String get incidentIntakeLocationDescError => 'Inserire la descrizione della posizione';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizione della posizione (ad esempio Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Trasferimento di un impianto medico';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nessun studente corrispondente.';

  @override
  String get incidentIntakeNoStudentsFound => 'Non sono stati trovati studenti.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Non ci sono studenti a bordo, premete NEXT per continuare.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nessun studente è stato registrato per questo percorso.';

  @override
  String get incidentIntakeOfficerNameError => 'Inserire il nome dell\' ufficiale';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome dell\' Ufficiale *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Inserire il numero della relazione di polizia .';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numero di segnalazione della polizia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Via:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazioni sulla rotta e sul conducente';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cerca un bambino ferito...';

  @override
  String get incidentIntakeSearchStudentHint => '- Studente di ricerca...';

  @override
  String get incidentIntakeSelectAll => 'Selezionare tutti gli studenti';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT su mappa';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minore';

  @override
  String get incidentIntakeSeverityModerate => 'Moderato';

  @override
  String get incidentIntakeSeveritySevere => '- gravi';

  @override
  String get incidentIntakeSeverityTitle => 'Variabili di gravità del crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificazione:';
  }

  @override
  String get incidentIntakeSubmitButton => 'RAPORT SUBMISTO';

  @override
  String get incidentIntakeTitle => 'Assunzione di cibo dopo un incidente';

  @override
  String get incidentIntakeTowedSubtitle => 'Qualsiasi veicolo ha subito danni che lo hanno distrutto e che hanno richiesto di rimorchiarlo dalla scena?';

  @override
  String get incidentIntakeTowedTitle => '- Il veicolo rimorchiato?';

  @override
  String get incidentIntakeWasInjured => 'E\' stato ferito?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'SONO vicini';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commenti del conducente / note (opzionale)';

  @override
  String get dvirPreTripNoComments => 'Nessun commento aggiunto.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Ragazzo:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Via:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatura catturata con successo.';

  @override
  String get dvirPreTripSigMissing => 'Manca la firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Si prega di firmare per verificare la riparazione di difetti precedenti.';

  @override
  String get dvirPreTripStepSignOff => 'Firme';

  @override
  String get dvirPreTripStepSubmit => 'Invio';

  @override
  String get dvirPreTripStepVerify => 'Verifica';

  @override
  String get dvirPreTripTapNext => 'Per procedere, premete NEXT.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Il veicolo è fuori servizio';

  @override
  String get dvirPreTripVehicleReady => 'Il veicolo è pronto per il servizio';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statuto di riparazione verificato:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verificare che tutti i difetti segnalati siano stati riparati controllando la casella accanto a ciascun difetto.';

  @override
  String get dvirPreTripYourComments => 'I vostri commenti:';

  @override
  String get countryPickerNoCountries => 'Non sono stati trovati paesi';

  @override
  String get countryPickerSearchHint => 'Cerca per nome del paese, codice, o codice di marcia...';

  @override
  String get countryPickerTitle => 'Selezionare Paese';

  @override
  String get mapDefaultStop => 'Fermati';

  @override
  String get mapEndLocation => 'Località finale';

  @override
  String get mapStartLocation => 'Localizzazione di avvio';

  @override
  String get stopsNoChangesToUndo => 'Nessun cambiamento disponibile per annullare.';

  @override
  String get stopsNoStopsAvailable => 'Nessun stop disponibile.';

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
