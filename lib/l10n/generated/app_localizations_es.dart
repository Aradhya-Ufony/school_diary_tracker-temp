import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appInfoBuild => 'Número de compilación';

  @override
  String get appInfoDevice => 'Modelo de dispositivo';

  @override
  String get appInfoOS => 'Versión del SO';

  @override
  String get appInfoPackage => 'Paquete';

  @override
  String get appInfoTitle => 'Información de la aplicación';

  @override
  String get appInfoVersion => 'Versión de la aplicación';

  @override
  String get appTitleSchoolDiary => 'Rastreador SD';

  @override
  String get childrenActionGuardians => 'Tutores';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Tutores autorizados para $name';
  }

  @override
  String get childrenNoGuardians => 'No hay tutores autorizados registrados para este niño.';

  @override
  String get childrenStatusDropped => 'Dejado';

  @override
  String get childrenStatusPending => 'Pendiente';

  @override
  String get childrenStatusPicked => 'Recogido';

  @override
  String childrenTitle(Object routeName) {
    return 'Niños - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'AUSENTE / NO EN EL AUTOBÚS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobús: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuado';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuados: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No hay estudiantes ausentes.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No hay estudiantes marcados en el autobús.';

  @override
  String get drillChecklistNotOnBus => 'NO EN EL AUTOBÚS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'EN EL AUTOBÚS - NO EVACUADO';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'EN EL AUTOBÚS ($count)';
  }

  @override
  String get drillChecklistProceed => 'PROCEDER A CAPTURA DE EVIDENCIA';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ruta (En vivo): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verificación de simulacro de evacuación';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '¡Faltan $count estudiante(s) por contabilizar!';
  }

  @override
  String get drillEvidenceConfirmMessage => '¿Está seguro de que desea enviar este registro de simulacro? Esta acción no se puede deshacer.';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmar envío del simulacro';

  @override
  String get drillEvidenceDriverNotesHint => 'Describa la ejecución del simulacro, el comportamiento de los estudiantes, las rutas de salida utilizadas y cualquier excepción observada...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notas del conductor (Mínimo 10 caracteres):';

  @override
  String get drillEvidenceFailed => 'Envío fallido';

  @override
  String get drillEvidenceMandatoryWarning => 'Es obligatorio adjuntar al menos 1 foto o video como evidencia para enviar el simulacro.';

  @override
  String get drillEvidenceRecordVideo => 'Grabar video';

  @override
  String get drillEvidenceRetrySubmission => 'REINTENTAR ENVÍO';

  @override
  String get drillEvidenceReturnToDashboard => 'VOLVER AL TABLERO';

  @override
  String get drillEvidenceSubmitButton => 'ENVIAR REGISTRO DEL SIMULACRO';

  @override
  String get drillEvidenceSubmitting => 'Enviando registro del simulacro...';

  @override
  String get drillEvidenceSuccess => '¡Envío exitoso!';

  @override
  String get drillEvidenceSuccessMessage => 'El registro del simulacro de evacuación se ha subido correctamente y está pendiente de aprobación.';

  @override
  String get drillEvidenceTakePhoto => 'Tomar foto';

  @override
  String get drillEvidenceTitle => 'Evidencia obligatoria del simulacro';

  @override
  String get drillEvidenceUploading => 'Subiendo evidencia y datos de la lista de verificación';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobús: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Simulacro: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Marcar asistencia';

  @override
  String get drillRosterNoStudents => 'No hay estudiantes registrados en esta ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presentes: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDER A LA LISTA DE VERIFICACIÓN';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Ruta: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Asiento: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Seleccionar todo';

  @override
  String get drillSummaryAdminNotesTitle => 'Notas del administrador';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Aprobado el: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aprobado el';

  @override
  String get drillSummaryBackToDrills => 'Volver a simulacros';

  @override
  String get drillSummaryBusNumber => 'Número de autobús';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Realizado por: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalles del simulacro';

  @override
  String get drillSummaryDriverNotesTitle => 'Notas del conductor';

  @override
  String get drillSummaryDuration => 'Duración';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds seg';
  }

  @override
  String get drillSummaryEndTime => 'Hora de finalización';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuados: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuado $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Archivos multimedia de evidencia';

  @override
  String get drillSummaryGps => 'Coordenadas GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lon: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Error al cargar el resumen del simulacro para el ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'No se encontraron datos del simulacro.';

  @override
  String get drillSummaryNotOnBus => 'No en el autobús';

  @override
  String get drillSummaryOnBusNotEvacuated => 'EN EL AUTOBÚS - NO EVACUADO';

  @override
  String get drillSummaryPhotoEvidence => 'Evidencia fotográfica';

  @override
  String get drillSummaryRouteId => 'ID de ruta';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Asiento: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Hora de inicio';

  @override
  String get drillSummaryStatus => 'Estado';

  @override
  String get drillSummaryStudentLogTitle => 'Registro de evacuación de estudiantes';

  @override
  String drillSummaryTitle(Object id) {
    return 'Resumen del simulacro (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo de simulacro';

  @override
  String get drillSummaryVideoEvidence => 'Evidencia en video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobús $busNumber';
  }

  @override
  String get drillTypeClassification => 'Elija la clasificación del simulacro:';

  @override
  String get drillTypeCustomHint => 'Ingrese un tipo de simulacro de evacuación personalizado...';

  @override
  String get drillTypeInvalidState => 'Estado de vehículo o ruta no válido.';

  @override
  String get drillTypeNameBusFire => 'Incendio de autobús';

  @override
  String get drillTypeNameDangerZone => 'Zona de peligro';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacidad del conductor';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientación del equipo';

  @override
  String get drillTypeNameFrontDoor => 'Puerta delantera';

  @override
  String get drillTypeNameOthers => 'Otros';

  @override
  String get drillTypeNameRearDoor => 'Puerta trasera';

  @override
  String get drillTypeNameSideOrRoof => 'Lateral o techo';

  @override
  String get drillTypeNameSplit => 'Dividido';

  @override
  String get drillTypeNoRouteSelected => 'Ninguna ruta seleccionada';

  @override
  String get drillTypePreparation => 'PREPARACIÓN DEL SIMULACRO';

  @override
  String get drillTypeProceed => 'PROCEDER A LA LISTA DE ESTUDIANTES';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Ruta: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Seleccionar ruta:';

  @override
  String get drillTypeSpecifyCustom => 'Especificar descripción del simulacro:';

  @override
  String get drillTypeTitle => 'Seleccionar tipo de simulacro';

  @override
  String get drillTypeWarning => 'Asegúrese de que el vehículo esté estacionado de manera segura antes de comenzar la ejecución.';

  @override
  String get drillsAssignedVehicle => 'Vehículo asignado';

  @override
  String get drillsChecking => 'Comprobando...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Simulacro #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ningún autobús asignado';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No hay simulacros registrados para el autobús $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No hay rutas disponibles para iniciar un simulacro.';

  @override
  String get drillsShowSummary => 'Mostrar resumen';

  @override
  String get drillsStartDrill => 'Iniciar simulacro';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Realizado: $date\nEstado: $status';
  }

  @override
  String get drillsTitle => 'Simulacros de evacuación';

  @override
  String get drillsVehicleOutOfService => 'Vehículo fuera de servicio';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Este vehículo está actualmente fuera de servicio y no se puede utilizar para simulacros.';

  @override
  String get driverDetailsCdlClassLabel => 'Clase CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENCIA DE CONDUCIR';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NOMBRE: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasajero';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobús escolar';

  @override
  String get driverDetailsEndorsementsTitle => 'Endosos poseídos';

  @override
  String get driverDetailsExpiryDateLabel => 'Fecha de caducidad';

  @override
  String get driverDetailsHolderSignature => 'FIRMA DEL TITULAR';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Fecha de emisión';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento de licencia';

  @override
  String get driverDetailsLicenseNoLabel => 'Número de licencia';

  @override
  String get driverDetailsLicenseTitle => 'Detalles de la licencia';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licencia';

  @override
  String get driverDetailsOfficialSeal => 'SELLO OFICIAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASE: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'F.N.: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDOSO: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'CAD: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'NL: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'NOMB: $name';
  }

  @override
  String get driverDetailsTapToView => 'Toque para ver el documento';

  @override
  String get driverDetailsTitle => 'Detalles del conductor';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemas de seguridad del autobús';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivos de acoplamiento';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipo de emergencia';

  @override
  String get dvirCategoryHorn => 'Bocina';

  @override
  String get dvirCategoryLightingReflectors => 'Luces y reflectores';

  @override
  String get dvirCategoryMirrors => 'Espejos retrovisores';

  @override
  String get dvirCategoryParkingBrake => 'Freno de mano';

  @override
  String get dvirCategoryPassengerSeating => 'Asientos y retenciones para pasajeros';

  @override
  String get dvirCategoryServiceBrakes => 'Frenos de servicio';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de dirección';

  @override
  String get dvirCategoryTires => 'Neumáticos';

  @override
  String get dvirCategoryWheelsRims => 'Ruedas y llantas';

  @override
  String get dvirCategoryWipers => 'Limpiaparabrisas';

  @override
  String get dvirPostTripCapturePhoto => 'CAPTURAR FOTO DEL DEFECTO';

  @override
  String get dvirPostTripComplianceTitle => 'CERTIFICACIÓN DE CUMPLIMIENTO';

  @override
  String get dvirPostTripDefectButton => 'DEFECTO';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Reportar defecto sin foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Advertencia: Está reportando un defecto en las zonas de seguridad ($zones) sin adjuntar una foto. ¿Está seguro de que desea enviarlo de todos modos?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspección: Autobús $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Ingrese detalles del problema de seguridad...';

  @override
  String get dvirPostTripNotesLabel => 'NOTAS (OBLIGATORIAS PARA DEFECTO) Y FOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Seleccione DEFECTO para ingresar los detalles del problema...';

  @override
  String get dvirPostTripOdometerHeader => 'Lectura actual del odómetro';

  @override
  String get dvirPostTripOdometerInstructions => 'Ingrese el kilometraje exactamente como se muestra en el panel de instrumentos:';

  @override
  String get dvirPostTripOdometerLabel => 'Odómetro (Millas/Km)';

  @override
  String get dvirPostTripOdometerTitle => 'MÉTRICA DE TIEMPO DE FUNCIONAMIENTO';

  @override
  String get dvirPostTripOdometerWarning => 'Por favor, ingrese la lectura del odómetro antes de continuar.';

  @override
  String get dvirPostTripPassButton => 'APROBADO';

  @override
  String get dvirPostTripPhotoAttached => 'Foto adjuntada exitosamente.';

  @override
  String get dvirPostTripProgressLabel => 'Progreso de la inspección';

  @override
  String get dvirPostTripSignatureCaptured => 'Firma capturada.';

  @override
  String get dvirPostTripSignatureCert => 'Certifico que este informe de inspección del vehículo se ha completado en cumplimiento de las regulaciones FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificación de la firma del conductor';

  @override
  String get dvirPostTripSubmitButton => 'ENVIAR INSPECCIÓN';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR enviado exitosamente.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zonas';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Reconozco que he revisado el último informe de defectos enviado y he verificado las reparaciones (si las hubiera) y declaro que el autobús es seguro para operar.';

  @override
  String get dvirPreTripActiveMessage => 'Este vehículo está Activo y no tiene defectos abiertos. Ha sido verificado y es seguro para su operación.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Ruta activa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENCIÓN REQUERIDA: DEFECTOS PREVIOS REGISTRADOS';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobús Número: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VERIFICACIÓN DE DESPACHO';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Error al firmar: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Sin defectos previos registrados';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Este vehículo fue reportado sin defectos en la inspección del turno posterior al viaje anterior.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No se requieren reparaciones para una operación segura.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Este vehículo está Fuera de Servicio por reparaciones/mantenimiento. El personal del taller debe resolver los problemas de seguridad antes del despacho.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEHÍCULO FUERA DE SERVICIO';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razón: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARADO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORTAR NUEVOS DEFECTOS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'El reporte de nuevos defectos está deshabilitado durante las reparaciones.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Estado: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RESOLUCIÓN DEL SUBADMINISTRADOR';

  @override
  String get dvirPreTripReturnToHomeButton => 'VOLVER AL INICIO';

  @override
  String get dvirPreTripSignOffTitle => 'FIRMA PARA PROCEDER A LA INSPECCIÓN';

  @override
  String get dvirPreTripSignedSuccess => 'Verificación firmada con éxito. Previo al viaje desbloqueado.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ENVIAR VERIFICACIÓN';

  @override
  String get dvirPreTripTitle => 'Verificación previa al viaje';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Estado del vehículo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Dibujar firma';

  @override
  String get dvirSigPreviewLabel => 'Vista previa de la firma capturada:';

  @override
  String get dvirSigRedraw => 'VOLVER A DIBUJAR';

  @override
  String get dvirSigSave => 'GUARDAR FIRMA';

  @override
  String get dvirSigTapToDraw => 'TOQUE PARA DIBUJAR FIRMA (OBLIGATORIO)';

  @override
  String get dvirSigWatermark => 'Firme verticalmente (de abajo hacia arriba)';

  @override
  String get forgotPasswordCancel => 'Cancelar';

  @override
  String get forgotPasswordEmailLabel => 'Correo electrónico';

  @override
  String get forgotPasswordInvalidEmail => 'Por favor, introduzca un correo válido';

  @override
  String get forgotPasswordSend => 'Enviar';

  @override
  String get forgotPasswordSuccess => 'Si ese correo existe, se ha enviado un enlace de restablecimiento.';

  @override
  String get genericBack => 'ATRÁS';

  @override
  String get genericCancel => 'Cancelar';

  @override
  String get genericClear => 'LIMPIAR';

  @override
  String get genericClose => 'Cerrar';

  @override
  String get genericConfirm => 'Confirmar';

  @override
  String get genericEdit => 'Editar';

  @override
  String get genericError => 'Algo salió mal';

  @override
  String get genericLoading => 'Cargando...';

  @override
  String get genericNext => 'SIGUIENTE';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Reintentar';

  @override
  String get genericSuccess => 'Éxito';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobús: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Despacho bloqueado';

  @override
  String get homeDispatchBlockedTitle => 'Despacho bloqueado';

  @override
  String get homeErrorNoRoutesPreTrip => 'No hay rutas disponibles para realizar la inspección previa.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Error al iniciar el viaje en el servidor: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hola, $name';
  }

  @override
  String get homeLogout => 'Cerrar sesión';

  @override
  String get homeMenuAppInfo => 'Info de la aplicación';

  @override
  String get homeMenuDrill => 'Simulacro';

  @override
  String get homeMenuDriverDetails => 'Detalles del conductor';

  @override
  String get homeMenuLanguage => 'Idioma';

  @override
  String get homeMenuPreTrip => 'Inspección previa al viaje';

  @override
  String get homeNoRoutes => 'No hay rutas disponibles';

  @override
  String get homeReviewVerifyPreTrip => 'Revisar y verificar previo al viaje';

  @override
  String get homeSearchHint => 'Buscar rutas';

  @override
  String get homeStart => 'Iniciar';

  @override
  String get homeTitle => 'Inicio';

  @override
  String get homeVehicleOutOfServiceDefault => 'El vehículo está actualmente FUERA DE SERVICIO.';

  @override
  String get homeVehicleReady => 'El vehículo está listo y verificado para operar con seguridad.';

  @override
  String get languageTitle => 'Idioma';

  @override
  String get loginButton => 'Iniciar sesión';

  @override
  String get loginEmailOrPhoneLabel => 'Correo electrónico o número de teléfono';

  @override
  String get loginErrorEnterPassword => 'Por favor, introduzca la contraseña';

  @override
  String get loginErrorEnterUsername => 'Por favor, introduzca el nombre de usuario';

  @override
  String get loginErrorFailed => 'Inicio de sesión fallido. Por favor, inténtelo de nuevo.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Por favor, introduzca un correo o número válido';

  @override
  String get loginForgotPassword => '¿Olvidó su contraseña?';

  @override
  String get loginPasswordLabel => 'Contraseña';

  @override
  String get mapChildrenTooltip => 'Niños y tutores';

  @override
  String get mapConfirmMessage => '¿Realmente desea cerrar el viaje?';

  @override
  String get mapConfirmTitle => 'Confirmar';

  @override
  String get mapCurrentPosition => 'Posición actual';

  @override
  String get mapNo => 'No';

  @override
  String get mapReconnectMessage => 'La actualización de la ubicación falla con frecuencia, verifique su internet.';

  @override
  String get mapReconnectTitle => 'Rastreador';

  @override
  String get mapStop => 'Detener';

  @override
  String get mapStopping => 'Deteniendo...';

  @override
  String get mapStopsTooltip => 'Paradas';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualizado hace ${seconds}s';
  }

  @override
  String get mapWaitingGps => 'Esperando el GPS...';

  @override
  String get mapYes => 'Sí';

  @override
  String get splashDriverApp => 'App del Conductor';

  @override
  String get stopsActionUndo => 'Deshacer';

  @override
  String get stopsCancelledSuccess => 'Cancelado con éxito';

  @override
  String get stopsDefaultLabel => 'Parada';

  @override
  String get stopsGenericError => 'Algo salió mal. Por favor, inténtelo de nuevo.';

  @override
  String get stopsStatusComplete => 'completo';

  @override
  String get stopsStatusDone => 'hecho';

  @override
  String stopsSubmitCount(Object count) {
    return 'Enviar ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Enviado con éxito';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected seleccionados · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Bajar';

  @override
  String get stopsTypePick => 'Recoger';

  @override
  String stopsUndoCount(Object count) {
    return 'Deshacer ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Deshacer recoger/bajar';

  @override
  String get tripConfirmCancel => 'Cancelar';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Rastreador';

  @override
  String get tripErrorLocationRequired => 'Se requiere permiso de ubicación para iniciar un viaje.';

  @override
  String get homeMenuPostCrashReporting => 'Reporte posterior a choque';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razón: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Estado: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lon: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Buscar ubicación (ej. Calle Market)';

  @override
  String get crashLocationPickerTitle => 'Seleccione ubicación en el mapa';

  @override
  String get crashLocationPickerTooltip => 'Confirmar ubicación';

  @override
  String get incidentDashboardDescription => 'Seleccione una acción para continuar con la gestión del incidente o ver reportes pasados.';

  @override
  String get incidentDashboardHeadline => 'Reporte de incidentes por choque';

  @override
  String get incidentDashboardLogNew => 'Registrar nuevo choque';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniciar un nuevo reporte paso a paso';

  @override
  String get incidentDashboardTitle => 'Incidente posterior a choque';

  @override
  String get incidentDashboardViewHistory => 'Ver historial';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Ver reportes y estados de choques anteriores';

  @override
  String get incidentDetailsAdminLetter => 'Carta administrativa';

  @override
  String get incidentDetailsAlcoholCountdown => 'Cuenta regresiva DOT alcohol (límite de 2 horas)';

  @override
  String get incidentDetailsBranchId => 'ID de sucursal';

  @override
  String get incidentDetailsBusPlate => 'Matrícula del autobús';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impacto de la citación: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citación emitida al conductor';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenadas: Lat $lat, Lon $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '¡$title copiado al portapapeles!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copiar al portapapeles';

  @override
  String get incidentDetailsCrashCitationInfo => 'Información de choque y citación';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Fecha y hora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Reporte del DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Reporte estatal del DOE (opcional)';

  @override
  String get incidentDetailsDriverNotes => 'Notas del conductor:';

  @override
  String get incidentDetailsDriverUserId => 'ID de usuario del conductor';

  @override
  String get incidentDetailsDrugCountdown => 'Cuenta regresiva DOT drogas (límite de 8 horas)';

  @override
  String get incidentDetailsFatalityOccurred => 'Ocurrió fatalidad';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Lesiones que requieren tratamiento médico';

  @override
  String get incidentDetailsLawEnforcement => 'Agencia de orden público';

  @override
  String get incidentDetailsLoadFailed => 'Error al cargar los detalles.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Ubicación: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Archivos multimedia adjuntos';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Estado: $status';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No se adjuntaron fotos o videos.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No se marcaron estudiantes a bordo durante el incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generar reportes de notificación y enviar cartas a los supervisores del distrito o a la administración.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificaciones de transmisión';

  @override
  String get incidentDetailsOfficer => 'Detalles del oficial';

  @override
  String get incidentDetailsPoliceReport => 'Número de reporte policial';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Carta de transmisión precargada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base regulatoria:';

  @override
  String get incidentDetailsRouteId => 'ID de ruta';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificación al administrador escolar';

  @override
  String get incidentDetailsStatusPending => 'Pendiente';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalles: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Lesionado';

  @override
  String get incidentDetailsStudentNoInjury => 'Sin lesiones';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravedad: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportado a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Estudiantes a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Se requiere prueba DOT post-choque';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Estado: $status';
  }

  @override
  String get incidentDetailsTitle => 'Detalles del incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Vehículo remolcado';

  @override
  String get incidentDetailsYes => 'Sí';

  @override
  String get incidentHistoryEmpty => 'No hay registros de incidentes para este vehículo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Error al recuperar registros: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Hora: $time Autobús: $busNumber Pruebas: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'No requerido';

  @override
  String get incidentHistoryTestingRequired => 'Requerido';

  @override
  String get incidentHistoryTitle => 'Registro de incidentes por choque';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Añadir otra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requerido';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Número de placa*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobús: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capturar foto de la escena';

  @override
  String get incidentIntakeCitationSubtitle => '¿Se emitió una citación por infracción de tráfico en movimiento al conductor?';

  @override
  String get incidentIntakeCitationTitle => '¿Citación emitida?';

  @override
  String get incidentIntakeDateTimeLabel => 'Fecha y hora del choque*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO se requiere prueba DOT';

  @override
  String get incidentIntakeDotTestingRequired => 'Se requiere prueba DOT';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Ingrese notas adicionales sobre la colisión...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notas del conductor sobre el incidente';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Error al cargar pasajeros de la ruta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Adjuntar evidencia (Fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => '¿Ocurrió alguna fatalidad como resultado de este choque?';

  @override
  String get incidentIntakeFatalityTitle => '¿Ocurrió una fatalidad?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenadas GPS*';

  @override
  String get incidentIntakeHistoryTooltip => 'Ver historial';

  @override
  String get incidentIntakeInjuriesSubtitle => '¿Alguien sufrió una lesión física que requiere tratamiento médico inmediato fuera de la escena?';

  @override
  String get incidentIntakeInjuriesTitle => '¿Lesiones que requieren tratamiento médico?';

  @override
  String get incidentIntakeInjuryNotesError => 'Las notas de lesiones son obligatorias';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notas/detalles de la lesión (obligatorio) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravedad de la lesión *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Por favor ingrese la agencia de orden público';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agencia de orden público (ej. Patrulla de Carreteras)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Orden público y reporte policial';

  @override
  String get incidentIntakeLocationDescError => 'Por favor ingrese la descripción de la ubicación';

  @override
  String get incidentIntakeLocationDescLabel => 'Descripción (ej. Calle Market y 5ta Avenida) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Instalación médica transportada a';

  @override
  String get incidentIntakeNoMatchingStudents => 'No hay estudiantes coincidentes.';

  @override
  String get incidentIntakeNoStudentsFound => 'No se encontraron estudiantes.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No hay estudiantes a bordo, presione SIGUIENTE para continuar.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No hay estudiantes registrados en esta ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Por favor ingrese el nombre del oficial.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nombre del oficial*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Por favor ingrese el número de reporte policial';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Número de reporte policial *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Ruta: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Información de ruta y conductor';

  @override
  String get incidentIntakeSearchInjuredHint => 'Buscar niño lesionado...';

  @override
  String get incidentIntakeSearchStudentHint => 'Buscar estudiante...';

  @override
  String get incidentIntakeSelectAll => 'Seleccionar todos los estudiantes';

  @override
  String get incidentIntakeSelectOnMap => 'Seleccionar en el mapa';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Menor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderada';

  @override
  String get incidentIntakeSeveritySevere => 'Severa';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravedad del choque';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Enviar reporte';

  @override
  String get incidentIntakeTitle => 'Ingreso de incidente por choque';

  @override
  String get incidentIntakeTowedSubtitle => '¿Algún vehículo recibió daños incapacitantes que requirieron ser remolcado?';

  @override
  String get incidentIntakeTowedTitle => '¿Vehículo remolcado?';

  @override
  String get incidentIntakeWasInjured => '¿Se lesionó?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobús: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Cerrar';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentarios / notas del conductor (opcional)';

  @override
  String get dvirPreTripNoComments => 'No se añadieron comentarios.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razón: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Ruta: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Firma capturada correctamente.';

  @override
  String get dvirPreTripSigMissing => 'Falta la firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Firme para verificar la reparación de defectos previos.';

  @override
  String get dvirPreTripStepSignOff => 'Firmar';

  @override
  String get dvirPreTripStepSubmit => 'Enviar';

  @override
  String get dvirPreTripStepVerify => 'Verificar';

  @override
  String get dvirPreTripTapNext => 'Por favor, toque SIGUIENTE para continuar.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vehículo fuera de servicio';

  @override
  String get dvirPreTripVehicleReady => 'Vehículo listo para el servicio';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Estado de reparación verificado:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verifique que todos los defectos reportados hayan sido reparados marcando la casilla junto a cada defecto.';

  @override
  String get dvirPreTripYourComments => 'Sus comentarios:';

  @override
  String get countryPickerNoCountries => 'No se encontraron países';

  @override
  String get countryPickerSearchHint => 'Buscar por nombre, código o prefijo telefónico...';

  @override
  String get countryPickerTitle => 'Seleccione país';

  @override
  String get mapDefaultStop => 'Parada';

  @override
  String get mapEndLocation => 'Ubicación final';

  @override
  String get mapStartLocation => 'Ubicación inicial';

  @override
  String get stopsNoChangesToUndo => 'No hay cambios disponibles para deshacer.';

  @override
  String get stopsNoStopsAvailable => 'No hay paradas disponibles.';
}
