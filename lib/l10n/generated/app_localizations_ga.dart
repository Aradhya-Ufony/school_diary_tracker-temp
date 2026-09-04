import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class AppLocalizationsGa extends AppLocalizations {
  AppLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appInfoBuild => 'Aighneacht a dhéanamh';

  @override
  String get appInfoDevice => 'Samhail trealamh';

  @override
  String get appInfoOS => 'OS Version';

  @override
  String get appInfoPackage => 'Pacaíocht';

  @override
  String get appInfoTitle => 'Info App';

  @override
  String get appInfoVersion => 'Athbhreithniú ar an App';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Gcothaitheoirí';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Gnéithe údaraithe do $name';
  }

  @override
  String get childrenNoGuardians => 'Níl aon chaomhnóirí údaraithe ar an gcustaiméir ar an leanbh seo.';

  @override
  String get childrenStatusDropped => 'Thit';

  @override
  String get childrenStatusPending => 'Ag fanacht';

  @override
  String get childrenStatusPicked => 'Roghnaithe';

  @override
  String childrenTitle(Object routeName) {
    return 'Leanaí  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'FHAFAIR / NÍ FHAFAIR ar BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Éiscithe';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Éiscithe: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ní bheidh aon mhic léinn absent.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ní raibh aon mhic léinn marcáilte ar an bus.';

  @override
  String get drillChecklistNotOnBus => 'Ní ar an bPáirc';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Ar BUS  Ní Éiscithe';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Ar BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'CÉACH FHAOINCE';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rút (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Liosta Ceardaigh D\'Eagóide';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Oileanach neamh-aithne (s) Fhan!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'An bhfuil tú cinnte gur mhaith leat an log drill a chur isteach?';

  @override
  String get drillEvidenceConfirmSubmission => 'Deimhnigh an t-oibleagáid';

  @override
  String get drillEvidenceDriverNotesHint => 'Déan cur síos ar an bhfeidhmiú drill, iompar an mac léinn, bealaí a úsáidtear chun teacht amach, agus aon eisceacht a fhaightear...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Nótaí tiománaí (Féaclóir 10 ar a laghad):';

  @override
  String get drillEvidenceFailed => 'Fágadh an t-iarratas';

  @override
  String get drillEvidenceMandatoryWarning => 'Tá sé de dhualgas ar a laghad 1 fianaise grianghraf nó físe a chur isteach le haghaidh drill.';

  @override
  String get drillEvidenceRecordVideo => 'Video a thaifeadadh';

  @override
  String get drillEvidenceRetrySubmission => 'TÚLÁIN TÚLÁIN';

  @override
  String get drillEvidenceReturnToDashboard => 'Ar ais go DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'Ag cur isteach ar an Clár Dhomhnaill...';

  @override
  String get drillEvidenceSuccess => 'Is rathúil é an t-Uisce!';

  @override
  String get drillEvidenceSuccessMessage => 'Tá an log drill evasion curtha suas go rathúil agus tá sé ag fanacht le cead.';

  @override
  String get drillEvidenceTakePhoto => 'Déan grianghraf';

  @override
  String get drillEvidenceTitle => 'Fianais Éileamh Éileamh Éileamh';

  @override
  String get drillEvidenceUploading => 'Tairgeadh sonraí agus sonraí liosta seiceála';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Fág freagra ar \'An Fhéile\'';

  @override
  String get drillRosterNoStudents => 'Níl aon mhic léinn cláraithe ar an mbealach seo.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Tá sé: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'CÉIRÍ D\'Iarraidh CÉIRÍ';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rút: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Suíochán: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Roghnaigh Gach';

  @override
  String get drillSummaryAdminNotesTitle => 'Nótaí Riarghníomhaithe';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Ceadaithe ag: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Ceadaithe ag';

  @override
  String get drillSummaryBackToDrills => 'Ar ais go Drills';

  @override
  String get drillSummaryBusNumber => 'Líon Bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Arna hOrdú ag: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Leitheanta drill';

  @override
  String get drillSummaryDriverNotesTitle => 'Nótaí tiománaí';

  @override
  String get drillSummaryDuration => 'Cinntí';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Am deireadh';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Éiscithe: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Éiscithe $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Fógraí a bhaineann le Meáin';

  @override
  String get drillSummaryGps => 'Coirdiníochtaí GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Níor chuir sé le chéile an trealamh a uaslódáil le haghaidh ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ní fhaightear aon sonraí drill.';

  @override
  String get drillSummaryNotOnBus => 'Ní ar an bpríomh-Aire';

  @override
  String get drillSummaryOnBusNotEvacuated => 'I bhUS - Ní Fágtar';

  @override
  String get drillSummaryPhotoEvidence => 'Fioscaireacht Fhéideartha';

  @override
  String get drillSummaryRouteId => 'Tuairisc ar an mbealach';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Suíochán: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Am Tosaíochta';

  @override
  String get drillSummaryStatus => 'Stádas';

  @override
  String get drillSummaryStudentLogTitle => 'Clár Éiscithe Ollscoile';

  @override
  String drillSummaryTitle(Object id) {
    return 'Réimeacht na hOileáin (#$id)';
  }

  @override
  String get drillSummaryType => 'Tír drill';

  @override
  String get drillSummaryVideoEvidence => 'Fioscaireacht Físeán';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Roghnaigh aicme drill:';

  @override
  String get drillTypeCustomHint => 'Cuir isteach cineál drill éicuachtála saincheaptha...';

  @override
  String get drillTypeInvalidState => 'Staidéar neamhbhailí feithicle nó bealach.';

  @override
  String get drillTypeNameBusFire => 'Tóg Bus';

  @override
  String get drillTypeNameDangerZone => 'Ceantar Dlí Dlí';

  @override
  String get drillTypeNameDriverIncapacitation => 'In-ghníomhaíocht an tiománaí';

  @override
  String get drillTypeNameEquipmentOrientation => 'Treoir ar Earraí';

  @override
  String get drillTypeNameFrontDoor => 'D\'fhoirste tosaigh';

  @override
  String get drillTypeNameOthers => 'Cinntí';

  @override
  String get drillTypeNameRearDoor => 'D\'fhág an doras taobh thiar';

  @override
  String get drillTypeNameSideOrRoof => 'Seachad nó Roof';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Ní Roghnaítear Rath';

  @override
  String get drillTypePreparation => 'RÍOCHÁIN DIRI';

  @override
  String get drillTypeProceed => 'TÚLÁIN D\'Iarrthóir Oideachais';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rút: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Roghnaigh Rút:';

  @override
  String get drillTypeSpecifyCustom => 'Déan cur síos ar chineál drill:';

  @override
  String get drillTypeTitle => 'Roghnaigh cineál drill';

  @override
  String get drillTypeWarning => 'Déan cinnte go bhfuil an fheithicil páirceáilte go sábháilte sula dtosaíonn an fhorghníomhú.';

  @override
  String get drillsAssignedVehicle => 'Feithicil a Ainmnítear';

  @override
  String get drillsChecking => 'Ag seiceáil...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ní bheidh aon bhás á leithdháileadh';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ní raibh aon drills clúdaithe do bhus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Níl aon rótha ar fáil chun tús a chur le drill.';

  @override
  String get drillsShowSummary => 'Taispeántas Tuarascáil';

  @override
  String get drillsStartDrill => 'Tosaigh Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Arna óstáil: $date Stádas: $status';
  }

  @override
  String get drillsTitle => 'Ealaíneacha Éascaigh';

  @override
  String get drillsVehicleOutOfService => 'Iarrta Ó Seirbhís';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Tá an fheithicil seo faoi láthair gan úsáid agus ní féidir é a úsáid le haghaidh drills.';

  @override
  String get driverDetailsCdlClassLabel => 'Cláas CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'CÉINSÉIN DÓIRÉAL';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Ainm: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Rannóg';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Bus scoile';

  @override
  String get driverDetailsEndorsementsTitle => 'Cinntíonna a Chuaigh';

  @override
  String get driverDetailsExpiryDateLabel => 'Údarás na hIarsmaí';

  @override
  String get driverDetailsHolderSignature => 'TIRIÓCHTA';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Dáta Eisiúna';

  @override
  String get driverDetailsLicenseDocTitle => 'Dhomhír ceadúnais';

  @override
  String get driverDetailsLicenseNoLabel => 'Ceadúnas Ní';

  @override
  String get driverDetailsLicenseTitle => 'sonraí ceadúnais';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tír cheadúnais';

  @override
  String get driverDetailsOfficialSeal => 'SEAL Oifigiúil';

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
    return 'CIRIÓIN: $endorsements';
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
  String get driverDetailsTapToView => 'Tabhair do DL Documents a fheiceáil';

  @override
  String get driverDetailsTitle => 'sonraí tiománaí';

  @override
  String get dvirCategoryBusSafetySystems => 'Córais sábháilteachta ar leith do bhusanna';

  @override
  String get dvirCategoryCouplingDevices => 'Feistí clutching';

  @override
  String get dvirCategoryEmergencyEquipment => 'Earraí éigeandála';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Feistí Solas & Reflectors';

  @override
  String get dvirCategoryMirrors => 'Rear-Vision Mirrors';

  @override
  String get dvirCategoryParkingBrake => 'Brake páirceála';

  @override
  String get dvirCategoryPassengerSeating => 'Suíocháin agus sriantaí paisinéirí';

  @override
  String get dvirCategoryServiceBrakes => 'Briseadh Seirbhíse';

  @override
  String get dvirCategorySteeringMechanism => 'Meicníocht Stiúrthú';

  @override
  String get dvirCategoryTires => 'Tireanna';

  @override
  String get dvirCategoryWheelsRims => 'Rith agus Rims';

  @override
  String get dvirCategoryWipers => 'Seoltóirí ealaíne';

  @override
  String get dvirPostTripCapturePhoto => 'FOTÓ FHAGHAIR CÁTA';

  @override
  String get dvirPostTripComplianceTitle => 'CIRTIFICÁID CULTÁRTIÓRA';

  @override
  String get dvirPostTripDefectButton => 'Deifig';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Deifte a thuairisciú gan grianghraf';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Rabhaidh: Tá tú ag tuairisciú easpa ar na ceantair slándála ($zones) gan grianghraf a cheangal leis. An bhfuil tú cinnte go bhfuil tú ag iarraidh a chur isteach mar sin féin?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Seiceáil: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Cuir isteach sonraí an imní sábháilteachta...';

  @override
  String get dvirPostTripNotesLabel => 'Nótaí (MANDATORY ON DEFECT) & FOTÓ';

  @override
  String get dvirPostTripNotesPassedHint => 'Roghnaigh DEFECT chun sonraí imní sábháilteachta a chur isteach...';

  @override
  String get dvirPostTripOdometerHeader => 'Léigh Odometer Gníomhach';

  @override
  String get dvirPostTripOdometerInstructions => 'Cuir isteach an léargas míleata díreach mar a thaispeántar ar phleanáil uirlisí bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Mile)';

  @override
  String get dvirPostTripOdometerTitle => 'RUN TIME METRIC VEHICLE';

  @override
  String get dvirPostTripOdometerWarning => 'Cuir isteach an léargas ar an odometer sula leanfaidh tú.';

  @override
  String get dvirPostTripPassButton => 'Pas';

  @override
  String get dvirPostTripPhotoAttached => 'Fógra ceangailte go rathúil.';

  @override
  String get dvirPostTripProgressLabel => 'Tús na Huairiscithe';

  @override
  String get dvirPostTripSignatureCaptured => 'Síniú glacadh.';

  @override
  String get dvirPostTripSignatureCert => 'Deirim go bhfuil an tuarascáil seo ar an liosta seiceála dul timpeall an fheithicil curtha i gcrích i gcomhréir le rialacháin FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Déan cinnte go bhfuil sínithe tiománaí';

  @override
  String get dvirPostTripSubmitButton => 'TÚLÁIN TÚLÁIN';

  @override
  String get dvirPostTripSubmitSuccess => 'Chuir eDVIR isteach go rathúil.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'CHAIRLÉIN $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Áiteanna';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Aithníonn mé go ndearna mé athbhreithniú ar an tuarascáil mícheart a cuireadh isteach go deireanach agus gur fhíor-chinnigh mé na ceartaithe (más ann) agus go bhfuil an bus sábháilte le húsáid.';

  @override
  String get dvirPreTripActiveMessage => 'Tá an fheithicil seo Active agus níl aon fhalais oscailte aige.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Rás gníomhach: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'FHAFHAINTION: Deifigí D\'Eaghaidh';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Líon Bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHEACH CÉACH CÉACH CÉACH CÉACH';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ní fhéadfar síntiús a dhéanamh: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Ní Taispeántar Deifteanna roimhe seo';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Tugadh an fheithicil seo ar an eolas go raibh sé glan sa scrúdú shiorclaíochta tar éis an turas roimhe seo.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ní gá aon athchóiriú a dhéanamh ar mhaithe le oibriú sábháilte.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Tá an fheithicil seo as seirbhís le haghaidh athléiriú/fhuilint. Ní mór do shaothair an bhfiontraíochta fadhbanna sábháilteachta a réiteach sula n-áireofar.';

  @override
  String get dvirPreTripOutofServiceButton => 'VEHICLE OFF SERVICE';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Cúis: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPAIRED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Tuairisceáil MÁGHAINS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Ní bheidh aon mhíchumas nua a thuairisciú le linn na hathchóiriúcháin.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Stádas: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RISOLUISION SUB-ADMIN TIRIAN';

  @override
  String get dvirPreTripReturnToHomeButton => 'TÓGÁIR TO THE HOME';

  @override
  String get dvirPreTripSignOffTitle => 'TIGNEAIN OFF chun dul ar siúl';

  @override
  String get dvirPreTripSignedSuccess => 'Tá seiceáil dílis sighed.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'TÚLÁIN TÚLÁIN';

  @override
  String get dvirPreTripTitle => 'Feictheáil roimh an turas';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Stádas na Feithicle: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Déan síntiúr a tharraingt';

  @override
  String get dvirSigPreviewLabel => 'Taispeántas réamhshocraithe síntiúir:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Scaoil an síntiúr';

  @override
  String get dvirSigTapToDraw => 'TAP chun síntiúr a tharraingt (REQUIRED)';

  @override
  String get dvirSigWatermark => 'Seinnéal Vertically (Fíos go Uachtarach)';

  @override
  String get forgotPasswordCancel => 'Cinntí';

  @override
  String get forgotPasswordEmailLabel => 'Email';

  @override
  String get forgotPasswordInvalidEmail => 'Cuir isteach ríomhphost bailí';

  @override
  String get forgotPasswordSend => 'Cuir isteach';

  @override
  String get forgotPasswordSuccess => 'Má tá an ríomhphost sin ann, tá nasc athshuite curtha ar aghaidh.';

  @override
  String get genericBack => 'Cúlghairm';

  @override
  String get genericCancel => 'Cinntí';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Dlúth';

  @override
  String get genericConfirm => 'Cinntíonn';

  @override
  String get genericEdit => 'Edit';

  @override
  String get genericError => 'D\'éirigh rud éigin mícheart';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericNext => 'Next';

  @override
  String get genericOk => 'Tá sé ceart go leor.';

  @override
  String get genericRetry => 'Déan iarracht arís';

  @override
  String get genericSuccess => 'Is rath é';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Tá an t-Iarracht faoi Chosc';

  @override
  String get homeDispatchBlockedTitle => 'Tá an t-Iarracht faoi Chosc';

  @override
  String get homeErrorNoRoutesPreTrip => 'Níl aon thuras ar fáil chun Pre-Trip a dhéanamh.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Níor fhéadfaí turas a thosú ar an bhfostóir: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Síochán, V0__';
  }

  @override
  String get homeLogout => 'Logút';

  @override
  String get homeMenuAppInfo => 'Info App';

  @override
  String get homeMenuDrill => 'D\'íoc';

  @override
  String get homeMenuDriverDetails => 'sonraí tiománaí';

  @override
  String get homeMenuLanguage => 'Teanga';

  @override
  String get homeMenuPreTrip => 'Seiceáil roimh an turas';

  @override
  String get homeNoRoutes => 'Níl aon thuras ar fáil';

  @override
  String get homeReviewVerifyPreTrip => 'Athbhreithniú & Déanacht a dhéanamh roimh an turas';

  @override
  String get homeSearchHint => 'Rátaí cuardaigh';

  @override
  String get homeStart => 'Tosaíonn sé';

  @override
  String get homeTitle => 'Teaghlach';

  @override
  String get homeVehicleOutOfServiceDefault => 'Tá an fheithicil faoi láthair OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Tá an fheithicil réidh agus déantar é a fhíorú chun oibriú sábháilte.';

  @override
  String get languageTitle => 'Teanga';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Seoladh ríomhphoist nó uimhir theileafóin';

  @override
  String get loginErrorEnterPassword => 'Cuir isteach an pasfhocal';

  @override
  String get loginErrorEnterUsername => 'Cuir isteach ainm úsáideora';

  @override
  String get loginErrorFailed => 'Fágadh logáil isteach. Déan iarracht arís.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Cuir isteach ríomhphost nó uimhir theileafóin bailí';

  @override
  String get loginForgotPassword => 'Ar dearmad an pasfhocal?';

  @override
  String get loginPasswordLabel => 'Pasfhocal';

  @override
  String get mapChildrenTooltip => 'Leanaí & cóireálaithe';

  @override
  String get mapConfirmMessage => 'An bhfuil tú i ndáiríre ag iarraidh an turas a chríochnú?';

  @override
  String get mapConfirmTitle => 'Cinntíonn';

  @override
  String get mapCurrentPosition => 'An suíomh reatha';

  @override
  String get mapNo => 'Ní raibh.';

  @override
  String get mapReconnectMessage => 'Freastal suíomh a chur ar aghaidh go minic, déan seiceáil ar do chuid idirlín.';

  @override
  String get mapReconnectTitle => 'Rannpháirtí';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapStopping => 'Stopadh ...';

  @override
  String get mapStopsTooltip => 'Stopanna';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated ${seconds}s ó shin';
  }

  @override
  String get mapWaitingGps => 'Ag fanacht le haghaidh GPS...';

  @override
  String get mapYes => 'Tá sé.';

  @override
  String get splashDriverApp => 'App tiománaí';

  @override
  String get stopsActionUndo => 'An t-airgead';

  @override
  String get stopsCancelledSuccess => 'Aistarraingthe go rathúil';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String get stopsGenericError => 'D\'éirigh rud éigin mícheart.';

  @override
  String get stopsStatusComplete => 'iomlán';

  @override
  String get stopsStatusDone => 'déanta';

  @override
  String stopsSubmitCount(Object count) {
    return 'Cuir isteach ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Cuir isteach go rathúil';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected roghnaithe ___ $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Cúlghairm';

  @override
  String get stopsTypePick => 'Roghnaigh';

  @override
  String stopsUndoCount(Object count) {
    return 'Cúlra ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Cluiche Cluiche';

  @override
  String get tripConfirmCancel => 'Cinntí';

  @override
  String get tripConfirmOk => 'Tá sé ceart go leor.';

  @override
  String get tripConfirmTitle => 'Rannpháirtí';

  @override
  String get tripErrorLocationRequired => 'Tá cead áitreabh riachtanach chun turas a thosú.';

  @override
  String get homeMenuPostCrashReporting => 'Tuairiscí tar éis an bhrú';

  @override
  String homeVehicleReason(Object reason) {
    return 'Cúis: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Stádas: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Áit cuardaigh (m.sh. Sráid an mhargaidh)';

  @override
  String get crashLocationPickerTitle => 'Roghnaigh suíomh ar Chart';

  @override
  String get crashLocationPickerTooltip => 'Comhlíonadh an áit';

  @override
  String get incidentDashboardDescription => 'Roghnaigh gníomh chun dul ar aghaidh le bainistiú ionsaí nó féachaint ar thuairiscigh roimhe seo.';

  @override
  String get incidentDashboardHeadline => 'Tuairiscáil ar Ionsaithe tar éis an Crash';

  @override
  String get incidentDashboardLogNew => 'Log Crash Nua';

  @override
  String get incidentDashboardLogNewSubtitle => 'Tosaíocht nua a thionscnamh céim ar chéim tuarascáil cogadh';

  @override
  String get incidentDashboardTitle => 'Tuairisc tar éis an Crash';

  @override
  String get incidentDashboardViewHistory => 'Féach ar stair';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Féach ar thuairiscigh agus stádas an bhrú roimhe seo';

  @override
  String get incidentDetailsAdminLetter => 'Litir an Rialtais';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Tástáil alcóil Countdown (2-Hour Limit)';

  @override
  String get incidentDetailsBranchId => 'Údaraithe na Roinne';

  @override
  String get incidentDetailsBusPlate => 'Seán ceadúnas bus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Údarás na hIarscríbhinní';
  }

  @override
  String get incidentDetailsCitationIssued => 'Cithíocht a Eisiúint don Cheoltóir';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coirgnithe: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title cóipeáil ar an clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'CÓPÍAIN D\'AINS CLIPPBOARD';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Tuairiscí agus am: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Tuarascáil DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Tuairiscíocht DOE Stáit (Fhaontach)';

  @override
  String get incidentDetailsDriverNotes => 'Nótaí tiománaí:';

  @override
  String get incidentDetailsDriverUserId => 'Seoladh úsáideora tiománaí';

  @override
  String get incidentDetailsDrugCountdown => 'Tuairiscí ar Thástáil Drugaigh DOT (8-Hr Limite)';

  @override
  String get incidentDetailsFatalityOccurred => 'Tuairiscí Fatality';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Leáchainí a Éilíonn cóireáil leighis';

  @override
  String get incidentDetailsLawEnforcement => 'Gníomhaireacht um Chosaint Dlí';

  @override
  String get incidentDetailsLoadFailed => 'Ní raibh an t-eolas a chur i bhfeidhm.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Áit: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Fógraí a ghabhann leis an Meán';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Stádas: $status';
  }

  @override
  String get incidentDetailsNo => 'Ní bheidh aon';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ní raibh grianghraif nó físeáin ceangailte.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ní raibh aon mhic léinn marcáilte ar bord le linn an teagmhála.';

  @override
  String get incidentDetailsNotificationsDesc => 'Túscríobh tuarascálacha fógraíochta agus seol ríomhphoist le haghaidh na n-earraí a sheoladh chuig maoirseach nó riarachán na ceantair.';

  @override
  String get incidentDetailsNotificationsTitle => 'Fógraí tarchur';

  @override
  String get incidentDetailsOfficer => 'Níos mó sonraí oifigeach';

  @override
  String get incidentDetailsPoliceReport => 'Número de Innéacs na Póilíní';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Cláir tarchuir réamh-dhlúite:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Bunais rialála:';

  @override
  String get incidentDetailsRouteId => 'Tuairisc ar an mbealach';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Teachtaireacht do Riarthóirí Scoile';

  @override
  String get incidentDetailsStatusPending => 'Ag fanacht';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Níos mó: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'D\'éirigh le duine a bheith díobhálach';

  @override
  String get incidentDetailsStudentNoInjury => 'Ní raibh aon díobháil';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Tosaíocht: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Áireofar chuig: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Oileanaich ar bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TÁRTAIN TESTING POST-CASH';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Stádas: $status';
  }

  @override
  String get incidentDetailsTitle => 'Níos mó ar an Incident';

  @override
  String get incidentDetailsVehicleTowed => 'Feithicil a tharraing';

  @override
  String get incidentDetailsYes => 'Sea';

  @override
  String get incidentHistoryEmpty => 'Níl aon taifid chláraithe ar an bhfeithicil seo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ní raibh logs á fháil: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Am: V0__ Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ní Éilíonn';

  @override
  String get incidentHistoryTestingRequired => 'RÁGHAIR';

  @override
  String get incidentHistoryTitle => 'Clár Taispeáin Tar éis Crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Cuir grianghraf eile leis';

  @override
  String get incidentIntakeBadgeNumberError => 'Éilítear';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Líon na bPríomh-Bheilge *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Líon Bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Scáthán an Ionsaithe a Chaitníomh';

  @override
  String get incidentIntakeCitationSubtitle => 'An ndearnadh luaiteáil trasteorann iompair a thabhairt don tiománaí bus scoile?';

  @override
  String get incidentIntakeCitationTitle => 'An bhfuil an t-aistriúchán a eisiúint?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Ní gá tástáil a dhéanamh';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTING RECHOIRED';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Seoltóir: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Cuir aon nótaí breise i dtaca leis an gcruinniú...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Nótaí ar Ionsaí tiománaí';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Ní raibh pasagóirí ar an mbealach a lasta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Cuir Fianais leis (Fothair) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'An tharla aon bás mar thoradh ar an tubaiste seo?';

  @override
  String get incidentIntakeFatalityTitle => 'An tharla an Torthaí?';

  @override
  String get incidentIntakeGpsLabel => 'Coirdiníochtaí GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Féach ar stair';

  @override
  String get incidentIntakeInjuriesSubtitle => 'An raibh aon duine a fuair díobháil corporal a bhí ag teastáil cóireáil láithreach ó shin an áit?';

  @override
  String get incidentIntakeInjuriesTitle => 'An bhfuil gá le cóireáil leighis le meáin?';

  @override
  String get incidentIntakeInjuryNotesError => 'Tá nótaí díobhála éigeantach do mhic léinn díobhálaithe';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Nótaí / sonraí le haghaidh díobhála (Díreach) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Tarraingthe an Leá *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Cuir isteach ar ghníomhaireacht fhorfheidhmiúcháin an dlí';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Gníomhaireacht um Chosaint Dlí (m.sh. Patróil Stáit um Thráchtála) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Tuarascáil an Chúirt Bhreithiúnais & Poilíní';

  @override
  String get incidentIntakeLocationDescError => 'Cuir síos áit ar fad isteach';

  @override
  String get incidentIntakeLocationDescLabel => 'Tuairisc suíomh (m.sh. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Seoltar go dtí an t-údarás leighis';

  @override
  String get incidentIntakeNoMatchingStudents => 'Ní bheidh aon mhic léinn comhoiriúnach.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ní raibh aon mhic léinn le fáil.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ní raibh aon mhic léinn ar bord.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ní raibh aon mhic léinn cláraithe ar an mbealach seo.';

  @override
  String get incidentIntakeOfficerNameError => 'Cuir isteach ainm an oifigeach';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ainm an Oifigeach *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Cuir isteach uimhir tuairisceán póilíní';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Líon tuairisceán póilíní *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rút: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Tuairiscí ar Threoir & Ráta';

  @override
  String get incidentIntakeSearchInjuredHint => 'Cuardaigh leanbh meáchain...';

  @override
  String get incidentIntakeSearchStudentHint => 'Ollscoil a lorg...';

  @override
  String get incidentIntakeSelectAll => 'Roghnaigh na hOile Oileáin';

  @override
  String get incidentIntakeSelectOnMap => 'Roghnaigh ar an MAP';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Níos lú';

  @override
  String get incidentIntakeSeverityModerate => 'Meas-mheas';

  @override
  String get incidentIntakeSeveritySevere => 'Dhéanamh tromchúiseach';

  @override
  String get incidentIntakeSeverityTitle => 'Athruithe tromchúiseach na n-aistrigh';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Tuairisceáil a chur faoi bhráid';

  @override
  String get incidentIntakeTitle => 'Inntithe tar éis an t-oideas';

  @override
  String get incidentIntakeTowedSubtitle => 'An bhfaigh aon fheithicil damáiste atá ag éirí in ann é a tharraingt ón áit na n-áiteanna?';

  @override
  String get incidentIntakeTowedTitle => 'An bhfuil an feithicil tarraingthe?';

  @override
  String get incidentIntakeWasInjured => 'An raibh sé díobhálach?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'DÓCHÓIR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Nótaí / tuairimí tiománaí (Foin rogha)';

  @override
  String get dvirPreTripNoComments => 'Ní cuireadh aon tuairimí leis.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Cúis: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rút: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Tá síntiúr i gceannas go rathúil.';

  @override
  String get dvirPreTripSigMissing => 'Tá síntiúr ar fáil.';

  @override
  String get dvirPreTripSignDefectWarning => 'Déan seiceáil le do thoil chun dearadh a dhéanamh ar athchóiriú na n-éigeachtaí roimhe seo.';

  @override
  String get dvirPreTripStepSignOff => 'Cinntíocht';

  @override
  String get dvirPreTripStepSubmit => 'Cuir isteach';

  @override
  String get dvirPreTripStepVerify => 'Déan cinnte';

  @override
  String get dvirPreTripTapNext => 'Tabhair faoi deara go bhfuil an t-ábhar seo ar fáil.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Tá an fheithicil as seirbhís';

  @override
  String get dvirPreTripVehicleReady => 'Tá an Véile réidh le haghaidh Seirbhíse';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Staidéal um Cheartaíocht Cheannaithe:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Déan cinnte go bhfuil gach fhalairt a thuairiscigh leagtha síos leagtha síos trí an chraobh taobh thiar de gach fhalairt a sheiceáil.';

  @override
  String get dvirPreTripYourComments => 'Do chuid tuairimí:';

  @override
  String get countryPickerNoCountries => 'Ní fhaightear aon thíortha';

  @override
  String get countryPickerSearchHint => 'Cuardaigh de réir ainm tíre, cód, nó cód dial...';

  @override
  String get countryPickerTitle => 'Roghnaigh tír';

  @override
  String get mapDefaultStop => 'Stop';

  @override
  String get mapEndLocation => 'Áit deiridh';

  @override
  String get mapStartLocation => 'Start Location';

  @override
  String get stopsNoChangesToUndo => 'Níl aon athruithe ar fáil chun a dhéanamh ar ais.';

  @override
  String get stopsNoStopsAvailable => 'Níl aon stad ar fáil.';
}
