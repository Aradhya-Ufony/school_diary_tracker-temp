import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Scottish Gaelic Gaelic (`gd`).
class AppLocalizationsGd extends AppLocalizations {
  AppLocalizationsGd([String locale = 'gd']) : super(locale);

  @override
  String get appInfoBuild => 'Dèan àireamh';

  @override
  String get appInfoDevice => 'Modal inneal';

  @override
  String get appInfoOS => 'Air-loidhne';

  @override
  String get appInfoPackage => 'Pacaid';

  @override
  String get appInfoTitle => 'Info app';

  @override
  String get appInfoVersion => 'Air-loidhne';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Gàrd-chinnteach';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Ceangail ùghdarraichte airson $name';
  }

  @override
  String get childrenNoGuardians => 'Chan eil neach-dìon ùghdarraichte air a bhith air a chlàradh airson an leanabh seo.';

  @override
  String get childrenStatusDropped => 'Thill e';

  @override
  String get childrenStatusPending => 'A \' feitheamh';

  @override
  String get childrenStatusPicked => 'A \' taghadh';

  @override
  String childrenTitle(Object routeName) {
    return 'Clann  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'GA \' N-AIS / Chan ann air BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Air an toirt air falbh';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Air an toirt a-mach: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Chan eil sgoilearan a tha fosgailte.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Chan eil sgoilearan air an comharrachadh air a \'bhus.';

  @override
  String get drillChecklistNotOnBus => 'Chan ann air BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Air BUS  Chan eil air a thoirt a-mach';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Air BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'A \' dol a-mach gus fianais a ghlacadh';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rath (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Liosta sgrùdaidh air drill sgudal';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count An-aithris Oileanach (s) A \'fuireach!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'A bheil thu cinnteach gu bheil thu airson an clàr-bog-boirt seo a chur a-steach?';

  @override
  String get drillEvidenceConfirmSubmission => 'Dèan dearbhadh air a \' bhrosnachadh';

  @override
  String get drillEvidenceDriverNotesHint => 'Thoir cunntas air coileanadh brìgh, giùlan an oileanach, slighean-seachad a chaidh a chleachdadh, agus a h-uile eisceachd a chaidh a chomharrachadh...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notaichean dràibhear (Aona-chòrr air 10 caractar):';

  @override
  String get drillEvidenceFailed => 'Tha a \' bhrosnachadh air fàiligeadh';

  @override
  String get drillEvidenceMandatoryWarning => 'Tha co-dhiù 1 fiosrachadh dealbh no bhidio riatanach airson drill a chuir a-steach.';

  @override
  String get drillEvidenceRecordVideo => 'Clàraich Video';

  @override
  String get drillEvidenceRetrySubmission => 'SGAIL-Sùbhlach';

  @override
  String get drillEvidenceReturnToDashboard => 'Ath-ais gu DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'SUBMIT DRILL LOG';

  @override
  String get drillEvidenceSubmitting => 'A \'cur a-steach Clàr-sgrùdadh...';

  @override
  String get drillEvidenceSuccess => 'Tha an Tilleadh a \'Sèifeachd!';

  @override
  String get drillEvidenceSuccessMessage => 'Chaidh clàr-sgrìob an sgudal-tharraing a luchdachadh suas gu soirbheachail agus tha e air a bhith a\' feitheamh ri aonta.';

  @override
  String get drillEvidenceTakePhoto => 'Dèan dealbh';

  @override
  String get drillEvidenceTitle => 'Fianais-dhuineachaidh fearainn';

  @override
  String get drillEvidenceUploading => 'A \' luchdachadh a-nuas fianais agus dàta liosta sgrùdaidh';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Marca a \' Tadhal';

  @override
  String get drillRosterNoStudents => 'Chan eil oileanaich clàraichte air an t-slighe seo.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'An làthair: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCED TO DROW CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rath: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Seata: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Tagh A h-uile';

  @override
  String get drillSummaryAdminNotesTitle => 'Notaichean rianachd';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Ceadaichte aig: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Ceadaichte aig';

  @override
  String get drillSummaryBackToDrills => 'Air ais gu Drills';

  @override
  String get drillSummaryBusNumber => 'Àireamh Bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Air a stiùireadh le: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Mion-fhiosrachadh drill';

  @override
  String get drillSummaryDriverNotesTitle => 'Notaichean dràibhear';

  @override
  String get drillSummaryDuration => 'Dàmh';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes mionaid $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Amannan an deireadh';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Air an toirt a-mach: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Air an toirt a-mach $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Fianais Meadhanan Ceangalaichean';

  @override
  String get drillSummaryGps => 'Co-òrdanaidean GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Cha do chuir mi a-steach geàrr-chunntas drill airson ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Chan eil dàta briseadh air an lorg.';

  @override
  String get drillSummaryNotOnBus => 'Chan ann air Bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Air BUS - Chan eil air a thoirt a-mach';

  @override
  String get drillSummaryPhotoEvidence => 'Fiosrachadh Dealbh';

  @override
  String get drillSummaryRouteId => 'ID slighe';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Seata: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Amannan Tòisich';

  @override
  String get drillSummaryStatus => 'Stàite';

  @override
  String get drillSummaryStudentLogTitle => 'Clàr-clàraidh èiginn oileanaich';

  @override
  String drillSummaryTitle(Object id) {
    return 'Co-dhùnadh air an t-seòrsa';
  }

  @override
  String get drillSummaryType => 'Seòrsa drill';

  @override
  String get drillSummaryVideoEvidence => 'Fiosrachadh bhidio';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Tagh seòrsachadh drill:';

  @override
  String get drillTypeCustomHint => 'Cuir a-steach seòrsa drill sgudal gnàthach...';

  @override
  String get drillTypeInvalidState => 'Stàite neo-chabhasach fearainn no slighe.';

  @override
  String get drillTypeNameBusFire => 'Sgaoileadh Bus';

  @override
  String get drillTypeNameDangerZone => 'Sgìre cunnart';

  @override
  String get drillTypeNameDriverIncapacitation => 'In-aghaidh an t-sùidire';

  @override
  String get drillTypeNameEquipmentOrientation => 'Stiùireadh uidheamachd';

  @override
  String get drillTypeNameFrontDoor => 'Doirse a-mach';

  @override
  String get drillTypeNameOthers => 'A \' chuid eile';

  @override
  String get drillTypeNameRearDoor => 'Doirt cùil';

  @override
  String get drillTypeNameSideOrRoof => 'Taobh no Taobh';

  @override
  String get drillTypeNameSplit => 'Sgaoileadh';

  @override
  String get drillTypeNoRouteSelected => 'Chan eil slighe air a thaghadh';

  @override
  String get drillTypePreparation => 'UABH-SGHAOLAIN';

  @override
  String get drillTypeProceed => 'PROCED TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rath: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Tagh Rath:';

  @override
  String get drillTypeSpecifyCustom => 'Cuir a-steach an seòrsa dreuchd:';

  @override
  String get drillTypeTitle => 'Tagh seòrsa drill';

  @override
  String get drillTypeWarning => 'Dèan cinnteach gu bheil an rathaireachd air a phàrcadh gu sàbhailte mus tòisich iad air an cur an gnìomh.';

  @override
  String get drillsAssignedVehicle => 'Inneal a \'toirt seachad';

  @override
  String get drillsChecking => 'A \'sgrùdadh...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Chan eil Bus air a Chur';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Chan eil drills clàraichte airson bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Chan eil slighean rim faighinn airson drill a thòiseachadh.';

  @override
  String get drillsShowSummary => 'Taisbeanadh Coimpiutair';

  @override
  String get drillsStartDrill => 'Tòisich a \' Boring';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Air a stiùireadh: $date Stàite: $status';
  }

  @override
  String get drillsTitle => 'Drills Evakuation';

  @override
  String get drillsVehicleOutOfService => 'Carraige a-mach à seirbheis';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Tha an inneal seo a-nis air a dhol às an seirbheis agus chan urrainn dha a chleachdadh airson drills.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LICENSAID CHAOIDHE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Ainm: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Seachadadair';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Bus sgoile';

  @override
  String get driverDetailsEndorsementsTitle => 'Ceannaichidh Ceannaich';

  @override
  String get driverDetailsExpiryDateLabel => 'Ceann-latha crìochnachaidh';

  @override
  String get driverDetailsHolderSignature => 'SIGNEAR-CAIDH';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Ceann-latha a \' Taisbeanadh';

  @override
  String get driverDetailsLicenseDocTitle => 'Documents de chead';

  @override
  String get driverDetailsLicenseNoLabel => 'Cead-sgrìobhaidh';

  @override
  String get driverDetailsLicenseTitle => 'Fiosrachadh cead';

  @override
  String get driverDetailsLicenseTypeLabel => 'Seòrsa cead';

  @override
  String get driverDetailsOfficialSeal => 'SEAL Oifigeil';

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
    return 'CHANNAIL: $endorsements';
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
  String get driverDetailsTapToView => 'Tap airson Documents DL fhaicinn';

  @override
  String get driverDetailsTitle => 'Fiosrachadh dràibhear';

  @override
  String get dvirCategoryBusSafetySystems => 'Siostaman sàbhailteachd sònraichte do bhùthan-bas';

  @override
  String get dvirCategoryCouplingDevices => 'Uidheaman clutching';

  @override
  String get dvirCategoryEmergencyEquipment => 'Uidheamachd èiginn';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Stuthan Solais & Reflectors';

  @override
  String get dvirCategoryMirrors => 'Spèileanan-eòlas-a-mach';

  @override
  String get dvirCategoryParkingBrake => 'Brèac pàirce';

  @override
  String get dvirCategoryPassengerSeating => 'Seatairean agus Reictean luchd-siubhail';

  @override
  String get dvirCategoryServiceBrakes => 'Brèanaichean seirbheis';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanas Stiùiridh';

  @override
  String get dvirCategoryTires => 'Taighean';

  @override
  String get dvirCategoryWheelsRims => 'Rìon agus Rims';

  @override
  String get dvirCategoryWipers => 'Sgrìolairean eanchainn';

  @override
  String get dvirPostTripCapturePhoto => 'FHOTO DEFECT CAPTURE';

  @override
  String get dvirPostTripComplianceTitle => 'SÌRTICEAN COLLAIMH';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'A \' Clàradh Mearachd Gun Dealbh';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Rabhaidh: Tha thu a \'toirt aithris air eas-òrdugh air sgìrean sàbhailteachd ($zones) gun dealbh a chuir ris. A bheil thu cinnteach gu bheil thu airson a chuir a-steach mar sin?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Sgrùdadh: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Cuir mion-fhiosrachadh air dragh sàbhailteachd...';

  @override
  String get dvirPostTripNotesLabel => 'NOTAIS (MANDATORY ON DEFECT) & FHOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Tagh DEFECT gus mion-fhiosrachadh mu dheidhinn sàbhailteachd a chuir a-steach...';

  @override
  String get dvirPostTripOdometerHeader => 'Leugh Odometer Gnìomhach';

  @override
  String get dvirPostTripOdometerInstructions => 'Cuir a-steach an leughadh miileage dìreach mar a tha air a shealltainn air an bhathar inneal bus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'RAN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Cuir a-steach an leugh odometer mus lean thu air adhart.';

  @override
  String get dvirPostTripPassButton => 'Pass';

  @override
  String get dvirPostTripPhotoAttached => 'Dealbh air a chuir ris gu soirbheachail.';

  @override
  String get dvirPostTripProgressLabel => 'A \'dol air adhart le sgrùdaidh';

  @override
  String get dvirPostTripSignatureCaptured => 'Chaidh sonadh a ghlacadh.';

  @override
  String get dvirPostTripSignatureCert => 'Tha mi a\' dearbhadh gun deach an aithisg liosta sgrùdaidh coiseachd-làimhe seo a chrìochnachadh a rèir riaghailtean FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Ceadachadh Seineadair';

  @override
  String get dvirPostTripSubmitButton => 'Sùim a thoirt seachad';

  @override
  String get dvirPostTripSubmitSuccess => 'Chaidh eDVIR a chuir a-steach gu soirbheachail.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'CHANNAIL $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Sgìrean $current / $total';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Tha mi a\' toirt iomradh gun do rinn mi sgrùdadh air an aithisg mearachd a chaidh a chuir a-steach mu dheireadh agus gun do rinn mi sgrùdadh air na ceartachaidhean (nuair a tha iad ann) agus gun do dh\'innstiich mi gu bheil an bus sàbhailte airson obrachadh.';

  @override
  String get dvirPreTripActiveMessage => 'Tha an fearainn seo gnìomhach agus chan eil ceàrr fosgailte aige. Tha e air a dhearbhadh agus sàbhailte airson obrachadh.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Rath gnìomhach: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'FHAGHAIR: Mìos-a-mach an latha roimhe';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Àireamh bus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Sgrùdadh air Sgrìobhachadh CHEIL';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Cha do chuir a-steach: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Chan eil Mearachd roimhe air A Chlàrachadh';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Chaidh an ratha seo a aithris glan anns an sgrùdadh dreuchd post-turp roimhe.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Chan eil feum air ath-chàradh airson obrachadh sàbhailte.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Tha an rathaireachd seo air a bhith a\' dol às a-mach airson ath-chàradh/cumail-obrach.';

  @override
  String get dvirPreTripOutofServiceButton => 'AUCHAL A \' dol às an t-seirbheis';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (A\' RIPAIR)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'A \' aithris air Deifidhean Ùra';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Tha aithris air mearachdan ùra air a chuir dheth rè ath-dhàimh.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Stàite: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RECUISYON SUB-ADMIN air Còmhdhail';

  @override
  String get dvirPreTripReturnToHomeButton => 'THAIL TO CAEL';

  @override
  String get dvirPreTripSignOffTitle => 'SIGNEAIN OFF gus a \' dol a mach';

  @override
  String get dvirPreTripSignedSuccess => 'Chaidh dearbhadh a shàbhaladh gu soirbheachail.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Sùbaireachd';

  @override
  String get dvirPreTripTitle => 'Ceistean ro-làthaireachd';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Stàite an rathaich: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Dèan dreuchd-sgrìobhadh';

  @override
  String get dvirSigPreviewLabel => 'Sealladh ro-shealladh air sonadh a ghabhas:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Slàraich an ainm';

  @override
  String get dvirSigTapToDraw => 'TAP airson SAINNAIR a tharraing (A \' Rialtachadh)';

  @override
  String get dvirSigWatermark => 'Cuir an soidhnichean Vertically (Fas gu Àrd)';

  @override
  String get forgotPasswordCancel => 'A dh \' ath-dhùnadh';

  @override
  String get forgotPasswordEmailLabel => 'Post-d';

  @override
  String get forgotPasswordInvalidEmail => 'Cuir a-steach post-d dligheach';

  @override
  String get forgotPasswordSend => 'Cuir a-steach';

  @override
  String get forgotPasswordSuccess => 'Ma tha an post-d sin ann, tha ceangal ath-shuidheachadh air a chuir a-steach.';

  @override
  String get genericBack => 'A \' dol air ais';

  @override
  String get genericCancel => 'A dh \' ath-dhùnadh';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'A \' dol faisg';

  @override
  String get genericConfirm => 'Dèan dearbhadh';

  @override
  String get genericEdit => 'Dèan deasachadh';

  @override
  String get genericError => 'Chaidh rudeigin ceàrr';

  @override
  String get genericLoading => 'A \'luasad...';

  @override
  String get genericNext => 'A \' DHAOCH';

  @override
  String get genericOk => 'A-mach.';

  @override
  String get genericRetry => 'Dèan ath-uiridh';

  @override
  String get genericSuccess => 'Sgoil';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Chaidh an t-sgaoileadh a bhacadh';

  @override
  String get homeDispatchBlockedTitle => 'Chaidh an t-sgaoileadh a bhacadh';

  @override
  String get homeErrorNoRoutesPreTrip => 'Chan eil slighean rim faighinn airson Pre-Trip a dhèanamh.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Cha do chuir e air bhog air an t-seirbheis: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hallo, V0__';
  }

  @override
  String get homeLogout => 'Log-out';

  @override
  String get homeMenuAppInfo => 'Info app';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Fiosrachadh dràibhear';

  @override
  String get homeMenuLanguage => 'Cànain';

  @override
  String get homeMenuPreTrip => 'Sgrùdadh ro-làthaireachd';

  @override
  String get homeNoRoutes => 'Chan eil slighean rim faighinn';

  @override
  String get homeReviewVerifyPreTrip => 'Ath-sgrùdadh & Dèan dearbhadh Ro-Trip';

  @override
  String get homeSearchHint => 'Rathannan rannsachaidh';

  @override
  String get homeStart => 'Tòisich';

  @override
  String get homeTitle => 'Dachaigh';

  @override
  String get homeVehicleOutOfServiceDefault => 'Tha an rathaireachd an-dràsta OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Tha an rathaig deiseil agus air a dhearbhadh airson obrachadh sàbhailte.';

  @override
  String get languageTitle => 'Cànain';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Email no àireamh fòn';

  @override
  String get loginErrorEnterPassword => 'Cuir a-steach facal-faire';

  @override
  String get loginErrorEnterUsername => 'Cuir ainm-cleachdaidh a-steach';

  @override
  String get loginErrorFailed => 'Tha logadh a-steach mì-fhortanach. Feuch ath-chleachdadh.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Cuir a-steach àireamh-phònaichean no puist-d.';

  @override
  String get loginForgotPassword => 'Dh\'fhalbh thu am facal-faire?';

  @override
  String get loginPasswordLabel => 'Pasgadh';

  @override
  String get mapChildrenTooltip => 'Cloinne & luchd-dìon';

  @override
  String get mapConfirmMessage => 'A bheil thu dha-rìribh airson an turas a chrìochnachadh?';

  @override
  String get mapConfirmTitle => 'Dèan dearbhadh';

  @override
  String get mapCurrentPosition => 'Stàite an-dràsta';

  @override
  String get mapNo => 'Cha \'n \'eil';

  @override
  String get mapReconnectMessage => 'Tha ùrachadh àite a \'fuireach gun àill, Feuch an dèan sgrùdadh air an eadar-lìn agad.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'stad';

  @override
  String get mapStopping => 'A \'stad ...';

  @override
  String get mapStopsTooltip => 'Stopps';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Ùrachadh ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'A \'feitheamh airson GPS...';

  @override
  String get mapYes => 'Tha e.';

  @override
  String get splashDriverApp => 'App dràibhear';

  @override
  String get stopsActionUndo => 'Air a chuir dheth';

  @override
  String get stopsCancelledSuccess => 'Air a chuir dheth gu soirbheachail';

  @override
  String get stopsDefaultLabel => 'stad';

  @override
  String get stopsGenericError => 'Chaidh rudeigin ceàrr. Feuch a-rithist.';

  @override
  String get stopsStatusComplete => 'làn';

  @override
  String get stopsStatusDone => 'air a dhèanamh';

  @override
  String stopsSubmitCount(Object count) {
    return 'Cuir a-steach ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Air a chuir a-steach gu soirbheachail';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected air a thaghadh · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Cuir sìos';

  @override
  String get stopsTypePick => 'Tagh';

  @override
  String stopsUndoCount(Object count) {
    return 'Cùl-bhualadh';
  }

  @override
  String get stopsUndoTooltip => 'Cùl/tuiteam às aonais';

  @override
  String get tripConfirmCancel => 'A dh \' ath-dhùnadh';

  @override
  String get tripConfirmOk => 'A-mach';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Tha cead àite riatanach airson turas a thòiseachadh.';

  @override
  String get homeMenuPostCrashReporting => 'Clàraidh às deidh Crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Stàite: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Suidheachadh rannsachaidh (e.g. Market St)';

  @override
  String get crashLocationPickerTitle => 'Tagh àite air mapa';

  @override
  String get crashLocationPickerTooltip => 'Dèan dearbhadh air an àite';

  @override
  String get incidentDashboardDescription => 'Tagh gnìomh gus cumail suas le riaghladh tachartasan no coimhead air aithisgean roimhe.';

  @override
  String get incidentDashboardHeadline => 'Clàraidh-beatha às deidh Crash';

  @override
  String get incidentDashboardLogNew => 'Log Crash Ùr';

  @override
  String get incidentDashboardLogNewSubtitle => 'Cuir air bhog aithisg ùr air casg ceum air ceum';

  @override
  String get incidentDashboardTitle => 'An t-Ionadh às deidh Crash';

  @override
  String get incidentDashboardViewHistory => 'Sealladh eachdraidh';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Faic aithisgean crash roimhe agus staid';

  @override
  String get incidentDetailsAdminLetter => 'Litir ri Rianachd';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Testean-uisge Alcohol Countdown (2-Hr Limit)';

  @override
  String get incidentDetailsBranchId => 'ID Seanair';

  @override
  String get incidentDetailsBusPlate => 'Placaid Cead-Bus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Tha buaidh luaidhe: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'A \' toirt seachad iomradh do shoithiche';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Co-òrdanaidean: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title air a cho-dhùnadh gu clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copies to Clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Ceann-latha & Uaire: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Clàr DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Air a \'chiad ìre de na h-ìomhaighean a tha air an toirt seachad.';

  @override
  String get incidentDetailsDriverNotes => 'Notaichean dràibhear:';

  @override
  String get incidentDetailsDriverUserId => 'ID Cleachdaiche dràibhear';

  @override
  String get incidentDetailsDrugCountdown => 'Co-mheas-a-mach deuchainn drogaichean DOT (8-uair-chùis)';

  @override
  String get incidentDetailsFatalityOccurred => 'Thachair Fatality';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Air a \' chàradh';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Leòn a dh\'fheumas làimhseachadh meidigeach';

  @override
  String get incidentDetailsLawEnforcement => 'Buidheann a \' cur an gnìomh an Dhlàigh';

  @override
  String get incidentDetailsLoadFailed => 'Cha do chuir mi seachad mion-fhiosrachadh.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Suidheachadh: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Ceangalaichean meadhanan';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Stàite: $status';
  }

  @override
  String get incidentDetailsNo => 'NO';

  @override
  String get incidentDetailsNoMediaAttachments => 'Chan eil dealbhan no bhideothan ceangailte.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Cha robh sgoilearan air an bord aig àm an teagamh.';

  @override
  String get incidentDetailsNotificationsDesc => 'A \'dèanamh aithisgean fiosrachaidh agus a\' cur litrichean teamplaid gu luchd-ùghdarras na sgìre no rianachd.';

  @override
  String get incidentDetailsNotificationsTitle => 'Fiosrachadh tar-chuir';

  @override
  String get incidentDetailsOfficer => 'Fiosrachadh oifigear';

  @override
  String get incidentDetailsPoliceReport => 'Àireamh aithisg Poilis';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Litir tar-chuir air a lìonadh ro-làimh:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Stèidhichte ri riaghlaidh:';

  @override
  String get incidentDetailsRouteId => 'ID slighe';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Sanasachd Rianachd na Sgoile';

  @override
  String get incidentDetailsStatusPending => 'A \' feitheamh';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Fiosrachadh: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Leòn';

  @override
  String get incidentDetailsStudentNoInjury => 'Chan eil leòn ann';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Teann: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Air a ghiùlan gu: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Oileanaich air Bòrd ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NO TESTING POIS-CASH A \'Fuaireadh';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Stàite: $status';
  }

  @override
  String get incidentDetailsTitle => 'Fiosrachadh air an t-suidheachadh';

  @override
  String get incidentDetailsVehicleTowed => 'Inneal a \' Cuairteachadh';

  @override
  String get incidentDetailsYes => 'A-NAS';

  @override
  String get incidentHistoryEmpty => 'Chan eil clàran teagamh clàraichte airson an inneal seo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Cha do ghabh logs a thoirt air ais: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Am: $time Bus: $busNumber Testing: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Air a \' chàradh';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Chan eil e riatanach';

  @override
  String get incidentHistoryTestingRequired => 'RABHAL';

  @override
  String get incidentHistoryTitle => 'Clàr-clàraidh tachartasan às deidh Crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Cuir dealbh eile ris';

  @override
  String get incidentIntakeBadgeNumberError => 'Riatanas';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Àireamh an t-seadail *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Àireamh bus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Dealbh Dealbh-Cluiche';

  @override
  String get incidentIntakeCitationSubtitle => 'An deach aithris gluasad air sgrìochadh trafaic a thoirt a-mach don dràibhear bus sgoile?';

  @override
  String get incidentIntakeCitationTitle => 'A \'toirt seachad iomradh?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NO TESTING NO CHRÈACHED';

  @override
  String get incidentIntakeDotTestingRequired => 'CHANNAIL DE TESTING';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Sgriobadair: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Cuir a-steach notaichean a bharrachd mu cho-dhùnadh...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notaichean-cruinneachaidh';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Cha do chuir luchd-siubhail slighe a-steach: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Cuir fianais ris (Fothan) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'An do tharla aon bhàtaidhean mar thoradh air an tubaist seo?';

  @override
  String get incidentIntakeFatalityTitle => 'An Tuairisigh Fatality?';

  @override
  String get incidentIntakeGpsLabel => 'Co-òrdanaidean GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Sealladh eachdraidh';

  @override
  String get incidentIntakeInjuriesSubtitle => 'An do dh\'atharraich duine corporra a dh\'fheumas leigheas meidigeach sa bhad taobh a-muigh an àite-sa?';

  @override
  String get incidentIntakeInjuriesTitle => 'An Eadar-dhealachadh a Dh\'fheumas Cùram Leigheis?';

  @override
  String get incidentIntakeInjuryNotesError => 'Tha aithisg air an leòn riatanach airson oileanaich leòn';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notaichean / Fiosrachadh air Innealan (Dèanta) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Criosadh-chloinneachd *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Cuir a-steach do ghnìomhachas an lagh';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Seirbheis a \'toirt seachad an t-seirbheis a tha air a bhith a\' dèanamh.';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Clàr-obrach an Dlighe & Poilis';

  @override
  String get incidentIntakeLocationDescError => 'Cuir a-steach mìneachadh àite';

  @override
  String get incidentIntakeLocationDescLabel => 'Sgriobadh an àite (e.g. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Sgoirteachadh Leigheis';

  @override
  String get incidentIntakeNoMatchingStudents => 'Chan eil oileanaich co-chòrdail.';

  @override
  String get incidentIntakeNoStudentsFound => 'Cha deach aon oileanaich a lorg.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Chan eil oileanaich air bord. Feuch an cuir thu cuideam NEXT gus leantainn air adhart.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Chan eil sgoilearan air an clàradh airson an t-slighe seo.';

  @override
  String get incidentIntakeOfficerNameError => 'Cuir ainm an oifigear a-steach';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ainm an oifigear *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Cuir a-steach àireamh aithisg poileis';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Àireamh aithisg Poilis *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rath: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Fiosrachadh slighe & dràibhear';

  @override
  String get incidentIntakeSearchInjuredHint => 'Lorg leanabh leòn...';

  @override
  String get incidentIntakeSearchStudentHint => 'Sgoileanach rannsachaidh...';

  @override
  String get incidentIntakeSelectAll => 'Tagh A h-uile Oileanach';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT ON MAP';

  @override
  String get incidentIntakeSeverityFatal => 'Fatail';

  @override
  String get incidentIntakeSeverityMinor => 'Mìor';

  @override
  String get incidentIntakeSeverityModerate => 'Meadhanach';

  @override
  String get incidentIntakeSeveritySevere => 'Sgrìos';

  @override
  String get incidentIntakeSeverityTitle => 'Rannsairean trom-tharraing Crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'SGRUIDH';

  @override
  String get incidentIntakeTitle => 'Taobh a \' Cinn-dhùin Às deidh Crash';

  @override
  String get incidentIntakeTowedSubtitle => 'An do fhuair aon charbad milleadh a bha a \'cur air falbh a\' toirt air a bhith air a tharraing air falbh bhon àite-lìn?';

  @override
  String get incidentIntakeTowedTitle => 'An càr a chaidh a tharraing?';

  @override
  String get incidentIntakeWasInjured => 'An do ghoirteadh?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'A \' dol faisg air';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Beachdan / Notaichean dràibhear (Fhàraid)';

  @override
  String get dvirPreTripNoComments => 'Chan eil beachd air a chur ris.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rath: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Chaidh sonadh a ghlacadh gu soirbheachail.';

  @override
  String get dvirPreTripSigMissing => 'Tha sonadh a dhìth.';

  @override
  String get dvirPreTripSignDefectWarning => 'Dèan sonadh airson dearbhadh ath-chàradh de dhìteachaidhean roimhe.';

  @override
  String get dvirPreTripStepSignOff => 'Comharrachadh';

  @override
  String get dvirPreTripStepSubmit => 'Cuir a-steach';

  @override
  String get dvirPreTripStepVerify => 'Dèan dearbhadh';

  @override
  String get dvirPreTripTapNext => 'Dèan briog air NEXT gus tòiseachadh.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Tha an càr a-mach às an seirbheis';

  @override
  String get dvirPreTripVehicleReady => 'Tha an Carraidean deiseil airson seirbheis';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Stàite ath-dhàimh dearbhadh:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Dèan cinnteach gu bheil na mearachd uile a chaidh aithris air an ath-mhilleadh le bhith a \' ceic an bogsa ri taobh gach mearachd.';

  @override
  String get dvirPreTripYourComments => 'Do Cho-chomharran:';

  @override
  String get countryPickerNoCountries => 'Chan eil dùthchannan air an lorg';

  @override
  String get countryPickerSearchHint => 'Lorg le ainm dùthcha, còd, no còd dial...';

  @override
  String get countryPickerTitle => 'Tagh dùthaich';

  @override
  String get mapDefaultStop => 'stad';

  @override
  String get mapEndLocation => 'An àite-cheann';

  @override
  String get mapStartLocation => 'Start Location';

  @override
  String get stopsNoChangesToUndo => 'Chan eil atharrachaidhean rim faighinn a thoirt air ais.';

  @override
  String get stopsNoStopsAvailable => 'Chan eil stad rim faighinn.';

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
