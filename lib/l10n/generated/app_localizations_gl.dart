import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appInfoBuild => 'Construír número';

  @override
  String get appInfoDevice => 'Modelo de dispositivo';

  @override
  String get appInfoOS => 'Versión do sistema operativo';

  @override
  String get appInfoPackage => 'Paquete';

  @override
  String get appInfoTitle => 'Información sobre o aplicativo';

  @override
  String get appInfoVersion => 'Versión da aplicación';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Os guardias';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Garantes autorizados para $name';
  }

  @override
  String get childrenNoGuardians => 'Non hai tutores autorizados no expediente para este neno.';

  @override
  String get childrenStatusDropped => 'Deixado cair';

  @override
  String get childrenStatusPending => 'En espera';

  @override
  String get childrenStatusPicked => 'Seleccionado';

  @override
  String childrenTitle(Object routeName) {
    return 'Niños  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absencia / NO AL BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuados';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuado: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Non hai alumnos ausentes.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Non hai alumnos marcados no autobús.';

  @override
  String get drillChecklistNotOnBus => 'Non no autobús';

  @override
  String get drillChecklistOnBusNotEvacuated => 'NO BUS  NO EVACUADO';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'EN BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Proceso para capturar probas';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ruta (en directo): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verificación de perforación de evacuación';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Estudiante descoñecido(s) Reman!';
  }

  @override
  String get drillEvidenceConfirmMessage => '-Estás seguro de que queres enviar este diario?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmar a presentación do perforación';

  @override
  String get drillEvidenceDriverNotesHint => 'Describa a execución do exercicio, o comportamento dos estudantes, os camiños de saída utilizados e calquera excepción observada...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notas do condutor (mínimo 10 caracteres):';

  @override
  String get drillEvidenceFailed => 'Non se presentou';

  @override
  String get drillEvidenceMandatoryWarning => 'É obrigatorio presentar polo menos unha foto ou unha imaxe de vídeo.';

  @override
  String get drillEvidenceRecordVideo => 'Gravar vídeo';

  @override
  String get drillEvidenceRetrySubmission => 'RETIRO';

  @override
  String get drillEvidenceReturnToDashboard => 'Volver ao panel de control';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Submitindo o registro de perforación...';

  @override
  String get drillEvidenceSuccess => 'Submitir con éxito!';

  @override
  String get drillEvidenceSuccessMessage => 'O diario de evacuación foi cargado con éxito e está pendente de aprobación.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografía';

  @override
  String get drillEvidenceTitle => 'Evidencias obrigatorias de perforación';

  @override
  String get drillEvidenceUploading => 'Cargar datos de evidencia e lista de verificación';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Exercicio:';
  }

  @override
  String get drillRosterMarkAttendance => 'Asistir a un acto';

  @override
  String get drillRosterNoStudents => 'Non hai estudantes rexistrados nesta ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Proceso para facer unha lista de verificación';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sitio:';
  }

  @override
  String get drillRosterSelectAll => 'Seleccione Todos';

  @override
  String get drillSummaryAdminNotesTitle => 'Notas de administración';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Aprobado en:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aprobado en';

  @override
  String get drillSummaryBackToDrills => 'Volvemos a \"Burrillos\"';

  @override
  String get drillSummaryBusNumber => 'Número de autobús';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conducido por: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalles de perfuración';

  @override
  String get drillSummaryDriverNotesTitle => 'Notas do condutor';

  @override
  String get drillSummaryDuration => 'Duración';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'O tempo do fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuado: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuado';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Anexos de medios de comunicación de evidencia';

  @override
  String get drillSummaryGps => 'Coordenadas GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Non puido cargar o resumo da perforación para a identificación #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Non se atopou ningún dato de perforación.';

  @override
  String get drillSummaryNotOnBus => 'Non no autobús';

  @override
  String get drillSummaryOnBusNotEvacuated => 'EN BUS - NO EVACUADO';

  @override
  String get drillSummaryPhotoEvidence => 'Evidencias fotográficas';

  @override
  String get drillSummaryRouteId => 'Identificación de ruta';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sitio:';
  }

  @override
  String get drillSummaryStartTime => 'Hora de comezar';

  @override
  String get drillSummaryStatus => 'Estatuto';

  @override
  String get drillSummaryStudentLogTitle => 'Registro de evacuación dos estudantes';

  @override
  String drillSummaryTitle(Object id) {
    return 'Resumo do perforación (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo de perforación';

  @override
  String get drillSummaryVideoEvidence => 'Evidencias de vídeo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobús';
  }

  @override
  String get drillTypeClassification => 'Escoller a clasificación de perfuracións:';

  @override
  String get drillTypeCustomHint => 'Introduza o tipo de perforación de evacuación...';

  @override
  String get drillTypeInvalidState => 'Estado do vehículo ou da ruta inválido.';

  @override
  String get drillTypeNameBusFire => 'Incendio de autobús';

  @override
  String get drillTypeNameDangerZone => 'Zona de perigo';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacidade do condutor';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientación do equipo';

  @override
  String get drillTypeNameFrontDoor => 'Porta da entrada';

  @override
  String get drillTypeNameOthers => 'Outros';

  @override
  String get drillTypeNameRearDoor => 'Porta traseira';

  @override
  String get drillTypeNameSideOrRoof => 'Lado ou teito';

  @override
  String get drillTypeNameSplit => 'División';

  @override
  String get drillTypeNoRouteSelected => 'Non se escolleu rutas';

  @override
  String get drillTypePreparation => 'Preparación de perforación';

  @override
  String get drillTypeProceed => 'PROCEDO A ROSTER DE ALUMNOS';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get drillTypeSelectRoute => 'Seleccione ruta:';

  @override
  String get drillTypeSpecifyCustom => 'Especificar a descrición do tipo de perfuración:';

  @override
  String get drillTypeTitle => 'Seleccione o tipo de perforación';

  @override
  String get drillTypeWarning => 'Asegúrese de que o vehículo estea estacionado de forma segura antes de comezar a execución.';

  @override
  String get drillsAssignedVehicle => 'Vehículo asignado';

  @override
  String get drillsChecking => 'Checando...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Explotación #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Non se asignaron autobuses';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Non se rexistraron exercicios para o autobús $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Non hai rutas dispoñibles para iniciar un perforación.';

  @override
  String get drillsShowSummary => 'Resumo da mostra';

  @override
  String get drillsStartDrill => 'Comeza a perforación';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conducido: $date Estatuto: $status';
  }

  @override
  String get drillsTitle => 'Exercicios de evacuación';

  @override
  String get drillsVehicleOutOfService => 'Vehículo desconectado';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Este vehículo está actualmente fora de servizo e non pode ser usado para exercicios.';

  @override
  String get driverDetailsCdlClassLabel => 'Clasificación CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Licencia de conducir';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nome:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasaxeiro';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobús escolar';

  @override
  String get driverDetailsEndorsementsTitle => 'Aprobatorios realizados';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de caducidade';

  @override
  String get driverDetailsHolderSignature => 'OUTOR SIGNATURE';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificación: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de emisión';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento de licenza';

  @override
  String get driverDetailsLicenseNoLabel => 'Licencia no';

  @override
  String get driverDetailsLicenseTitle => 'Detalles da licenza';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licenza';

  @override
  String get driverDetailsOfficialSeal => 'SEGAL OFICIAL';

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
    return 'ENDORSO:';
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
  String get driverDetailsTapToView => 'Toque para ver o documento DL';

  @override
  String get driverDetailsTitle => 'Detalles do condutor';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemas de seguridade específicos para autobuses';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivos de acoplamento';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipos de emerxencia';

  @override
  String get dvirCategoryHorn => 'Corno';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivos de iluminación e reflectores';

  @override
  String get dvirCategoryMirrors => 'Espeixos de visión retrovisoria';

  @override
  String get dvirCategoryParkingBrake => 'Fresco de estacionamento';

  @override
  String get dvirCategoryPassengerSeating => 'Sementes e restrinxencias de pasaxeiros';

  @override
  String get dvirCategoryServiceBrakes => 'Frenos de servizo';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de dirección';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Rodas e bordas';

  @override
  String get dvirCategoryWipers => 'Orifícios de vidro';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOS de defecto de captura';

  @override
  String get dvirPostTripComplianceTitle => 'Certificación de conformidade';

  @override
  String get dvirPostTripDefectButton => 'DEFECTO';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Informar defectos sen foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Advertencia: está a informar de un defecto nas zonas de seguridade ($zones) sen anexar unha foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspección: Autobús $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Introduza detalles da preocupación de seguridade...';

  @override
  String get dvirPostTripNotesLabel => 'NOTAS (MANDATORIO DE DEFECTO) e FOTOS';

  @override
  String get dvirPostTripNotesPassedHint => 'Seleccione DEFECT para introducir detalles de preocupación de seguridade...';

  @override
  String get dvirPostTripOdometerHeader => 'Lectura actual do odómetro';

  @override
  String get dvirPostTripOdometerInstructions => 'Introduza a lectura da quilometría exactamente como se mostra no panel de instrumentos do autobús:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometro (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'METRICAS de tempo de funcionamento do vehículo';

  @override
  String get dvirPostTripOdometerWarning => 'Introduza a lectura do odómetro antes de proceder.';

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripPhotoAttached => 'Foto anexada con éxito.';

  @override
  String get dvirPostTripProgressLabel => 'Progreso da inspección';

  @override
  String get dvirPostTripSignatureCaptured => 'Capturada a firma.';

  @override
  String get dvirPostTripSignatureCert => 'Certifico que este informe de checklist de camiños foi concluído de conformidade coa normativa FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificación da firma do condutor';

  @override
  String get dvirPostTripSubmitButton => 'INSPECCIÓN';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR presentou con éxito.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zonas de V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Confesso que revisei o último informe de defecto presentado e verificou as reparacións (se hai) e declaro que o autobús é seguro para o funcionamento.';

  @override
  String get dvirPreTripActiveMessage => 'Este vehículo é activo e non ten defectos abertos, está verificado e seguro para o funcionamento.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Ruta activa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'OUTORIZADO: Defectos detectados no día anterior';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Número de autobús: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VECTO DE VÍCULO';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Non se asinou: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Non se rexistraron defectos anteriores';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Este vehículo foi reportado limpo na inspección previa do turno de viaxe.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Non se necesitan reparacións para un funcionamento seguro.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Este vehículo está fora de servizo para reparacións/entreno.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vehículo desconectado';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razón:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (reparación)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORT NUEVOS DEFECTOS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'A notificación de novos defectos é desactivada durante as reparacións.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Estatuto:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Resolución do Subadmin de Transporte';

  @override
  String get dvirPreTripReturnToHomeButton => 'Volver a casa';

  @override
  String get dvirPreTripSignOffTitle => 'Sinónimo para ir a pasear';

  @override
  String get dvirPreTripSignedSuccess => 'A verificación asinada con éxito.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONVERICIÓN';

  @override
  String get dvirPreTripTitle => 'Verificación previa á viaxe';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Estatuto do vehículo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Desenho de firma';

  @override
  String get dvirSigPreviewLabel => 'Previsión de firma capturada:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Salva a firma';

  @override
  String get dvirSigTapToDraw => 'TAP para extraer a firma (requisita)';

  @override
  String get dvirSigWatermark => 'O sinal vertical (de baixo a arriba)';

  @override
  String get forgotPasswordCancel => 'Cancelación';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Por favor, introduzase un correo electrónico válido';

  @override
  String get forgotPasswordSend => 'Envío';

  @override
  String get forgotPasswordSuccess => 'Se ese correo electrónico existe, un enlace de reset foi enviado.';

  @override
  String get genericBack => 'VOLTAN';

  @override
  String get genericCancel => 'Cancelación';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Casi';

  @override
  String get genericConfirm => 'Confirmación';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericError => 'Algo non foi ben';

  @override
  String get genericLoading => 'Carga...';

  @override
  String get genericNext => 'Próximo';

  @override
  String get genericOk => 'Está ben.';

  @override
  String get genericRetry => 'Intentar de novo';

  @override
  String get genericSuccess => 'É un éxito';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus:';
  }

  @override
  String get homeDispatchBlocked => 'Bloqueado o envío';

  @override
  String get homeDispatchBlockedTitle => 'Bloqueado o envío';

  @override
  String get homeErrorNoRoutesPreTrip => 'Non hai rutas dispoñibles para realizar Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Non puido iniciar a viaxe no servidor: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ola, V0__';
  }

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuAppInfo => 'Información sobre o aplicativo';

  @override
  String get homeMenuDrill => 'Explotación';

  @override
  String get homeMenuDriverDetails => 'Detalles do condutor';

  @override
  String get homeMenuLanguage => 'Idioma';

  @override
  String get homeMenuPreTrip => 'Inspección previa ao viaxe';

  @override
  String get homeNoRoutes => 'Non hai rutas dispoñibles';

  @override
  String get homeReviewVerifyPreTrip => 'Revisar e verificar antes do viaxe';

  @override
  String get homeSearchHint => 'Rutas de busca';

  @override
  String get homeStart => 'Comeza';

  @override
  String get homeTitle => 'Casa';

  @override
  String get homeVehicleOutOfServiceDefault => 'O vehículo está actualmente fora do servizo.';

  @override
  String get homeVehicleReady => 'O vehículo está listo e verificado para o funcionamento seguro.';

  @override
  String get languageTitle => 'Idioma';

  @override
  String get loginButton => 'Entrada';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail ou número de teléfono';

  @override
  String get loginErrorEnterPassword => 'Por favor, introduzir a contrasinal';

  @override
  String get loginErrorEnterUsername => 'Introduza o nome de usuario';

  @override
  String get loginErrorFailed => 'Falou o inicio de sesión, por favor, tente de novo.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Introduza un correo electrónico ou número de teléfono válido';

  @override
  String get loginForgotPassword => 'Esqueceste a contrasinal?';

  @override
  String get loginPasswordLabel => 'Palabra de acceso';

  @override
  String get mapChildrenTooltip => 'Niños e tutores';

  @override
  String get mapConfirmMessage => 'Queres mesmo rematar a viaxe?';

  @override
  String get mapConfirmTitle => 'Confirmación';

  @override
  String get mapCurrentPosition => 'Posición actual';

  @override
  String get mapNo => 'Non, non.';

  @override
  String get mapReconnectMessage => 'A actualización da localización fallar frecuentemente, por favor, revise a súa internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Parade.';

  @override
  String get mapStopping => 'Parando...';

  @override
  String get mapStopsTooltip => 'Paradas';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualizado ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Esperando o GPS...';

  @override
  String get mapYes => '- Si, é.';

  @override
  String get splashDriverApp => 'Aplicación de controlador';

  @override
  String get stopsActionUndo => 'Desfeito';

  @override
  String get stopsCancelledSuccess => 'Cancelado con éxito';

  @override
  String get stopsDefaultLabel => 'Parade.';

  @override
  String get stopsGenericError => 'Algo non foi ben, por favor, intenta outra vez.';

  @override
  String get stopsStatusComplete => 'completo';

  @override
  String get stopsStatusDone => 'feito';

  @override
  String stopsSubmitCount(Object count) {
    return 'Presentación ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Submitido con éxito';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Seleccionado';
  }

  @override
  String get stopsTypeDrop => '- Baixa.';

  @override
  String get stopsTypePick => 'Seleccione';

  @override
  String stopsUndoCount(Object count) {
    return 'O ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Revocar/descargar';

  @override
  String get tripConfirmCancel => 'Cancelación';

  @override
  String get tripConfirmOk => 'Está ben.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'É necesario obter permiso de localización para comezar unha viaxe.';

  @override
  String get homeMenuPostCrashReporting => 'Relatório de accidente';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razón:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Estatuto:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localización da busca (por exemplo, Market St)';

  @override
  String get crashLocationPickerTitle => 'Seleccione o lugar no mapa';

  @override
  String get crashLocationPickerTooltip => 'Confirmar a localización';

  @override
  String get incidentDashboardDescription => 'Seleccione unha acción para proceder á xestión de incidentes ou ver informes anteriores.';

  @override
  String get incidentDashboardHeadline => 'Informar sobre incidentes posteriores ao accidente';

  @override
  String get incidentDashboardLogNew => 'Registro de Novas caídas';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniciar un novo informe de choque paso a paso';

  @override
  String get incidentDashboardTitle => 'Incidente posterior ao accidente';

  @override
  String get incidentDashboardViewHistory => 'Vista da historia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Ver informes de choques anteriores e estado';

  @override
  String get incidentDetailsAdminLetter => 'Carta do administrador';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Contagem regressiva dos testes de alcohol (2 horas)';

  @override
  String get incidentDetailsBranchId => 'Identificación de sucursal';

  @override
  String get incidentDetailsBusPlate => 'Placa de licencia de autobús';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impacto de citación: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citación emitida ao condutor';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenadas: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiado para o clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'CÓPIA NO CLIPBOARD';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e Hora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Relato do DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relato do DOE estatal (opcional)';

  @override
  String get incidentDetailsDriverNotes => 'Notas do condutor:';

  @override
  String get incidentDetailsDriverUserId => 'Identificación de usuario do condutor';

  @override
  String get incidentDetailsDrugCountdown => 'Conto de volta dos testes de drogas DOT (8 horas)';

  @override
  String get incidentDetailsFatalityOccurred => 'Ocorreu unha fatalidade';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Ferimentos que precisan tratamento médico';

  @override
  String get incidentDetailsLawEnforcement => 'Agencia de aplicación da lei';

  @override
  String get incidentDetailsLoadFailed => 'Non puido cargar detalles.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Localización:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Anexos de medios';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Estatuto:';
  }

  @override
  String get incidentDetailsNo => 'Non';

  @override
  String get incidentDetailsNoMediaAttachments => 'Non hai fotos nin vídeos anexados.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Non houbo alumnos a bordo durante o incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Xerar informes de notificación e enviar cartas con modelo aos supervisores ou administracións do distrito.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificacións de transmisión';

  @override
  String get incidentDetailsOfficer => 'Detalles do oficial';

  @override
  String get incidentDetailsPoliceReport => 'Número de informe policial';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Carta de transmisión pre-poblada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base regulamentaria:';

  @override
  String get incidentDetailsRouteId => 'Identificación de ruta';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificación do administrador escolar';

  @override
  String get incidentDetailsStatusPending => 'En espera';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalles: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Feridos';

  @override
  String get incidentDetailsStudentNoInjury => 'Non hai lesións';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravidade:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transporte a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Estudiantes a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Requisitos de proba post-crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Estatuto:';
  }

  @override
  String get incidentDetailsTitle => 'Detalles do incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Vehículo remolcado';

  @override
  String get incidentDetailsYes => 'Si,';

  @override
  String get incidentHistoryEmpty => 'Non hai rexistros de incidentes para este vehículo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Non se recuperaron os rexistros: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tempo: V0 Bus: V1 Testing: V2';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Non é necesario';

  @override
  String get incidentHistoryTestingRequired => 'Requisitos';

  @override
  String get incidentHistoryTitle => 'Registro de incidentes posteriores ao accidente';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Engade outra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisitos';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Número de distintivo *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Número de autobús: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Captura de escena de incidente Foto';

  @override
  String get incidentIntakeCitationSubtitle => 'Foi emitida unha citación de infracción de tráfico ao condutor do autobús escolar?';

  @override
  String get incidentIntakeCitationTitle => 'Citación emitida?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data e Hora do crash *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Non se require a proba';

  @override
  String get incidentIntakeDotTestingRequired => 'Requisitos de probas';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Condutor:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Introduza calquera anotacións adicionais sobre a colisión...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notas de accidentes de condución';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Non se cargaron os pasaxeiros da ruta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Anexe a evidencia (fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Houbo algunha morte como resultado deste accidente?';

  @override
  String get incidentIntakeFatalityTitle => '¿Pareceu unha fatalidade?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenadas GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vista da historia';

  @override
  String get incidentIntakeInjuriesSubtitle => '¿Alguna persoa sufriu lesións corporais que requirieran tratamento médico inmediato fóra do lugar?';

  @override
  String get incidentIntakeInjuriesTitle => 'Feridas que precisan tratamento médico?';

  @override
  String get incidentIntakeInjuryNotesError => 'Os estudos de lesións son obrigatorios para os estudantes feridos';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notas de lesións / Detalles (obligatorios) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravidade da lesión *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Por favor, entra na axencia de aplicación da lei.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agencia de aplicación da lei (por exemplo, Patrulla Estatal de Estradas) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Relato da policía e da policía';

  @override
  String get incidentIntakeLocationDescError => 'Por favor, introduzida unha descrición da localización';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrición da localización (por exemplo, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Traslado a un centro médico';

  @override
  String get incidentIntakeNoMatchingStudents => 'Non hai alumnos iguais.';

  @override
  String get incidentIntakeNoStudentsFound => 'Non atopou estudantes.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Non hai estudantes a bordo, por favor presione NEXT para continuar.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Non se rexistraron estudantes para esta ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Por favor, insira o nome do oficial.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome do oficial *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Por favor, introduz o número do informe policial.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Número de informe policial *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Información de ruta e condutor';

  @override
  String get incidentIntakeSearchInjuredHint => 'Buscar a neno ferido...';

  @override
  String get incidentIntakeSearchStudentHint => 'Buscar estudantes...';

  @override
  String get incidentIntakeSelectAll => 'Seleccione todos os alumnos';

  @override
  String get incidentIntakeSelectOnMap => 'SELECTOS NO MAPO';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Menores';

  @override
  String get incidentIntakeSeverityModerate => 'Moderado';

  @override
  String get incidentIntakeSeveritySevere => 'Severo';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravidade do accidente';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificación: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'INFORMAÇÃO';

  @override
  String get incidentIntakeTitle => 'Ingesta de alimentos despois do accidente';

  @override
  String get incidentIntakeTowedSubtitle => '¿Algún vehículo recibiu danos incapacitantes que requirieran que o remolquesen do lugar?';

  @override
  String get incidentIntakeTowedTitle => '- Vehículo remolcado?';

  @override
  String get incidentIntakeWasInjured => 'Foi ferido?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'CÓMO se aproxima';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentarios do condutor / notas (opcional)';

  @override
  String get dvirPreTripNoComments => 'Non se engadiron comentarios.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razón:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Ruta:';
  }

  @override
  String get dvirPreTripSigCaptured => 'A firma capturada con éxito.';

  @override
  String get dvirPreTripSigMissing => 'Falta a firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Por favor, asinade para verificar a reparación de defectos anteriores.';

  @override
  String get dvirPreTripStepSignOff => 'O nome do cliente';

  @override
  String get dvirPreTripStepSubmit => 'Submitir';

  @override
  String get dvirPreTripStepVerify => 'Verificar';

  @override
  String get dvirPreTripTapNext => 'Por favor, pulse NEXT para continuar.';

  @override
  String get dvirPreTripVehicleOutOfService => 'O vehículo está fora de servizo';

  @override
  String get dvirPreTripVehicleReady => 'O vehículo está listo para o servizo';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Estatuto verificado de reparación:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verifique se todos os defectos notificados foron reparados comprobando a caixa ao lado de cada defecto.';

  @override
  String get dvirPreTripYourComments => 'Os seus comentarios:';

  @override
  String get countryPickerNoCountries => 'Non se atopou ningún país';

  @override
  String get countryPickerSearchHint => 'Busca polo nome do país, código ou código de dial...';

  @override
  String get countryPickerTitle => 'Seleccione país';

  @override
  String get mapDefaultStop => 'Parade.';

  @override
  String get mapEndLocation => 'Localización final';

  @override
  String get mapStartLocation => 'Inicio Localización';

  @override
  String get stopsNoChangesToUndo => 'Non hai cambios dispoñibles para anular.';

  @override
  String get stopsNoStopsAvailable => 'Non hai paradas dispoñibles.';
}
