import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latgalian (`ltg`).
class AppLocalizationsLtg extends AppLocalizations {
  AppLocalizationsLtg([String locale = 'ltg']) : super(locale);

  @override
  String get appInfoBuild => 'Izstruoduot numuru';

  @override
  String get appInfoDevice => 'Pīruodeibys modeļs';

  @override
  String get appInfoOS => 'OS versija';

  @override
  String get appInfoPackage => 'Paketejums';

  @override
  String get appInfoTitle => 'Apvuiceibys informaceja';

  @override
  String get appInfoVersion => 'Apvuiceibys versija';

  @override
  String get appTitleSchoolDiary => 'SD spākuotuojs';

  @override
  String get childrenActionGuardians => 'Saiminīki';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Autoreituo vadeituoja par $name';
  }

  @override
  String get childrenNoGuardians => 'Nivīns autoritatīks aizdavums par itū bārnu nav.';

  @override
  String get childrenStatusDropped => 'Izkuopts';

  @override
  String get childrenStatusPending => 'Gaideišona';

  @override
  String get childrenStatusPicked => 'Izlaseits';

  @override
  String childrenTitle(Object routeName) {
    return 'Bārni  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NIEJĀŠI / NIE BUSE ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuotuoji';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuotuoji: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nivīns studentis nav atškireigs.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Autobusa laikā nav nūruodeits nikas studentu.';

  @override
  String get drillChecklistNotOnBus => 'Na autobusa izstuode';

  @override
  String get drillChecklistOnBusNotEvacuated => 'BUSI  NIEEVAKUOJAM';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Pīcīņs, kab nūdrūsynuotu';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rūte (Livuos): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakucejis drill checklist';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Nūsaceits Students!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Voi tu esi pārliecināts, ka gribi pīredzēt itū piļskolnu?';

  @override
  String get drillEvidenceConfirmSubmission => '> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';

  @override
  String get drillEvidenceDriverNotesHint => 'Apsaver izpiļdeišonu, studentu uzvedeibu, izmontuotuos izvieršonys ceļus i vysys nūvāruotys izjāmumus...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Konduktors pīrakstejums (minimums 10 vuordu):';

  @override
  String get drillEvidenceFailed => 'Nūteikums napazeist';

  @override
  String get drillEvidenceMandatoryWarning => 'Kab pīduovuotu pīredzi, ir obligati vysmoz vīns fotografejis voi video pīruodejums.';

  @override
  String get drillEvidenceRecordVideo => 'Pieteit video';

  @override
  String get drillEvidenceRetrySubmission => 'PADZĪBU DZĪMĪBU';

  @override
  String get drillEvidenceReturnToDashboard => 'PRAIŠ DASHBOARDAM';

  @override
  String get drillEvidenceSubmitButton => 'Pīsacejums';

  @override
  String get drillEvidenceSubmitting => 'Īdūmoju izpiļdeit...';

  @override
  String get drillEvidenceSuccess => 'Pīcīšums ir veiksmeigs!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakuacejis drill logs ir veiksmeigi aplodeits i ir pi pīteikuma.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografuot';

  @override
  String get drillEvidenceTitle => 'Vajadzīmi pīruodejumi';

  @override
  String get drillEvidenceUploading => 'Pīruodejums par pīruodejumu i kontrollistu datu apkūpuošonu';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vīceņš:';
  }

  @override
  String get drillRosterMarkAttendance => 'Pīsacejums';

  @override
  String get drillRosterNoStudents => 'Itymā maršrutā nav īsaisteits studentu.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Nūteikums: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Pasuokums, kab puorbaudeitu';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rūte:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sēdnīceiba:';
  }

  @override
  String get drillRosterSelectAll => 'Izvēli vysus';

  @override
  String get drillSummaryAdminNotesTitle => 'Administratorejis nūruodejumi';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Atbaļsteits:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Atbaļsteits';

  @override
  String get drillSummaryBackToDrills => 'Atguodojūt iz drill';

  @override
  String get drillSummaryBusNumber => 'Autobusa numurs';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Veiciejs: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Izruodeišona';

  @override
  String get drillSummaryDriverNotesTitle => 'Konduktorys nūruodis';

  @override
  String get drillSummaryDuration => 'Durovys';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '> > min > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get drillSummaryEndTime => 'Beigu laiks';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuotuoji: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuotuo _ V0 _';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Dūmojumu mediju pīruodejumi';

  @override
  String get drillSummaryGps => 'GPS koordinatuos';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nav īsaisteits īroksts par īrokstu.';
  }

  @override
  String get drillSummaryNoData => 'Nivīns lītuojums nav atrūnams.';

  @override
  String get drillSummaryNotOnBus => 'Na autobusa laikā';

  @override
  String get drillSummaryOnBusNotEvacuated => 'BUSE - NIEEVAKUOJAM';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografejis pīruodejums';

  @override
  String get drillSummaryRouteId => 'Rītys identifikators';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sēdnīceiba:';
  }

  @override
  String get drillSummaryStartTime => 'Suokuma laiks';

  @override
  String get drillSummaryStatus => 'Statuss';

  @override
  String get drillSummaryStudentLogTitle => 'Studentu evakuiešonys žurnals';

  @override
  String drillSummaryTitle(Object id) {
    return 'Izruodei (nūsaceitais)';
  }

  @override
  String get drillSummaryType => 'Izruodis tipa';

  @override
  String get drillSummaryVideoEvidence => 'Video pīruodejums';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobuss _ V0__';
  }

  @override
  String get drillTypeClassification => 'Izvēlej grybātuoju klasifikaceju:';

  @override
  String get drillTypeCustomHint => 'Īeja iz tūmār izceļsmis evakuiešonys drill type...';

  @override
  String get drillTypeInvalidState => 'Nūteiktī transportlīdzekļa voi maršruta statusu.';

  @override
  String get drillTypeNameBusFire => 'Autobusa gaisā';

  @override
  String get drillTypeNameDangerZone => 'Bazneicys zona';

  @override
  String get drillTypeNameDriverIncapacitation => 'Konduktors nav īspiejams';

  @override
  String get drillTypeNameEquipmentOrientation => 'Izstuodei \"Atstuodis\"';

  @override
  String get drillTypeNameFrontDoor => 'Prīceigais durys';

  @override
  String get drillTypeNameOthers => 'Cytuos';

  @override
  String get drillTypeNameRearDoor => 'Aizkuortys durys';

  @override
  String get drillTypeNameSideOrRoof => 'Latgalīšu voi stolu';

  @override
  String get drillTypeNameSplit => 'Pīsaceļs';

  @override
  String get drillTypeNoRouteSelected => 'Nav izlaseits ceļš';

  @override
  String get drillTypePreparation => 'PREPARATUŠI DROJU';

  @override
  String get drillTypeProceed => 'Pasuokums iz studentu gruomotu';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rūte:';
  }

  @override
  String get drillTypeSelectRoute => 'Izvēlej maršrutu:';

  @override
  String get drillTypeSpecifyCustom => 'Pieteit drill tipa aprakstu:';

  @override
  String get drillTypeTitle => 'Izvēlej puordūšonys veidu';

  @override
  String get drillTypeWarning => 'Pyrma nūdarbeibu veicynuojums ir nūdrūsyts.';

  @override
  String get drillsAssignedVehicle => 'Pīteiktuojū veikala';

  @override
  String get drillsChecking => 'Izstuodej...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nivīns autobuss nav īdūts';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nivīns drēblis nav īroksteits autobusa $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nav īspiejis suokt izpiļdeit.';

  @override
  String get drillsShowSummary => 'Izstuodei īsamuokums';

  @override
  String get drillsStartDrill => 'Suoc puordūmu';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Izstuode: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakucejis izpiļdeibys';

  @override
  String get drillsVehicleOutOfService => 'Automots nav dorbs';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Itys veļteits niu nav izmontuots i navar izmontuot izpiļdejumim.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL klase';

  @override
  String get driverDetailsDrivingLicenseLabel => 'PĀRĀVĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME: V0';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasauļa';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Školys autobuss';

  @override
  String get driverDetailsEndorsementsTitle => 'Atbaļsteibys atbolsta';

  @override
  String get driverDetailsExpiryDateLabel => 'Izruodeišonys datums';

  @override
  String get driverDetailsHolderSignature => 'PĪVĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪ';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: V0';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Izstuodis datums';

  @override
  String get driverDetailsLicenseDocTitle => 'Licenciejuma dokuments';

  @override
  String get driverDetailsLicenseNoLabel => 'Licenceja Nr.';

  @override
  String get driverDetailsLicenseTitle => 'Licencis detalizāti';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licencis veids';

  @override
  String get driverDetailsOfficialSeal => 'Oficialais SILS';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klase: V0';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'PĪVĪŠKĪŠI:';
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
  String get driverDetailsTapToView => 'Apkrīžūt DL dokumentu';

  @override
  String get driverDetailsTitle => 'Vairuokī informaceji';

  @override
  String get dvirCategoryBusSafetySystems => 'Autobusys atbaļsteibys sistemys';

  @override
  String get dvirCategoryCouplingDevices => 'Saisteibys aparāti';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nūsacejuma īrūbežuojums';

  @override
  String get dvirCategoryHorn => 'Rūns';

  @override
  String get dvirCategoryLightingReflectors => 'Apgaisuojumi i reflektorys';

  @override
  String get dvirCategoryMirrors => 'Aizguojīņs';

  @override
  String get dvirCategoryParkingBrake => 'Parkacejis bremze';

  @override
  String get dvirCategoryPassengerSeating => 'Pasauļa sēdvietu i īrūbežuojumi';

  @override
  String get dvirCategoryServiceBrakes => 'Dorba bremsi';

  @override
  String get dvirCategorySteeringMechanism => 'Varakļuošonys mekanizms';

  @override
  String get dvirCategoryTires => 'Pīteris';

  @override
  String get dvirCategoryWheelsRims => 'Pylkys i rimuojumi';

  @override
  String get dvirCategoryWipers => 'Vītrskluosys nūgrīžys';

  @override
  String get dvirPostTripCapturePhoto => 'PĀŠKĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠĪŠ';

  @override
  String get dvirPostTripComplianceTitle => 'PĪSAKLĪBA PĪSAKLĪBA';

  @override
  String get dvirPostTripDefectButton => 'DEFEKTS';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Izstuode bez fotografejis';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Pazaudiejums: Tu ziņoj par napareizi iz atbaļsteibys zonom ($zones) bez fotografejis pīsaisteišonys.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekceja: autobuss $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Īdūd informaceju par sajiutu...';

  @override
  String get dvirPostTripNotesLabel => 'NOTAS (PĀR DAVEKTA) & PĀTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Izvēlej DEFECT, kab īvīstu informaceju par drūšeibys vaicuojumim...';

  @override
  String get dvirPostTripOdometerHeader => 'Odometru skaitlis';

  @override
  String get dvirPostTripOdometerInstructions => 'Īvīst kilometru skaitli, kai tys ir nūruodeits autobusa instrumentūs:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'VEKIELS RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Pyrma turpynuošonys, īrokstu kilometru skaitli.';

  @override
  String get dvirPostTripPassButton => 'Pasuokums';

  @override
  String get dvirPostTripPhotoAttached => 'Fotografeja ir pīejama ar panuokumu.';

  @override
  String get dvirPostTripProgressLabel => 'Izstuodei';

  @override
  String get dvirPostTripSignatureCaptured => 'Atkluota parakste.';

  @override
  String get dvirPostTripSignatureCert => 'Es pīruodeju, ka itū īruodejumu par īruodejumu par īruodejumu ir pabeigts saskaņā ar FMCSA 396.11 regulacejom.';

  @override
  String get dvirPostTripSignatureTitle => 'Vairuokļa paraksta puorbaude';

  @override
  String get dvirPostTripSubmitButton => 'Pīduovojom nūpierkt';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR tyka pīduovuots ar panuokumu.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA $current NATURIS';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Atbiļdis, ka es atguoduoju pādejuo pīduovuota napabeiguma ziņu i puorbaudeju taisneibys (ja tī ir) i pasaruodeju, ka autobuss ir drūši struoduot.';

  @override
  String get dvirPreTripActiveMessage => 'Itys veļteits ir aktivs, nav atkluotys defektys, ir puorbaudeits i ir drūši struoduot.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivs ceļš: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'PREJERAMATĪBU: Nūteikti īprīkšdīnys napareizi';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobusa numurs: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'PĀVĪŠU DISPATŠEŠI CHEKLĪBU';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Napasaceja: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nivīns pyrmais napīcīšums nav īroksts';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Itū mašynu beja ziņots par tīsu pyrmajā nūruodeišonys piecceļuotuoju puorbaudeibā.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nav vajadzeigs remonts, kab byutu drūši struoduot.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Itys veļteits ir izstruoduots remonta/apstruoduošonys laikā.';

  @override
  String get dvirPreTripOutofServiceButton => 'VĪŠKLĪBUOJĪBUOJS nu dorba';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Pīcīņs:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Nūroksti par jaunim napareizi';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Atbaļsteit par jaunim napareizi ir nūdrūsynojami remonta laikā.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transportys puorvaļdis puorvaļdis atbiļde';

  @override
  String get dvirPreTripReturnToHomeButton => 'Pīcīšonai uz sātu';

  @override
  String get dvirPreTripSignOffTitle => 'Pīcīņa iz aizbraukšonu';

  @override
  String get dvirPreTripSignedSuccess => 'Pre-turis atkluots.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Pīduovojamajā verifikā';

  @override
  String get dvirPreTripTitle => 'Pre-turis puorbaude';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Kondukcejis statuss: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Pieteit pīteikumu';

  @override
  String get dvirSigPreviewLabel => 'Atkluotai paraksteišonai:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVEDUOJU PĀSAKLĪBU';

  @override
  String get dvirSigTapToDraw => 'Pīsacejums, kab īsaisteitu (pīpraseits)';

  @override
  String get dvirSigWatermark => 'Atzeimuot vertikāli (nu zūmys iz augšu)';

  @override
  String get forgotPasswordCancel => 'Atceļšona';

  @override
  String get forgotPasswordEmailLabel => 'Ītīņs';

  @override
  String get forgotPasswordInvalidEmail => 'Lyudzu īkļaut atbylstūšu e-puortu';

  @override
  String get forgotPasswordSend => 'Atdūd';

  @override
  String get forgotPasswordSuccess => 'Ka taids e-pašlis ir, ir atguoduots atguodynojums.';

  @override
  String get genericBack => 'Piec tuo';

  @override
  String get genericCancel => 'Atceļšona';

  @override
  String get genericClear => 'DZĪVU';

  @override
  String get genericClose => 'Tyvuok';

  @override
  String get genericConfirm => 'Atbaļsteit';

  @override
  String get genericEdit => 'Redakceja';

  @override
  String get genericError => 'Kas nūtyka napazeist.';

  @override
  String get genericLoading => 'Apklūde...';

  @override
  String get genericNext => 'Pādejūs';

  @override
  String get genericOk => 'Labi, nu.';

  @override
  String get genericRetry => 'Izprīcynuosi';

  @override
  String get genericSuccess => 'Pīsaceiba';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobuss:';
  }

  @override
  String get homeDispatchBlocked => 'Izstuode blokāta';

  @override
  String get homeDispatchBlockedTitle => 'Izstuode blokāta';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nivīns maršrutys nav pieejams Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nav izadevs paleidzeibu servera: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Sveiki, V0__';
  }

  @override
  String get homeLogout => 'Izstuode';

  @override
  String get homeMenuAppInfo => 'Apvuiceibys informaceja';

  @override
  String get homeMenuDrill => 'Izruode';

  @override
  String get homeMenuDriverDetails => 'Vairuokī informaceji';

  @override
  String get homeMenuLanguage => 'Volūda';

  @override
  String get homeMenuPreTrip => 'Pre-turis inspekceja';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Nivīns maršrutys nav atbiļdeits';

  @override
  String get homeReviewVerifyPreTrip => 'Pre-turis puorbaudeišona i puorbaudeišona';

  @override
  String get homeSearchHint => 'Izpieteibys maršruts';

  @override
  String get homeStart => 'Suocūt';

  @override
  String get homeTitle => 'Sātu';

  @override
  String get homeVehicleOutOfServiceDefault => 'Nūvodā niu nav dorba.';

  @override
  String get homeVehicleReady => 'Kondukts ir gatavs i puorbaudeits par drūsai struoduošonu.';

  @override
  String get languageTitle => 'Volūda';

  @override
  String get loginButton => 'Īīšona';

  @override
  String get loginEmailOrPhoneLabel => 'E-pašvaļdeiba voi telefona numurs';

  @override
  String get loginErrorEnterPassword => 'Lyudzu īvīst pasaceituoju';

  @override
  String get loginErrorEnterUsername => 'Lyudzu īvīst lītuotuoju vuordu';

  @override
  String get loginErrorFailed => 'Pīsacejums nav pabeigts. Pazaudit vēļreiz.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Lyudzu īkļaut atbylstūšu e-pašu voi telefona numuru';

  @override
  String get loginForgotPassword => 'Atguodoj parunu?';

  @override
  String get loginPasswordLabel => 'Passwort';

  @override
  String get mapChildrenTooltip => 'Bārni i apgādnīki';

  @override
  String get mapConfirmMessage => 'Voi tu eistyn gribi pabeigt ceļojumu?';

  @override
  String get mapConfirmTitle => 'Atbaļsteit';

  @override
  String get mapCurrentPosition => 'Vaļsts nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nūvoda nū';

  @override
  String get mapNo => 'Na, tys nav.';

  @override
  String get mapReconnectMessage => 'Pīteikti nav nūtyka vīta atjaunynuojums, lyudzu, puorbaudeit sovu internetā.';

  @override
  String get mapReconnectTitle => 'Izstuode';

  @override
  String get mapStop => 'Staigoj';

  @override
  String get mapStopping => 'Pazaudēt...';

  @override
  String get mapStopsTooltip => 'Staigoj';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated ${seconds}s ago nūtyka';
  }

  @override
  String get mapWaitingGps => 'Cekūt iz GPS...';

  @override
  String get mapYes => 'Jā, tys ir.';

  @override
  String get splashDriverApp => 'Apvuiceiba par vadeituojim';

  @override
  String get stopsActionUndo => 'Atdūts';

  @override
  String get stopsCancelledSuccess => 'Pīsadaleit ar panuokumu';

  @override
  String get stopsDefaultLabel => 'Staigoj';

  @override
  String get stopsGenericError => 'Kas nūtyka. Pazaudit, lyudzu.';

  @override
  String get stopsStatusComplete => 'pabeigts';

  @override
  String get stopsStatusDone => 'pabeigts';

  @override
  String stopsSubmitCount(Object count) {
    return 'Pīduovoj ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Pīsadaleits ar panuokumu';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '> > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get stopsTypeDrop => 'Puordūd';

  @override
  String get stopsTypePick => 'Izlaseit';

  @override
  String stopsUndoCount(Object count) {
    return 'Izruode ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Atmaineit/atmaineit';

  @override
  String get tripConfirmCancel => 'Atceļšona';

  @override
  String get tripConfirmOk => 'Labi, nu.';

  @override
  String get tripConfirmTitle => 'Izstuode';

  @override
  String get tripErrorLocationRequired => 'Izceļšonai ir vajadzeiga vīta pīļaunīņs.';

  @override
  String get homeMenuPostCrashReporting => 'Izstuode par nūtikšonu piec nūtikšonys';

  @override
  String homeVehicleReason(Object reason) {
    return 'Pīcīņs:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Izpieteibys lokaceja (par pīmāru, Market St.)';

  @override
  String get crashLocationPickerTitle => 'Izvēlej vītu mapā';

  @override
  String get crashLocationPickerTooltip => 'Atbaļsteit vītu';

  @override
  String get incidentDashboardDescription => 'Izvēlej nūdarbu, kab turpynuotu incidentus puorvaļdeišonu voi apsavērt paguotnis ziņojumus.';

  @override
  String get incidentDashboardHeadline => 'Izstuodis piec nūtikšonys';

  @override
  String get incidentDashboardLogNew => 'Jaunys nūruodis';

  @override
  String get incidentDashboardLogNewSubtitle => 'Īeja jaunu pasuokuma pasuokuma sasatikšonys izveidu';

  @override
  String get incidentDashboardTitle => 'Nūdarbeiba piec nūtikšonys';

  @override
  String get incidentDashboardViewHistory => 'Izstuodei viesture';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Pastuosti par īprīkšūs nūruodis izveidu i stuostu';

  @override
  String get incidentDetailsAdminLetter => 'Administratora pīrakstejums';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkohola testa atliedzums (2-saturā)';

  @override
  String get incidentDetailsBranchId => 'Filialu identifikators';

  @override
  String get incidentDetailsBusPlate => 'Autobusa pīruodejumu pļauta';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citata ītekme: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Šofera atbiļdis';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinati: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return 'V0__ kopiejuse iz klīpu!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopiejūt iz klīpu';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datums i laiks: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE ziņojums';

  @override
  String get incidentDetailsDoeReportTitle => 'Datuo DEA ziņu (nūsaisteiba)';

  @override
  String get incidentDetailsDriverNotes => 'Vairuokī pīruodejumi:';

  @override
  String get incidentDetailsDriverUserId => 'Vairuokļa lītuotuoju atpazeituojs';

  @override
  String get incidentDetailsDrugCountdown => 'DOT narkotiku testu atlidu skaits (8- stundu limitu)';

  @override
  String get incidentDetailsFatalityOccurred => 'Nūteikts nūmyra';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Nūdarbeibys #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Svareigys medizinis leiguošonys';

  @override
  String get incidentDetailsLawEnforcement => 'Datu puorvaļde';

  @override
  String get incidentDetailsLoadFailed => 'Nūsacejs īklaideit detalizys.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Viesturis vīta:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medeju pīruodejumi';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get incidentDetailsNo => 'Nikuo';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nivīns fotografs voi video nav pīsaisteits.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Incidenta laikā nav bejuši pieteiti studentu.';

  @override
  String get incidentDetailsNotificationsDesc => 'Izstruoduot paziņojumu ziņojumus i izstuodēt īruodis šablonus apvīneibu vītys puorvaļdim voi administracejai.';

  @override
  String get incidentDetailsNotificationsTitle => 'Izstuodei';

  @override
  String get incidentDetailsOfficer => 'Oficirys detalizāti';

  @override
  String get incidentDetailsPoliceReport => 'Policejis ziņojuma numurs';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Pre-applovuots puorstuoviešonys pīrakstejums:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulârâ pamatâ:';

  @override
  String get incidentDetailsRouteId => 'Rītys identifikators';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Školys vadeituoju paziņojums';

  @override
  String get incidentDetailsStatusPending => 'Gaideišona';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalizāti: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Svareituoji';

  @override
  String get incidentDetailsStudentNoInjury => 'Nivīns nasaprūtams';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Svareiba:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Preiļuojums:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studeituoji Upstairs ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Nūdrūsynojūt testu piec kraša';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > > >';
  }

  @override
  String get incidentDetailsTitle => 'Nūteikumu detalys';

  @override
  String get incidentDetailsVehicleTowed => 'Izstuodei';

  @override
  String get incidentDetailsYes => 'Jā, tys ir.';

  @override
  String get incidentHistoryEmpty => 'Itamā mašynā nav registrāta nikaidys incidentis žurnalis.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nav izpieteits datu kruojums: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Autobuss: V1 _ Tests: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Nūdarbeibys #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NIKU Nūdrūši';

  @override
  String get incidentHistoryTestingRequired => 'Nūdrūši';

  @override
  String get incidentHistoryTitle => 'Nūtikšonys pasuokumu registraceja';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Pievienoj vēļ vīnu fotografu';

  @override
  String get incidentIntakeBadgeNumberError => 'Vajadzams';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Zīmyssvātku skaits *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobusa numurs: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografeja nūtikšonys reita';

  @override
  String get incidentIntakeCitationSubtitle => 'Voi školys autobusa vairuojim beja izstuodeita īroksta par ceļu sakreitumu?';

  @override
  String get incidentIntakeCitationTitle => 'Voi ir izstuodeita citaceja?';

  @override
  String get incidentIntakeDateTimeLabel => 'Krasa datums i laiks *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Nūdrūsynojūt testus';

  @override
  String get incidentIntakeDotTestingRequired => 'Nūdrūsynojūt testus';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Vaļsteits:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Īdūd cytys nūruodis par sasatikšonu...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Īvadūšuos nūtikšonys nūruodis';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nūsaceiti īklaideit maršrutys pasažersus: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Apsaisteit pīruodejumu (Pītrūduojumi) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Voi nu itū katastrofys nūtyka kaidi dzymtū dzeivi?';

  @override
  String get incidentIntakeFatalityTitle => 'Voi nūtyka nūmyra?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordinatu *';

  @override
  String get incidentIntakeHistoryTooltip => 'Izstuodei viesture';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Voi ir kaids, kurs ir sasaglobojuse, i jam ir vajadzeiga drūsai medicīniskai leimiņa?';

  @override
  String get incidentIntakeInjuriesTitle => 'Voi ir vajadzeiga mediciniskuo izpiete?';

  @override
  String get incidentIntakeInjuryNotesError => 'Svareigim studentim ir obligati nūteikti nūžeiduotī pasuokumi';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Svareibys nūruodejumi / detalizāti (pīprīcynuots) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Svareiba nu nūryukšonys *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Lyudzu īīt pošvaļdeibu.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Datu puorvaļde (par pīmāru, vaļsts autostradeju patrula) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Dūmojamū i policejis puorvaļdu izveide';

  @override
  String get incidentIntakeLocationDescError => 'Lyudzu īvīst vīta aprakstu';

  @override
  String get incidentIntakeLocationDescLabel => 'Viesturis apraksts (par pīmāru, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicinys pogosta puorveiduota';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nivīns sasadaleitūši studenti.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nivīns studentu nav atrūnams.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nav studentu pa brostu. Paļdis, paļdis, paļdis, paļdis.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Itamā maršrutā nav īroksteits nivīns students.';

  @override
  String get incidentIntakeOfficerNameError => 'Lyudzu īvīst oficira nūsaukumu';

  @override
  String get incidentIntakeOfficerNameLabel => 'Oficira vuords *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Lyudzu īvīst policejis ziņojuma numuru.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policejis ziņojuma numurs *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rūte:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Rītys i vadeituoju informaceja';

  @override
  String get incidentIntakeSearchInjuredHint => 'Izsorguot nabadzeivuotu bārnu...';

  @override
  String get incidentIntakeSearchStudentHint => 'Izpiete studentu...';

  @override
  String get incidentIntakeSelectAll => 'Izvēlej vysus pieteituojus';

  @override
  String get incidentIntakeSelectOnMap => 'PĪVĪŠĪŠI PĀKAPE';

  @override
  String get incidentIntakeSeverityFatal => 'Svareiguo';

  @override
  String get incidentIntakeSeverityMinor => 'Pietejums';

  @override
  String get incidentIntakeSeverityModerate => 'Apmierynuots';

  @override
  String get incidentIntakeSeveritySevere => 'Svareigi';

  @override
  String get incidentIntakeSeverityTitle => 'Krakys smūguma variablis';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: V0';
  }

  @override
  String get incidentIntakeSubmitButton => 'Pīduovojom';

  @override
  String get incidentIntakeTitle => 'Izstuode nu nūtikšonys';

  @override
  String get incidentIntakeTowedSubtitle => 'Voi koč kaids auto beja nūdrūsynojams, deļtam tū beja juodora nu vīta?';

  @override
  String get incidentIntakeTowedTitle => 'Auto izslāgts?';

  @override
  String get incidentIntakeWasInjured => 'Voi beja sajautōjs?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobuss:';
  }

  @override
  String get dvirPreTripClose => 'NĪVĪŠKĪŠI';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Vairuokļa komentari / pīruodejumi (Navīcīņs)';

  @override
  String get dvirPreTripNoComments => 'Nivīns komentārs.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Pīcīņs:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rūte:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Pīraksteits atkluots.';

  @override
  String get dvirPreTripSigMissing => 'Atbiļdis nav.';

  @override
  String get dvirPreTripSignDefectWarning => 'Lyudzu, pīraksmit, kab puorbaudeitu īprīkšūs napareizuojumu atguodyšonu.';

  @override
  String get dvirPreTripStepSignOff => 'Atzeimuojums';

  @override
  String get dvirPreTripStepSubmit => 'Pīsaisteit';

  @override
  String get dvirPreTripStepVerify => 'Atbaļsteit';

  @override
  String get dvirPreTripTapNext => 'Lai turpynuotu, lyudzu, nūdrūsynoj \"NESKĪŠ\".';

  @override
  String get dvirPreTripVehicleOutOfService => 'Automats nav dorbā';

  @override
  String get dvirPreTripVehicleReady => 'Automots ir gatavs dorbā';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verificāta remonta statusa:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Paver, ka vysys ziņotys defektys ir taisātys, nūruodeit krīvu vierzīnī.';

  @override
  String get dvirPreTripYourComments => 'Jī atsauksmis:';

  @override
  String get countryPickerNoCountries => 'Nivīna vaļsteiba nav atroduota';

  @override
  String get countryPickerSearchHint => 'Izpiete piec vaļsts nūsaukuma, kods voi nūruodeitū kodu...';

  @override
  String get countryPickerTitle => 'Izlaseit vaļstu';

  @override
  String get mapDefaultStop => 'Staigoj';

  @override
  String get mapEndLocation => 'Beigu vīta';

  @override
  String get mapStartLocation => 'Suokuma vīta';

  @override
  String get stopsNoChangesToUndo => 'Nav īspiejis atmaineit izmainis.';

  @override
  String get stopsNoStopsAvailable => 'Nivīns nūstōjs.';

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

  @override
  String get homeMenuChildSafetyCheck => 'Child Safety Check';

  @override
  String get childSafetyAwayWarningTitle => 'Away from Depot Location';

  @override
  String get childSafetyAwayWarningBody => 'You are not at the depot location. Please go to the depot location and perform the Child Safety Check there.';

  @override
  String get childSafetyOptionOk => 'OK';

  @override
  String get childSafetyOptionMarkHere => 'No, Mark Here Only';

  @override
  String get childSafetyConfirmAwayTitle => 'Warning: Marking Away from Location';

  @override
  String get childSafetyConfirmAwayBody => 'You are about to mark the Child Safety Check away from the designated depot location. Are you sure you want to proceed?';

  @override
  String get childSafetyOptionCancel => 'Cancel';
}
