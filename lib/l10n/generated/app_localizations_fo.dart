import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Faroese (`fo`).
class AppLocalizationsFo extends AppLocalizations {
  AppLocalizationsFo([String locale = 'fo']) : super(locale);

  @override
  String get appInfoBuild => 'Bústaðartalið';

  @override
  String get appInfoDevice => 'Løgregla';

  @override
  String get appInfoOS => 'OS útgávan';

  @override
  String get appInfoPackage => 'Pakki';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App útgávan';

  @override
  String get appTitleSchoolDiary => 'SD-spurning';

  @override
  String get childrenActionGuardians => 'Varðarar';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Lættindi til at hava umsorgan fyri $name';
  }

  @override
  String get childrenNoGuardians => 'Ongin av teimum, sum hava ábyrgdina av hesum barninum, er í skránni.';

  @override
  String get childrenStatusDropped => 'Feltur niður';

  @override
  String get childrenStatusPending => 'At bíða';

  @override
  String get childrenStatusPicked => 'Vældu';

  @override
  String childrenTitle(Object routeName) {
    return 'Børn  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ATFALT/OKT á BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bussur:';
  }

  @override
  String get drillChecklistEvacuated => 'Útflýggjað';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Útflýggjaði: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ongar frástaddar næmingar.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ongin næmingur er á bussi.';

  @override
  String get drillChecklistNotOnBus => 'Ikki í bussini';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Í bussini  ikki evakuerað';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Í BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Hvussu vit hava fingið vitnisburð';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Vegurin (live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Síðani at kanna, hvussu útflýggjað verður';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Ókendur næmingar eru eftir!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ert tú vísur í, at tú ynskir at senda inn hesa borarlógina?';

  @override
  String get drillEvidenceConfirmSubmission => 'Vís at tú hevur latið drill';

  @override
  String get drillEvidenceDriverNotesHint => 'Lýst útgerðina, atferðina hjá næmingunum, útgangsvegini, og hvørjar undantøk hava verið...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Brúkarar við førara (minimum 10 persónar):';

  @override
  String get drillEvidenceFailed => 'Tað hevur ikki eydnast at leggja fram';

  @override
  String get drillEvidenceMandatoryWarning => 'Minst ein mynd ella myndatøka er kravd til at senda eina øking.';

  @override
  String get drillEvidenceRecordVideo => 'Skriva video';

  @override
  String get drillEvidenceRetrySubmission => 'TILFIRKING';

  @override
  String get drillEvidenceReturnToDashboard => 'VINDUR til telduborð';

  @override
  String get drillEvidenceSubmitButton => 'Færri at gera';

  @override
  String get drillEvidenceSubmitting => 'Eg leggur inn drilling log...';

  @override
  String get drillEvidenceSuccess => 'Tað hevur eydnast!';

  @override
  String get drillEvidenceSuccessMessage => 'Útflytingarborin er upplagdur og er í bíligari góðkenning.';

  @override
  String get drillEvidenceTakePhoto => 'Set teg í mynd';

  @override
  String get drillEvidenceTitle => 'Týdningarmikið prógv';

  @override
  String get drillEvidenceUploading => 'Uppheftir av prógvum og tølum um eftirlitslista';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bussur:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vísitøka:';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark var við';

  @override
  String get drillRosterNoStudents => 'Ongin næmingur er skrásettur á hesi leiðini.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Núverandi: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Gævi at kanna';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Vegurin:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sætið:';
  }

  @override
  String get drillRosterSelectAll => 'Vel alt';

  @override
  String get drillSummaryAdminNotesTitle => 'Umsitingar';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Vinnurkendur til:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Vinnur at';

  @override
  String get drillSummaryBackToDrills => 'Til baka til drill';

  @override
  String get drillSummaryBusNumber => 'Bussnummar';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Tað er:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Útbúgvingaruppgávur';

  @override
  String get drillSummaryDriverNotesTitle => 'Brúkarar við førara';

  @override
  String get drillSummaryDuration => 'Tíðtíð';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -';
  }

  @override
  String get drillSummaryEndTime => 'Endartíð';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Útflýggjaði: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Útflýggjaði';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Vísindaliga miðlauppskot';

  @override
  String get drillSummaryGps => 'GPS-samansetingar';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Tað eydnaðist ikki at lata borufrásøgnina til ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Eingin avborðsgøgn er funnin.';

  @override
  String get drillSummaryNotOnBus => 'Ikki í bussini';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Á BUS - ikki rikin út';

  @override
  String get drillSummaryPhotoEvidence => 'Myndfrøðilig prógv';

  @override
  String get drillSummaryRouteId => 'Rúttrýsturin';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sætið:';
  }

  @override
  String get drillSummaryStartTime => 'Tíðin at byrja';

  @override
  String get drillSummaryStatus => 'Støða';

  @override
  String get drillSummaryStudentLogTitle => 'Útflýggjingarlóg hjá næmingum';

  @override
  String drillSummaryTitle(Object id) {
    return 'Summarprísurin av drillingunum (#$id)';
  }

  @override
  String get drillSummaryType => 'Brúkarartími';

  @override
  String get drillSummaryVideoEvidence => 'Video-upplýsingar';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bussurin';
  }

  @override
  String get drillTypeClassification => 'Vel útborðsløgu:';

  @override
  String get drillTypeCustomHint => 'Set teg í tímalønna evakueringsborð...';

  @override
  String get drillTypeInvalidState => 'Ógildi ferðavinnuvegur ella vegleiðingartilstand.';

  @override
  String get drillTypeNameBusFire => 'Bussurin brennur';

  @override
  String get drillTypeNameDangerZone => 'Hjá teimum';

  @override
  String get drillTypeNameDriverIncapacitation => 'Førarin hevur ikki møguleika at koyra';

  @override
  String get drillTypeNameEquipmentOrientation => 'Tilfar til útgerð';

  @override
  String get drillTypeNameFrontDoor => 'Útvarpurin';

  @override
  String get drillTypeNameOthers => 'Aðrir';

  @override
  String get drillTypeNameRearDoor => 'Síðstu hurðin';

  @override
  String get drillTypeNameSideOrRoof => 'Síðani ella uppií';

  @override
  String get drillTypeNameSplit => 'Spjaða';

  @override
  String get drillTypeNoRouteSelected => 'Ongin vegur valdur';

  @override
  String get drillTypePreparation => 'Ráðgeving';

  @override
  String get drillTypeProceed => 'Greið til næmingarnar';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Vegurin:';
  }

  @override
  String get drillTypeSelectRoute => 'Vel vegleiðing:';

  @override
  String get drillTypeSpecifyCustom => 'Skriv til hvussu drill-type verður lýst:';

  @override
  String get drillTypeTitle => 'Vel tegning av boringartípinum';

  @override
  String get drillTypeWarning => 'Tryggja, at akførini eru parkerðir trygt, áðrenn farið verður undir at gera verkætlanina.';

  @override
  String get drillsAssignedVehicle => 'Kanska er tað ikki neyðugt at taka avgerð um, at ein kundi gera tað.';

  @override
  String get drillsChecking => 'Eg royni at...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vísir #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Eingin bussur er tillutaður';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ongar venjingar hava verið skrásettar fyri buss $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Ongar leiðir eru at finna til at byrja eina venjing.';

  @override
  String get drillsShowSummary => 'Sýningaruppskotið';

  @override
  String get drillsStartDrill => 'Byrja at bora';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Útbúgvingar: $date Støða: $status';
  }

  @override
  String get drillsTitle => 'Útflýggingarvenjingar';

  @override
  String get drillsVehicleOutOfService => 'Bilurin er avlýstur';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Hesin bilurin er í løtuni ikki í nýtslu og kann ikki brúkast til venjing.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-flokkurin';

  @override
  String get driverDetailsDrivingLicenseLabel => 'KVÍRARKJARLÍSKI';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nøvn:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Fuglari';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Skúlabussur';

  @override
  String get driverDetailsEndorsementsTitle => 'Vinnubyrgdin varð hildin';

  @override
  String get driverDetailsExpiryDateLabel => 'Útgangsdagur';

  @override
  String get driverDetailsHolderSignature => 'HALDARINSÍ undirskrift';

  @override
  String driverDetailsId(Object driverId) {
    return 'Íd:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Útgávusdagur';

  @override
  String get driverDetailsLicenseDocTitle => 'Líkiseftirlit';

  @override
  String get driverDetailsLicenseNoLabel => 'Útbúgvingaruppskotið nr.';

  @override
  String get driverDetailsLicenseTitle => 'Umhvørvislógar';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lík av loyvi';

  @override
  String get driverDetailsOfficialSeal => 'STATSÁLGI TÍM';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLASA:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Endur:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Útbúgvingarstovnurin';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN:';
  }

  @override
  String get driverDetailsTapToView => 'Trýst á at síggja DL-skjal';

  @override
  String get driverDetailsTitle => 'Brúkararuppgávur';

  @override
  String get dvirCategoryBusSafetySystems => 'Bussar-specifiskar trygdar skipanir';

  @override
  String get dvirCategoryCouplingDevices => 'Koppingartilfar';

  @override
  String get dvirCategoryEmergencyEquipment => 'Bráðfeingisútgerð';

  @override
  String get dvirCategoryHorn => 'Hornur';

  @override
  String get dvirCategoryLightingReflectors => 'Ljósbrenningar og speglar';

  @override
  String get dvirCategoryMirrors => 'Síðuskrillur';

  @override
  String get dvirCategoryParkingBrake => 'Parkeringsbremsur';

  @override
  String get dvirCategoryPassengerSeating => 'Sælir og avmarkingar hjá ferðafólki';

  @override
  String get dvirCategoryServiceBrakes => 'Bremsur fyri tænastu';

  @override
  String get dvirCategorySteeringMechanism => 'Stýrismechanismur';

  @override
  String get dvirCategoryTires => 'Týrar';

  @override
  String get dvirCategoryWheelsRims => 'Hjól og rím';

  @override
  String get dvirCategoryWipers => 'Vindagløddir';

  @override
  String get dvirPostTripCapturePhoto => 'FOTÓRIN:';

  @override
  String get dvirPostTripComplianceTitle => 'SELVÍGJING';

  @override
  String get dvirPostTripDefectButton => 'Falsligur trupulleiki';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'At siga frá, at ein feilur er fyri uttan mynd';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Vís: Tú melda teg um ein brek í trygdarøkinum ($zones) uttan at leggja eina mynd við.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Eftirlit: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Fær ítarnar um trygdarviðurskiftini...';

  @override
  String get dvirPostTripNotesLabel => 'MÁSÍGJAR (MANDATUR um defekt) & FOTÓ';

  @override
  String get dvirPostTripNotesPassedHint => 'Vel DEFECT fyri at seta upplýsingar um trygdarviðurskifti...';

  @override
  String get dvirPostTripOdometerHeader => 'Núverandi Odometer at lesa';

  @override
  String get dvirPostTripOdometerInstructions => 'Set í kilometralestur, sum júst er víst á bussins instrumentpanel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (millur)';

  @override
  String get dvirPostTripOdometerTitle => 'KÍRÍKUR RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Vinarliga leggur tú inn á ferðametrin fyri at lesa, áðrenn tú fert í gongd.';

  @override
  String get dvirPostTripPassButton => 'Færri';

  @override
  String get dvirPostTripPhotoAttached => 'Mynd viðgjørd við góðum árangri.';

  @override
  String get dvirPostTripProgressLabel => 'Útbúgvingartilgongd';

  @override
  String get dvirPostTripSignatureCaptured => 'Signingurin er tikin.';

  @override
  String get dvirPostTripSignatureCert => 'Eg staðfesti, at hesin vegleiðingartilfarin er fullførdur í samsvar við FMCSA 396.11 reglur.';

  @override
  String get dvirPostTripSignatureTitle => 'At staðfesta at førarin hevur undirskrift';

  @override
  String get dvirPostTripSubmitButton => 'Sending til eftirlit';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR hevur framt við góðum úrslitum.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'VÍF-sjón _V0__ av _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V0__ / V1__ øki';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Eg viðgangi, at eg havi gjøgnumgingið seinasta innlattu feiktabýtið og kannað viðgerðina (um tað er) og sagt, at bussurin er tryggur til at virka.';

  @override
  String get dvirPreTripActiveMessage => 'Henda bilin er aktivur og hevur ikki opin feilir.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Virkandi vegurin: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTAGIR: Færur, sum hava verið fyri undan';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Buss nr.:';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'KÍRÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍSÍ';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Tað er ikki gjørligt at skriva undir:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Eingin fyrrabrekning hevur verið skrásett';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Hesin bilurin varð upplýstur, at hann var reinur í fyrra eftirferðarskiftuni.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Tað er ikki neyðugt at gera reparatiónir fyri at virka trygt.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Henda bilin er avlýstur til at verða viðgjørdur/viðgjørdur.';

  @override
  String get dvirPreTripOutofServiceButton => 'KÍRUV úr tænastu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Orsøkin:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Útlit um nýggjar brek';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'At siga frá nýggjum brekum verður sloppið í undirgerðini.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Støða:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Flutningurin um, hvussu nógv fólk kunnu fáa burturúr';

  @override
  String get dvirPreTripReturnToHomeButton => 'VINDUR HUM';

  @override
  String get dvirPreTripSignOffTitle => 'Signar til at ganga í gongd';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikatiónin er góðtikin.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'STRÍKING';

  @override
  String get dvirPreTripTitle => 'Verifikering áðrenn ferðina';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Hjá fartelefonini er tað ikki møguligt at flyta.';
  }

  @override
  String get dvirSigDrawTitle => 'Tekna undirskrift';

  @override
  String get dvirSigPreviewLabel => 'Fáa fyrireiking av undirskriftini:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SKAF undirskriftina';

  @override
  String get dvirSigTapToDraw => 'TAP til at tekna undirskrift (ØVT)';

  @override
  String get dvirSigWatermark => 'Signa vertikalt (frá botn til oman)';

  @override
  String get forgotPasswordCancel => 'Avlýs';

  @override
  String get forgotPasswordEmailLabel => 'Teldupost';

  @override
  String get forgotPasswordInvalidEmail => 'Vinarliga skriva ein váttan teldupost';

  @override
  String get forgotPasswordSend => 'Send tær';

  @override
  String get forgotPasswordSuccess => 'Um tann teldupostin er til, er ein avsetningsleinkur sendur.';

  @override
  String get genericBack => 'Til at venda aftur';

  @override
  String get genericCancel => 'Avlýs';

  @override
  String get genericClear => 'KLÁR';

  @override
  String get genericClose => 'Tær eru nærri';

  @override
  String get genericConfirm => 'Vísandi staðfesting';

  @override
  String get genericEdit => 'Rætta';

  @override
  String get genericError => 'Onkur gekk skeivt.';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericNext => 'Nærri';

  @override
  String get genericOk => 'Ok, tað er so gott.';

  @override
  String get genericRetry => 'Royn aftur';

  @override
  String get genericSuccess => 'Tað hevur eydnast';

  @override
  String homeBusLabel(Object busId) {
    return 'Bussur:';
  }

  @override
  String get homeDispatchBlocked => 'Skiftið avvarðandi';

  @override
  String get homeDispatchBlockedTitle => 'Skiftið avvarðandi';

  @override
  String get homeErrorNoRoutesPreTrip => 'Ongar ruter eru at finna til at gera Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Tað eydnaðist ikki at seta ferðina á servara: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Heilsan, V0__';
  }

  @override
  String get homeLogout => 'Útgávan';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'At taka av';

  @override
  String get homeMenuDriverDetails => 'Brúkararuppgávur';

  @override
  String get homeMenuLanguage => 'Talan';

  @override
  String get homeMenuPreTrip => 'Eftirlit fyri ferðini';

  @override
  String get homeNoRoutes => 'Ongar ruter eru at fáa';

  @override
  String get homeReviewVerifyPreTrip => 'Sí og staðfesta fyri ferðina';

  @override
  String get homeSearchHint => 'Leitarleiðir';

  @override
  String get homeStart => 'Byrja við';

  @override
  String get homeTitle => 'Heimurin';

  @override
  String get homeVehicleOutOfServiceDefault => 'Kjólurin er í løtuni OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Kjólurin er klárur og verifestur fyri tryggan atgongd.';

  @override
  String get languageTitle => 'Talan';

  @override
  String get loginButton => 'At logga inn';

  @override
  String get loginEmailOrPhoneLabel => 'Teldupost ella telefonnummar';

  @override
  String get loginErrorEnterPassword => 'Vinarliga skriva inn loyniorð';

  @override
  String get loginErrorEnterUsername => 'Vinarliga skriva inn brúkaranavn';

  @override
  String get loginErrorFailed => 'Logging eydnaðist. Vinarliga royn aftur.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Vinarliga skriva ein váttan teldupost ella telefonnummar inn';

  @override
  String get loginForgotPassword => 'Hevur tú gloymt loyniorð?';

  @override
  String get loginPasswordLabel => 'Loyniorð';

  @override
  String get mapChildrenTooltip => 'Børn og avvarðandi';

  @override
  String get mapConfirmMessage => 'Vil tú veruliga enda túrin?';

  @override
  String get mapConfirmTitle => 'Vísandi staðfesting';

  @override
  String get mapCurrentPosition => 'Núverandi støðan';

  @override
  String get mapNo => 'Nei, tað er ikki';

  @override
  String get mapReconnectMessage => 'Um støðan ikki er uppdaterað ofta, so síggj á netinum.';

  @override
  String get mapReconnectTitle => 'Fylgingar';

  @override
  String get mapStop => 'Hættu!';

  @override
  String get mapStopping => 'At steðga...';

  @override
  String get mapStopsTooltip => 'Stoppur';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Uppdaterað fyri 0 árum síðani';
  }

  @override
  String get mapWaitingGps => 'Vænta eftir GPS...';

  @override
  String get mapYes => 'Ja, tað er tað.';

  @override
  String get splashDriverApp => 'Brúkarar app';

  @override
  String get stopsActionUndo => 'Undantakligt';

  @override
  String get stopsCancelledSuccess => 'Avlýst við góðum góðum';

  @override
  String get stopsDefaultLabel => 'Hættu!';

  @override
  String get stopsGenericError => 'Onkur gekk skeivt. Vinarliga royni eg aftur.';

  @override
  String get stopsStatusComplete => 'fullføra';

  @override
  String get stopsStatusDone => 'gjørt';

  @override
  String stopsSubmitCount(Object count) {
    return 'Setur inn ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Útlevni';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected valdur ___ _$done/$total _$status';
  }

  @override
  String get stopsTypeDrop => 'Fylg';

  @override
  String get stopsTypePick => 'Velur tú';

  @override
  String stopsUndoCount(Object count) {
    return 'Undo ($count)';
  }

  @override
  String get stopsUndoTooltip => 'At taka/seta av';

  @override
  String get tripConfirmCancel => 'Avlýs';

  @override
  String get tripConfirmOk => 'Tað er í lagi.';

  @override
  String get tripConfirmTitle => 'Fylgingar';

  @override
  String get tripErrorLocationRequired => 'Til ber at fáa loyvi til at fara á ferð.';

  @override
  String get homeMenuPostCrashReporting => 'Frágreiðing eftir brotsbrot';

  @override
  String homeVehicleReason(Object reason) {
    return 'Orsøkin:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Støða:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: _V0__, Lng: _V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Søgulig støða (t.d. Market St)';

  @override
  String get crashLocationPickerTitle => 'Vel staðseting á kortið';

  @override
  String get crashLocationPickerTooltip => 'Vís staðfest staðsetingina';

  @override
  String get incidentDashboardDescription => 'Vel eina tilgongd fyri at fara víðari við at handfara hendingar ella at síggja fyrru frágreiðingar.';

  @override
  String get incidentDashboardHeadline => 'Frágreiðing um hendingar eftir kollveltingina';

  @override
  String get incidentDashboardLogNew => 'Logging Nýggj brots';

  @override
  String get incidentDashboardLogNewSubtitle => 'At seta eina nýggja støddarsetingarupptøku í verk';

  @override
  String get incidentDashboardTitle => 'Ein hending eftir at brotsstovnurin varð';

  @override
  String get incidentDashboardViewHistory => 'Sí søguna';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Sí fyrru kollveltingarmeldingar og støðan';

  @override
  String get incidentDetailsAdminLetter => 'Brævið til leiðara';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholprøvningar (2 tímar)';

  @override
  String get incidentDetailsBranchId => 'Útbúgvingarnar';

  @override
  String get incidentDetailsBusPlate => 'Bussar loyvisbrøv';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Útbúgvingarvirksemi:';
  }

  @override
  String get incidentDetailsCitationIssued => 'Bræv til bilføraran';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Samtøk: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0__ koppaði til klippborðið!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopiera til kliskborðið';

  @override
  String get incidentDetailsCrashCitationInfo => 'Brots & Frágreiðing Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Dagurin og tíðin: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Útlit frá ST';

  @override
  String get incidentDetailsDoeReportTitle => 'Útlit frá STE (útboð)';

  @override
  String get incidentDetailsDriverNotes => 'Brúkarar:';

  @override
  String get incidentDetailsDriverUserId => 'Brúkararidentifikatorur';

  @override
  String get incidentDetailsDrugCountdown => 'DOT-royndir til at taka aftur (8 tímar)';

  @override
  String get incidentDetailsFatalityOccurred => 'Dømiliga lívsneyðug';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Hjáboðan #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Sjúkraviðgerð krevst fyri sær';

  @override
  String get incidentDetailsLawEnforcement => 'Tjóðveldi';

  @override
  String get incidentDetailsLoadFailed => 'Tað eydnaðist ikki at lata inn upplýsingar.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Staður:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Flutningurin til miðlar';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Støða:';
  }

  @override
  String get incidentDetailsNo => 'Nei, tað er ikki';

  @override
  String get incidentDetailsNoMediaAttachments => 'Eingin mynd ella video er lagt við.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Eingin næmingur var merkt umborð undir hendingini.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generera kunningarmeldingar og senda fyritøkubrøv til økisleiðarar ella fyrisitingar.';

  @override
  String get incidentDetailsNotificationsTitle => 'Kunningar um sendingar';

  @override
  String get incidentDetailsOfficer => 'Umstøðurnar hjá starvsfólkunum';

  @override
  String get incidentDetailsPoliceReport => 'Politiska greiningartalið';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Fylgjandi sendingarbræv:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Umsitingargrundarlag:';

  @override
  String get incidentDetailsRouteId => 'Rúttrýsturin';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Kunning frá skúlastjóra';

  @override
  String get incidentDetailsStatusPending => 'At bíða';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Umsitingar:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Sjúklingur';

  @override
  String get incidentDetailsStudentNoInjury => 'Eingin skaða';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Støða:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Fluturin til:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Næmingar umborð ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Tað er ikki neyðugt at royna eftir brotsbrot';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Støða:';
  }

  @override
  String get incidentDetailsTitle => 'Umstøðurnar';

  @override
  String get incidentDetailsVehicleTowed => 'Kjól til at taka';

  @override
  String get incidentDetailsYes => 'Ja, tað er tað.';

  @override
  String get incidentHistoryEmpty => 'Ongar hendingar eru skrásettar fyri hesum bilinum.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Tað eydnaðist ikki at fáa logg: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tíðin: _V0__ Bus: _V1__ Testing: _V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Hjáboðan #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Tað er ikki neyðugt';

  @override
  String get incidentHistoryTestingRequired => 'Kanska';

  @override
  String get incidentHistoryTitle => 'Eftir at ein brotsfall er fyri, er tað ikki neyðugt at skriva til';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Legg enn eina mynd afturat';

  @override
  String get incidentIntakeBadgeNumberError => 'Tað er neyðugt';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Skiljuplássnummar *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Buss nr.:';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fáa mynd av hendingarøðini';

  @override
  String get incidentIntakeCitationSubtitle => 'Var ein rørdur trafikksbroytingarfrágreiðing útgivin til skúlabussføraran?';

  @override
  String get incidentIntakeCitationTitle => 'Er tað útgivið?';

  @override
  String get incidentIntakeDateTimeLabel => 'Brotsdagur og tíð *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Tað er ikki neyðugt at royna';

  @override
  String get incidentIntakeDotTestingRequired => 'Tað er neyðugt at kanna';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Kørarin:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Set inn allar aðrar viðmerkingar um kollisionina...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Atkvøðurætturin';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Tað eydnaðist ikki at lasta ferðafólki á leiðini: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Legg prógv við (fotograf) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Er nakar deyður av hesum óhappi?';

  @override
  String get incidentIntakeFatalityTitle => 'Er tað ein deyða?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-samansetingar *';

  @override
  String get incidentIntakeHistoryTooltip => 'Sí søguna';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Var nakar, sum hevði fingið kropsliga skaða, og sum hevði tørv á skjótari læknaviðgerð uttanfyri staðin?';

  @override
  String get incidentIntakeInjuriesTitle => 'Hevur tú skaða, sum krevur læknaviðgerð?';

  @override
  String get incidentIntakeInjuryNotesError => 'Skatið er kravt fyri skaddar næmingar';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Úrslit um skaða / upplýsingar (tvingandi) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Sjúkdómur í skammuni *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Vinarliga ber til at seta teg inn í løgreglustøðuna';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Stýrisstovan (t.d. Landsstýrismaðurin fyri vegferðslumálum) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rættindaskipanir og løgreglan';

  @override
  String get incidentIntakeLocationDescError => 'Vinarliga skriva út staðsetingarupplýsing';

  @override
  String get incidentIntakeLocationDescLabel => 'Umsiting (t.d. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Sjúkrahús verður flutt til';

  @override
  String get incidentIntakeNoMatchingStudents => 'Eingin samansettur næmingur.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ongin næmingur er funnin.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Eingin næmingur umborð.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ongin næmingur hevur tikið seg inn á hesa leiðina.';

  @override
  String get incidentIntakeOfficerNameError => 'Vinarliga skriva navn á embætismanninum';

  @override
  String get incidentIntakeOfficerNameLabel => 'Navnið á løgmanni *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Vinarliga skriva inn politisku greiningarættinum';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Politiska kunngerð nr.';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Vegurin:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Vegleiðing og koyringarupplýsingar';

  @override
  String get incidentIntakeSearchInjuredHint => 'Leita eftir særdum barni...';

  @override
  String get incidentIntakeSearchStudentHint => 'Leita eftir næmingum...';

  @override
  String get incidentIntakeSelectAll => 'Vel øll næmingar';

  @override
  String get incidentIntakeSelectOnMap => 'VELTUR á kortinum';

  @override
  String get incidentIntakeSeverityFatal => 'Tað er ólukkuligt.';

  @override
  String get incidentIntakeSeverityMinor => 'Minni';

  @override
  String get incidentIntakeSeverityModerate => 'Máttað';

  @override
  String get incidentIntakeSeveritySevere => 'Tað er ógvuliga hart';

  @override
  String get incidentIntakeSeverityTitle => 'Støddar við brotsvørum';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Íd:';
  }

  @override
  String get incidentIntakeSubmitButton => 'STRÍKING';

  @override
  String get incidentIntakeTitle => 'Einans av inntøkum eftir brotsbrot';

  @override
  String get incidentIntakeTowedSubtitle => 'Hevur nakar bil fingið skadd, sum gjørdi, at hann skuldi sleptur frá staðnum?';

  @override
  String get incidentIntakeTowedTitle => 'Er bilurin sleptur?';

  @override
  String get incidentIntakeWasInjured => 'Var hann sligin?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bussur:';
  }

  @override
  String get dvirPreTripClose => 'TAKKUR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Brúkarar/merki (við val)';

  @override
  String get dvirPreTripNoComments => 'Eingin viðmerking er lagt afturat.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Orsøkin:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Vegurin:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signingurin er mettur.';

  @override
  String get dvirPreTripSigMissing => 'Undirskriftin er ikki.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signa fyri at staðfesta, at fyrri brek eru lagdar.';

  @override
  String get dvirPreTripStepSignOff => 'Undirskriftin';

  @override
  String get dvirPreTripStepSubmit => 'Setur inn';

  @override
  String get dvirPreTripStepVerify => 'Verið at';

  @override
  String get dvirPreTripTapNext => 'Vinarliga trýst á NEXT fyri at halda fram.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Bilurin er avlýstur';

  @override
  String get dvirPreTripVehicleReady => 'Bilurin er klárur til tænastu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Vinnandi viðgerð:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Vinarliga skal tú kanna, at øll melddu brek eru lagað, við at tú tekur venjingina við hvørt brek.';

  @override
  String get dvirPreTripYourComments => 'Tínar viðmerkingar:';

  @override
  String get countryPickerNoCountries => 'Eingin lond funnin';

  @override
  String get countryPickerSearchHint => 'Leita eftir landnum, koduni ella talvnum...';

  @override
  String get countryPickerTitle => 'Vel landið';

  @override
  String get mapDefaultStop => 'Hættu!';

  @override
  String get mapEndLocation => 'Endarstaður';

  @override
  String get mapStartLocation => 'Byrja staðseting';

  @override
  String get stopsNoChangesToUndo => 'Ongar broytingar kunnu broytast.';

  @override
  String get stopsNoStopsAvailable => 'Eingin steðg er at fáa.';
}
