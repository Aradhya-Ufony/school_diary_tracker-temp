import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Maltese (`mt`).
class AppLocalizationsMt extends AppLocalizations {
  AppLocalizationsMt([String locale = 'mt']) : super(locale);

  @override
  String get appInfoBuild => 'Ibni Numru';

  @override
  String get appInfoDevice => 'Modell ta\' apparat';

  @override
  String get appInfoOS => 'Verżjoni tal-OS';

  @override
  String get appInfoPackage => 'Pakkett';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'Verżjoni tal-App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Il-Gwardjani';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Il-gwardji awtorizzati għal $name';
  }

  @override
  String get childrenNoGuardians => 'L- ebda ġenituri awtorizzati fil- fajl għal dan it- tfal.';

  @override
  String get childrenStatusDropped => 'Twarrab';

  @override
  String get childrenStatusPending => 'Jistennew';

  @override
  String get childrenStatusPicked => 'Iċ-ċaħda';

  @override
  String childrenTitle(Object routeName) {
    return 'It-tfal  __ V0__';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'L-ABSENT / L-Iskeda mhux fuq l-AUTobus ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Buss:';
  }

  @override
  String get drillChecklistEvacuated => 'Evawwat';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evawwat: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'L- ebda studenti assenti.';

  @override
  String get drillChecklistNoStudentsOnBus => 'L- ebda studenti imsejsa fuq l- autobus.';

  @override
  String get drillChecklistNotOnBus => 'Mhux fuq l- BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'F\'BUS  M\' Ġiex Evacutat';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'F\'BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Il- Proċedura biex Tikkaptru l- Eċċezzjoni';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'It-triq (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista ta \' Kontroll tal-Evawjazzjoni';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Studenti mhux kkonta s) Qegħdin!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Int ċert li trid tissottometti dan il-ġurnal tal-forar?';

  @override
  String get drillEvidenceConfirmSubmission => 'Ikkonferma l- sottomissjoni tal- eżerċizzju';

  @override
  String get drillEvidenceDriverNotesHint => 'Iddeskrivi l-eżekuzzjoni tal-eżerċizzju, l-imġiba tal-istudenti, il-passi ta\' ħruġ użati, u kwalunkwe eċċezzjoni osservata...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nota tas-sewwieq (Minimum ta\' 10 karattri):';

  @override
  String get drillEvidenceFailed => 'Is- Sottomissjoni Nafaċjata';

  @override
  String get drillEvidenceMandatoryWarning => 'L-inqas evidenza ta\' ritratt jew vidjo hija obbligatorja biex tiġi ppreżentata l-ittestjar.';

  @override
  String get drillEvidenceRecordVideo => 'Irreġistra l- vidjo';

  @override
  String get drillEvidenceRetrySubmission => 'TIRRETTJONI';

  @override
  String get drillEvidenceReturnToDashboard => 'IRAKORNA L-ISPARSA';

  @override
  String get drillEvidenceSubmitButton => 'Sottomissjoni tal-Log tal-Begħda';

  @override
  String get drillEvidenceSubmitting => 'Tgħaddi log tal-Borjiet...';

  @override
  String get drillEvidenceSuccess => 'L- Isqfija Sfakkar!';

  @override
  String get drillEvidenceSuccessMessage => 'Il- log tal- eżerċizzju ta \' evażjoni ġie mgħobbi b\'suċċess u għadu qed jistenna approvazzjoni.';

  @override
  String get drillEvidenceTakePhoto => 'Iġib ritratt';

  @override
  String get drillEvidenceTitle => 'L-Ispirtu tal-Immaniġġjar';

  @override
  String get drillEvidenceUploading => 'L-għamla tal-evidenza u d-dejta tal-lista ta\' kontroll';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Buss:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'L-għawm:';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark Attendenza';

  @override
  String get drillRosterNoStudents => 'L- ebda studenti reġistrati fuq din ir- ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Preżent: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDU T\'TKJERRA L-Iskeda';

  @override
  String drillRosterRoute(Object routeName) {
    return 'It-triq: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedi: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Agħżel l- Kulħadd';

  @override
  String get drillSummaryAdminNotesTitle => 'Noti ta \' amministrazzjoni';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvat F\': $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approvat fil-';

  @override
  String get drillSummaryBackToDrills => 'Terġa\' lura għal Drills';

  @override
  String get drillSummaryBusNumber => 'Numru tal-linja';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Direttur: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalji tal-Borjar';

  @override
  String get drillSummaryDriverNotesTitle => 'Innota tas-sewwieq';

  @override
  String get drillSummaryDuration => 'Durata';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Iż- żmien tal- tmiem';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evawwat: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evawwat $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'L- Attakki tal- Media taʼ L- Ewwenza';

  @override
  String get drillSummaryGps => 'Koordinazzjonijiet tal-GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'L-Artiklu ta\' QabelTħalli l-Klassifika';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ma rnexxilx tagħżel is-sommarju tal-għawdex għall-ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'L- ebda dejta ta \' l- eżerċizzju ma nstabu.';

  @override
  String get drillSummaryNotOnBus => 'Mhux fuq l- Awtobus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'F\' BUS - M\' Ġiex Evawwat';

  @override
  String get drillSummaryPhotoEvidence => 'L- evidenza bil- ritratt';

  @override
  String get drillSummaryRouteId => 'ID tat-triq';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedi: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Ħin li tibda';

  @override
  String get drillSummaryStatus => 'Statut';

  @override
  String get drillSummaryStudentLogTitle => 'Log tal-Evawwazzjoni tal-Istudanti';

  @override
  String drillSummaryTitle(Object id) {
    return 'Sottomissjoni tal-Borjiet (#$id)';
  }

  @override
  String get drillSummaryType => 'Tip ta\' ħġieġ';

  @override
  String get drillSummaryVideoEvidence => 'Vidu tal- Video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Buss __ V0__';
  }

  @override
  String get drillTypeClassification => 'Agħżel klassifikazzjoni tal-forom:';

  @override
  String get drillTypeCustomHint => 'Iddeskrivi tip ta\' eżerċizzju ta\' evażjoni personalizzat...';

  @override
  String get drillTypeInvalidState => 'Stat tal-vettura jew tar-rotta mhux validu.';

  @override
  String get drillTypeNameBusFire => 'In-nar tal-linja';

  @override
  String get drillTypeNameDangerZone => 'Żona ta\' Periklu';

  @override
  String get drillTypeNameDriverIncapacitation => 'Inkapabbiltà tas-sewwieq';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientazzjoni tal- Equipment';

  @override
  String get drillTypeNameFrontDoor => 'Bieb ta \' quddiem';

  @override
  String get drillTypeNameOthers => 'Oħrajn';

  @override
  String get drillTypeNameRearDoor => 'Bieb ta \' wara';

  @override
  String get drillTypeNameSideOrRoof => 'Il-ġenb jew is-saqaf';

  @override
  String get drillTypeNameSplit => 'Ftit';

  @override
  String get drillTypeNoRouteSelected => 'L- ebda rotta magħżula';

  @override
  String get drillTypePreparation => 'PREPARATURJONI TAL- Tgħarraf';

  @override
  String get drillTypeProceed => 'PROCEDU TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'It-triq: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Agħżel It- Tmur:';

  @override
  String get drillTypeSpecifyCustom => 'Ispeċifika deskrizzjoni tat- tip ta \' perforazzjoni:';

  @override
  String get drillTypeTitle => 'Agħżel it- Tip ta \' Tgħarrab';

  @override
  String get drillTypeWarning => 'Asigura li l-vettura tkun ipparkarata b\'mod sikur qabel tibda l-eżekuzzjoni.';

  @override
  String get drillsAssignedVehicle => 'Vetturi assenjati';

  @override
  String get drillsChecking => 'Niċċekkja...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Il-ġarr tal-ġarr';
  }

  @override
  String get drillsNoBusAssigned => 'L- ebda Buss assenjat';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'L-ebda eżerċizzji rreġistrati għall-linja $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'M\'hemm l-ebda rotta disponibbli biex tibda t-tħaffir.';

  @override
  String get drillsShowSummary => 'Sottomissjoni tal-Mostra';

  @override
  String get drillsStartDrill => 'Ibda l- Għawdex';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Immexxi: __ V0__ Stat: __ V1__';
  }

  @override
  String get drillsTitle => 'Għodda ta\' Evagazzjoni';

  @override
  String get drillsVehicleOutOfService => 'Vetturi li ma jkunux qed jintużaw';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dan il-vettura bħalissa ma tkunx fis-servizz u ma tistax tintuża għal eżerċizzji.';

  @override
  String get driverDetailsCdlClassLabel => 'Klassi CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENZJU TXOXXX';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'L-isem:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passageri';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Buss tal-iskola';

  @override
  String get driverDetailsEndorsementsTitle => 'L-approvazzjonijiet miżmuma';

  @override
  String get driverDetailsExpiryDateLabel => 'Data ta\' skadenza';

  @override
  String get driverDetailsHolderSignature => 'FITNAR TA\' TIF';

  @override
  String driverDetailsId(Object driverId) {
    return 'Id: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data tal-ħruġ';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokumentazzjoni tal-liċenzja';

  @override
  String get driverDetailsLicenseNoLabel => 'Numru tal-liċenzja';

  @override
  String get driverDetailsLicenseTitle => 'Id-dettalji tal-liċenzja';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tip ta\' liċenzja';

  @override
  String get driverDetailsOfficialSeal => 'SEL OFFICIAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klassi: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'F\'dan il-każ, il-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-parti tal-';
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
  String get driverDetailsTapToView => 'Ikklikkja biex tara DL Document';

  @override
  String get driverDetailsTitle => 'Detalji tas-sewwieq';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemi ta\' Sigurtà Speċifiċi għall-Buss';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivi ta\' koperazzjoni';

  @override
  String get dvirCategoryEmergencyEquipment => 'Tagħmir ta\' emerġenza';

  @override
  String get dvirCategoryHorn => 'Għawdex';

  @override
  String get dvirCategoryLightingReflectors => 'Apparat ta\' dawl u rifletturi';

  @override
  String get dvirCategoryMirrors => 'L- Armi tal- Rear-Vision';

  @override
  String get dvirCategoryParkingBrake => 'Il-Frem tal-Parkjar';

  @override
  String get dvirCategoryPassengerSeating => 'Sedijiet u r-restrizzjonijiet tal-passiġġieri';

  @override
  String get dvirCategoryServiceBrakes => 'Il-Fremsi tas-Servizz';

  @override
  String get dvirCategorySteeringMechanism => 'Mekkaniżmu ta\' Direttiva';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Ir-Rieħ u r-Rims';

  @override
  String get dvirCategoryWipers => 'Il-Wipers tal-windshield';

  @override
  String get dvirPostTripCapturePhoto => 'L-Iskeda ta \' FOTOL';

  @override
  String get dvirPostTripComplianceTitle => 'ĊERTIFIKAT TAL-KOMPJENZA';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Irrappurtar taʼ difett mingħajr ritratt';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Għajnuna għall-iżvilupp ta\' sistemi ta\' kontroll tal-enerġija u l-użu ta\' sistemi ta\' kontroll tal-enerġija';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Spezzjoni: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Iddetta d-dettalji tas-sigurtà...';

  @override
  String get dvirPostTripNotesLabel => 'NOTI (MANDATURJJJ fuq id-DEFECT) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Agħżel DEFECT biex tiddaħħal id-dettalji dwar il-problemi tas-sigurtà...';

  @override
  String get dvirPostTripOdometerHeader => 'Qares tal- Odometer kurrenti';

  @override
  String get dvirPostTripOdometerInstructions => 'Iddiskutu l-kmiljaġġ kif jidher eżatt fuq il-pannell tal-istrument tal-linja:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Mili)';

  @override
  String get dvirPostTripOdometerTitle => 'VETURJAN RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Jekk jogħġbok daħħal il- reading tal- odometer qabel ma tibda.';

  @override
  String get dvirPostTripPassButton => 'Pass';

  @override
  String get dvirPostTripPhotoAttached => 'Ritratt mehmuż b\'suċċess.';

  @override
  String get dvirPostTripProgressLabel => 'Il-progress tal-ispezzjoni';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatura maqbuda.';

  @override
  String get dvirPostTripSignatureCert => 'Jien ċertifika li dan ir-rapport tal-lista ta\' kontroll tal-vettura li titlaq minnha ġie kompletu skont ir-regolamenti tal-FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifikazzjoni tas-sinjal tas-sewwieq';

  @override
  String get dvirPostTripSubmitButton => 'ISPECZIONE Sottomissjoni';

  @override
  String get dvirPostTripSubmitSuccess => 'Id-DVIR ntbagħtet b\'suċċess.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Żona $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Żoni ta\' V0__ / $total';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ninnnota li rrevedajt l-aħħar rapport tal-iżball sottomess u vverifikat it-tiswija (jekk hemm) u ngħid li l-linja hija sikura għall-operat.';

  @override
  String get dvirPreTripActiveMessage => 'Dan il-vettura huwa attiv u m\' għandu l- ebda difetti miftuħa. Huwa vverifikat u sikur għall- operazzjoni.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'It-triq attiva: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENTIONI RIKKJEDITA: Defetti tal-ġurnata ta\' qabel';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numru tal-linja: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Ċekk tad-DISPATCH tal-VETU';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ma rnexxilx jiffirmaw: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'L- ebda difetti minn qabel ma ġew irreġistrati';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dan il-vettura ġie rrappurtat nadif fl-ispezzjoni preċedenti ta\' wara t- titjira.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'L- ebda tiswija meħtieġa għall- operazzjoni sikura.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dan il-vettura huwa barra mill-użu għal tiswija/manutenzjoni.';

  @override
  String get dvirPreTripOutofServiceButton => 'VETURJOLI MISSAK mill-servizz';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Għaliex: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (Riparixxi)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPPORT DEFEKTI Ġodda';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Ir-rappurtar ta\' difetti ġodda huwa inattivat waqt it-tiswija.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Stat: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUZZJONI SUB-AMMINISTI tat-Trasport';

  @override
  String get dvirPreTripReturnToHomeButton => 'IRAKORNA lejn id- Djar';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF biex tibda l-MIAKROUND';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikazzjoni ffirmat b\'suċċess. Pre-Trip miftuħa.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERIFIKATUR Sottomett';

  @override
  String get dvirPreTripTitle => 'Verifikazzjoni ta\' qabel il-vjaġġ';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Stat tal-vettura: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Iġbed il- Sinatura';

  @override
  String get dvirSigPreviewLabel => 'Preview tal-firmatura miksuba:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Żomm is-sinatura';

  @override
  String get dvirSigTapToDraw => 'TAP biex TŻIELLA SIGNATURJA (JJIKJEDI)';

  @override
  String get dvirSigWatermark => 'Signi Vertikalment (minn isfel sa fuq)';

  @override
  String get forgotPasswordCancel => 'Ikkanċella';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Jekk jogħġbok daħħal email validu';

  @override
  String get forgotPasswordSend => 'Ibgħat';

  @override
  String get forgotPasswordSuccess => 'Jekk dak l- email jeżisti, link reset ġie mibgħut.';

  @override
  String get genericBack => 'Tmur lura';

  @override
  String get genericCancel => 'Ikkanċella';

  @override
  String get genericClear => 'KLEAR';

  @override
  String get genericClose => 'Qari';

  @override
  String get genericConfirm => 'Ikkonferma';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericError => 'Xi ħaġa marret ħażin';

  @override
  String get genericLoading => 'It-tagħbija...';

  @override
  String get genericNext => 'QEL QEL';

  @override
  String get genericOk => 'Ok.';

  @override
  String get genericRetry => 'Ipprova mill-ġdid';

  @override
  String get genericSuccess => 'Suċċess';

  @override
  String homeBusLabel(Object busId) {
    return 'Buss:';
  }

  @override
  String get homeDispatchBlocked => 'Il-Kontribuzzjoni Imblukkata';

  @override
  String get homeDispatchBlockedTitle => 'Il-Kontribuzzjoni Imblukkata';

  @override
  String get homeErrorNoRoutesPreTrip => 'L- ebda rotot disponibbli biex isiru Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ma kisbetx biex tibda t-triq fuq is-server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hi, V0__';
  }

  @override
  String get homeLogout => 'Log-out';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Tgħarraf';

  @override
  String get homeMenuDriverDetails => 'Detalji tas-sewwieq';

  @override
  String get homeMenuLanguage => 'Lingwa';

  @override
  String get homeMenuPreTrip => 'Spezzjoni qabel il- vjaġġ';

  @override
  String get homeNoRoutes => 'L-ebda rotta disponibbli';

  @override
  String get homeReviewVerifyPreTrip => 'Irrevedi & Verifika qabel it- Tira';

  @override
  String get homeSearchHint => 'It-traċċi tat-tfittxija';

  @override
  String get homeStart => 'Ibda';

  @override
  String get homeTitle => 'Id-dar';

  @override
  String get homeVehicleOutOfServiceDefault => 'Il-vettura bħalissa hija OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Il-vettura hija lesta u vverifikata għall-operazzjoni sikura.';

  @override
  String get languageTitle => 'Lingwa';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Numru tal-email jew tat-telefon';

  @override
  String get loginErrorEnterPassword => 'Jekk jogħġbok żżel password';

  @override
  String get loginErrorEnterUsername => 'Jekk jogħġbok żżel l-isem tal-utent';

  @override
  String get loginErrorFailed => 'Login fallit. Jekk jogħġbok ipprova mill-ġdid.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Jekk jogħġbok żżel email jew numru tat-telefon validu';

  @override
  String get loginForgotPassword => 'Tistenna l-password?';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get mapChildrenTooltip => 'Tfal u ġenituri';

  @override
  String get mapConfirmMessage => 'Verament trid tagħlaq l- vjaġġ?';

  @override
  String get mapConfirmTitle => 'Ikkonferma';

  @override
  String get mapCurrentPosition => 'Pożizzjoni attwali';

  @override
  String get mapNo => 'Le';

  @override
  String get mapReconnectMessage => 'L-aġġornament tal-post ma jiġux spiss, jekk jogħġbok iċċekkja l-internet tiegħek.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Niftakru';

  @override
  String get mapStopping => 'Niftakar...';

  @override
  String get mapStopsTooltip => 'Tista \'';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aġġornat __ V0__s ilu';
  }

  @override
  String get mapWaitingGps => 'Nistennew GPS...';

  @override
  String get mapYes => 'Iva,';

  @override
  String get splashDriverApp => 'App ta \' sewwieq';

  @override
  String get stopsActionUndo => 'L-ebda';

  @override
  String get stopsCancelledSuccess => 'Canċellati b\'suċċess';

  @override
  String get stopsDefaultLabel => 'Niftakru';

  @override
  String get stopsGenericError => 'Xi ħaġa marret ħażin. Jekk jogħġbok ipprova mill-ġdid.';

  @override
  String get stopsStatusComplete => 'kompluta';

  @override
  String get stopsStatusDone => 'qed';

  @override
  String stopsSubmitCount(Object count) {
    return 'Is-sottomissjoni ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sottomessa b\'suċċess';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected magħżula · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Tfaċċaj';

  @override
  String get stopsTypePick => 'Ħu għażla';

  @override
  String stopsUndoCount(Object count) {
    return 'L-ebda parti mill-produzzjoni tal-ħwejjeġ';
  }

  @override
  String get stopsUndoTooltip => 'Ħaġa ta\' ħruġ';

  @override
  String get tripConfirmCancel => 'Ikkanċella';

  @override
  String get tripConfirmOk => 'OK.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Permess tal-lokalizzazzjoni huwa meħtieġ biex tibda vjaġġ.';

  @override
  String get homeMenuPostCrashReporting => 'Rapport wara l-Kraż';

  @override
  String homeVehicleReason(Object reason) {
    return 'Għaliex: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Stat: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'L-Artiklu ta\' QabelTħalli l-Klassifika';
  }

  @override
  String get crashLocationPickerSearchHint => 'Il-post tat-tfittxija (eż. Market St)';

  @override
  String get crashLocationPickerTitle => 'Agħżel post fuq il- mappa';

  @override
  String get crashLocationPickerTooltip => 'Ikkonferma l- Pożizzjoni';

  @override
  String get incidentDashboardDescription => 'Agħżel azzjoni biex tkompli mal-ġestjoni tal-inċidenti jew tara rapporti preċedenti.';

  @override
  String get incidentDashboardHeadline => 'Rapportar ta\' inċidenti wara l-Kraż';

  @override
  String get incidentDashboardLogNew => 'Log New Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Ipproċessa rapport ġdid ta \' crash pass';

  @override
  String get incidentDashboardTitle => 'L- inċident wara l- inċident';

  @override
  String get incidentDashboardViewHistory => 'Ara l- Istorja';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Ara rapporti ta \' crash preċedenti u l- status';

  @override
  String get incidentDetailsAdminLetter => 'Ittra tal-amministratur';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Numru lura tat-test tal-alkoħol (2- siegħa limitu)';

  @override
  String get incidentDetailsBranchId => 'ID tal-fergħa';

  @override
  String get incidentDetailsBusPlate => 'Il-pjanċa tal-liċenzja tal-linja tal-linja';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'L-impatt tal-kwotazzjonijiet: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Ċitazzjoni maħruġa lis-sewwieq';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinazzjonijiet: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopjat fuq il-klippboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopja għal CLIPBOARD';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data u Ħin: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Rapport tad-DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Rapport tad-DOE tal-Istat (Optional)';

  @override
  String get incidentDetailsDriverNotes => 'Nota tas-sewwieq:';

  @override
  String get incidentDetailsDriverUserId => 'ID tal- Utenti tas-sewwieq';

  @override
  String get incidentDetailsDrugCountdown => 'It- Countdown tal- Test tad- Drog DOT (8- Hour Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Ġara fatalità';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injurji li Jeħtieġu Kura Medika';

  @override
  String get incidentDetailsLawEnforcement => 'Aġenzija tal-infurzar tal-liġi';

  @override
  String get incidentDetailsLoadFailed => 'Ma rnexxilx tagħżel id-dettalji.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Il-post: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'L- Annessi tal-Media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Stat: $status';
  }

  @override
  String get incidentDetailsNo => 'L-ebda';

  @override
  String get incidentDetailsNoMediaAttachments => 'L- ebda ritratti jew vidjows mehmuża.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'L- ebda studenti ma kienu mmarkati abbord matul l- inċident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Jenfasizza l-importanza tal-iżvilupp ta\' sistemi ta\' ġestjoni u ta\' ġestjoni tal-impjiegi.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notifikazzjonijiet ta\' trażmissjoni';

  @override
  String get incidentDetailsOfficer => 'Detalji dwar l-uffiċjal';

  @override
  String get incidentDetailsPoliceReport => 'Numru ta \' Rapport tal-Pulizija';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Ittra ta\' trasmissjoni mimlija minn qabel:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Bażi regolatorja:';

  @override
  String get incidentDetailsRouteId => 'ID tat-triq';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Avviż għall-amministratur tal-iskola';

  @override
  String get incidentDetailsStatusPending => 'Jistennew';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalji: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Inġarrba';

  @override
  String get incidentDetailsStudentNoInjury => 'L- ebda korriment';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Serjetà: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Trasportat lejn: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti Bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TESTING POST-CRASH Required';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Stat: $status';
  }

  @override
  String get incidentDetailsTitle => 'Detalji dwar l-Inċident';

  @override
  String get incidentDetailsVehicleTowed => 'Vetturi mġarrab';

  @override
  String get incidentDetailsYes => 'Iva';

  @override
  String get incidentHistoryEmpty => 'L- ebda log tal- inċidenti rreġistrati għal dan il- vettura.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ma rnexxilx issib logs: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ħin: $time Bus: $busNumber │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ │ ';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'M\'Hiex meħtieġ';

  @override
  String get incidentHistoryTestingRequired => 'RIKKURAT';

  @override
  String get incidentHistoryTitle => 'Reġistru ta\' inċidenti wara l-Kraż';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Żid Foto oħra';

  @override
  String get incidentIntakeBadgeNumberError => 'Reġistrat';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numru tal-Badge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numru tal-linja: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Iċ-ċena tal- inċident';

  @override
  String get incidentIntakeCitationSubtitle => 'Kienet ċittazzjoni li tpoġġi t-traffiku li tpoġġi t- titjib tal- traffiku maħruġa lis- sewwieq tal- autobus tal- skola?';

  @override
  String get incidentIntakeCitationTitle => 'Is- Sitwazzjoni Ġibda?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data u ħin tal-kraxx *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING M\' Hux Reġestat';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTING IĠIBB';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Is-sewwieq:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Żomm xi noti addizzjonali dwar il-kollassi...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Noti dwar l- inċident tas-sewwieq';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'F\'dan il-każ, il-passiġġieri li jmorru għall-vjaġġar għandhom jiġu mgħammra b\'mod ċar.';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Żid l- evidenza (Fotografiji) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Kien hemm xi fatalitajiet bħala riżultat ta\' dan l-inċident?';

  @override
  String get incidentIntakeFatalityTitle => 'Ġara Tbatija?';

  @override
  String get incidentIntakeGpsLabel => 'Koordinazzjonijiet GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Ara l- Istorja';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Xi ħadd ġarrbet ħsara fiżika li teħtieġ kura medika immedjatament barra s- sitwazzjoni?';

  @override
  String get incidentIntakeInjuriesTitle => 'L- Injurji li Jeħtieġu Kura Medika?';

  @override
  String get incidentIntakeInjuryNotesError => 'L-istudenti li jkunu lġarrbu huma obbligatorji';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Nota dwar il-korruzzjoni / Detalji (Mandattiv) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Grazzja tal- korriment *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Jekk jogħġbok daħħal l-aġenzija tal-infurzar tal-liġi';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Aġenzija tal-infurzar tal-liġi (eż. Patrulja tal-Istrada tal-Istat) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rapport tal-infurzar tal-liġi u tal-pulizija';

  @override
  String get incidentIntakeLocationDescError => 'Jekk jogħġbok żżel deskrizzjoni tal-post';

  @override
  String get incidentIntakeLocationDescLabel => 'Deskrizzjoni tal-post (eż. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Faċilità Mediċi mtrasportata lejn';

  @override
  String get incidentIntakeNoMatchingStudents => 'L- ebda studenti li jmur.';

  @override
  String get incidentIntakeNoStudentsFound => 'L- ebda studenti ma nstabu.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'L-ebda studenti abbord. Jekk jogħġbok ippress Next biex tkompli.';

  @override
  String get incidentIntakeNoStudentsRoute => 'L- ebda studenti reġistrati għal din ir- ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Jekk jogħġbok żżel l-isem tal-uffiċjal';

  @override
  String get incidentIntakeOfficerNameLabel => 'Isem l-Uffiċjal *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Jekk jogħġbok żżel in-numru tar-rapport tal-pulizija';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numru ta \' Rapport tal-Pulizija *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'It-triq: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informazzjoni dwar ir-Rotta u s-Sufriers';

  @override
  String get incidentIntakeSearchInjuredHint => 'Iddiskuti tfal feriti...';

  @override
  String get incidentIntakeSearchStudentHint => 'Studenti tfittxija...';

  @override
  String get incidentIntakeSelectAll => 'Agħżel l- istudenti kollha';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT fuq il-PAPPA';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minuri';

  @override
  String get incidentIntakeSeverityModerate => 'Moderat';

  @override
  String get incidentIntakeSeveritySevere => 'Servità';

  @override
  String get incidentIntakeSeverityTitle => 'Variabbli ta \' Sovjetà tal-Krazz';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Id: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'TESSAR';

  @override
  String get incidentIntakeTitle => 'L- Ingreduta taʼ Konsegwenzi Wara l- Inċident tal- Kras';

  @override
  String get incidentIntakeTowedSubtitle => 'Xi vettura rċieva ħsara li kienet tirrikjedi li tiġi rrabjata mill- post?';

  @override
  String get incidentIntakeTowedTitle => 'Il-vettura mġarrba?';

  @override
  String get incidentIntakeWasInjured => 'Kien ġarrbet?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Buss:';
  }

  @override
  String get dvirPreTripClose => 'QARR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Kummenti tas-sewwieq / Noti (Optionali)';

  @override
  String get dvirPreTripNoComments => 'L-ebda kummenti miżjuda.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Għaliex: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'It-triq: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Firmatura kkapturata b\'suċċess.';

  @override
  String get dvirPreTripSigMissing => 'Il-firma nieqsa.';

  @override
  String get dvirPreTripSignDefectWarning => 'Jekk jogħġbok iffirmar biex tivverifika t- tiswija ta\' difetti preċedenti.';

  @override
  String get dvirPreTripStepSignOff => 'Signifikat';

  @override
  String get dvirPreTripStepSubmit => 'Isottometti';

  @override
  String get dvirPreTripStepVerify => 'Verifika';

  @override
  String get dvirPreTripTapNext => 'Jekk jogħġbok ikklikkja fuq NEXT biex tkompli.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Il-vettura ma tkunx fis-servizz';

  @override
  String get dvirPreTripVehicleReady => 'Il- Vetturi Huma Lesti għas- Servizz';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Stat ta \' tiswija vverifikat:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Jekk jogħġbok ivverifika li d- difetti kollha rrappurtati ġew irrispettati billi tagħżel il- kaxxa viċin għal kull difett.';

  @override
  String get dvirPreTripYourComments => 'Il-Kummenti tiegħek:';

  @override
  String get countryPickerNoCountries => 'L-ebda pajjiż ma nstab';

  @override
  String get countryPickerSearchHint => 'Iddiskuti bl-isem tal-pajjiż, il-kodiċi, jew il-kodiċi dial...';

  @override
  String get countryPickerTitle => 'Agħżel pajjiż';

  @override
  String get mapDefaultStop => 'Niftakru';

  @override
  String get mapEndLocation => 'Il-Punt tal-Logħob';

  @override
  String get mapStartLocation => 'Pożizzjoni tal- bidu';

  @override
  String get stopsNoChangesToUndo => 'L- ebda tibdil disponibbli biex jirrevoka.';

  @override
  String get stopsNoStopsAvailable => 'L- ebda waqfien disponibbli.';

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
