import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ligurian (`lij`).
class AppLocalizationsLij extends AppLocalizations {
  AppLocalizationsLij([String locale = 'lij']) : super(locale);

  @override
  String get appInfoBuild => 'Capaçioin de costruçión';

  @override
  String get appInfoDevice => 'Modèle de dispostión';

  @override
  String get appInfoOS => 'Versión do sistema operativo';

  @override
  String get appInfoPackage => 'Paxe';

  @override
  String get appInfoTitle => 'Informaçioin da app';

  @override
  String get appInfoVersion => 'Versión da App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardiei';

  @override
  String childrenGuardiansFor(Object name) {
    return 'A-i guædiàn autorizæ pe-i _$name';
  }

  @override
  String get childrenNoGuardians => 'No gh\'é de guæi autorizæ pe-o file de sto figgeu.';

  @override
  String get childrenStatusDropped => 'O l\'é scartòu';

  @override
  String get childrenStatusPending => 'A l\'é stæta a-a fin';

  @override
  String get childrenStatusPicked => 'Scegnuo';

  @override
  String childrenTitle(Object routeName) {
    return 'Zeneize  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'A l\'é stæta a-o momento de l\'apertura de l\'autobus ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuæ';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evâcuæ: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'No studdi assenti.';

  @override
  String get drillChecklistNoStudentsOnBus => 'No se segge seggeu de studdi inte l\'autobus.';

  @override
  String get drillChecklistNotOnBus => 'NO IN O BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'In BUSSO  NO evacuâ';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'In BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'A procescion pe cattûre a evidensa';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Via (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verifiçioin de drill de evacuaçion';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- O l\'é stæto o seu figgeu.';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ti ti veu mandâ a-o registro do forno?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirma a presentaçion do drill';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrive a condutçion do drill, o comportamento do studdio, i percorsi de scciâ doppo, e tutte e ecceçioin osservæ...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notte de conduçión (minimo 10 caratteri):';

  @override
  String get drillEvidenceFailed => 'A presentaçion a no l\'é stæta feua';

  @override
  String get drillEvidenceMandatoryWarning => 'Se deve presentâ almanco unna foto ò unna video-preuva pe-a preparaçion.';

  @override
  String get drillEvidenceRecordVideo => 'Gravaçión de video';

  @override
  String get drillEvidenceRetrySubmission => 'A-a remissión de retròppi';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN TO DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Submitting drill log...';

  @override
  String get drillEvidenceSuccess => 'A sottomiscion a l\'é un successo!';

  @override
  String get drillEvidenceSuccessMessage => 'O registro do travaggio de evacuaçion o l\'é stæto caricòu con successo e o l\'é in pendenza de l\'approvazione.';

  @override
  String get drillEvidenceTakePhoto => 'Fâse unna foto';

  @override
  String get drillEvidenceTitle => 'Prove de drill obligatoî';

  @override
  String get drillEvidenceUploading => 'A carica de evidensa e di dæti da lista de verifica';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'V0';
  }

  @override
  String get drillRosterMarkAttendance => 'Segnâ a presensa';

  @override
  String get drillRosterNoStudents => 'No gh\'é studdi registræ pe sta rotta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: _$presentCount / _$totalCount';
  }

  @override
  String get drillRosterProceed => 'A scistema de scenscion';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Strada:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sæto:';
  }

  @override
  String get drillRosterSelectAll => 'Seleçionâ tutti';

  @override
  String get drillSummaryAdminNotesTitle => 'Notte de amministraçión';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvòu a:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approuo a';

  @override
  String get drillSummaryBackToDrills => 'Torna a-e sciortie';

  @override
  String get drillSummaryBusNumber => 'Numero de bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conduto da:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detæti de sciortio';

  @override
  String get drillSummaryDriverNotesTitle => 'Notte do conduttô';

  @override
  String get drillSummaryDuration => 'Durâ';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '_V0__ min _V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'O tempo da fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evâcuæ: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'evacuaçión _V0__';
  }

  @override
  String get drillSummaryEvidenceTitle => 'A provâ a-i media';

  @override
  String get drillSummaryGps => 'Coordenæ GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'No l\'é stæto carregòu o resummo do forno pe l\'identificaçión #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'No se trêuvan dæti da-a forâ.';

  @override
  String get drillSummaryNotOnBus => 'No in autobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'In BUSSO - No evacuòu';

  @override
  String get drillSummaryPhotoEvidence => 'Poxiçión do comûne de Puglia';

  @override
  String get drillSummaryRouteId => 'Identificaçión de rota';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sæto:';
  }

  @override
  String get drillSummaryStartTime => 'O tempo de comensâ';

  @override
  String get drillSummaryStatus => 'Statûtto';

  @override
  String get drillSummaryStudentLogTitle => 'Logua de evacuaçion de studenti';

  @override
  String drillSummaryTitle(Object id) {
    return 'Summario do forno (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo de forno';

  @override
  String get drillSummaryVideoEvidence => 'Profiçioin da video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus _ V0__';
  }

  @override
  String get drillTypeClassification => 'Seleçión de clascificaçión de sciòrti:';

  @override
  String get drillTypeCustomHint => 'Intrâ in tippu de drill de evacuaçion personalizâ...';

  @override
  String get drillTypeInvalidState => 'Stato de veuggio ò de rota invalido.';

  @override
  String get drillTypeNameBusFire => 'Bus Fire';

  @override
  String get drillTypeNameDangerZone => 'Zona de pericolo';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacità do conduttô';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientamento da equipaggiâ';

  @override
  String get drillTypeNameFrontDoor => 'Poxiçión do comûne de Pòrta';

  @override
  String get drillTypeNameOthers => 'Altri';

  @override
  String get drillTypeNameRearDoor => 'Poxiçión do comûne de Pòrta';

  @override
  String get drillTypeNameSideOrRoof => 'L\' ôtô o l\'é o sciô';

  @override
  String get drillTypeNameSplit => 'Dividî';

  @override
  String get drillTypeNoRouteSelected => 'No Route Selected';

  @override
  String get drillTypePreparation => 'Preparaçion de drill';

  @override
  String get drillTypeProceed => 'A-o scistema de studdi';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Strada:';
  }

  @override
  String get drillTypeSelectRoute => 'Seleçionâ a rotta:';

  @override
  String get drillTypeSpecifyCustom => 'Specifica a descriçion do tipo de perforaçion:';

  @override
  String get drillTypeTitle => 'Seleçionâ o tipo de perforaçion';

  @override
  String get drillTypeWarning => 'Garantî che o veìcolo o l\'é parcou in segûo prìmma de comensâ a-a esecuçion.';

  @override
  String get drillsAssignedVehicle => 'Veicoli assegnæ';

  @override
  String get drillsChecking => '- Vâ che vegnî...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Poxiçión do comûne de Vittin-a';
  }

  @override
  String get drillsNoBusAssigned => 'No Bus Assigned';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'No drills recorded for bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'No gh\'é de rotte disponibili pe scatâ un travaggio.';

  @override
  String get drillsShowSummary => 'Show Summary';

  @override
  String get drillsStartDrill => 'Comensâ a-o travaggio';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduto: $date Statua: $status';
  }

  @override
  String get drillsTitle => 'Evocaçión de drill';

  @override
  String get drillsVehicleOutOfService => 'Veuggio In scito';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Sto veicolo o l\'é attualmente in scito e o no peu ëse doppo pe-e esercitaçioin.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Licensa de conduçión';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NOM: V0';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passagêro';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolastico';

  @override
  String get driverDetailsEndorsementsTitle => 'A-e approvaçioin';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de scadenza';

  @override
  String get driverDetailsHolderSignature => 'Segnalaçión de Tituçión';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: V0';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data da publicaçion';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento de licensa';

  @override
  String get driverDetailsLicenseNoLabel => 'Licensa No';

  @override
  String get driverDetailsLicenseTitle => 'Dæti do licensa';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licensa';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIAL SEAL';

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
    return 'A scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema de scistema';
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
  String get driverDetailsTapToView => 'Tâta pe vedde o documento DL';

  @override
  String get driverDetailsTitle => 'Dæti do conduttô';

  @override
  String get dvirCategoryBusSafetySystems => 'Sisteme de seguransa pe-i autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivi de conpagnaménto';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipamento de emergensa';

  @override
  String get dvirCategoryHorn => 'Corno';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivi de luminæ e riflettori';

  @override
  String get dvirCategoryMirrors => 'Rear-Vision Mirrors';

  @override
  String get dvirCategoryParkingBrake => 'Parcheggio da parche';

  @override
  String get dvirCategoryPassengerSeating => 'Seâ e Restrâçión de Passeggêi';

  @override
  String get dvirCategoryServiceBrakes => 'Frâxi de serviçi';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de direçion';

  @override
  String get dvirCategoryTires => 'Pneumæ';

  @override
  String get dvirCategoryWheelsRims => 'Rile e Rims';

  @override
  String get dvirCategoryWipers => 'Scìgno de scìgno';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOSTO DE FALTO DE CAPTAÇÃO';

  @override
  String get dvirPostTripComplianceTitle => 'Certificaçión de cumpliménto';

  @override
  String get dvirPostTripDefectButton => 'Defecto';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapòrto de difetto sensa foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvegnî: Ti ti seggi un difetto inta zónna de segûo ($zones) sensa attaccâ unna foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspeçion: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Intrâ i dettaggi de l\'argomento de seguransa...';

  @override
  String get dvirPostTripNotesLabel => 'NOTATE (MANDATORIO SUR DEFETTO) & FOTTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Seleçionâ DEFECT pe inserî i dæti de segûo...';

  @override
  String get dvirPostTripOdometerHeader => 'L\'idómètro de lêgoa curénte';

  @override
  String get dvirPostTripOdometerInstructions => 'Intra a lêgoa do chilometro comme mostrou in sce o panello de strumento do bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odomètro (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VECILE RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Ti veu inserî a lêto do chilometro de pendente in sciâ fin de procedî.';

  @override
  String get dvirPostTripPassButton => 'Passâ';

  @override
  String get dvirPostTripPhotoAttached => 'Foto attaccâ con successo.';

  @override
  String get dvirPostTripProgressLabel => 'Progresso da inspeçion';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatura captâ.';

  @override
  String get dvirPostTripSignatureCert => 'O certifica che sto rapòrto de lista de control de travaggio do veuggio o l\'é stæto completou in conpliçio co-i regolamenti FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificaçión da firma do conduttô';

  @override
  String get dvirPostTripSubmitButton => 'Inpetiçión de l\'inspeçión';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR o l\'é stæto presentou con successo.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE _V0__ DE _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zònne de V0';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Mi riconnoscio che ò scrito l\'ultimo rapporto de difetto presentou e che ò verificou e riparaçioin (se ghe n\'é) e che o bus o l\'é segûo pe-a travaggiâ.';

  @override
  String get dvirPreTripActiveMessage => 'Sto veicolo o l\'é Active e o no gh\'à difetti aperti. O l\'é verificou e segûo pe-a travaggiâ.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Viaçión attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENÇÃO RECERÇADA: Defeitti do giorno precedente';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numero de bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DE VECHIQUE DE DISPATCH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Fâse scinnâ: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'No Defects Recorded';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Sto veicolo o l\'é stæto segnao netto inta scenscion de turno post-trip precedente.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'No se gh\'é de riparâ pe-o travaggio sicuro.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Sto veicolo o l\'é in scito pe-e riparaçioin/manutençioin.';

  @override
  String get dvirPreTripOutofServiceButton => 'Veicolo da serviçioin';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Motivo:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '[V0__ (RIPARATO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Rapòrto de nòve difetti';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'A segnalaçion de difetti novixi a l\'é disattivâ durante e riparaçioin.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statuto: V0';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Resoluçión do Sub-Admin do Trasporto';

  @override
  String get dvirPreTripReturnToHomeButton => 'Torna a-a cà';

  @override
  String get dvirPreTripSignOffTitle => 'Signûa de scìnn-a pe-a camminâ';

  @override
  String get dvirPreTripSignedSuccess => 'A verifica a l\'é segnaâ con successo.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Verificaçión de l\'invito';

  @override
  String get dvirPreTripTitle => 'Verificaçión pre-viaçión';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Poxiçión do comûne de Vittin';
  }

  @override
  String get dvirSigDrawTitle => 'Scîto a firma';

  @override
  String get dvirSigPreviewLabel => 'Preview da firma catturâ:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Scappoâ a segnaçion';

  @override
  String get dvirSigTapToDraw => 'TAPPINTO pe scegnî a firma (RECORDATO)';

  @override
  String get dvirSigWatermark => 'Segna Verticalmente (Da-o fondo a-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-o de-';

  @override
  String get forgotPasswordCancel => 'Cancelâ';

  @override
  String get forgotPasswordEmailLabel => 'Emailâ';

  @override
  String get forgotPasswordInvalidEmail => 'Ti veu inserî unna mail valida';

  @override
  String get forgotPasswordSend => 'mandâ';

  @override
  String get forgotPasswordSuccess => 'Se quella mail a l\'é stæta existia, un link de reset o l\'é stæto mandou.';

  @override
  String get genericBack => 'Ritorno';

  @override
  String get genericCancel => 'Cancelâ';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'A l\'é stæta a-a fin';

  @override
  String get genericConfirm => 'Confirmaçión';

  @override
  String get genericEdit => 'Editâ';

  @override
  String get genericError => 'Unn-a cösa a l\'é andâ a-o manco';

  @override
  String get genericLoading => 'Carregaçión...';

  @override
  String get genericNext => 'Pròpio';

  @override
  String get genericOk => 'Ok, o l\'é stæto o mæximo.';

  @override
  String get genericRetry => 'Prova ciù';

  @override
  String get genericSuccess => 'Successo o l\'é stæto';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'A spediçion a l\'é bloccâ';

  @override
  String get homeDispatchBlockedTitle => 'A spediçion a l\'é bloccâ';

  @override
  String get homeErrorNoRoutesPreTrip => 'No gh\'é de rotte disponibili pe fâ Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'A no l\'à comensou a-o server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao, ciao,';
  }

  @override
  String get homeLogout => 'Loginâ';

  @override
  String get homeMenuAppInfo => 'Informaçioin da app';

  @override
  String get homeMenuDrill => 'Poxiçión do comûne de Puglia';

  @override
  String get homeMenuDriverDetails => 'Dæti do conduttô';

  @override
  String get homeMenuLanguage => 'Lengua';

  @override
  String get homeMenuPreTrip => 'Inspettaçion pre-viaçion';

  @override
  String get homeNoRoutes => 'No routes available';

  @override
  String get homeReviewVerifyPreTrip => 'Revisâ e verificâ pre-viaçion';

  @override
  String get homeSearchHint => 'Ròtte de çercâ';

  @override
  String get homeStart => 'Comensâ';

  @override
  String get homeTitle => 'Cascia';

  @override
  String get homeVehicleOutOfServiceDefault => 'O veuggio o l\'é in sciâ quæxiña OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'O veicolo o l\'é pronto e verificou pe-a funzionamento segûo.';

  @override
  String get languageTitle => 'Lengua';

  @override
  String get loginButton => 'Loginâ';

  @override
  String get loginEmailOrPhoneLabel => 'Numero de email ò de telefòn';

  @override
  String get loginErrorEnterPassword => 'Intraî a password';

  @override
  String get loginErrorEnterUsername => 'Intraî o nomme d\'utente';

  @override
  String get loginErrorFailed => 'Login a l\'é faltou. Ti veu riprovâ.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Ti veu inserî un email ò un nùmero de telefòna';

  @override
  String get loginForgotPassword => 'Ti ti tiæ a password?';

  @override
  String get loginPasswordLabel => 'Passwordâ';

  @override
  String get mapChildrenTooltip => 'Zeneize e çitæ';

  @override
  String get mapConfirmMessage => 'Ti veu de fæto concludî o viaggio?';

  @override
  String get mapConfirmTitle => 'Confirmaçión';

  @override
  String get mapCurrentPosition => 'Poxiçión do comûne de Pontevedra';

  @override
  String get mapNo => 'No, no, no';

  @override
  String get mapReconnectMessage => 'A localizaçion a no l\'é stæta accertâ spesso, ti veu verificâ a teu internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stoppâ';

  @override
  String get mapStopping => 'Stoppâ...';

  @override
  String get mapStopsTooltip => 'Stoppâ';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualizzòu _ V0__s ago';
  }

  @override
  String get mapWaitingGps => 'A-a spetaçion de GPS...';

  @override
  String get mapYes => 'Sì, sì';

  @override
  String get splashDriverApp => 'App do driver';

  @override
  String get stopsActionUndo => 'O l\'é stæto scangiou';

  @override
  String get stopsCancelledSuccess => 'Cancelòu con successo';

  @override
  String get stopsDefaultLabel => 'Stoppâ';

  @override
  String get stopsGenericError => 'Un pö o l\'é andòu in gio.';

  @override
  String get stopsStatusComplete => 'completæ';

  @override
  String get stopsStatusDone => 'fâ';

  @override
  String stopsSubmitCount(Object count) {
    return 'Sottô ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sottometto con successo';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_V0__ seleçionâ _ _V1__/$total _V3__';
  }

  @override
  String get stopsTypeDrop => 'Gâ âbâ';

  @override
  String get stopsTypePick => 'scegge';

  @override
  String stopsUndoCount(Object count) {
    return 'O ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Scinn-a/a scinn-a';

  @override
  String get tripConfirmCancel => 'Cancelâ';

  @override
  String get tripConfirmOk => '- Oua, o l\'é ben.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'A-o comensâ unna viaggia a l\'é necessa de un permîto de localizaçion.';

  @override
  String get homeMenuPostCrashReporting => 'Rapòrto dòppo o cràsso';

  @override
  String homeVehicleReason(Object reason) {
    return 'Motivo:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statuto: V0';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Poxiçión do comûne de S.A.R.L.';

  @override
  String get crashLocationPickerTitle => 'Seleçionâ a localizaçion in sciâ mappa';

  @override
  String get crashLocationPickerTooltip => 'Confirme o locâ';

  @override
  String get incidentDashboardDescription => 'Seleçionâ unna açion pe procedî co-a gestion di incidenti ò vedde i rapòrti passæ.';

  @override
  String get incidentDashboardHeadline => 'Rapòrto de incidente dòppo l\'accaddio';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniçiâ un neuvo rapòrto de crash passo a passo';

  @override
  String get incidentDashboardTitle => 'Incidente dòppo o crâso';

  @override
  String get incidentDashboardViewHistory => 'Visualizza stöia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Visualizza i raporti de crash precedenti e o stado';

  @override
  String get incidentDetailsAdminLetter => 'Lettera de amministratô';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Teste de l\'alcol a contâ a-a scorta (2-ora limite)';

  @override
  String get incidentDetailsBranchId => 'Identificaçión de sucursâ';

  @override
  String get incidentDetailsBusPlate => 'L\'autô de l\'autô';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citaçión:';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citaçión da-o conduttô';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenæ: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return 'V0__ copiòu in cartellê!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copîa a-o clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e orâ: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Rapòrto do DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Rapòrto do DOE de Stato (Fonçionale)';

  @override
  String get incidentDetailsDriverNotes => 'Notte do conduttô:';

  @override
  String get incidentDetailsDriverUserId => 'ID de l\' utenti do drîve';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Test Droghe Countdown (8-Hr Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'A morte a l\'é capitâ';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'L\'inferme che o l\'é necessaio de un tratamento medico';

  @override
  String get incidentDetailsLawEnforcement => 'Agenzia de poxiçión';

  @override
  String get incidentDetailsLoadFailed => 'No l\'é stæto fæto caricâ i dettaggi.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Localisción:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Attachement media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statuto: V0';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ni foto ni video attaccæ.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No gh\'é stæto segno de studenti a bordo durante l\'incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generâ di rapòrti de notificaçion e mandâ de letti con template a-i supervisioni distrettuali ò à l\'amministraçion.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificaçioin de trasmiscion';

  @override
  String get incidentDetailsOfficer => 'Detæti ofiçiæ';

  @override
  String get incidentDetailsPoliceReport => 'Numero de rapòrto de poxiçión';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Poxiçión do comûne de C.A.';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basæ de regolamentaçion:';

  @override
  String get incidentDetailsRouteId => 'Identificaçión de rota';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificaçion da-a scüa';

  @override
  String get incidentDetailsStatusPending => 'A l\'é stæta a-a fin';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Dettaggi:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Feriti';

  @override
  String get incidentDetailsStudentNoInjury => 'No ferî';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravitæ:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasportòu a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Testâ post-crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statuto: V0';
  }

  @override
  String get incidentDetailsTitle => 'Detæti de l\'incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Veicoli trascinæ';

  @override
  String get incidentDetailsYes => 'Sì, sì';

  @override
  String get incidentHistoryEmpty => 'No gh\'é seggeu seggeu de seggeu de incidente pe sto veicolo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'No se peu recuperâ i log: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Temp: V0__ Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NO RECORDED';

  @override
  String get incidentHistoryTestingRequired => 'Requisito';

  @override
  String get incidentHistoryTitle => 'Registro de Incidentæ post-crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiungâ unna foto ciù';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisito';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numero do badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numero de bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capture Scene Incident Photo';

  @override
  String get incidentIntakeCitationSubtitle => 'Un mòddo de violaçion do traffico o l\'é stæto mandou à-o guägno do bus da scola?';

  @override
  String get incidentIntakeCitationTitle => 'Citatæ emise?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Data & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO TESTING NO NEEDEDED';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT TESTING NEEDEDED';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Camineggio:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Intra tutte e notiçie aggiuntive in sciâ collision...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notte de incidente do conduttô';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passeggeri da rota no portæ in carica: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Anâ a-o mòddo de prove (Fotò) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'A l\'é capitou quarche mòrte comme risultâ da sto crash?';

  @override
  String get incidentIntakeFatalityTitle => 'A morte a l\'é capitâ?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenæ GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Visualizza stöia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Un o l\'à piggiou unna ferita corporea ch\'a l\'à richiesto un tratamento medico imediato in là da-a scena?';

  @override
  String get incidentIntakeInjuriesTitle => 'L\'inferme che o l\'é necessaio de cure mediche?';

  @override
  String get incidentIntakeInjuryNotesError => 'I scignificativi de ferite son obbligæ pe-i studdi feriti';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notte de ferî / Dettaggi (Mandatûa) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravitæ da ferîa *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Ti veu intrâ into forçe de poliçia';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'A-o 15 de novembre de 2012 a Comûne de Cagliari a l\'é stæta a-a seu capitâle.';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rapòrto da Poxiçión de Poxiçión';

  @override
  String get incidentIntakeLocationDescError => 'Ti veu inserî a descriçion da locaçion';

  @override
  String get incidentIntakeLocationDescLabel => 'Descriçion da locaçion (ex. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'A stradda medica a l\'é stæta portâ';

  @override
  String get incidentIntakeNoMatchingStudents => 'No gh\'é studdi che se conpòrtan.';

  @override
  String get incidentIntakeNoStudentsFound => 'No se trêuva studdi.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No gh\'é de studdi a bordo.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No se son registræ studdi pe sta rotta.';

  @override
  String get incidentIntakeOfficerNameError => 'Ti veu inserî o nomme do ofiçiâ';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nomme do ofiçiâ *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Ti veu inserî o numero de rapòrto de polizia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numero de rapòrto de poxiçión *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Strada:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informaçioin de drita e de drita';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cerca unna figgia ferita...';

  @override
  String get incidentIntakeSearchStudentHint => '- Véiva çercâ un studdo...';

  @override
  String get incidentIntakeSelectAll => 'Seleçionâ tutti i studdi';

  @override
  String get incidentIntakeSelectOnMap => 'SELECTO IN MAPPA';

  @override
  String get incidentIntakeSeverityFatal => 'Fatalæ';

  @override
  String get incidentIntakeSeverityMinor => 'Poxiçión do comûne de Cremona';

  @override
  String get incidentIntakeSeverityModerate => 'Moderaçión';

  @override
  String get incidentIntakeSeveritySevere => 'Serio';

  @override
  String get incidentIntakeSeverityTitle => 'Variabili de gravitæ do crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: V0';
  }

  @override
  String get incidentIntakeSubmitButton => 'Rapòrto de presentaçion';

  @override
  String get incidentIntakeTitle => 'A consumaçion de l\'incidente dòppo l\'accaddio';

  @override
  String get incidentIntakeTowedSubtitle => 'Un veuggio o l\'à ricevûo un danno debilitante che o l\'à richiamòu a-o posto?';

  @override
  String get incidentIntakeTowedTitle => 'A veitæ a l\'é stæta tirâ?';

  @override
  String get incidentIntakeWasInjured => 'O l\'é stæto ferî?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'A-a scê scê scê';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commento/Nòte do conduttô (Fonçionale)';

  @override
  String get dvirPreTripNoComments => 'No comment added.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Motivo:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Strada:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatura con successo catturâ.';

  @override
  String get dvirPreTripSigMissing => 'A firma a l\'é manca.';

  @override
  String get dvirPreTripSignDefectWarning => 'Segna pe verificâ a repariçion de difetti precedenti.';

  @override
  String get dvirPreTripStepSignOff => 'Segnâ';

  @override
  String get dvirPreTripStepSubmit => 'Sottôî';

  @override
  String get dvirPreTripStepVerify => 'Verificâ';

  @override
  String get dvirPreTripTapNext => 'Ti veu clicâ su NEXT pe procedî.';

  @override
  String get dvirPreTripVehicleOutOfService => 'O veuggio o l\'é in scito';

  @override
  String get dvirPreTripVehicleReady => 'O veuggio o l\'é pronto pe-o servî';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statua de reparaçion verificâ:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Ti veu verificâ che tutti i difetti segnalai son stæti riparæ scriccâ a scatola vixinn-a de ogni difetto.';

  @override
  String get dvirPreTripYourComments => 'I teu commenti:';

  @override
  String get countryPickerNoCountries => 'Niente paise trovæ';

  @override
  String get countryPickerSearchHint => 'Cerca pe nomme de paise, cómme cómme, ò cómme dial...';

  @override
  String get countryPickerTitle => 'Seleçionâ o Paese';

  @override
  String get mapDefaultStop => 'Stoppâ';

  @override
  String get mapEndLocation => 'Localisción de fin';

  @override
  String get mapStartLocation => 'Poxiçión do comûne de Pignon';

  @override
  String get stopsNoChangesToUndo => 'No gh\'é cambiamenti à fâse revoca.';

  @override
  String get stopsNoStopsAvailable => 'No stops disponibbile.';
}
