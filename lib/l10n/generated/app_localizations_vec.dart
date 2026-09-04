import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Venetian (`vec`).
class AppLocalizationsVec extends AppLocalizations {
  AppLocalizationsVec([String locale = 'vec']) : super(locale);

  @override
  String get appInfoBuild => 'Costrusion de nùmaro';

  @override
  String get appInfoDevice => 'Modelo de dispositivo';

  @override
  String get appInfoOS => 'Version OS';

  @override
  String get appInfoPackage => 'Pacoło';

  @override
  String get appInfoTitle => 'Info de ła app';

  @override
  String get appInfoVersion => 'Version de ła app';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardiani';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Custodi autorizati par $name';
  }

  @override
  String get childrenNoGuardians => 'No xe avuti tutori in archivio per questo bambino.';

  @override
  String get childrenStatusDropped => 'Scartà';

  @override
  String get childrenStatusPending => 'In attesa';

  @override
  String get childrenStatusPicked => 'Scelto';

  @override
  String childrenTitle(Object routeName) {
    return 'I fioi  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absensa / NO AL BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: _$busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuà';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuà: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No i studenti che xe assenti.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No xe segnałà studenti in autobus.';

  @override
  String get drillChecklistNotOnBus => 'No su Bus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'IN BUS  NO EVACUATO';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'IN BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Processo par catturar le prove';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Via (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verifiche de driti de evacuazion';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Student sconto (s) Rimanente!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Seto che te vol mandar el registro de eserzo?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirma la presentazion del eser';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrive l\'esecuzion del esercito, el comportamento dei studenti, i percorsi de uscita doparà, e ogni eccezion osservada...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nota del condutor (minimo 10 caratteri):';

  @override
  String get drillEvidenceFailed => 'Invio fallito';

  @override
  String get drillEvidenceMandatoryWarning => 'Almeno 1 foto o video prove xe obbligatorie par presentar el eser.';

  @override
  String get drillEvidenceRecordVideo => 'Gravar el video';

  @override
  String get drillEvidenceRetrySubmission => 'SONBONDIMENTO de retiro';

  @override
  String get drillEvidenceReturnToDashboard => 'Ritorna al tabellone';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Invio de registro de eser...';

  @override
  String get drillEvidenceSuccess => 'Subesion Succesosa!';

  @override
  String get drillEvidenceSuccessMessage => 'El registro de evacuazion del esercito el xe stà caricà con successo e el xe in attesa de aprovazion.';

  @override
  String get drillEvidenceTakePhoto => 'Fate na foto';

  @override
  String get drillEvidenceTitle => 'Evidensa de perforazion obbligatoria';

  @override
  String get drillEvidenceUploading => 'Carga de prove e dati de lista de controllo';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: _$busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Forno:';
  }

  @override
  String get drillRosterMarkAttendance => 'La presenza de Marco';

  @override
  String get drillRosterNoStudents => 'No xe registrà studenti su sta rotta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCESO AL FORNO DEL CHECCHELLO';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sede:';
  }

  @override
  String get drillRosterSelectAll => 'Selezionar tuti';

  @override
  String get drillSummaryAdminNotesTitle => 'Nota de aministrasion';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvato al: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approvà a';

  @override
  String get drillSummaryBackToDrills => 'Torna a I Forni';

  @override
  String get drillSummaryBusNumber => 'Numero de autobús';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Dirigido da: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detali del forno';

  @override
  String get drillSummaryDriverNotesTitle => 'Nota del condutor';

  @override
  String get drillSummaryDuration => 'Durata';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'El tempo de ła fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuà: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuà $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'I Attachamenti dei Medii a prove';

  @override
  String get drillSummaryGps => 'Coordenade GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'No xe stà fato el riassunto del forno per l\'ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'No xe trovadi dati del foramento.';

  @override
  String get drillSummaryNotOnBus => 'No in autobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'IN BUS - NO EVACUATO';

  @override
  String get drillSummaryPhotoEvidence => 'Prove de foto';

  @override
  String get drillSummaryRouteId => 'Identificasion de rotta';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sede:';
  }

  @override
  String get drillSummaryStartTime => 'Orario de scominsiar';

  @override
  String get drillSummaryStatus => 'Statuto';

  @override
  String get drillSummaryStudentLogTitle => 'Log de evacuazion dei studenti';

  @override
  String drillSummaryTitle(Object id) {
    return 'Raccumulo del foramento (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo de perforazion';

  @override
  String get drillSummaryVideoEvidence => 'Video Testimonie';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus _ V0__';
  }

  @override
  String get drillTypeClassification => 'Selezionar ła clasificazion de i fori:';

  @override
  String get drillTypeCustomHint => 'Intrare el tipo de foramento de evacuazion...';

  @override
  String get drillTypeInvalidState => 'Stato del veicolo o del percorso invalido.';

  @override
  String get drillTypeNameBusFire => 'Incendio in autobus';

  @override
  String get drillTypeNameDangerZone => 'Zona pericolosa';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacità del conducente';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientazion de l\'equipamento';

  @override
  String get drillTypeNameFrontDoor => 'Porta devanti';

  @override
  String get drillTypeNameOthers => 'Altri';

  @override
  String get drillTypeNameRearDoor => 'Porta posteriore';

  @override
  String get drillTypeNameSideOrRoof => 'Lato o lato';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'No xe scelti i percorsi';

  @override
  String get drillTypePreparation => 'Preparazion per la drilla';

  @override
  String get drillTypeProceed => 'PROCEDUTO AL RISTO DELLE STUDENTI';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Selezionar ła rotta:';

  @override
  String get drillTypeSpecifyCustom => 'Specifica la descrizione del tipo di perforazione:';

  @override
  String get drillTypeTitle => 'Selezionar el tipo de perforazion';

  @override
  String get drillTypeWarning => 'Assicurarse che el veicolo sia parchegà in sicurezza prima de scominsiar l\'esecuzion.';

  @override
  String get drillsAssignedVehicle => 'Veicolo assegnato';

  @override
  String get drillsChecking => 'Controllo...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Forno #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'No Bus Assigned';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No drills recorded for bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No xe posibiłe de far un esercisio.';

  @override
  String get drillsShowSummary => 'Sottoxento';

  @override
  String get drillsStartDrill => 'Comincia la Foratura';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduto: $date Statuto: $status';
  }

  @override
  String get drillsTitle => 'Forze de evacuazion';

  @override
  String get drillsVehicleOutOfService => 'Veicolà fora de servizio';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Questo veicolo el xe attualmente in disuso e no pol esser doparà par eser.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENZA DI COSTRUZIONE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nome: _$name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passeggeri';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolastico';

  @override
  String get driverDetailsEndorsementsTitle => 'I soferimenti tenuti';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de scadenza';

  @override
  String get driverDetailsHolderSignature => 'SIGNatura del titoło';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de emission';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento de licenza';

  @override
  String get driverDetailsLicenseNoLabel => 'No de licensa';

  @override
  String get driverDetailsLicenseTitle => 'Detali de ła licenza';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licenza';

  @override
  String get driverDetailsOfficialSeal => 'SEAL OFFICIALE';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Classe:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDOUR:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Exp: $expiryDate';
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
  String get driverDetailsTapToView => 'Tocca par vedare el documento DL';

  @override
  String get driverDetailsTitle => 'Detali del driver';

  @override
  String get dvirCategoryBusSafetySystems => 'Sisteme de sicurezza specifiche per autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivi de acoplamento';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipamento de emergenza';

  @override
  String get dvirCategoryHorn => 'Corno';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivi e rifletori de illuminazion';

  @override
  String get dvirCategoryMirrors => 'Specchi de retrovision';

  @override
  String get dvirCategoryParkingBrake => 'Parche de parche';

  @override
  String get dvirCategoryPassengerSeating => 'Seat & Restrictions Passenger Seat & Restrictions';

  @override
  String get dvirCategoryServiceBrakes => 'Freni da servizio';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de direto';

  @override
  String get dvirCategoryTires => 'Pneumàtico';

  @override
  String get dvirCategoryWheelsRims => 'Ruote e rimpi';

  @override
  String get dvirCategoryWipers => 'Sgombero per vetri';

  @override
  String get dvirPostTripCapturePhoto => 'Foto de difeto de captura';

  @override
  String get dvirPostTripComplianceTitle => 'CERTIFACIONE DE COMPLIMENZA';

  @override
  String get dvirPostTripDefectButton => 'Defecto';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Segnalar difeti sensa foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvertimento: te stai segnalando un difeto in zone de sicurezza ($zones) senza incastrar na foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspection: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Intra i dettagli de la preoccupazione de sicurezza...';

  @override
  String get dvirPostTripNotesLabel => 'NOTE (MANDATORIO SUL DEFETTO) & FOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Selezionar DEFECT par inserir i dettagli de łe preoccupazioni de sicurezza...';

  @override
  String get dvirPostTripOdometerHeader => 'Leggiora corrente del odometro';

  @override
  String get dvirPostTripOdometerInstructions => 'Intra ła canbiasion de kmàxe exatamente come mostrà inte el panèl de strumenti del bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VEICIL RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Inpità el odometro prima de procedere.';

  @override
  String get dvirPostTripPassButton => 'Passo';

  @override
  String get dvirPostTripPhotoAttached => 'Foto allegato con successo.';

  @override
  String get dvirPostTripProgressLabel => 'Progreso de l\'ispezion';

  @override
  String get dvirPostTripSignatureCaptured => 'Capità la firma.';

  @override
  String get dvirPostTripSignatureCert => 'Confirmo che sto rapporto de lista de control de spostamento del veicolo xe stà completà in conformità co le regołixasion FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifica de la firma del driver';

  @override
  String get dvirPostTripSubmitButton => 'INSPECIONE SUBMISTA';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR el xe sta presentà con successo.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zona _V0__ / _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Riconosso de aver esaminado l\'ultimo rapporto de difeto presentà e verificà le riparazioni (se ghe ne xe) e de aver dito che l\'autobus xe sicuro da operare.';

  @override
  String get dvirPreTripActiveMessage => 'Questo veicolo xe Active e no ga difeti aperti.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Via attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'RICORDATO ATENZIONE: difetti del giorno precedente';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numero del bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DE VECHILE DISPATCH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'No se ga firmà: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No xe registrà difeti precedenti';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Questo veicolo xe stà segnałà pulito inte ła precedente ispezion dopo el viagio.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No xe necessari riparazion par operar in modo sicuro.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Questo veicolo xe fora de servizio par riparazion/manutension.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vehículo fora de servicio';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razo:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (RIPARATO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT NUOVI difetti';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La segnalazion de novi difeti xe disabilitada durante le riparazion.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statuto: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUZIONE SUB-ADMINI DEL TRANSPORT';

  @override
  String get dvirPreTripReturnToHomeButton => 'Torna a casa';

  @override
  String get dvirPreTripSignOffTitle => 'Signatura per andar in giro';

  @override
  String get dvirPreTripSignedSuccess => 'Verifica firmata con successo.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONVERICIONE SUBMISTA';

  @override
  String get dvirPreTripTitle => 'Verifica prima del viaggio';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statuto del veicolo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Disegna la firma';

  @override
  String get dvirSigPreviewLabel => 'Preview de la firma catturata:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVARSA la firma';

  @override
  String get dvirSigTapToDraw => 'TAP per disegnar la firma (RICERITO)';

  @override
  String get dvirSigWatermark => 'Segna Verticalmente (De soto a sora)';

  @override
  String get forgotPasswordCancel => 'Cancellar';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Inpire un email valido';

  @override
  String get forgotPasswordSend => 'Inviar';

  @override
  String get forgotPasswordSuccess => 'Se ła mail ła esiste, el xe stà mandà un link de reset.';

  @override
  String get genericBack => 'Ritorno';

  @override
  String get genericCancel => 'Cancellar';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Chiuso';

  @override
  String get genericConfirm => 'Confirmar';

  @override
  String get genericEdit => 'Editare';

  @override
  String get genericError => 'Xe andado qualcosa de mal';

  @override
  String get genericLoading => 'Carga...';

  @override
  String get genericNext => 'NEXT El';

  @override
  String get genericOk => 'Ok, ciao.';

  @override
  String get genericRetry => 'Ripeti';

  @override
  String get genericSuccess => 'El sucès';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: _$busId';
  }

  @override
  String get homeDispatchBlocked => 'Invio bloccato';

  @override
  String get homeDispatchBlockedTitle => 'Invio bloccato';

  @override
  String get homeErrorNoRoutesPreTrip => 'No xe disponibili rotte per far Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'No xe stà in corso el viaggio sul server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ciao, ciao, ciao.';
  }

  @override
  String get homeLogout => 'Login';

  @override
  String get homeMenuAppInfo => 'Info de ła app';

  @override
  String get homeMenuDrill => 'Forno';

  @override
  String get homeMenuDriverDetails => 'Detali del driver';

  @override
  String get homeMenuLanguage => 'Lengua';

  @override
  String get homeMenuPreTrip => 'Inspeto prima del viaggio';

  @override
  String get homeNoRoutes => 'No xe disponibili itinerari';

  @override
  String get homeReviewVerifyPreTrip => 'Review & Verify Pre-Trip';

  @override
  String get homeSearchHint => 'Righe de ricerca';

  @override
  String get homeStart => 'Comincia';

  @override
  String get homeTitle => 'Home - El Paco';

  @override
  String get homeVehicleOutOfServiceDefault => 'El veicolo el xe sta in fase de OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'El veicolo xe pronto e verificà par operare in modo sicuro.';

  @override
  String get languageTitle => 'Lengua';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Email o numero de telefono';

  @override
  String get loginErrorEnterPassword => 'Inpire ła paroła';

  @override
  String get loginErrorEnterUsername => 'Inserar el nome utente';

  @override
  String get loginErrorFailed => 'Login fallito. Te prego riprova.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Inpugnarghe na email o un nùmero de telèfono valido';

  @override
  String get loginForgotPassword => 'Te ga dimenticà la password?';

  @override
  String get loginPasswordLabel => 'Parola';

  @override
  String get mapChildrenTooltip => 'Bambini e tutori';

  @override
  String get mapConfirmMessage => 'Te vol proprio chiudere el viajo?';

  @override
  String get mapConfirmTitle => 'Confirmar';

  @override
  String get mapCurrentPosition => 'Poxision atuale';

  @override
  String get mapNo => 'No ghe xe';

  @override
  String get mapReconnectMessage => 'L\'aggiornamento de locałità el falle frecuentemente, varda ła to internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Fermo';

  @override
  String get mapStopping => 'Stopar...';

  @override
  String get mapStopsTooltip => 'Fermo';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualizzato ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Aspetando el GPS...';

  @override
  String get mapYes => 'Sì sì';

  @override
  String get splashDriverApp => 'App del driver';

  @override
  String get stopsActionUndo => 'Invalidà';

  @override
  String get stopsCancelledSuccess => 'Cancelato con successo';

  @override
  String get stopsDefaultLabel => 'Fermo';

  @override
  String get stopsGenericError => 'Qualche roba xe andada male. Te prego riprova.';

  @override
  String get stopsStatusComplete => 'completà';

  @override
  String get stopsStatusDone => 'fato';

  @override
  String stopsSubmitCount(Object count) {
    return 'Invio ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Inpostà con successo';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected selezionà _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Cavarsela';

  @override
  String get stopsTypePick => 'Sceglio';

  @override
  String stopsUndoCount(Object count) {
    return 'Invalidità ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Scarica/Carica';

  @override
  String get tripConfirmCancel => 'Cancellar';

  @override
  String get tripConfirmOk => 'Ok, ciao.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Per ła partensa de un viajo se ghe vol un permesso de locałixasion.';

  @override
  String get homeMenuPostCrashReporting => 'Segnalazion dopo el crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razo:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statuto: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localisassion de ła ricerca (es. Strada del Mercato)';

  @override
  String get crashLocationPickerTitle => 'Selesionar locałità su ła mapa';

  @override
  String get crashLocationPickerTooltip => 'Confirme locałità';

  @override
  String get incidentDashboardDescription => 'Selesionar na azion par procedare co ła gestione dei incidenti o vardar i raporti pasadi.';

  @override
  String get incidentDashboardHeadline => 'Segnalazion de incidenti dopo el crash';

  @override
  String get incidentDashboardLogNew => 'Log Novità Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Inizia un novo rapporto de crash passo dopo passo';

  @override
  String get incidentDashboardTitle => 'Incidente dopo el crash';

  @override
  String get incidentDashboardViewHistory => 'Vede Storia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vede i precedenti rapporti de incidente e el stato';

  @override
  String get incidentDetailsAdminLetter => 'Lettera de aministrasion';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT El conte de contado al test de alcool (2 ore limite)';

  @override
  String get incidentDetailsBranchId => 'ID de sucesion';

  @override
  String get incidentDetailsBusPlate => 'Cartolina de licenza de autobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citazion Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citasion a l\'autista';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenade: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copià su la pinza!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copia su la scheda';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Relato DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relato del DOE (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Nota del conducente:';

  @override
  String get incidentDetailsDriverUserId => 'ID utente del driver';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Test Drug Countdown (8-Hour Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'La fatalità xe accaduta';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Lesioni che richiede un tratamento medico';

  @override
  String get incidentDetailsLawEnforcement => 'Agenzia de eseguimento de ła lege';

  @override
  String get incidentDetailsLoadFailed => 'No xe rivà a caricar i dettagli.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Localisassion: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Attachamenti ai media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statuto: $status';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No xe stà colegà foto o video.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nissun studiante no xe stà marcà a bordo durante l\'incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generar raporti de notifica e mandare le lettere modelà a i supervisori distretuali o a l\'amministrazione.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notifiche de trasmissione';

  @override
  String get incidentDetailsOfficer => 'Detali de l\'ufficio';

  @override
  String get incidentDetailsPoliceReport => 'Numero de raporto de ła polizia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Lettera de trasmision pre-popolada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basamento regolamentare:';

  @override
  String get incidentDetailsRouteId => 'Identificasion de rotta';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notifica de amministrator scołare';

  @override
  String get incidentDetailsStatusPending => 'In attesa';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detali: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Ferito';

  @override
  String get incidentDetailsStudentNoInjury => 'No xe feriti';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravità:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportato a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NO ESCEDI TESTING POST-CASH';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statuto: $status';
  }

  @override
  String get incidentDetailsTitle => 'Detali de incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Veículo Remolcado';

  @override
  String get incidentDetailsYes => 'Sì sì sì';

  @override
  String get incidentHistoryEmpty => 'No xe registrà registri de incidenti per sto veicolo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'No xe rivà el registro: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ora: _V0__ Bus: _V1__ Testing: _V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NO RECORDED';

  @override
  String get incidentHistoryTestingRequired => 'RICORDATO';

  @override
  String get incidentHistoryTitle => 'Registro de incidenti dopo el crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiungi un\'altra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numero de insignia *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numero del bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto de scena de incidente';

  @override
  String get incidentIntakeCitationSubtitle => 'El xe stà mandà un\'indicazion de violazion del traffico al guidatore del bus scolastico?';

  @override
  String get incidentIntakeCitationTitle => 'Citazion emesa?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Data & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO I NEED TO TEST';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT TESTING NEEDEDED';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Intra note in più riguardo la collisione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Nota de incidente del condutor';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passeggeri de via no caricati: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Leghe prove (foto) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Xe sta fatalità a causa de sto incidente?';

  @override
  String get incidentIntakeFatalityTitle => 'Se ga fato fatalità?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenade GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vede Storia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Qualchedun ga fato un danno corporeo che el richiedeva un curamento medico immediato fora da la scena?';

  @override
  String get incidentIntakeInjuriesTitle => 'Ferite che richiede cure mediche?';

  @override
  String get incidentIntakeInjuryNotesError => 'I studianti feriti i ga un\'obbligazion de scriver le note de lesion';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Nota de lesioni / Detali (Obliga) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravezza dei lesioni *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Per favore entra in agenzia de polizia';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agenzia de eseguimento de ła lege (es. Patrulla de łe autostrade de Stato) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raporto de ła polizia e de ła polizia';

  @override
  String get incidentIntakeLocationDescError => 'Inserar ła descrixion de ła locałità';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizion de locałità (es. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'I servizi medici portati a';

  @override
  String get incidentIntakeNoMatchingStudents => 'No i ga studianti che i se conforma.';

  @override
  String get incidentIntakeNoStudentsFound => 'No xe trovadi studenti.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No xe studenti a bordo.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No xe stà registrà studenti per sta rotta.';

  @override
  String get incidentIntakeOfficerNameError => 'Inserir el nome del agente';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome del agente *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Inserir el numero de segnalazion de polizia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numero de raporto de polizia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazion su strada e su guida';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cerca un bambino ferito...';

  @override
  String get incidentIntakeSearchStudentHint => 'Cerca studiante...';

  @override
  String get incidentIntakeSelectAll => 'Seleziona tuti i studianti';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT su la mappa';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minore';

  @override
  String get incidentIntakeSeverityModerate => 'Moderazion';

  @override
  String get incidentIntakeSeveritySevere => 'Severo';

  @override
  String get incidentIntakeSeverityTitle => 'Variabili de gravità del incidente';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'RAPORT SUBMISTO';

  @override
  String get incidentIntakeTitle => 'Intraporto dopo incidente';

  @override
  String get incidentIntakeTowedSubtitle => 'Al qualchedun veicolo el ga ciapà danni invalidanti che i ga dovudo tirarlo via da la scena?';

  @override
  String get incidentIntakeTowedTitle => 'Vecio Remoto?';

  @override
  String get incidentIntakeWasInjured => 'El xe ferito?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: _$busNumber';
  }

  @override
  String get dvirPreTripClose => 'SEGUNDO';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commenti del driver / Note (Fonzionale)';

  @override
  String get dvirPreTripNoComments => 'No xe stà aggiunti altri commenti.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razo:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Firma concesso.';

  @override
  String get dvirPreTripSigMissing => 'Manca la firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signà per verificare la riparazion dei difeti precedenti.';

  @override
  String get dvirPreTripStepSignOff => 'Firme';

  @override
  String get dvirPreTripStepSubmit => 'Invio';

  @override
  String get dvirPreTripStepVerify => 'Verifica';

  @override
  String get dvirPreTripTapNext => 'Per proseguire, tocca NEXT.';

  @override
  String get dvirPreTripVehicleOutOfService => 'El vełeto xe fora de servizio';

  @override
  String get dvirPreTripVehicleReady => 'El veicolo xe pronto par servire';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statuto di riparazione verificato:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verifica che tuti i difeti segnalai xe stati riparadi controllando la casella accanto a ogni difeto.';

  @override
  String get dvirPreTripYourComments => 'I vostri commenti:';

  @override
  String get countryPickerNoCountries => 'Paesi no trovadi';

  @override
  String get countryPickerSearchHint => 'Cerca par nome del paese, codice o codice dial...';

  @override
  String get countryPickerTitle => 'Selezionar Paese';

  @override
  String get mapDefaultStop => 'Fermo';

  @override
  String get mapEndLocation => 'Localisassion de ła fin';

  @override
  String get mapStartLocation => 'Localisassion de partensa';

  @override
  String get stopsNoChangesToUndo => 'No xe cambiamenti disponibili da annullare.';

  @override
  String get stopsNoStopsAvailable => 'No xe stabi disponibili.';
}
