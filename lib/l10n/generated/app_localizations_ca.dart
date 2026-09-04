import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appInfoBuild => 'Construir número';

  @override
  String get appInfoDevice => 'Modèl d\'aparell';

  @override
  String get appInfoOS => 'Versió de sistema operatiu';

  @override
  String get appInfoPackage => 'Paquet';

  @override
  String get appInfoTitle => 'Informació de l\'aplicació';

  @override
  String get appInfoVersion => 'Version de l\'aplicació';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardians';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Gardianes autorizats per a $name';
  }

  @override
  String get childrenNoGuardians => 'No hi ha tutors autorizats en el dossier d\'aquest nen.';

  @override
  String get childrenStatusDropped => 'Es va deixar caure';

  @override
  String get childrenStatusPending => 'Esperant';

  @override
  String get childrenStatusPicked => 'Escollit';

  @override
  String childrenTitle(Object routeName) {
    return 'Els nens  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'absent / NO EN BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuats';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuats: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No hi ha estudiants absents.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No hi ha estudiants marcats en l\'autobús.';

  @override
  String get drillChecklistNotOnBus => 'NO EN BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'En autobús  NO evacuat';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'En BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'L\'Aventura per a la Captura de Evidències';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ruta (En directe): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de control de les perforacions d\'evacuació';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Estudiant desconegut queda!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Estàs segur que vols enviar el registre de la perforació?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirma la presentació de la perforació';

  @override
  String get drillEvidenceDriverNotesHint => 'Descriu l\'execució de l\'exercici, el comportament dels estudiants, els camins d\'exit utilitzats, i qualsevol excepció observada...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notes del conductor (mínimament 10 caràcters):';

  @override
  String get drillEvidenceFailed => 'La presentació no va ser efectiva';

  @override
  String get drillEvidenceMandatoryWarning => 'Cal presentar almenys una prova fotogràfica o vídeo per a la simulació.';

  @override
  String get drillEvidenceRecordVideo => 'Gravar vídeo';

  @override
  String get drillEvidenceRetrySubmission => 'SOMBIMI DE RETIR';

  @override
  String get drillEvidenceReturnToDashboard => 'Tornar a la taula de control';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'S\'envia el registre de les perforacions...';

  @override
  String get drillEvidenceSuccess => 'Submissió amb èxit!';

  @override
  String get drillEvidenceSuccessMessage => 'El registre de les operacions d\'evacuació s\'ha subministrat amb èxit i està penjant la aprovació.';

  @override
  String get drillEvidenceTakePhoto => 'Fes una foto';

  @override
  String get drillEvidenceTitle => 'Evidència obligatòria de les perforacions';

  @override
  String get drillEvidenceUploading => 'Carregament de proves i dades de l\'lista de verificació';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Perforació:';
  }

  @override
  String get drillRosterMarkAttendance => 'La presència de Marc';

  @override
  String get drillRosterNoStudents => 'No hi ha estudiants registrats en aquesta ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presents: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCESSI per per percaigurar la llista de verificació';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillRosterSelectAll => 'Seleccionar tots';

  @override
  String get drillSummaryAdminNotesTitle => 'Notes d\'administració';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Aprovat a:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aprovat a';

  @override
  String get drillSummaryBackToDrills => 'Tornem a les Forres';

  @override
  String get drillSummaryBusNumber => 'Número de bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conducida per: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalls de la perforació';

  @override
  String get drillSummaryDriverNotesTitle => 'Notes del conductor';

  @override
  String get drillSummaryDuration => 'Durada';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'El temps del final';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuats: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuada';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Anegats de mitjans de comunicació';

  @override
  String get drillSummaryGps => 'Coordenades GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'L\'exemple de la col·laboració de la Comissió Europea';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'No va carregar el resum de la perforació per a la ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'No hi ha dades de les perforacions trobades.';

  @override
  String get drillSummaryNotOnBus => 'No en autobús';

  @override
  String get drillSummaryOnBusNotEvacuated => 'En autobús - NO evacuat';

  @override
  String get drillSummaryPhotoEvidence => 'Evidència fotogràfica';

  @override
  String get drillSummaryRouteId => 'Identificació de ruta';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedi:';
  }

  @override
  String get drillSummaryStartTime => 'Hora de començar';

  @override
  String get drillSummaryStatus => 'Estatut';

  @override
  String get drillSummaryStudentLogTitle => 'Diariu d\'evacuació dels estudiants';

  @override
  String drillSummaryTitle(Object id) {
    return 'Resum de les perforacions (#$id)';
  }

  @override
  String get drillSummaryType => 'Tip de perforació';

  @override
  String get drillSummaryVideoEvidence => 'Evidència de vídeo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobús';
  }

  @override
  String get drillTypeClassification => 'Seleccioneu la classificació de les perforacions:';

  @override
  String get drillTypeCustomHint => 'Introdueix el tipus de simulació d\'evacuació personalitzada...';

  @override
  String get drillTypeInvalidState => 'Estat invalid del vehicle o ruta.';

  @override
  String get drillTypeNameBusFire => 'Incendi de l\'autobús';

  @override
  String get drillTypeNameDangerZone => 'Zona de perill';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacitat del conductor';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientació de l\'equipament';

  @override
  String get drillTypeNameFrontDoor => 'Porta de davant';

  @override
  String get drillTypeNameOthers => 'Altres';

  @override
  String get drillTypeNameRearDoor => 'Porta de darrere';

  @override
  String get drillTypeNameSideOrRoof => 'Llat o sostre';

  @override
  String get drillTypeNameSplit => 'Divisió';

  @override
  String get drillTypeNoRouteSelected => 'No s\'ha escollit la ruta';

  @override
  String get drillTypePreparation => 'Preparació per a la perforació';

  @override
  String get drillTypeProceed => 'PROCESSO per a la llista d\'estudiants';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get drillTypeSelectRoute => 'Seleccioneu ruta:';

  @override
  String get drillTypeSpecifyCustom => 'Especifica la descripció del tipus de perforació:';

  @override
  String get drillTypeTitle => 'Seleccionar tipus de perforació';

  @override
  String get drillTypeWarning => 'Asegurar que el vehicle està estacionat en seguretat abans de començar l\'execució.';

  @override
  String get drillsAssignedVehicle => 'Veïcul assignat';

  @override
  String get drillsChecking => '- Vull comprovar...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Excavació #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'No s\'ha assignat un autobús';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No s\'han registrat exercicis per a l\'autobús $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No hi ha rutes disponibles per començar un exercici.';

  @override
  String get drillsShowSummary => 'Resum de l\'escriptura';

  @override
  String get drillsStartDrill => 'Inicia la Forada';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conducut: $date Estatut: $status';
  }

  @override
  String get drillsTitle => 'Exercicis d\'evacuació';

  @override
  String get drillsVehicleOutOfService => 'Veïcul fora de servei';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Aquest vehicle està actualment fora de servei i no pot ser utilitzat per a exercicis.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENCI de conducció';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nombre:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passatge';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobús escolar';

  @override
  String get driverDetailsEndorsementsTitle => 'Adopció de les aprovacions';

  @override
  String get driverDetailsExpiryDateLabel => 'Data d\'expirat';

  @override
  String get driverDetailsHolderSignature => 'SIGNATURES DEL TITOR';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificació:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de publicació';

  @override
  String get driverDetailsLicenseDocTitle => 'Document de llicència';

  @override
  String get driverDetailsLicenseNoLabel => 'Licència No';

  @override
  String get driverDetailsLicenseTitle => 'Detalles de la llicència';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tip de llicència';

  @override
  String get driverDetailsOfficialSeal => 'SEAL Oficial';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASS:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORS:';
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
  String get driverDetailsTapToView => 'Toqueu per veure el document DL';

  @override
  String get driverDetailsTitle => 'Detalles del conductor';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemes de seguretat específics per a autobusos';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositius de col·locament';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipament d\'emergència';

  @override
  String get dvirCategoryHorn => 'Corn';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositius d\'il·luminació i reflectors';

  @override
  String get dvirCategoryMirrors => 'Miralls de visió posterior';

  @override
  String get dvirCategoryParkingBrake => 'Fresca de estacionament';

  @override
  String get dvirCategoryPassengerSeating => 'Sits i restriccions de passatgers';

  @override
  String get dvirCategoryServiceBrakes => 'Frens de servei';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanisme de direcció';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Rodes i rims';

  @override
  String get dvirCategoryWipers => 'Esborradors de vent';

  @override
  String get dvirPostTripCapturePhoto => 'FOTÓ DE DEfect de la captura';

  @override
  String get dvirPostTripComplianceTitle => 'Certificació de conformitat';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Informar defectes sense fotografia';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avís: estàs denunciant un defecte en zones de seguretat ($zones) sense anexar una foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspecció: Autobús $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Introdueix els detalls de la preocupació de seguretat...';

  @override
  String get dvirPostTripNotesLabel => 'NOTS (MANDATORIO DE DEFECT) i FOTÓ';

  @override
  String get dvirPostTripNotesPassedHint => 'Seleccioneu DEFECT per entrar en detalls de preocupació de seguretat...';

  @override
  String get dvirPostTripOdometerHeader => 'Llegir el current Odometer';

  @override
  String get dvirPostTripOdometerInstructions => 'Introdueix la lectura de kilometrage exactament tal com es mostra en el panel d\'instrument de l\'autobús:';

  @override
  String get dvirPostTripOdometerLabel => 'Odomètre (milles)';

  @override
  String get dvirPostTripOdometerTitle => 'METRIC DE TIEMP DE CHEICILA';

  @override
  String get dvirPostTripOdometerWarning => 'Introdueix la lectura del kilometrà abans de continuar.';

  @override
  String get dvirPostTripPassButton => 'Passatge';

  @override
  String get dvirPostTripPhotoAttached => 'Foto adjuntada amb èxit.';

  @override
  String get dvirPostTripProgressLabel => 'Progress de l\'inspecció';

  @override
  String get dvirPostTripSignatureCaptured => 'Captura de la firma.';

  @override
  String get dvirPostTripSignatureCert => 'Certifica que aquest informe de llista de control de passeig de vehicles ha estat completat en compliment de la normativa FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificació de la firma del conductor';

  @override
  String get dvirPostTripSubmitButton => 'INSPECIÓ DE SOMBRE';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR ha presentat amb èxit.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zones de V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Reconoc que he revisat l\'últim informe de defecte enviat i he verificat les reparacions (si hi ha algun) i afirmo que l\'autobús és segur per a la seva operació.';

  @override
  String get dvirPreTripActiveMessage => 'Aquest vehicle és Active i no té defectes oberts.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Ruta activa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENció requerida: Defectes del dia anterior';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Número de bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VECUAL DE DISPATCH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'No va signar: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No s\'han registrat defectes anteriors';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Aquest vehicle va ser reportat net en la anterior inspecció de turns post-viagem.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No es necessiten reparacions per a un funcionament segur.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Aquest vehicle està fora de servei per a reparacions/entretaig.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEICULS DE SERVICE';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Raons:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARAT)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RELATJaments NOVES DEfectes';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La notificació de nous defectes es desactiva durant les reparacions.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Estatut:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RESOLUCIÓ DE SUB-ADMIN de Transports';

  @override
  String get dvirPreTripReturnToHomeButton => 'Tornar a casa';

  @override
  String get dvirPreTripSignOffTitle => 'Signes de seguir pel carrer';

  @override
  String get dvirPreTripSignedSuccess => 'La verificació ha signat amb èxit.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONFIRMATURES';

  @override
  String get dvirPreTripTitle => 'Verificació previa al viatge';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Estat del vehicle: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Desencar la firma';

  @override
  String get dvirSigPreviewLabel => 'Preview de la firma capturada:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVAR la firma';

  @override
  String get dvirSigTapToDraw => 'TAP per dibuixar la firma (requerida)';

  @override
  String get dvirSigWatermark => 'Signar Verticalment (De baix a dalt)';

  @override
  String get forgotPasswordCancel => 'Cancel·lar';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Introduir un correu electrònic válid';

  @override
  String get forgotPasswordSend => 'Enviar';

  @override
  String get forgotPasswordSuccess => 'Si aquest correu electrònic existeix, s\'ha enviat un enllaç de restabeleixement.';

  @override
  String get genericBack => 'Vull';

  @override
  String get genericCancel => 'Cancel·lar';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Près';

  @override
  String get genericConfirm => 'Confirmació';

  @override
  String get genericEdit => 'Edició';

  @override
  String get genericError => 'Hi ha hagut alguna cosa que va passar mal.';

  @override
  String get genericLoading => 'Carregament...';

  @override
  String get genericNext => 'A continuació';

  @override
  String get genericOk => '- Sí, bé.';

  @override
  String get genericRetry => 'Tornar a intentar';

  @override
  String get genericSuccess => 'El èxit';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobús:';
  }

  @override
  String get homeDispatchBlocked => 'Enviament bloquejat';

  @override
  String get homeDispatchBlockedTitle => 'Enviament bloquejat';

  @override
  String get homeErrorNoRoutesPreTrip => 'No hi ha rutes disponibles per realitzar Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'No va iniciar el viatge en el servidor: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hola, V0__';
  }

  @override
  String get homeLogout => 'Llogut';

  @override
  String get homeMenuAppInfo => 'Informació de l\'aplicació';

  @override
  String get homeMenuDrill => 'Forat';

  @override
  String get homeMenuDriverDetails => 'Detalles del conductor';

  @override
  String get homeMenuLanguage => 'Llengua';

  @override
  String get homeMenuPreTrip => 'Inspecció previació';

  @override
  String get homeNoRoutes => 'No hi ha rutes disponibles';

  @override
  String get homeReviewVerifyPreTrip => 'Revisar i verificar abans del viatge';

  @override
  String get homeSearchHint => 'Rutes de recerca';

  @override
  String get homeStart => 'Comença';

  @override
  String get homeTitle => 'Casa';

  @override
  String get homeVehicleOutOfServiceDefault => 'El vehicle està actualment fora de servei.';

  @override
  String get homeVehicleReady => 'El vehicle està preparat i verificat per a un funcionament segur.';

  @override
  String get languageTitle => 'Llengua';

  @override
  String get loginButton => 'Enregistrament';

  @override
  String get loginEmailOrPhoneLabel => 'Email o número de telèfon';

  @override
  String get loginErrorEnterPassword => 'Introduir la contrasenya';

  @override
  String get loginErrorEnterUsername => 'Introduir el nom d\'usuari';

  @override
  String get loginErrorFailed => 'La entrada no va funcionar.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Introdueix un correu electrònic o número de telèfon válid';

  @override
  String get loginForgotPassword => '- Has oblidat la contrasenya?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Els nens i els tutors';

  @override
  String get mapConfirmMessage => 'Vull fer el viatge?';

  @override
  String get mapConfirmTitle => 'Confirmació';

  @override
  String get mapCurrentPosition => 'Posició actual';

  @override
  String get mapNo => 'No, no.';

  @override
  String get mapReconnectMessage => 'Actualització de la ubicació fallida freqüentment, Si us plau, comproveu la vostra Internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Parem.';

  @override
  String get mapStopping => '- Parar...';

  @override
  String get mapStopsTooltip => 'Parades';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualitzat fa uns anys';
  }

  @override
  String get mapWaitingGps => 'Esperant al GPS...';

  @override
  String get mapYes => 'Sí, sí.';

  @override
  String get splashDriverApp => 'Aplicació de conductor';

  @override
  String get stopsActionUndo => 'D\'una banda';

  @override
  String get stopsCancelledSuccess => 'Cancel·la amb èxit';

  @override
  String get stopsDefaultLabel => 'Parem.';

  @override
  String get stopsGenericError => 'Algú va anar mal, si us plau, intentem de nou.';

  @override
  String get stopsStatusComplete => 'complet';

  @override
  String get stopsStatusDone => 'realitzat';

  @override
  String stopsSubmitCount(Object count) {
    return 'Submitir ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Enviada amb èxit';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Seleccionat · V1__/__ V2__ __ V3__';
  }

  @override
  String get stopsTypeDrop => 'La deixo caure.';

  @override
  String get stopsTypePick => 'Seleccionar';

  @override
  String stopsUndoCount(Object count) {
    return 'D\'una manera o d\'una altra';
  }

  @override
  String get stopsUndoTooltip => 'Reproducció de la col·lecció';

  @override
  String get tripConfirmCancel => 'Cancel·lar';

  @override
  String get tripConfirmOk => '- Sí .';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Es requereix permís de localització per començar un viatge.';

  @override
  String get homeMenuPostCrashReporting => 'Informar després de l\'accident';

  @override
  String homeVehicleReason(Object reason) {
    return 'Raons:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Estatut:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'L\'exemple de la col·laboració de la Comissió Europea';
  }

  @override
  String get crashLocationPickerSearchHint => 'L\'ubicació de la recerca (p. ex. Market St)';

  @override
  String get crashLocationPickerTitle => 'Seleccionar ubicació en mapa';

  @override
  String get crashLocationPickerTooltip => 'Confirma la localització';

  @override
  String get incidentDashboardDescription => 'Seleccioneu una acció per continuar amb la gestió d\'incidents o veure informes passats.';

  @override
  String get incidentDashboardHeadline => 'Informar sobre incidentes després de l\'accident';

  @override
  String get incidentDashboardLogNew => 'Registre de Nova Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniciar un nou informe d\'accident pas a pas';

  @override
  String get incidentDashboardTitle => 'Incident post-crash';

  @override
  String get incidentDashboardViewHistory => 'Vista de la història';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visualizacions de informes de crash i estatut';

  @override
  String get incidentDetailsAdminLetter => 'Carta de l\'administració';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Compte enrere de l\'Alexol Test (2 hores de límit)';

  @override
  String get incidentDetailsBranchId => 'Identificació de sucursal';

  @override
  String get incidentDetailsBusPlate => 'Placa de llicència de bus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Importació de citació: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citació al conductor';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenades: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiat a la taula de pincares!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copia en la placa de gravació';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data i hora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Informe del DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relató del DOE estatal (opcional)';

  @override
  String get incidentDetailsDriverNotes => 'Notes del conductor:';

  @override
  String get incidentDetailsDriverUserId => 'Identificació d\'usuari del conductor';

  @override
  String get incidentDetailsDrugCountdown => 'Compte enrere de proves de drogues DOT (8 hores de límit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Un accident fatal';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Lesions que requereixen tractament mèdic';

  @override
  String get incidentDetailsLawEnforcement => 'Agència de l\'aplicació de la llei';

  @override
  String get incidentDetailsLoadFailed => 'No vaig poder carregar detalls.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lieu: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Anegades a mitjans de comunicació';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Estatut:';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No hi ha fotografies ni vídeos adjuntats.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ningú dels estudiants va ser marcat a bord durant l\'incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generar informes de notificació i enviar cartes en model als supervisors o administracions distritals.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificacions de transmissió';

  @override
  String get incidentDetailsOfficer => 'Detalls oficials';

  @override
  String get incidentDetailsPoliceReport => 'Número de informes policials';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Carta de transmissió pre-poblada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base reglamentària:';

  @override
  String get incidentDetailsRouteId => 'Identificació de ruta';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificació de l\'administració escolar';

  @override
  String get incidentDetailsStatusPending => 'Esperant';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalls: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Ferits';

  @override
  String get incidentDetailsStudentNoInjury => 'No hi ha lesions';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravetat:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportat a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Estudiants a bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NO es requereix prova post-crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Estatut:';
  }

  @override
  String get incidentDetailsTitle => 'Detalls de l\'incident';

  @override
  String get incidentDetailsVehicleTowed => 'Veïcul remolcat';

  @override
  String get incidentDetailsYes => 'Sí';

  @override
  String get incidentHistoryEmpty => 'No hi ha registres d\'incidents registrats per a aquest vehicle.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'No es van recuperar els registres: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Temps: V0 Bus: V1 Test: V2';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NO es requereix';

  @override
  String get incidentHistoryTestingRequired => 'Requisits';

  @override
  String get incidentHistoryTitle => 'Registre d\'incidents post-crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Ajuntar una altra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisitos';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Número de distintiu *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Número de bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Captura de la escena de l\'incident';

  @override
  String get incidentIntakeCitationSubtitle => 'Es va emetre una citació de violació de trànsit al conductor de l\'autobús escolar?';

  @override
  String get incidentIntakeCitationTitle => 'Citació emesa?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data i hora de l\'accident *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO es requereix la prova';

  @override
  String get incidentIntakeDotTestingRequired => 'Requereix de fer proves';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Introdueix qualsevol nota addicional sobre la col·lisió...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notes d\'incidents de conductor';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'No va carregar passatgers de la ruta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Aneu proves (Fotògrafs) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Hi ha hagut morts a causa d\'aquest accident?';

  @override
  String get incidentIntakeFatalityTitle => 'Ha ocorat una mort?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenades GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vista de la història';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Algú va patir un dany corporal que requereix tractament mèdic immediat fora de l\'escena?';

  @override
  String get incidentIntakeInjuriesTitle => 'Les lesions que requereixen tractament mèdic?';

  @override
  String get incidentIntakeInjuryNotesError => 'Les notes de lesions són obligatories per als estudiants lesions';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notes de lesions / detalls (obligatori) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravetat de les lesions *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Si us plau, entreu a l\'agència de l\'aplicació de la llei';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agència de l\'aplicació de la llei (per exemple, Patrulla Estatal de Carreteres) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Informat de l\'aplicació de la llei i policia';

  @override
  String get incidentIntakeLocationDescError => 'Enserar la descripció de la ubicació';

  @override
  String get incidentIntakeLocationDescLabel => 'Descripció de la ubicació (p. ex. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Facilitat mèdica transportada a';

  @override
  String get incidentIntakeNoMatchingStudents => 'No hi ha estudiants que coincidissin.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ningú estudiant es troba.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No hi ha estudiants a bord.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No hi ha estudiants registrats per aquesta ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Enserar el nom de l\'official.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nom de l\'oficial *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Enserar el número de la informació policial';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Número de informe policial *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informació de ruta i conductor';

  @override
  String get incidentIntakeSearchInjuredHint => 'Buscar un nen ferit...';

  @override
  String get incidentIntakeSearchStudentHint => 'Buscar estudiant...';

  @override
  String get incidentIntakeSelectAll => 'Seleccionar tots els estudiants';

  @override
  String get incidentIntakeSelectOnMap => 'SELECTES AL MAP';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Menors';

  @override
  String get incidentIntakeSeverityModerate => 'Moderat';

  @override
  String get incidentIntakeSeveritySevere => 'Graus';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravetat de l\'accident';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificació:';
  }

  @override
  String get incidentIntakeSubmitButton => 'SUMMITRE';

  @override
  String get incidentIntakeTitle => 'Intestació de l\'incident post-crash';

  @override
  String get incidentIntakeTowedSubtitle => 'Hi ha algun vehicle que hagi rebut danys incapacitants que requereixen que es remolqui de la escena?';

  @override
  String get incidentIntakeTowedTitle => 'Veïcul remolcat?';

  @override
  String get incidentIntakeWasInjured => 'Va ser ferit?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String get dvirPreTripClose => 'L\'HORROR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentaris del conductor / Notes (opcional)';

  @override
  String get dvirPreTripNoComments => 'No s\'han afegit cap comentari.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Raons:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get dvirPreTripSigCaptured => 'La firma capturada amb èxit.';

  @override
  String get dvirPreTripSigMissing => 'Manca la firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signeu per verificar la reparació de defectes anteriors.';

  @override
  String get dvirPreTripStepSignOff => 'Signatura';

  @override
  String get dvirPreTripStepSubmit => 'Submitir';

  @override
  String get dvirPreTripStepVerify => 'Verificar';

  @override
  String get dvirPreTripTapNext => 'Tinc NEXT per continuar.';

  @override
  String get dvirPreTripVehicleOutOfService => 'El vehicle està fora de servei';

  @override
  String get dvirPreTripVehicleReady => 'El vehicle està preparat per al servei';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Estat de reparació verificat:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Vegeu que tots els defectes reportats han estat reparats per marcar la casella al costat de cada defecte.';

  @override
  String get dvirPreTripYourComments => 'Els seus comentaris:';

  @override
  String get countryPickerNoCountries => 'Ningú país trobat';

  @override
  String get countryPickerSearchHint => 'Buscar pel nom del país, codi, o codi dial...';

  @override
  String get countryPickerTitle => 'Seleccionar país';

  @override
  String get mapDefaultStop => 'Parem.';

  @override
  String get mapEndLocation => 'L\'ubicació final';

  @override
  String get mapStartLocation => 'L\' ubicació d\'inici';

  @override
  String get stopsNoChangesToUndo => 'No hi ha canvis disponibles per a anul·lar.';

  @override
  String get stopsNoStopsAvailable => 'No hi ha parades disponibles.';
}
