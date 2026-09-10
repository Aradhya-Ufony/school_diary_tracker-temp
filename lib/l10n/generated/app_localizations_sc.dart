import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sardinian (`sc`).
class AppLocalizationsSc extends AppLocalizations {
  AppLocalizationsSc([String locale = 'sc']) : super(locale);

  @override
  String get appInfoBuild => 'Cumpartzire su nùmeru';

  @override
  String get appInfoDevice => 'Modellu de su dispositivu';

  @override
  String get appInfoOS => 'Versione de su sistema operativu';

  @override
  String get appInfoPackage => 'Su pacchettu';

  @override
  String get appInfoTitle => 'Info de s\'app';

  @override
  String get appInfoVersion => 'Versione de s\'app';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Sos tutores';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Custos sunt sos tutores autorizados pro $name';
  }

  @override
  String get childrenNoGuardians => 'No b\'at tutores autorizados in archivu pro custu fìgiu.';

  @override
  String get childrenStatusDropped => 'Iscaladu';

  @override
  String get childrenStatusPending => 'In attesa';

  @override
  String get childrenStatusPicked => 'Iscoltu';

  @override
  String childrenTitle(Object routeName) {
    return 'Infantes  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absent / NON su BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: V0__';
  }

  @override
  String get drillChecklistEvacuated => 'Evàcuaidu';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuiadu: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No sunt istudiantes assentes.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No istudiantes marcados in su bus.';

  @override
  String get drillChecklistNotOnBus => 'Non in su bus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'In su bus  Non evacuadu';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'In su BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Procedimentu pro captura de sas proas';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de controllu pro sas isperas de evacuazione';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Istudante non reconnotu - restant!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Si cherides presentare custu log de s\'isperimentatzione?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmat sa presentatzione de su peràgiu';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrivi s\'esecutzione de s\'eserciu, su cumportamentu de sos istudentes, sos caminos de sa sorta impreados, e sas esetziones osservadas...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notas de su cunduttore (minimus de 10 caràteres):';

  @override
  String get drillEvidenceFailed => 'S\'intrada non at a èssere resurtada';

  @override
  String get drillEvidenceMandatoryWarning => 'S\'ispetàculu de isforzu est obligatòriu pro presentare a su mancu una proa de fotografia o de video.';

  @override
  String get drillEvidenceRecordVideo => 'Registratzione de su video';

  @override
  String get drillEvidenceRetrySubmission => 'S\'Abbitzitzione de su RETRIO';

  @override
  String get drillEvidenceReturnToDashboard => 'Torra a su pannellu de isparghidura';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'S\'incumintzu de su log de sa Foras...';

  @override
  String get drillEvidenceSuccess => 'S\'isposu est istadu unu sutzessu!';

  @override
  String get drillEvidenceSuccessMessage => 'Su log de s\'escursione de s\'evacuazione est istadu carrigadu cun sutzessu e est in attesa de aprovazione.';

  @override
  String get drillEvidenceTakePhoto => 'Fate sa fotografia';

  @override
  String get drillEvidenceTitle => 'Proa de isforzu obligatòriu';

  @override
  String get drillEvidenceUploading => 'Carrigare sas proas e sos datos de sa lista de controllu';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: V0__';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Foru:';
  }

  @override
  String get drillRosterMarkAttendance => 'S\'assistèntzia de su marcu';

  @override
  String get drillRosterNoStudents => 'No sunt iscritos istudiantes in custa ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: _V0__ / _V1__';
  }

  @override
  String get drillRosterProceed => 'Procedimentu pro chircare sa lista de ispetàculos';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Route: V0';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'S\'istadu:';
  }

  @override
  String get drillRosterSelectAll => 'Selezionare totu';

  @override
  String get drillSummaryAdminNotesTitle => 'Notas de amministratzione';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvadu a:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aprobadu in su';

  @override
  String get drillSummaryBackToDrills => 'Torra a su sardu';

  @override
  String get drillSummaryBusNumber => 'Numaru de su bisu';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conduidu dae: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detàgios de sa furadura';

  @override
  String get drillSummaryDriverNotesTitle => 'Notas de su cunduttore';

  @override
  String get drillSummaryDuration => 'Durada';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '_V0__ min _V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Su tempus de sa fine';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuiadu: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evàcuaidu _V0__';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Proa de sos mèdias';

  @override
  String get drillSummaryGps => 'Coordinadas GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Non at incarrigadu su resumadu de sa furra pro sa ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'No sunt istados agatados datos de is foras.';

  @override
  String get drillSummaryNotOnBus => 'No in su bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'In su bus - Non evacuadu';

  @override
  String get drillSummaryPhotoEvidence => 'Proa de sa fotografia';

  @override
  String get drillSummaryRouteId => 'Identificatzione de su caminu';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'S\'istadu:';
  }

  @override
  String get drillSummaryStartTime => 'Comintzare s\'ora';

  @override
  String get drillSummaryStatus => 'Istadu';

  @override
  String get drillSummaryStudentLogTitle => 'Logu de evacuazione de sos istudentes';

  @override
  String drillSummaryTitle(Object id) {
    return 'S\'iscuadra de su tretu (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipi de foru';

  @override
  String get drillSummaryVideoEvidence => 'Proa de su video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus _ V0__';
  }

  @override
  String get drillTypeClassification => 'Iscolhe sa classificatzione de sa furra:';

  @override
  String get drillTypeCustomHint => 'Intrare su tipu de sa furra de evacuazione personalizada...';

  @override
  String get drillTypeInvalidState => 'Istadu de su veiculu o de sa ruta inadu.';

  @override
  String get drillTypeNameBusFire => 'Incuidu de su bus';

  @override
  String get drillTypeNameDangerZone => 'Zona de perìgulu';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacitatzione de su cunduttore';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientatzione de s\'equipaggiu';

  @override
  String get drillTypeNameFrontDoor => 'Porta de sa parte antri';

  @override
  String get drillTypeNameOthers => 'Àteros';

  @override
  String get drillTypeNameRearDoor => 'Porta de a pustis';

  @override
  String get drillTypeNameSideOrRoof => 'Làtzu o su tettu';

  @override
  String get drillTypeNameSplit => 'Ispartidu';

  @override
  String get drillTypeNoRouteSelected => 'No est istada seletzionada una ruta';

  @override
  String get drillTypePreparation => 'Preparatzione pro su perdighe';

  @override
  String get drillTypeProceed => 'Procedimentu pro iscriere sos istudentes';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Route: V0';
  }

  @override
  String get drillTypeSelectRoute => 'Select Route:';

  @override
  String get drillTypeSpecifyCustom => 'Ispetzificare sa descritzione de su tipu de foru:';

  @override
  String get drillTypeTitle => 'Selezionare su tipu de perfora';

  @override
  String get drillTypeWarning => 'Assicurare chi su veiculu siat parchegadu in manera segura prima de cumintzare s\'esecutzione.';

  @override
  String get drillsAssignedVehicle => 'Su veiculu assegnadu';

  @override
  String get drillsChecking => 'Pro controllare...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Foru #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'No b\'at bisos assignados';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No sunt registrados ispetàculos pro su bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No b\'at istradas disponìbiles pro cumintzare un\'eserciziu.';

  @override
  String get drillsShowSummary => 'Ispetzione de su resumadu';

  @override
  String get drillsStartDrill => 'Comintzare a fàghere sa furra';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduidu: $date Istadu: $status';
  }

  @override
  String get drillsTitle => 'Is maneras de evacuare';

  @override
  String get drillsVehicleOutOfService => 'Su veiculu non est in servìtziu';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Custu veiculu est atualmente in disfunzione e non podet èssere impreadu pro isperimentos.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Cùstigu de cundutzione';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME: _V0__';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passageru';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus iscolàsticu';

  @override
  String get driverDetailsEndorsementsTitle => 'Sos aprovatziones tenidas';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de iscadèntzia';

  @override
  String get driverDetailsHolderSignature => 'S\'ATENDE DE sa firma';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identidade: _V0__';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de sa publicatzione';

  @override
  String get driverDetailsLicenseDocTitle => 'Documentu de autorizatzione';

  @override
  String get driverDetailsLicenseNoLabel => 'Licèntzia No';

  @override
  String get driverDetailsLicenseTitle => 'Detàllios de sa lìcèntzia';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipi de licenzia';

  @override
  String get driverDetailsOfficialSeal => 'S\'Ufitziale SEGU';

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
    return 'S\'impreu de su nùmeru de is ispesas';
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
  String get driverDetailsTapToView => 'Tocat pro bìdere su documentu DL';

  @override
  String get driverDetailsTitle => 'Detàllios de su cunduttore';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemas de seguresa ispetzifìtzios pro sos autobusos';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivos de acoppiamentu';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipamentu de emerjèntzia';

  @override
  String get dvirCategoryHorn => 'Cornu';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivos de isvilupu e rifletores';

  @override
  String get dvirCategoryMirrors => 'Is ispìgios de retrovisione';

  @override
  String get dvirCategoryParkingBrake => 'Frenu de parchegamentu';

  @override
  String get dvirCategoryPassengerSeating => 'S\'istadu de su passeggeri e sas lìmitas';

  @override
  String get dvirCategoryServiceBrakes => 'Frenos de servìtziu';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismu de diretiva';

  @override
  String get dvirCategoryTires => 'Iscàrrigas';

  @override
  String get dvirCategoryWheelsRims => 'Reddos e rimas';

  @override
  String get dvirCategoryWipers => 'Isperadores de su vetru';

  @override
  String get dvirPostTripCapturePhoto => 'S\'àtera foto est istada fata dae unu de sos printzipales de sa fotografia.';

  @override
  String get dvirPostTripComplianceTitle => 'Certificatzione de cumplimentu';

  @override
  String get dvirPostTripDefectButton => 'Defectu';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Segnalare difetu sena fotografia';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvisu: Si relatat unu difetu in sas zonas de seguridade ($zones) sena annotare una fotografia.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ispetzione: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Inserint detàlios de sa cuncurresa de seguresa...';

  @override
  String get dvirPostTripNotesLabel => 'Notas (MANDATORIO S\'ADDEFETU) e sa fotografia';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Select DEFECT pro inserire sos detàlios de sa seguràntzia...';

  @override
  String get dvirPostTripOdometerHeader => 'Leghere de su Odometer atuale';

  @override
  String get dvirPostTripOdometerInstructions => 'Intrare sa letzione de sa chilometria comente est mustrada in su pannellu de istrumentu de su bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'Su VEGILE RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Si pregonzat de iscrìere sa letzione de su chilometru prima de sighire.';

  @override
  String get dvirPostTripPassButton => 'Passadu';

  @override
  String get dvirPostTripPhotoAttached => 'Sa fotografia atzetada cun sutzessu.';

  @override
  String get dvirPostTripProgressLabel => 'Progressu de is ispetzione';

  @override
  String get dvirPostTripSignatureCaptured => 'Sa firma est captura.';

  @override
  String get dvirPostTripSignatureCert => 'At a èssere istadu cumpletu su raportu de controllu de sa lista de caminu pro su veìculu cunforma a sa normativa FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificatzione de sa firma de su cunduttore';

  @override
  String get dvirPostTripSubmitButton => 'S\'ispètziu de su cuncursu';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR est istadu presentadu cun sutzessu.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona _V0__ DE _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zones de su V0';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ammentat chi apo esaminadu s\'ùrtimu relatzione de difetu presentada e verificadu sas riparas (si bi sunt) e afirmu chi su bus est seguru pro operare.';

  @override
  String get dvirPreTripActiveMessage => 'Custu veiculu est ativu e non tenet difetos abertos. Est verificadu e seguru pro operare.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Route ativa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENZIONE RECORGADA: difetos de su die de prima registrados';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numaru de su bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DE DISPATCH DE VEGUILU';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Non at firmadu: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No si sunt registrados difetos pretzedentes';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Custu veiculu est istadu relatadu netzu in s\'ispezione de su turnu de post-trip.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No bi sunt bisòngios reparos pro operare in manera segura.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Custu veiculu est fora de servìtziu pro riparas/manutenzione.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEGUILU CHE S\'ATRENNOSSION est istadu abbandonadu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reason: _V0__';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (RIPARATU)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Raportu de difetos noos';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Sa relatzione de difetos noos est disabilitada durante sas riparas.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Istadu:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'S\'ATENDE DE S\'ATENDE DE su Trasportu';

  @override
  String get dvirPreTripReturnToHomeButton => 'Torra a domo';

  @override
  String get dvirPreTripSignOffTitle => 'S\'isignòriu pro andare a camminare';

  @override
  String get dvirPreTripSignedSuccess => 'Sa verificatzione at firmadu cun sutzessu.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'S\'Abbitzitzione de sa Verificatzione';

  @override
  String get dvirPreTripTitle => 'Verificatzione prima de su biagiu';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Istadu de su veiculu: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Disegna sa firma';

  @override
  String get dvirSigPreviewLabel => 'Prèvisu de sa firma capatzada:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'S\'Asignazione est salvada';

  @override
  String get dvirSigTapToDraw => 'TAP pro tirare sa firma (RECORDIDU)';

  @override
  String get dvirSigWatermark => 'S\' iscritu in verticale (de suta a subra)';

  @override
  String get forgotPasswordCancel => 'Annullare';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Impreghende unu messàgiu eletrònicu validu';

  @override
  String get forgotPasswordSend => 'Inviare';

  @override
  String get forgotPasswordSuccess => 'Si cussu e-mail esistit, unu ligame de reset est istadu imbiadu.';

  @override
  String get genericBack => 'Torra a su tempus';

  @override
  String get genericCancel => 'Annullare';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Prus a unu';

  @override
  String get genericConfirm => 'Confirmatzione';

  @override
  String get genericEdit => 'Editare';

  @override
  String get genericError => 'Calicuna cosa est andada male';

  @override
  String get genericLoading => 'Carrigare...';

  @override
  String get genericNext => 'A pustis';

  @override
  String get genericOk => 'Ok, fit';

  @override
  String get genericRetry => 'Pro torrare a tentare';

  @override
  String get genericSuccess => 'Su sutzessu';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: V0__';
  }

  @override
  String get homeDispatchBlocked => 'Ispatzamentu bloccadu';

  @override
  String get homeDispatchBlockedTitle => 'Ispatzamentu bloccadu';

  @override
  String get homeErrorNoRoutesPreTrip => 'No sunt disponìbiles istradas pro fàghere Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Non at cumintzadu a partzire su servìtziu: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Salud, V0__';
  }

  @override
  String get homeLogout => 'Logutzione';

  @override
  String get homeMenuAppInfo => 'Info de s\'app';

  @override
  String get homeMenuDrill => 'Forru de sa limba';

  @override
  String get homeMenuDriverDetails => 'Detàllios de su cunduttore';

  @override
  String get homeMenuLanguage => 'Lìngua';

  @override
  String get homeMenuPreTrip => 'Ispezione prima de su biagiu';

  @override
  String get homeNoRoutes => 'No sunt disponìbiles istrutziones';

  @override
  String get homeReviewVerifyPreTrip => 'Revisu e verificatzione prima de su biagiu';

  @override
  String get homeSearchHint => 'Rutas de chirca';

  @override
  String get homeStart => 'Comintzare';

  @override
  String get homeTitle => 'Sa domo';

  @override
  String get homeVehicleOutOfServiceDefault => 'Su veiculu est in su momentu OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Su veiculu est prontu e verificadu pro operare in manera segura.';

  @override
  String get languageTitle => 'Lìngua';

  @override
  String get loginButton => 'Login su nùmeru';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail o nùmeru de telèfono';

  @override
  String get loginErrorEnterPassword => 'Impreghende sa paràula';

  @override
  String get loginErrorEnterUsername => 'Impreghende su nùmene de usuàriu';

  @override
  String get loginErrorFailed => 'S\'inghitzu non at funtzionadu. Proite torra a tentare.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Impreghende unu nùmeru de telèfono o email válido';

  @override
  String get loginForgotPassword => 'Ismentigadu sa paràula?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Infantes e tutores';

  @override
  String get mapConfirmMessage => 'Ite cheres nàrrere pro chi sa biagiada si siat acabada?';

  @override
  String get mapConfirmTitle => 'Confirmatzione';

  @override
  String get mapCurrentPosition => 'Positzione curente';

  @override
  String get mapNo => 'No est beru';

  @override
  String get mapReconnectMessage => 'S\'aggiornamentu de sa positzione non si faghet a manera frecuente, si pregonzat de controllare s\'internet suo.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Ferma su chi at fatu';

  @override
  String get mapStopping => 'Si nd\'est arrestat...';

  @override
  String get mapStopsTooltip => 'Isparghidant';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Atualizadu ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Asperende su GPS...';

  @override
  String get mapYes => 'Si, est beru';

  @override
  String get splashDriverApp => 'App su cunduttore';

  @override
  String get stopsActionUndo => 'Incrementau';

  @override
  String get stopsCancelledSuccess => 'Cancelladu cun sutzessu';

  @override
  String get stopsDefaultLabel => 'Ferma su chi at fatu';

  @override
  String get stopsGenericError => 'Calicuna cosa est andada male. Proite torra a tentare.';

  @override
  String get stopsStatusComplete => 'cumpletu';

  @override
  String get stopsStatusDone => 'fatu';

  @override
  String stopsSubmitCount(Object count) {
    return 'Inserimentu ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Presentadu cun sutzessu';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_V0__ ispetadu _ _V1__/$total _V3__';
  }

  @override
  String get stopsTypeDrop => 'L\'ant a fàghere.';

  @override
  String get stopsTypePick => 'Iscarrigare';

  @override
  String stopsUndoCount(Object count) {
    return 'Incrementa ($count)';
  }

  @override
  String get stopsUndoTooltip => 'In su casu de su cumentzu de su cuncursu';

  @override
  String get tripConfirmCancel => 'Annullare';

  @override
  String get tripConfirmOk => 'In su matessi momentu.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Si depet agatare su permìtu de logu pro cumintzare unu biagiu.';

  @override
  String get homeMenuPostCrashReporting => 'Raporta de is isportos de is isportos';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: _V0__';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Istadu:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Locatzione de chirca (e.g. Market St)';

  @override
  String get crashLocationPickerTitle => 'Selezionare Lugar in sa mapa';

  @override
  String get crashLocationPickerTooltip => 'Cunfirmat sa positzione';

  @override
  String get incidentDashboardDescription => 'Select una azione pro sighire cun sa gestione de incidentes o pro bìdere relatos passados.';

  @override
  String get incidentDashboardHeadline => 'Segnalazione de sos incidentes post-crash';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iscàmbiu de unu raportu nou de incassu passu a passu';

  @override
  String get incidentDashboardTitle => 'Iscidentzu post-crash';

  @override
  String get incidentDashboardViewHistory => 'Vista de s\'istòria';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visualizzau relatzionis e istatus de incassu de is ùrtimos';

  @override
  String get incidentDetailsAdminLetter => 'Lettera de s\'amministratore';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Testa de su Testu de Alcol (Limit de duas oras)';

  @override
  String get incidentDetailsBranchId => 'Identificatzione de sa sucursal';

  @override
  String get incidentDetailsBusPlate => 'Lìsenza de su bisu';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impattu de sa citatzione: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citatzione emitida a su cunduttore';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinadas: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiadu a su clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copia a su tziclu';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raportu de su DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raportu de su DOE de Istadu (opzionale)';

  @override
  String get incidentDetailsDriverNotes => 'Notas de su cunduttore:';

  @override
  String get incidentDetailsDriverUserId => 'ID de s\'impitadore';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Testa de sa droga cunteghe a pustis (8 oras de lìmite)';

  @override
  String get incidentDetailsFatalityOccurred => 'Su casu fatale est capitadu';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Inundados chi bisòngiant tratamentu mèdicu';

  @override
  String get incidentDetailsLawEnforcement => 'Agèntzia de impreu de sa leze';

  @override
  String get incidentDetailsLoadFailed => 'Non at incumentzadu a carrigare sos detàllios.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Locatzione: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Atzetos de sos mèdias';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Istadu:';
  }

  @override
  String get incidentDetailsNo => 'No est istadu';

  @override
  String get incidentDetailsNoMediaAttachments => 'No sunt collegadas fotografias o videos.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No fiant istados marcados istudiantes a bordo durante s\'incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generare relatos de notifica e imbiare lìteras cun ispetàula a sos ispetàculos de su distrittu o a s\'amministratzione.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificatziones de trasmissione';

  @override
  String get incidentDetailsOfficer => 'Detàllios de su ufitziale';

  @override
  String get incidentDetailsPoliceReport => 'Numaru de sa relatzione de sa politzia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Lettera de trasmissione pre-pollada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basamentu regulamentàriu:';

  @override
  String get incidentDetailsRouteId => 'Identificatzione de su caminu';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificatzione de s\'amministratore de s\'iscola';

  @override
  String get incidentDetailsStatusPending => 'In attesa';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detàgios:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Inferidu';

  @override
  String get incidentDetailsStudentNoInjury => 'No sunt istados leados.';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'S\'intensidade:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportadu a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Istudiantes A Bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Pro custu, si depet fàghere unu test de sa cunferèntzia.';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Istadu:';
  }

  @override
  String get incidentDetailsTitle => 'Detàllios de s\'incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Vettura trasladada';

  @override
  String get incidentDetailsYes => 'Si, su chi narat';

  @override
  String get incidentHistoryEmpty => 'No sunt registrados registros de incidentes pro custu veiculu.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Non est istadu resurtadu su log: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ora: V0__ Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Non est netzessàriu';

  @override
  String get incidentHistoryTestingRequired => 'Requisitos';

  @override
  String get incidentHistoryTitle => 'Registru de sos incidentes post-crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiungiat un\'àtera fotografia';

  @override
  String get incidentIntakeBadgeNumberError => 'Requiridu';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numero de sa badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numaru de su bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografia de sa scena de s\'incidente';

  @override
  String get incidentIntakeCitationSubtitle => 'Est istadu emitidu unu comunicadu de violazione de su trafficu a su cunduttore de su bus de s\'iscola?';

  @override
  String get incidentIntakeCitationTitle => 'Iscritu in sa pàgina?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data e ora de su cràssiu *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Non est netzessàriu pro fàghere sas proas';

  @override
  String get incidentIntakeDotTestingRequired => 'Pro fàghere sas proas';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Inserint sas notas a pustis de sa collisione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notas de su cunduttore';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Non at incarradu de carrigare sos passeggeres de sa ruta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Atzetare proa (Fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Is mortos ant ocurridu pro custu acàlito?';

  @override
  String get incidentIntakeFatalityTitle => 'Est capitadu unu casu fatale?';

  @override
  String get incidentIntakeGpsLabel => 'Coordinadas GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vista de s\'istòria';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Calicunu at àpidu unu male corporeu chi bisòngiat tratamentu mèdicu immediadu a lughere de sa situatzione?';

  @override
  String get incidentIntakeInjuriesTitle => 'Inoghe chi bisòngiant tratamentu mèdicu?';

  @override
  String get incidentIntakeInjuryNotesError => 'Is iscritos de is lezamentos sunt obligàrios pro is istudentes leados';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notas de is lesiones / Detàllios (Mandatzionales) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Inferimentu de gravidade *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Si pregonzat de intrare in s\'agenzia de impreu de sa lege';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agèntzia de impreu de sa lege (per esèmpiu Patrulla de sas autostradas de s\'istadu) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raportu de sas autoridades e de sa polizia';

  @override
  String get incidentIntakeLocationDescError => 'Impregu sa descritzione de sa positzione';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizione de sa positzione (per esèmpiu Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'In is ufìtzios mèdicos trasportados';

  @override
  String get incidentIntakeNoMatchingStudents => 'No istudiantes chi si cunfronten.';

  @override
  String get incidentIntakeNoStudentsFound => 'No istudiantes agatados.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No istudiantes a bordo. Preghentzi a pulsare NEXT pro sighire.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No istudiantes registrados pro custa ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Si pregonzat de inserire su nùmene de s\'ufitziale';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nòmene de s\'ufitziale *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Si pregonzu inserrat su nùmeru de sa relatzione de sa polizia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numaru de sa relatzione de sa polizia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: V0';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informatziones de ruta e cunduttore';

  @override
  String get incidentIntakeSearchInjuredHint => 'Proare unu fìgiu feridu...';

  @override
  String get incidentIntakeSearchStudentHint => 'Pro chircare s\'istùdiu...';

  @override
  String get incidentIntakeSelectAll => 'Selezionare totu sos istudentes';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT su mapa';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal fit';

  @override
  String get incidentIntakeSeverityMinor => 'Minore';

  @override
  String get incidentIntakeSeverityModerate => 'Moderadu';

  @override
  String get incidentIntakeSeveritySevere => 'S\'ispàtziu';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravidade de s\'accadu';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identidade: _V0__';
  }

  @override
  String get incidentIntakeSubmitButton => 'S\'Abbitadu';

  @override
  String get incidentIntakeTitle => 'Intra de su casu de su cràssiu';

  @override
  String get incidentIntakeTowedSubtitle => 'Un\'àteru veiculu at retzidu dannos disabilitantes chi ant bisòngiu de lu tirare dae sa situatzione?';

  @override
  String get incidentIntakeTowedTitle => 'Su veiculu arrennadu?';

  @override
  String get incidentIntakeWasInjured => 'Est istadu feridu?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: V0__';
  }

  @override
  String get dvirPreTripClose => 'S\'AURA est chi';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentàrios / Notas de su cunduttore (Funtzionale)';

  @override
  String get dvirPreTripNoComments => 'No at agiuntu comentàrios.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: _V0__';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: V0';
  }

  @override
  String get dvirPreTripSigCaptured => 'Sa firma est istada cun su sutzessu.';

  @override
  String get dvirPreTripSigMissing => 'Mancat sa firma.';

  @override
  String get dvirPreTripSignDefectWarning => 'Si pregonzu firmare pro verificare sa riparatzione de difetos pretzedentes.';

  @override
  String get dvirPreTripStepSignOff => 'Firmatzione';

  @override
  String get dvirPreTripStepSubmit => 'Inserire';

  @override
  String get dvirPreTripStepVerify => 'Verificare';

  @override
  String get dvirPreTripTapNext => 'Si pregonziat tocat a NEXT pro sighire.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Su veiculu est fora de servìtziu';

  @override
  String get dvirPreTripVehicleReady => 'Su veiculu est prontu pro servire';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Istadu verificadu de repàrrighe:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Pro ite non si podet verificare chi totu sos difetos chi sunt istados comunicados sunt istados riparados, chirchende sa casella a curtzu a cada difetu.';

  @override
  String get dvirPreTripYourComments => 'Sos commentos suos:';

  @override
  String get countryPickerNoCountries => 'No is paisos agatados';

  @override
  String get countryPickerSearchHint => 'Pro chircare su nùmene de su paisu, su còdighe, o su còdighe de dial...';

  @override
  String get countryPickerTitle => 'Selezionare su Paisu';

  @override
  String get mapDefaultStop => 'Ferma su chi at fatu';

  @override
  String get mapEndLocation => 'Lugaru de sa fine';

  @override
  String get mapStartLocation => 'Comintzare sa positzione';

  @override
  String get stopsNoChangesToUndo => 'No b\'at cambiamentos disponìbiles pro annullare.';

  @override
  String get stopsNoStopsAvailable => 'No sunt disponìbiles istadas.';

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
