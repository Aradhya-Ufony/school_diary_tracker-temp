import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lombard (`lmo`).
class AppLocalizationsLmo extends AppLocalizations {
  AppLocalizationsLmo([String locale = 'lmo']) : super(locale);

  @override
  String get appInfoBuild => 'Custruì Numer';

  @override
  String get appInfoDevice => 'Modèl de dispositìv';

  @override
  String get appInfoOS => 'OS Version';

  @override
  String get appInfoPackage => 'Pacaa';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App Version';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardiani';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Custodi autorizà per $name';
  }

  @override
  String get childrenNoGuardians => 'Nissun tutori autorizà per sta fioeu.';

  @override
  String get childrenStatusDropped => 'L\'è scartada';

  @override
  String get childrenStatusPending => 'In attesa';

  @override
  String get childrenStatusPicked => 'Sceglie';

  @override
  String childrenTitle(Object routeName) {
    return 'Cüc  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'absent / NOT ON BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evagàda';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuàto: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nissun student assente.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nissun student segnàt in bus.';

  @override
  String get drillChecklistNotOnBus => 'NO AL BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'AL BUS  NO EVACUATO';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'AL BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'LA PROCESSA PER LA CAPTAGRAZIONE';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Via (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista di verifich per i fori di evacuazion';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Student incontato restante!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Te sè sicure de vèss mandà \'l registro de la forca?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirma la presentazion del perforazion';

  @override
  String get drillEvidenceDriverNotesHint => 'Descriv l\'esecuzion del esercit, el cumpurtament del student, i camini de uscita e ogni eccezion osservada...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notas del conductor (minimum 10 caratteri):';

  @override
  String get drillEvidenceFailed => 'La presentazion fallita';

  @override
  String get drillEvidenceMandatoryWarning => 'Almenü 1 prova foto o video l\'è obbligada per presentà la prova.';

  @override
  String get drillEvidenceRecordVideo => 'Video de registrazion';

  @override
  String get drillEvidenceRetrySubmission => 'SUMMISSIONE DEL RETIRO';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN TO DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'Sottometting Drill Log...';

  @override
  String get drillEvidenceSuccess => 'La Submissione Successiva!';

  @override
  String get drillEvidenceSuccessMessage => 'El log de la evacuazion l\'è staa caricaa con successo e l\'è in attesa de l\'approvazione.';

  @override
  String get drillEvidenceTakePhoto => 'Fate la foto';

  @override
  String get drillEvidenceTitle => 'Pruva de perforazion obbligatoria';

  @override
  String get drillEvidenceUploading => 'L\'incarico de prove e de i dati de lista de controllo';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'V0';
  }

  @override
  String get drillRosterMarkAttendance => 'La presenza di Marco';

  @override
  String get drillRosterNoStudents => 'Nissun student el se registra in sta rotta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDO PER LA VOLTA';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sitt: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Seleziona TUTTTO';

  @override
  String get drillSummaryAdminNotesTitle => 'Notas de admin';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvada a: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Appruvà in';

  @override
  String get drillSummaryBackToDrills => 'Torna a Drills';

  @override
  String get drillSummaryBusNumber => 'Numéro de bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Conduit By: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Dettagli di perforazion';

  @override
  String get drillSummaryDriverNotesTitle => 'Notas del conductor';

  @override
  String get drillSummaryDuration => 'Durata';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'L\'ora de la fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuàto: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuada $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Pruvènt di Attachament di Medium';

  @override
  String get drillSummaryGps => 'Coordenadas GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'LAT: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'N\'è minga rivà a caricare el resum del perforazion per l\'ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nissun dat de perforazion trovà.';

  @override
  String get drillSummaryNotOnBus => 'No in del bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'AL BUS - NO EVACUATO';

  @override
  String get drillSummaryPhotoEvidence => 'Pruvaa de foto';

  @override
  String get drillSummaryRouteId => 'ID de via';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sitt: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'L\'ora de cumincià';

  @override
  String get drillSummaryStatus => 'Statù';

  @override
  String get drillSummaryStudentLogTitle => 'El Regn de evacuazion de i studentes';

  @override
  String drillSummaryTitle(Object id) {
    return 'Sumario del perforazion (#$id)';
  }

  @override
  String get drillSummaryType => 'Tip de perforazion';

  @override
  String get drillSummaryVideoEvidence => 'Video Pruvìfica';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Sceglie la classificazione dei fori:';

  @override
  String get drillTypeCustomHint => 'Intra in tip de fori de evacuazion custom...';

  @override
  String get drillTypeInvalidState => 'Stat de veicol o de rotta invalida.';

  @override
  String get drillTypeNameBusFire => 'Bus Fire';

  @override
  String get drillTypeNameDangerZone => 'Zona pericolosa';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacità del conducente';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientament de l\'equipament';

  @override
  String get drillTypeNameFrontDoor => 'Porta d\'intrada';

  @override
  String get drillTypeNameOthers => 'Altri';

  @override
  String get drillTypeNameRearDoor => 'Porta posteriore';

  @override
  String get drillTypeNameSideOrRoof => 'LATEL O TATEL';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Nissun rotta sceltuda';

  @override
  String get drillTypePreparation => 'Preparazion per la drill';

  @override
  String get drillTypeProceed => 'PROCEDU AL RISTAR DEL STUDENTE';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Seleziona la rotta:';

  @override
  String get drillTypeSpecifyCustom => 'Specifica la descrizion del tip de perforazion:';

  @override
  String get drillTypeTitle => 'Seleziona el tip de perforazion';

  @override
  String get drillTypeWarning => 'Fate in sicurezza che el veicol sia parchegh prima de cumincià l\'esecuzion.';

  @override
  String get drillsAssignedVehicle => 'Veicol assegnà';

  @override
  String get drillsChecking => 'Checking...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nessun Bus Assigned';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nissun esercitamènt registràt per l\'autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nissun rotta disponibil per cumincià un esercit.';

  @override
  String get drillsShowSummary => 'Sottoveglio';

  @override
  String get drillsStartDrill => 'Comincià a Forare';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conducted: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evacuatìone di esercitazion';

  @override
  String get drillsVehicleOutOfService => 'Veicol in disfunzion';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Chèl veicol al è in dì d\'ora in distacc e al pò minga doprà per esercità.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LEICENZA DI COSTIVO';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NOM: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passaggeri';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus scolastico';

  @override
  String get driverDetailsEndorsementsTitle => 'I sostegni de l\'UE';

  @override
  String get driverDetailsExpiryDateLabel => 'Data di scadenza';

  @override
  String get driverDetailsHolderSignature => 'Signatura DEL TITOLATO';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de publicazion';

  @override
  String get driverDetailsLicenseDocTitle => 'Document de licence';

  @override
  String get driverDetailsLicenseNoLabel => 'Licenza n.';

  @override
  String get driverDetailsLicenseTitle => 'Dettagli di licenz';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licenza';

  @override
  String get driverDetailsOfficialSeal => 'SEAL OFFICIAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASE: $cdlClass';
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
  String get driverDetailsTapToView => 'Tutt per visualizzà el Documènt DL';

  @override
  String get driverDetailsTitle => 'Dettagli del driver';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistèma de sicurezza specific per i bus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositiv de coppia';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipament de urgenza';

  @override
  String get dvirCategoryHorn => 'Corn';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivi e riflettori di illuminazion';

  @override
  String get dvirCategoryMirrors => 'Specchi de visione posteriore';

  @override
  String get dvirCategoryParkingBrake => 'Parcheggio Freno';

  @override
  String get dvirCategoryPassengerSeating => 'Sitù e Ristrènsa per i Passeggeri';

  @override
  String get dvirCategoryServiceBrakes => 'FRESO DE SERVICE';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de direzion';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Rims e ruote';

  @override
  String get dvirCategoryWipers => 'Scoppi per vetri';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOS DE DEFECTO DE LA CAPTA';

  @override
  String get dvirPostTripComplianceTitle => 'CERTIFACIONE DEL COMPLIMENTE';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Segnalar difett senza foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avvertenza: Te segnala un difett in di zoni de sicurezza ($zones) senza attaccà una foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspection: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Inserisci i dettagli del problema di sicurezza...';

  @override
  String get dvirPostTripNotesLabel => 'NOTE (MANDATORIO SUL DEFET) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Selezionà DEFECT per inserî i detaii de sicurezza...';

  @override
  String get dvirPostTripOdometerHeader => 'LECCIONE ACTUALE DEL Odometro';

  @override
  String get dvirPostTripOdometerInstructions => 'Inserit la lettura del chilometraggio esattamente come indicaa sul pannel di strument del bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VECILLE RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Inserisci la lettura del odometro prima de procedir.';

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripPhotoAttached => 'Foto accostata con successo.';

  @override
  String get dvirPostTripProgressLabel => 'Progress in Inspection';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatura catturata.';

  @override
  String get dvirPostTripSignatureCert => 'I certifich che sta relazione de lista de control de gir de veicol l\'è stada cumpletada in conformità a i regolamenti FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificazion de la firma del driver';

  @override
  String get dvirPostTripSubmitButton => 'SUMMIT INSPECTIONE';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR presentà con successo.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zones de V0__ / V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'I riconòsce che ho esaminà l\'ùrtimo report de difett presentà e verificà le riparazion (se gh\'è) e dichiarar che l\'autobus l\'è segur per operà.';

  @override
  String get dvirPreTripActiveMessage => 'Chësc veicul a l\'é ativ e a l\'é nen defectes apers.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Via attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENZIONE RICORGATA: difetti del giorno precedente';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numéro de bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DE VECHIQUE DE DISPATCH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Signatura fallita: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nissun defect precedent registràt';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Chèl veicol l\'è staa segnalada pulita in de l\'ispezion precedente post-trip.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nissun ripar necessar per un funzionament sigur.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Chësc veicul a l\'é fora d\'utilizaziun per riparazion/manternanza.';

  @override
  String get dvirPreTripOutofServiceButton => 'VETULA D\'UNA SERVIZIA';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (RIPARATO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT NUOVI difetti';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'La segnalazion de novi difetti l\'è disabilitada durante la riparazion.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statù: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUZIONE DEL SUB-ADMIN DEL TRANSPORT';

  @override
  String get dvirPreTripReturnToHomeButton => 'Ritorna a cà';

  @override
  String get dvirPreTripSignOffTitle => 'Sign-OFF per camminà';

  @override
  String get dvirPreTripSignedSuccess => 'Verificazion firmata con successo.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'CONVERICACIONE SUBMISTA';

  @override
  String get dvirPreTripTitle => 'Verificazion pre-viaziun';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statù del veicolo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Scarica la firma';

  @override
  String get dvirSigPreviewLabel => 'Preview Signature Captured:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SALVARE LA SIGNATURE';

  @override
  String get dvirSigTapToDraw => 'TAP TO DRAW SIGNATURE (REQUIRED)';

  @override
  String get dvirSigWatermark => 'Sign Verticalmente (De bas a su)';

  @override
  String get forgotPasswordCancel => 'Cancelà';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Inserit una email valida';

  @override
  String get forgotPasswordSend => 'Mandà';

  @override
  String get forgotPasswordSuccess => 'Se quell mail l\'è esisti, l\'è staa mandada una redistribuzion.';

  @override
  String get genericBack => 'RETRO';

  @override
  String get genericCancel => 'Cancelà';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'CLOSE';

  @override
  String get genericConfirm => 'Confirma';

  @override
  String get genericEdit => 'Edit Edit';

  @override
  String get genericError => 'Qualc cosa l\'è andada mal';

  @override
  String get genericLoading => 'Carga...';

  @override
  String get genericNext => 'NEXT';

  @override
  String get genericOk => 'Ok, ok, ok.';

  @override
  String get genericRetry => 'Repruv';

  @override
  String get genericSuccess => 'Succes';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'La spedizion bloccada';

  @override
  String get homeDispatchBlockedTitle => 'La spedizion bloccada';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nissun rotta disponibil per fà Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Fallaa de cumincià la viagnia sul server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ciao, V0__';
  }

  @override
  String get homeLogout => 'Login';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Puglia';

  @override
  String get homeMenuDriverDetails => 'Dettagli del driver';

  @override
  String get homeMenuLanguage => 'Lengua';

  @override
  String get homeMenuPreTrip => 'Infission pre-via';

  @override
  String get homeNoRoutes => 'Nissun rotta disponibil';

  @override
  String get homeReviewVerifyPreTrip => 'Revista & Verifica Pre-Trip';

  @override
  String get homeSearchHint => 'Rùte de ricerca';

  @override
  String get homeStart => 'Comincià';

  @override
  String get homeTitle => 'Home - La città';

  @override
  String get homeVehicleOutOfServiceDefault => 'El veicol l\'è in fase de OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'El veicol l\'è pront e verificà per el funzionament sicür.';

  @override
  String get languageTitle => 'Lengua';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Email o nùmer de telefòna';

  @override
  String get loginErrorEnterPassword => 'Inserìsse la password';

  @override
  String get loginErrorEnterUsername => 'Inserì l\' username';

  @override
  String get loginErrorFailed => 'L\'inlogh faccil.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Inserit una email o un nùmer de telefòna in valid';

  @override
  String get loginForgotPassword => 'L\'ha scordà la password?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Cüini & tutori';

  @override
  String get mapConfirmMessage => 'Vulissi veramente chiudere el viagh?';

  @override
  String get mapConfirmTitle => 'Confirma';

  @override
  String get mapCurrentPosition => 'Posizion attuale';

  @override
  String get mapNo => 'No, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no, no,';

  @override
  String get mapReconnectMessage => 'L\'aggiornamènt de località el falàa de spès, vegnì a controlà la vostra internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Ferma';

  @override
  String get mapStopping => 'Ferma...';

  @override
  String get mapStopsTooltip => 'Ferma';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated __ V0__s ago';
  }

  @override
  String get mapWaitingGps => 'Aspettando GPS...';

  @override
  String get mapYes => 'Sì sì sì';

  @override
  String get splashDriverApp => 'App del driver';

  @override
  String get stopsActionUndo => 'Invalid';

  @override
  String get stopsCancelledSuccess => 'Cancelà con successo';

  @override
  String get stopsDefaultLabel => 'Ferma';

  @override
  String get stopsGenericError => 'Gh\'è andàto mal, per favore, prova de novo.';

  @override
  String get stopsStatusComplete => 'complet';

  @override
  String get stopsStatusDone => 'finì';

  @override
  String stopsSubmitCount(Object count) {
    return 'Sottometta ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sottometto con successo';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected selezionà _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Puzza';

  @override
  String get stopsTypePick => 'Sceglie';

  @override
  String stopsUndoCount(Object count) {
    return 'C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C. C.';
  }

  @override
  String get stopsUndoTooltip => 'Scarica/scaccia';

  @override
  String get tripConfirmCancel => 'Cancelà';

  @override
  String get tripConfirmOk => 'OK, OK, OK.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Per partì a un viagh l\'è necessaria la autorisazion de localizazion.';

  @override
  String get homeMenuPostCrashReporting => 'Report post-crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statù: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'LAT: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localisàzion de la ricerca (es. Strada del Mercat)';

  @override
  String get crashLocationPickerTitle => 'Seleziona la localizazion in de la mappa';

  @override
  String get crashLocationPickerTooltip => 'Confirma la località';

  @override
  String get incidentDashboardDescription => 'Seleziona una azion per procedì a la gestione di incidenti o vedè i segnalazion passà.';

  @override
  String get incidentDashboardHeadline => 'Informàcc de incidenti post-crash';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Initiaa un nòv raport de crash passo per passo';

  @override
  String get incidentDashboardTitle => 'L\'incident post-crash';

  @override
  String get incidentDashboardViewHistory => 'Vede la Storia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vede i segnalazion e l\' status di incidenti precedenti';

  @override
  String get incidentDetailsAdminLetter => 'LETRA DEL AMMIN';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcol Test Countdown (2-Hour Limit)';

  @override
  String get incidentDetailsBranchId => 'ID de sucetà';

  @override
  String get incidentDetailsBusPlate => 'Plàca di Licenza Autobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citazion Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citazion de guida';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenadas: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copià in cartolina!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'COPIAR AL CLIPBOARD';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Report DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Stat DOE Report (Optional)';

  @override
  String get incidentDetailsDriverNotes => 'Notas del conductor:';

  @override
  String get incidentDetailsDriverUserId => 'ID de User Driver';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Test Drug Countdown (8-Hour Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Fatalità avvenuta';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injurie che richiedono un tratament medico';

  @override
  String get incidentDetailsLawEnforcement => 'Agenzia di esecuzione del diritto';

  @override
  String get incidentDetailsLoadFailed => 'A l\'é mancà a caricà i detai.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'LUGAR: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'L\'attaccament ai media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statù: $status';
  }

  @override
  String get incidentDetailsNo => 'NO';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ni foto ni video.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nissun student a l\'era segnàt a bordo durante l\'incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generà de segnalazion e mandà de letere con template ai supervisiun de distret o a l\'amministrazione.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificazion de trasmissione';

  @override
  String get incidentDetailsOfficer => 'Dettagli di ufficial';

  @override
  String get incidentDetailsPoliceReport => 'Numer de rapòrta de polizia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Lettera di trasmissione pre-polllata:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Basè de regolamentazion:';

  @override
  String get incidentDetailsRouteId => 'ID de via';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificazion de l\'aministrazion scola';

  @override
  String get incidentDetailsStatusPending => 'In attesa';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Dettagli: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'L\'è ferita';

  @override
  String get incidentDetailsStudentNoInjury => 'Nè ferita';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'gravità:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasportà a: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NEED TO POST-Crash TESTING';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statù: $status';
  }

  @override
  String get incidentDetailsTitle => 'Dettagli di incidenti';

  @override
  String get incidentDetailsVehicleTowed => 'Veicol tirà';

  @override
  String get incidentDetailsYes => 'Sì sì sì';

  @override
  String get incidentHistoryEmpty => 'Nissun registro di incidenti registrà per sto veicol.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'N\'è minga rivà a recuperà i log: $error';
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
  String get incidentHistoryTestingNotRequired => 'NO REQUIRED';

  @override
  String get incidentHistoryTestingRequired => 'RECORDATO';

  @override
  String get incidentHistoryTitle => 'Registro de incidenti post-crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aggiunta n\'altra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requisito';

  @override
  String get incidentIntakeBadgeNumberLabel => 'NUMERO DEL BADGE *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numéro de bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Scena de scena de l\'incident';

  @override
  String get incidentIntakeCitationSubtitle => 'L\'è staa dà una citazion per violazion del traffico al guida del bus scolastico?';

  @override
  String get incidentIntakeCitationTitle => 'Citazion emessa?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO ESCERÍDO LA TESTING';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT TESTING NEEDEDED';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conductor:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Inserisci ogni nota ulteriore in merito a la collisione...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notes de l\'incident del conducënt';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passageri del viagh de carica incù l\'è: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Accede la prova (Foto) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'A gh\'è stada de fatalità a causa de sta collision?';

  @override
  String get incidentIntakeFatalityTitle => 'L\'è capitada una fatalità?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenadas GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vede la Storia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'A gh\'è staa qualchedun che l\'ha ciappaa una ferita corporea che l\'ha bisogn de tratament medico immediato?';

  @override
  String get incidentIntakeInjuriesTitle => 'L\'Injurie che \'l gh\'ha de fà curà?';

  @override
  String get incidentIntakeInjuryNotesError => 'I studiant ferìss i gh\'han de fà i segnalazion de lesion';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notas / Dettagli di infortuni (Mandatoriali) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravità dei feriti *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Per favore, entra in agenzia de polizia';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agenzia de l\'infurzazion de la lege (es. Patrulla Statale per le Autostrade) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raporto di polizia e di polizia';

  @override
  String get incidentIntakeLocationDescError => 'Inserisci la descrizion de la località';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrizion de la località (es. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'L\'impiant medico trasportà a';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nient di studenti che corrisponden.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nissun student trovà.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nissun student a bordo.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nissun student l\'è registrà per sta rotta.';

  @override
  String get incidentIntakeOfficerNameError => 'Inserisci el nome del funzionario';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome del funzionario *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Inserit el nùmer de rapòrto de polizia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numer de rapòrta de polizia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazion de rotta e guida';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cerca a \'l fioeu ferì...';

  @override
  String get incidentIntakeSearchStudentHint => 'Cerca student...';

  @override
  String get incidentIntakeSelectAll => 'Seleziona TUTTI Gli Studenti';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT AL MAPO';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minore';

  @override
  String get incidentIntakeSeverityModerate => 'Moderà';

  @override
  String get incidentIntakeSeveritySevere => 'Sèvres';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravità del crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'SUMMITRIO';

  @override
  String get incidentIntakeTitle => 'Intesa post incidente';

  @override
  String get incidentIntakeTowedSubtitle => 'A gh\'è stada una vittura che l\'ha ciappaa danni che la fava dover de la tirà via?';

  @override
  String get incidentIntakeTowedTitle => 'Veicul tirà?';

  @override
  String get incidentIntakeWasInjured => 'L\'è staa ferita?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'CLOSE';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commenti del driver / Notes (Optional)';

  @override
  String get dvirPreTripNoComments => 'Nissun cummentari.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Via: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatura catturata con successo.';

  @override
  String get dvirPreTripSigMissing => 'La firma manca.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signì per verificà la riparazion di difetti precedenti.';

  @override
  String get dvirPreTripStepSignOff => 'Signatura';

  @override
  String get dvirPreTripStepSubmit => 'Sottometter';

  @override
  String get dvirPreTripStepVerify => 'Verifich';

  @override
  String get dvirPreTripTapNext => 'Tuttà AL NEXT per procedì.';

  @override
  String get dvirPreTripVehicleOutOfService => 'El veicol l\' è in disfunzion';

  @override
  String get dvirPreTripVehicleReady => 'El veicol l\'è pronto per servì';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statù di riparazion verificà:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verifich che i difetti segnalai hinn staa riparà, segn la casella de fianch a ogni difett.';

  @override
  String get dvirPreTripYourComments => 'Vos commentaires:';

  @override
  String get countryPickerNoCountries => 'Paes minga trovà';

  @override
  String get countryPickerSearchHint => 'Cerca per nome del paes, codice, o codice dialogo...';

  @override
  String get countryPickerTitle => 'Selezion del Paes';

  @override
  String get mapDefaultStop => 'Ferma';

  @override
  String get mapEndLocation => 'LUGAR FINAL';

  @override
  String get mapStartLocation => 'L\' Ubicazion de Comincià';

  @override
  String get stopsNoChangesToUndo => 'Nissun cambiament disponibil per annullà.';

  @override
  String get stopsNoStopsAvailable => 'Nissun ferm disponibil.';

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
