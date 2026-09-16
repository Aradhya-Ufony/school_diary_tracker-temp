import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appInfoBuild => 'Byggðu númer';

  @override
  String get appInfoDevice => 'Tækimynd';

  @override
  String get appInfoOS => 'Þætting á OS';

  @override
  String get appInfoPackage => 'Fylgingar';

  @override
  String get appInfoTitle => 'Upplýsingar um app';

  @override
  String get appInfoVersion => 'Þætting á app';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Varðarmenn';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Heimildir vörslumenn fyrir $name';
  }

  @override
  String get childrenNoGuardians => 'Engir fulltrúa verđendur eru í gögnum um barnið.';

  @override
  String get childrenStatusDropped => 'Fylgt';

  @override
  String get childrenStatusPending => 'Á eftir';

  @override
  String get childrenStatusPicked => 'Skilinn';

  @override
  String childrenTitle(Object routeName) {
    return 'Börn  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'FARLÍKUR / EKKI á BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Rútu:';
  }

  @override
  String get drillChecklistEvacuated => 'Útflutningsþjónusta';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Útflutnings: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Engin fjarverandi nemendur.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Enginn nemendur sem eru merktir í strætó.';

  @override
  String get drillChecklistNotOnBus => 'Ekki í strætó';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Á BUSS  Óflýtt';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Á BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Gengið er að taka gögn';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Leiðin (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Skilgreiningarlistur á útrýmingarþjálfun';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Ófráfráður nemandi er eftir!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ertu viss um að þú vilt senda inn borgunarskrá?';

  @override
  String get drillEvidenceConfirmSubmission => 'Staðfesting fyrirboðsins';

  @override
  String get drillEvidenceDriverNotesHint => 'Lýstu framkvæmd æfinga, hegðun nemenda, útgangsmöguleika og einhverju undantekningu sem fylgist með...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Ökumennskunarröskun (minimum 10 stafir):';

  @override
  String get drillEvidenceFailed => 'Framlag hefur ekki náðst';

  @override
  String get drillEvidenceMandatoryWarning => 'Að minnsta kosti 1 mynd- eða myndbandsgögn er skylt til að skila fyrirborgun.';

  @override
  String get drillEvidenceRecordVideo => 'Skráðu myndband';

  @override
  String get drillEvidenceRetrySubmission => 'FÁRRGÍF';

  @override
  String get drillEvidenceReturnToDashboard => 'KANNIR á stýrikerfið';

  @override
  String get drillEvidenceSubmitButton => 'Fylgstu við að fá að fá';

  @override
  String get drillEvidenceSubmitting => 'Ég er að senda inn drill log...';

  @override
  String get drillEvidenceSuccess => 'Að undirgefa sig vel!';

  @override
  String get drillEvidenceSuccessMessage => 'Útgönguskrárinn hefur verið upplagdur og er í biđni samþykkis.';

  @override
  String get drillEvidenceTakePhoto => 'Snímaðu';

  @override
  String get drillEvidenceTitle => 'Þörf á prófum';

  @override
  String get drillEvidenceUploading => 'Uppfærsla sönnunargögn og gögn um eftirlitslista';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Rútu:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Þraut:';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark á fundinum';

  @override
  String get drillRosterNoStudents => 'Enginn nemandi er skráður á þessari leið.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Núverandi: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'GERJUR til að draga eftirlit';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Leiðvegur:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sæti:';
  }

  @override
  String get drillRosterSelectAll => 'Veldu öll';

  @override
  String get drillSummaryAdminNotesTitle => 'Skráningar';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Vinnur til:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Samþykkt';

  @override
  String get drillSummaryBackToDrills => 'Til baka við drills';

  @override
  String get drillSummaryBusNumber => 'Bílanúmer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Leiðbeinendur:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Upplýsingar um borun';

  @override
  String get drillSummaryDriverNotesTitle => 'Kennsla ökumanns';

  @override
  String get drillSummaryDuration => 'Ástand';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'V0__ mín __ V1__ sek';
  }

  @override
  String get drillSummaryEndTime => 'Endartíma';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Útflutnings: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Útfluttuð';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Vísindaupplýsingar í fjölmiðlum';

  @override
  String get drillSummaryGps => 'GPS-samhæfingar';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'LNG: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ekki hefur verið hægt að hlaða borðgreiningu fyrir kennitöku #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Engin gögn af búningunni fundnar.';

  @override
  String get drillSummaryNotOnBus => 'Ekki í strætó';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Á BUS - EKKI ÚTVÖRGJÓT';

  @override
  String get drillSummaryPhotoEvidence => 'Myndgögn';

  @override
  String get drillSummaryRouteId => 'Kennsla á leiðinni';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sæti:';
  }

  @override
  String get drillSummaryStartTime => 'Upphafartíma';

  @override
  String get drillSummaryStatus => 'Staða';

  @override
  String get drillSummaryStudentLogTitle => 'Útflutningur á nemendum';

  @override
  String drillSummaryTitle(Object id) {
    return 'Samantekt á drillnum (#$id)';
  }

  @override
  String get drillSummaryType => 'Þræði';

  @override
  String get drillSummaryVideoEvidence => 'Myndbandsgögn';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Rútu _ V0__';
  }

  @override
  String get drillTypeClassification => 'Veldu flokkun búranna:';

  @override
  String get drillTypeCustomHint => 'Færðu inn sérsniðna útrýmingarþjálfun...';

  @override
  String get drillTypeInvalidState => 'Ógildi staða bifreiðar eða leiðar.';

  @override
  String get drillTypeNameBusFire => 'Bruna í rútu';

  @override
  String get drillTypeNameDangerZone => 'Hættuvæði';

  @override
  String get drillTypeNameDriverIncapacitation => 'Ökumaður ófær';

  @override
  String get drillTypeNameEquipmentOrientation => 'Tilgangur við búnað';

  @override
  String get drillTypeNameFrontDoor => 'Framdýr';

  @override
  String get drillTypeNameOthers => 'Aðrir';

  @override
  String get drillTypeNameRearDoor => 'Baklæti dyr';

  @override
  String get drillTypeNameSideOrRoof => 'Hlið eða þak';

  @override
  String get drillTypeNameSplit => 'Skiptur';

  @override
  String get drillTypeNoRouteSelected => 'Ekki valinn leið';

  @override
  String get drillTypePreparation => 'BRAUð fyrir drill';

  @override
  String get drillTypeProceed => 'Gengið er að stunda námsmennsku';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Leiðvegur:';
  }

  @override
  String get drillTypeSelectRoute => 'Veldu leið:';

  @override
  String get drillTypeSpecifyCustom => 'Skýrðu út drill- tegund lýsing:';

  @override
  String get drillTypeTitle => 'Veldu út borðartípu';

  @override
  String get drillTypeWarning => 'Tryggja að ökutæki sé stillað á öruggan hátt áður en framkvæmd hefst.';

  @override
  String get drillsAssignedVehicle => 'Ökutæki sem hefur verið úthlutað';

  @override
  String get drillsChecking => 'Ég er ađ athuga...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Þraut #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Engin rútu tilnefnd';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Engin drillur eru skráðar fyrir rútu $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Engar leiðir til að hefja æfingar.';

  @override
  String get drillsShowSummary => 'Sýndu samantekt';

  @override
  String get drillsStartDrill => 'Byrjaðu á þjálfun';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Framkvæmd: $date Staða: $status';
  }

  @override
  String get drillsTitle => 'Útflutningarþjálfun';

  @override
  String get drillsVehicleOutOfService => 'Bíll úr notkun';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Þessi ökutæki er nú ekki í notkun og er ekki hægt að nota í æfingar.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL flokkur';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ÖFRÍFARLÍSKI';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Hægt að nota';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Ferðamenn';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Skólabíl';

  @override
  String get driverDetailsEndorsementsTitle => 'Samþykkt';

  @override
  String get driverDetailsExpiryDateLabel => 'Gildistökudagur';

  @override
  String get driverDetailsHolderSignature => 'HALFARSÍÐ';

  @override
  String driverDetailsId(Object driverId) {
    return 'Kennsla:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Útgáfudagur';

  @override
  String get driverDetailsLicenseDocTitle => 'Leyfingarskjal';

  @override
  String get driverDetailsLicenseNoLabel => 'Leyfi nr.';

  @override
  String get driverDetailsLicenseTitle => 'Upplýsingar um leyfi';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lík leyfisins';

  @override
  String get driverDetailsOfficialSeal => 'Ráðstefnanir';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Færi:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Hægt að gera það.';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'HANDLAND:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Útgáfa:';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Smelltu á að skoða DL skjal';

  @override
  String get driverDetailsTitle => 'Ökumyndir um ökumann';

  @override
  String get dvirCategoryBusSafetySystems => 'Öryggiskerfi fyrir rútu';

  @override
  String get dvirCategoryCouplingDevices => 'Hlutflutningarefni';

  @override
  String get dvirCategoryEmergencyEquipment => 'Hjálpútbúnaður';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Ljósbúnaður og speglar';

  @override
  String get dvirCategoryMirrors => 'Síðarsýn speglar';

  @override
  String get dvirCategoryParkingBrake => 'Bílastæðingarbremsur';

  @override
  String get dvirCategoryPassengerSeating => 'Setu og takmörkun fyrir farþega';

  @override
  String get dvirCategoryServiceBrakes => 'Þjónustubremsur';

  @override
  String get dvirCategorySteeringMechanism => 'Stýringarkerfi';

  @override
  String get dvirCategoryTires => 'Þekkjur';

  @override
  String get dvirCategoryWheelsRims => 'Hjól og ríms';

  @override
  String get dvirCategoryWipers => 'Þurrkaður fyrir vindryggjur';

  @override
  String get dvirPostTripCapturePhoto => 'FOTÓ af myndaskilum';

  @override
  String get dvirPostTripComplianceTitle => 'GERJABÉT um að uppfylla skilyrði';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Að tilkynna galla án mynd';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Varnaraðningur: Þú tilkynnar galla á öryggisvæðum ($zones) án þess að setja mynd við.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Sjónvarp: Rútu $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Færðu inn smáatriði um öryggisvandann...';

  @override
  String get dvirPostTripNotesLabel => 'Viðskiptablaðið (FÖR SÍ VÖRG) og MYND';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Veldu DEFECT til að slá inn upplýsingar um öryggisvandamál...';

  @override
  String get dvirPostTripOdometerHeader => 'Núverandi Odometer Lesun';

  @override
  String get dvirPostTripOdometerInstructions => 'Fylgstu inn í kmölumælingu nákvæmlega eins og sýnt er á vélbúnaðarplötu:';

  @override
  String get dvirPostTripOdometerLabel => 'Ódómæli (mílar)';

  @override
  String get dvirPostTripOdometerTitle => 'Bíllinn rekur tíma';

  @override
  String get dvirPostTripOdometerWarning => 'Vinsamlegast skráðu ferðamannatöluna áður en þú heldur áfram.';

  @override
  String get dvirPostTripPassButton => 'Fylgstu í';

  @override
  String get dvirPostTripPhotoAttached => 'Mynd er sett upp með góðum árangri.';

  @override
  String get dvirPostTripProgressLabel => 'Framfarir í skoðunargerðinni';

  @override
  String get dvirPostTripSignatureCaptured => 'Signaturinn er tekinn.';

  @override
  String get dvirPostTripSignatureCert => 'Ég staðfest að þessi vegferðarskrá hefur verið lokið í samræmi við reglur FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Skilyrði fyrir undirskrift ökumanns';

  @override
  String get dvirPostTripSubmitButton => 'SENDINGUR ÍSKARTA';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR lagðist fram með góðum árangri.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'svæði $current af $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V0__ / V1__ svæði';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ég viðurkenni að ég hef skoðað síðasta innboðið gallaskýrslu og staðfest viðgerðir (eða til) og staðfest að rútu er öruggt til að rekja.';

  @override
  String get dvirPreTripActiveMessage => 'Þessi ökutæki er virkt og hefur engin leysar galla.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Virk leið: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATVARGAR GERJUR: Skemmti fyrir fyrri dag';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Rútunúmer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'HANDLÍKURSSÍFÖRGUNARSÍGUN';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ekki skrifað undir:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Engin fyrri galla skráð';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Þessi bifreið var greint hreint í fyrri skoðun eftir ferð.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ekki þarf að laga hana til að virka öruggt.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ökutæki er úr notkun fyrir viðgerðir og viðhald.';

  @override
  String get dvirPreTripOutofServiceButton => 'Bíll úr þjónustu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Ástæða:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '...V0__ (ÁRÍNN)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REFORT NUGUR DEFEKT';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Að tilkynna um nýjar galla er útilokað á meðan á viðgerðum stendur.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Staða:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Samgöngur undirstjórnarlausn';

  @override
  String get dvirPreTripReturnToHomeButton => 'KANNIR heim';

  @override
  String get dvirPreTripSignOffTitle => 'Skilti til að ganga í gönguferð';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikinginn er ljúkaður.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SENDUR GÍFNING';

  @override
  String get dvirPreTripTitle => 'Skilyrði fyrir ferð';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Staða bifreiðarinnar: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Tektu undirskrift';

  @override
  String get dvirSigPreviewLabel => 'Finnað undirskriftarfyrirlit:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SKAFTU undirskriftina';

  @override
  String get dvirSigTapToDraw => 'TAP til að draga undirskrift (eðskipað)';

  @override
  String get dvirSigWatermark => 'Skjaldið vertikalt (Fylgt að ofan)';

  @override
  String get forgotPasswordCancel => 'Afsækja';

  @override
  String get forgotPasswordEmailLabel => 'Tölvupóst';

  @override
  String get forgotPasswordInvalidEmail => 'Vinsamlegast skráðu gild tölvupóst';

  @override
  String get forgotPasswordSend => 'Sendaðu';

  @override
  String get forgotPasswordSuccess => 'Ef tölvupóstinn er til, hefur endursetning tengill verið sendur.';

  @override
  String get genericBack => 'Til baka';

  @override
  String get genericCancel => 'Afsækja';

  @override
  String get genericClear => 'LJÁS';

  @override
  String get genericClose => 'Nærri';

  @override
  String get genericConfirm => 'Staðfesting';

  @override
  String get genericEdit => 'Ritsettu';

  @override
  String get genericError => 'Ūađ fór eitthvað úrskeiðis.';

  @override
  String get genericLoading => 'Hringun...';

  @override
  String get genericNext => 'Næsta';

  @override
  String get genericOk => 'Allt í lagi.';

  @override
  String get genericRetry => 'Prófaðu aftur.';

  @override
  String get genericSuccess => 'Árangur';

  @override
  String homeBusLabel(Object busId) {
    return 'Rútu:';
  }

  @override
  String get homeDispatchBlocked => 'Sendingur lokaður';

  @override
  String get homeDispatchBlockedTitle => 'Sendingur lokaður';

  @override
  String get homeErrorNoRoutesPreTrip => 'Engar leiðir til staðar til að fara fyrir ferðina.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ekki kom út á netþjóninn.';
  }

  @override
  String homeHi(Object name) {
    return 'Sæl, V0__';
  }

  @override
  String get homeLogout => 'Útgáfa';

  @override
  String get homeMenuAppInfo => 'Upplýsingar um app';

  @override
  String get homeMenuDrill => 'Þræða';

  @override
  String get homeMenuDriverDetails => 'Ökumyndir um ökumann';

  @override
  String get homeMenuLanguage => 'Tölur';

  @override
  String get homeMenuPreTrip => 'Sjónvarp fyrir ferð';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Engar leiðir í boði';

  @override
  String get homeReviewVerifyPreTrip => 'Skoða og staðfesta fyrir ferð';

  @override
  String get homeSearchHint => 'Leitarleiðir';

  @override
  String get homeStart => 'Byrjaðu';

  @override
  String get homeTitle => 'Heimilið';

  @override
  String get homeVehicleOutOfServiceDefault => 'Ökutæki er í dag OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Bíllinn er tilbúinn og staðfestur fyrir öruggan rekstur.';

  @override
  String get languageTitle => 'Tölur';

  @override
  String get loginButton => 'Aðgangur';

  @override
  String get loginEmailOrPhoneLabel => 'Tölvupóst eða símanúmer';

  @override
  String get loginErrorEnterPassword => 'Vinsamlegast skráðu lykilorð';

  @override
  String get loginErrorEnterUsername => 'Vinsamlegast skráðu notendaheitið';

  @override
  String get loginErrorFailed => 'Innritun felldi.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Vinsamlegast skráðu gild tölvupóst eða símanúmer';

  @override
  String get loginForgotPassword => 'Forgèttu lykilorđ?';

  @override
  String get loginPasswordLabel => 'Kennsla';

  @override
  String get mapChildrenTooltip => 'Börn og forráðamenn';

  @override
  String get mapConfirmMessage => 'Viltu virkilega loka ferðinni?';

  @override
  String get mapConfirmTitle => 'Staðfesting';

  @override
  String get mapCurrentPosition => 'Núverandi staða';

  @override
  String get mapNo => 'Nei, ekki.';

  @override
  String get mapReconnectMessage => 'Staðfærsla ekki oft, vinsamlegast athugaðu á netinu.';

  @override
  String get mapReconnectTitle => 'Fylgjar';

  @override
  String get mapStop => 'Hættu.';

  @override
  String get mapStopping => 'Ég hætt...';

  @override
  String get mapStopsTooltip => 'Stöðvar';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Uppfærð fyrir _ 0 _ árum';
  }

  @override
  String get mapWaitingGps => 'Bíddu eftir GPS...';

  @override
  String get mapYes => 'Já, já.';

  @override
  String get splashDriverApp => 'Ökumennslyf';

  @override
  String get stopsActionUndo => 'Óþykkt';

  @override
  String get stopsCancelledSuccess => 'Aflýst með góðum árangri';

  @override
  String get stopsDefaultLabel => 'Hættu.';

  @override
  String get stopsGenericError => 'Ūađ gekk eitthvað illa.';

  @override
  String get stopsStatusComplete => 'fullnægjandi';

  @override
  String get stopsStatusDone => 'gerð';

  @override
  String stopsSubmitCount(Object count) {
    return 'Fylgi ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sækjaði með góðum árangri';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Vinningar á aðalhlutverki';
  }

  @override
  String get stopsTypeDrop => 'Fylgdu';

  @override
  String get stopsTypePick => 'Veldu';

  @override
  String stopsUndoCount(Object count) {
    return 'Óþarfa ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Óviðeigandi val/dropa';

  @override
  String get tripConfirmCancel => 'Afsækja';

  @override
  String get tripConfirmOk => 'Allt í lagi.';

  @override
  String get tripConfirmTitle => 'Fylgjar';

  @override
  String get tripErrorLocationRequired => 'Staðleyfi er krafist til að byrja ferð.';

  @override
  String get homeMenuPostCrashReporting => 'Fréttafrétt eftir hrun';

  @override
  String homeVehicleReason(Object reason) {
    return 'Ástæða:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Staða:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'LNG: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Leitarstað (t.d. Marktaúð)';

  @override
  String get crashLocationPickerTitle => 'Veldu staðsetningu á kortinu';

  @override
  String get crashLocationPickerTooltip => 'Staðfesting staðsetningar';

  @override
  String get incidentDashboardDescription => 'Veldu aðgerð til að halda áfram með atvinnustjórnun eða sjá fyrri skýrslur.';

  @override
  String get incidentDashboardHeadline => 'Frétt um slys eftir hrun';

  @override
  String get incidentDashboardLogNew => 'Log Nýtt hrun';

  @override
  String get incidentDashboardLogNewSubtitle => 'Byrjaðu á nýju skref fyrir skref áfall skýrslu';

  @override
  String get incidentDashboardTitle => 'Tónlíf eftir hrun';

  @override
  String get incidentDashboardViewHistory => 'Sjá sögu';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Sjá fyrri hrunarsýningar og stöðu';

  @override
  String get incidentDetailsAdminLetter => 'Bréf stjórnarmannsins';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Áfengispróf afturtöl (2 klukkustundar)';

  @override
  String get incidentDetailsBranchId => 'Kennsla deildar';

  @override
  String get incidentDetailsBusPlate => 'Búsleyfisskjal';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Áhrif á tilvitnun: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Orðskrá til ökumanns';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Samræmdir: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0... afritað á klippborð!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Skýri á klúbbborð';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Dagsetning og tími:';
  }

  @override
  String get incidentDetailsDoeReport => 'Ráðstefnustjórn';

  @override
  String get incidentDetailsDoeReportTitle => 'Ríkisútgáfa- og útgáfueftirlitið (að valkostur)';

  @override
  String get incidentDetailsDriverNotes => 'Kennir um ökumann:';

  @override
  String get incidentDetailsDriverUserId => 'Kennitæki notenda ökumanns';

  @override
  String get incidentDetailsDrugCountdown => 'Loftskipti á lyfjasprengdum (töldahring)';

  @override
  String get incidentDetailsFatalityOccurred => 'Dæmi varð';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Tækið #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Meiðslur sem krefjast læknismeðferðar';

  @override
  String get incidentDetailsLawEnforcement => 'Réttfylgjandi stofnun';

  @override
  String get incidentDetailsLoadFailed => 'Ég náði ekki að hlaða upp smáatriði.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Staðsetning:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Fjölmiðlauppbyggingar';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Staða:';
  }

  @override
  String get incidentDetailsNo => 'Nei, ekki';

  @override
  String get incidentDetailsNoMediaAttachments => 'Engar myndir eða myndbönd tengdar.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Enginn nemandi var merktur um borð í slysið.';

  @override
  String get incidentDetailsNotificationsDesc => 'Fylgi tilkynningarskýrslum og sendu fyrirmyndatökubréf til svæðisins yfirráðamenn eða stjórn.';

  @override
  String get incidentDetailsNotificationsTitle => 'Tilkynningar um flutning';

  @override
  String get incidentDetailsOfficer => 'Umfjöllun um starfsmann';

  @override
  String get incidentDetailsPoliceReport => 'Númer lögregluskýrslu';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Fylgst fyrir sendingu:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Reglugerðargrundarlag:';

  @override
  String get incidentDetailsRouteId => 'Kennsla á leiðinni';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Upplýsing fyrir skólastjórn';

  @override
  String get incidentDetailsStatusPending => 'Á eftir';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Nánar upplýsingar:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Meiðsli';

  @override
  String get incidentDetailsStudentNoInjury => 'Ekkert meiðsli';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Þyngd:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Fluttur til:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Nemendur um borð ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Óskað er eftir að prófa eftir hrun';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Staða:';
  }

  @override
  String get incidentDetailsTitle => 'Upplýsingar um atburðinn';

  @override
  String get incidentDetailsVehicleTowed => 'Bíllinn sem er slegið';

  @override
  String get incidentDetailsYes => 'Já, já.';

  @override
  String get incidentHistoryEmpty => 'Engin fyrirkomulagsskrá er skráð fyrir bílinn.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ekki komist að skrá: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tími: V0 _ Bus: V1 _ Testing: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Tækið #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ekki krafist';

  @override
  String get incidentHistoryTestingRequired => 'Krafist';

  @override
  String get incidentHistoryTitle => 'Skráning fyrir fyrirburði eftir hrun';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Bæta aftur í mynd';

  @override
  String get incidentIntakeBadgeNumberError => 'Þörf';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Kennismerki *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Rútunúmer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Mynd af fyrirkomulaginu';

  @override
  String get incidentIntakeCitationSubtitle => 'Var skólabílsstjórinn gefið út hreyfingarfrávik?';

  @override
  String get incidentIntakeCitationTitle => 'Er framburður útgefin?';

  @override
  String get incidentIntakeDateTimeLabel => 'Hringunardagur og tími *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Ekki er krafist að prófa';

  @override
  String get incidentIntakeDotTestingRequired => 'VARFIRKANIR að prófa';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Ökumaður:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Færðu inn einhverjar bætarorđslur um kollisionina...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notir um fyrirkomulag ökumanns';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Færði ekki að hlaða farþega á leiðinni: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Bætið við sönnun (myndir) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Er einhver látur vegna slyssins?';

  @override
  String get incidentIntakeFatalityTitle => 'Er ólíflegt að gerast?';

  @override
  String get incidentIntakeGpsLabel => 'GPS samræmingar *';

  @override
  String get incidentIntakeHistoryTooltip => 'Sjá sögu';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Var einhver sem fékk líkamsmeiðsli sem þurfti að fá tafarlaust læknismeðferð?';

  @override
  String get incidentIntakeInjuriesTitle => 'Meira meiðsli sem þurfa læknir að meðhöndla?';

  @override
  String get incidentIntakeInjuryNotesError => 'Meira um meiðslur eru álagt fyrir meiðslustóranir.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Skemmdir / upplýsingar (þörf) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Meiri sár *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Vinsamlegast koma inn í lögfarastofnun.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Réttastofnun (t.d. Landsherjarvernd) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Lögreglustjórn og lögregla';

  @override
  String get incidentIntakeLocationDescError => 'Vinsamlegast skráðu staðsetningu';

  @override
  String get incidentIntakeLocationDescLabel => 'Staðlýsing (t.d. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Læknaheimilið flutt til';

  @override
  String get incidentIntakeNoMatchingStudents => 'Engin samræmda nemendur.';

  @override
  String get incidentIntakeNoStudentsFound => 'Enginn nemandi fannst.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ekki eru nemendur um borð.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Enginn nemandi skráður fyrir þessa leið.';

  @override
  String get incidentIntakeOfficerNameError => 'Vinsamlegast skráðu nafn lögreglumanna';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nafnið lögreglumanna *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Vinsamlegast skráðu lögregluskýrslu númer.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Lögreglustæknumæli *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Leiðvegur:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Ferða- og ökumennatilkynning';

  @override
  String get incidentIntakeSearchInjuredHint => 'Leitaðu eftir sársauknu barni...';

  @override
  String get incidentIntakeSearchStudentHint => 'Leitađ eftir nemendum...';

  @override
  String get incidentIntakeSelectAll => 'Veldu alla nemendur';

  @override
  String get incidentIntakeSelectOnMap => 'VELTUR á kortinu';

  @override
  String get incidentIntakeSeverityFatal => 'Sálverður';

  @override
  String get incidentIntakeSeverityMinor => 'Lækst';

  @override
  String get incidentIntakeSeverityModerate => 'Meðalþétt';

  @override
  String get incidentIntakeSeveritySevere => 'Öllum';

  @override
  String get incidentIntakeSeverityTitle => 'Breytingar á alvarleika hrunsins';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Kennsla:';
  }

  @override
  String get incidentIntakeSubmitButton => 'FYRGJÁT';

  @override
  String get incidentIntakeTitle => 'Fjárhæð eftir hrun';

  @override
  String get incidentIntakeTowedSubtitle => 'Var einhver ökutæki skemmt sem þurfti að draga það frá vettvangi?';

  @override
  String get incidentIntakeTowedTitle => 'Bíllinn slegið?';

  @override
  String get incidentIntakeWasInjured => 'Var hann meiddur?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Rútu:';
  }

  @override
  String get dvirPreTripClose => 'NÓÐUR';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Viðmerkingar ökumanns / athugasemdir (valkostlegt)';

  @override
  String get dvirPreTripNoComments => 'Engar athugasemdir.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Ástæða:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Leiðvegur:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signaturinn er náð.';

  @override
  String get dvirPreTripSigMissing => 'Undirskrift er ekki.';

  @override
  String get dvirPreTripSignDefectWarning => 'Vinsamlegast skrifaðu undir til að staðfesta að fyrri galla hafa verið lagðar upp.';

  @override
  String get dvirPreTripStepSignOff => 'Undirskrift';

  @override
  String get dvirPreTripStepSubmit => 'Sendaðu inn';

  @override
  String get dvirPreTripStepVerify => 'Sækja um';

  @override
  String get dvirPreTripTapNext => 'Vinsamlegast smelltu á NEXT til að halda áfram.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Bíllinn er úr rekstri.';

  @override
  String get dvirPreTripVehicleReady => 'Bíllinn er tilbúinn til að starfa.';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Staða viðgerðar sem staðfest er:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Vinsamlegast skal staðfestast að allir tilkynndir galla hafa verið lagðir upp með því að athuga reitinn við hliðina á hverri galla.';

  @override
  String get dvirPreTripYourComments => 'Athugasemdir þínar:';

  @override
  String get countryPickerNoCountries => 'Engin lönd fundnar';

  @override
  String get countryPickerSearchHint => 'Leita eftir landnafn, kóða eða hringitöl...';

  @override
  String get countryPickerTitle => 'Veldu landið';

  @override
  String get mapDefaultStop => 'Hættu.';

  @override
  String get mapEndLocation => 'Endarstaða';

  @override
  String get mapStartLocation => 'Byrja staðsetningu';

  @override
  String get stopsNoChangesToUndo => 'Engar breytingar sem hægt er að breyta.';

  @override
  String get stopsNoStopsAvailable => 'Enginn stöðvar.';

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
