import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appInfoBuild => 'Opbygningsnummer';

  @override
  String get appInfoDevice => 'Enhedsmodel';

  @override
  String get appInfoOS => 'OS-version';

  @override
  String get appInfoPackage => 'Pakke';

  @override
  String get appInfoTitle => 'App-information';

  @override
  String get appInfoVersion => 'App-version';

  @override
  String get appTitleSchoolDiary => 'SD-tracker';

  @override
  String get childrenActionGuardians => 'Vagterne';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Bevispligtige værge for $name';
  }

  @override
  String get childrenNoGuardians => 'Ingen autoriserede værter er registreret for dette barn.';

  @override
  String get childrenStatusDropped => '- Jeg er væk.';

  @override
  String get childrenStatusPending => '- Jeg venter.';

  @override
  String get childrenStatusPicked => 'Udvalgt';

  @override
  String childrenTitle(Object routeName) {
    return 'Børn  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'FØRLIG/NOR BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakueret';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakueret: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ingen fraværende studerende.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ingen elever er markeret på bussen.';

  @override
  String get drillChecklistNotOnBus => 'Ikke på bussen';

  @override
  String get drillChecklistOnBusNotEvacuated => 'På bussen  Ikke evakueret';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'På bussen ($count)';
  }

  @override
  String get drillChecklistProceed => 'FRAGERINGER FOR at fange beviser';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Vej (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakueringsanlæg Checklist';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Uberegnede studerende er tilbage!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Er du sikker på, du vil sende denne bog?';

  @override
  String get drillEvidenceConfirmSubmission => 'Bekræftelse af udøvning';

  @override
  String get drillEvidenceDriverNotesHint => 'Beskriv øvelse, elevernes adfærd, udgangsbaner og eventuelle undtagelser.';

  @override
  String get drillEvidenceDriverNotesLabel => 'Kørere notater (minimum 10 tegn):';

  @override
  String get drillEvidenceFailed => 'Indsendelse mislykkedes';

  @override
  String get drillEvidenceMandatoryWarning => 'Der er mindst 1 foto- eller videobevis, der er obligatorisk for at indsende øvelse.';

  @override
  String get drillEvidenceRecordVideo => 'Optage video';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY-Udgivelse';

  @override
  String get drillEvidenceReturnToDashboard => 'Tilbage til dashbordet';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => '- Jeg sender bogen...';

  @override
  String get drillEvidenceSuccess => 'Underkastelse lykkes!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakueringsboringsloggen er blevet uploadet og venter på godkendelse.';

  @override
  String get drillEvidenceTakePhoto => 'Tag et billede';

  @override
  String get drillEvidenceTitle => 'Det er obligatorisk at udøve øvelser';

  @override
  String get drillEvidenceUploading => 'Opladning af beviser og kontrollisteoplysninger';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- Det er ikke rigtigt.';
  }

  @override
  String get drillRosterMarkAttendance => 'Markens tilstedeværelse';

  @override
  String get drillRosterNoStudents => 'Ingen studerende er registreret på denne rute.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Til stede: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL TIL';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Vej:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sæde:';
  }

  @override
  String get drillRosterSelectAll => 'Vælg alle';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Noter';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Godkendt til:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Den er godkendt ved';

  @override
  String get drillSummaryBackToDrills => 'Tilbage til Drills';

  @override
  String get drillSummaryBusNumber => 'Busnummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Dirigeret af: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill detaljer';

  @override
  String get drillSummaryDriverNotesTitle => 'Kørers notater';

  @override
  String get drillSummaryDuration => 'Varighed';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- V0__ min __ V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Sluttiden';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakueret: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakueret';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bevismedie vedhæftede';

  @override
  String get drillSummaryGps => 'GPS-koordinater';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Uddannelse af bogen til ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ingen data fra boren.';

  @override
  String get drillSummaryNotOnBus => 'Ikke på bussen';

  @override
  String get drillSummaryOnBusNotEvacuated => 'På bussen - UAVLEDT';

  @override
  String get drillSummaryPhotoEvidence => 'Billedbevis';

  @override
  String get drillSummaryRouteId => 'Ruten ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sæde:';
  }

  @override
  String get drillSummaryStartTime => 'Starttid';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Studenternes evakuering log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String get drillSummaryType => 'Borningstype';

  @override
  String get drillSummaryVideoEvidence => 'Videobevis';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Vælg boreklassificering:';

  @override
  String get drillTypeCustomHint => 'Indtaster en brugerdefineret evakueringsboring...';

  @override
  String get drillTypeInvalidState => 'Ugyldig køretøj eller rute tilstand.';

  @override
  String get drillTypeNameBusFire => 'Busbrænding';

  @override
  String get drillTypeNameDangerZone => 'Farestone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Forstyrrelsesforstyrrelse';

  @override
  String get drillTypeNameEquipmentOrientation => 'Anlægets orientering';

  @override
  String get drillTypeNameFrontDoor => 'Fordefter';

  @override
  String get drillTypeNameOthers => 'Andre';

  @override
  String get drillTypeNameRearDoor => 'Bagdør';

  @override
  String get drillTypeNameSideOrRoof => 'Side eller tag';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Ingen rute valgt';

  @override
  String get drillTypePreparation => 'DROIL-FARBORING';

  @override
  String get drillTypeProceed => 'FORSETTING til STUDENT RIST';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Vej:';
  }

  @override
  String get drillTypeSelectRoute => 'Vælg rute:';

  @override
  String get drillTypeSpecifyCustom => 'Angiv borstypebeskrivelse:';

  @override
  String get drillTypeTitle => 'Vælg borstype';

  @override
  String get drillTypeWarning => 'Sørg for, at køretøjet er parkeret sikkert, før det begynder at blive udført.';

  @override
  String get drillsAssignedVehicle => 'Udstedt køretøj';

  @override
  String get drillsChecking => '- Jeg tjekker...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ingen busser tildeles';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ingen øvelser registreret for bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Der er ingen ruter til rådighed for at starte en øvelse.';

  @override
  String get drillsShowSummary => 'Kortfattet';

  @override
  String get drillsStartDrill => 'Start Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Udført: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakueringsøvelser';

  @override
  String get drillsVehicleOutOfService => 'Køretøj ude af drift';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dette køretøj er i øjeblikket ude af drift og kan ikke anvendes til øvelser.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-klasse';

  @override
  String get driverDetailsDrivingLicenseLabel => 'KØRELSKRÆVSLIGT';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Navne:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passager';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Skolebus';

  @override
  String get driverDetailsEndorsementsTitle => 'Tilkendegivelser af';

  @override
  String get driverDetailsExpiryDateLabel => 'Udløbsdato';

  @override
  String get driverDetailsHolderSignature => 'HOLDERSIGNATUR';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikation:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Udgivelsesdato';

  @override
  String get driverDetailsLicenseDocTitle => 'Licensdokument';

  @override
  String get driverDetailsLicenseNoLabel => 'Licens nr.';

  @override
  String get driverDetailsLicenseTitle => 'Licensoplysninger';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licenstypen';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIEL SEGEL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasse:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Endorsering:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Eks: $expiryDate';
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
  String get driverDetailsTapToView => 'Tryk på at se DL-dokumentet';

  @override
  String get driverDetailsTitle => 'Forvalteroplysninger';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-specifikke sikkerhedssystemer';

  @override
  String get dvirCategoryCouplingDevices => 'Koppelværktøjer';

  @override
  String get dvirCategoryEmergencyEquipment => 'Udstyr til nødsituationer';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Lysværktøjer og reflektorer';

  @override
  String get dvirCategoryMirrors => 'Bagsynspiller';

  @override
  String get dvirCategoryParkingBrake => 'Parkeringsprem';

  @override
  String get dvirCategoryPassengerSeating => 'Passagerers sæder og begrænsninger';

  @override
  String get dvirCategoryServiceBrakes => 'Tjenestebremser';

  @override
  String get dvirCategorySteeringMechanism => 'Styrelsesmekanisme';

  @override
  String get dvirCategoryTires => 'Dæk';

  @override
  String get dvirCategoryWheelsRims => 'Hjul og rems';

  @override
  String get dvirCategoryWipers => 'Vinder for vindglas';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOLIET';

  @override
  String get dvirPostTripComplianceTitle => 'ENDELIGE VEDELIGE';

  @override
  String get dvirPostTripDefectButton => 'DEFEKT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapporterer fejl uden billede';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Advarsel: Du melder en defekt i sikkerhedszoner ($zones) uden at vedhæfte et billede.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektion: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Indtast detaljer om sikkerhedsproblemet...';

  @override
  String get dvirPostTripNotesLabel => 'ANSKLEDER (MANDATORY ON DEFECT) & PHOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Vælg DEFECT for at angive sikkerhedsoplysninger...';

  @override
  String get dvirPostTripOdometerHeader => 'Læsning af Odometer';

  @override
  String get dvirPostTripOdometerInstructions => 'Indtaster kilometersetningen præcis som vist på bussen:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mil)';

  @override
  String get dvirPostTripOdometerTitle => 'Køretøjets løbstider';

  @override
  String get dvirPostTripOdometerWarning => 'Indfør indsigelsen af afstanden på afmølleren, før du fortsætter.';

  @override
  String get dvirPostTripPassButton => 'Passer';

  @override
  String get dvirPostTripPhotoAttached => 'Foto vedhæftet med succes.';

  @override
  String get dvirPostTripProgressLabel => 'Inspektionsprogres';

  @override
  String get dvirPostTripSignatureCaptured => 'Signaturet er fanget.';

  @override
  String get dvirPostTripSignatureCert => 'Jeg bekræfter, at denne kontrolliste er udfyldt i overensstemmelse med FMCSA 396.11-regulativer.';

  @override
  String get dvirPostTripSignatureTitle => 'Kontrol af førerens signatur';

  @override
  String get dvirPostTripSubmitButton => 'Indsendelse af inspektion';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR blev indsendt med succes.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZON $current af $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V1 - Zoner';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Jeg indrømmer, at jeg har gennemgået den sidste indgivne fejlrapport og verificeret reparationerne (hvis der er nogen) og angive, at bussen er sikker til drift.';

  @override
  String get dvirPreTripActiveMessage => 'Dette køretøj er aktiv og har ingen åben defekter.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiv rute: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'OBSVORGET OBSVORGET: Fejl på den foregående dag';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Køretøjsforsendelse';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Uden at underskrive:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Ingen tidligere fejl registreret';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dette køretøj blev rapporteret rent i den tidligere inspektion efter tur.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Der er ingen reparationer, der skal til for sikker drift.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dette køretøj er udgivet af brug for reparation/underhold.';

  @override
  String get dvirPreTripOutofServiceButton => 'Køretøj ude af drift';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Grunden:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REMARKET)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORTER NÅ VÆRDE';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Indberetning af nye defekter er udeladt under reparationer.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transport-understyrelsens beslutning';

  @override
  String get dvirPreTripReturnToHomeButton => 'Tilbage til Hjem';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF til at gå rundt';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikation underskrevet med succes.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Forslag til bekræftelse';

  @override
  String get dvirPreTripTitle => 'Verifikation inden rejsen';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Køretøjsstatus: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Tegn underskrift';

  @override
  String get dvirSigPreviewLabel => '- Forhåndskrevet signatur:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SKAB TIGNER';

  @override
  String get dvirSigTapToDraw => 'TAP til at tegne signatur (VEDER)';

  @override
  String get dvirSigWatermark => 'Tegn vertikalt (Bottom to Top)';

  @override
  String get forgotPasswordCancel => 'Afbestilling';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Indtast venligst en gyldig e-mail';

  @override
  String get forgotPasswordSend => 'Send';

  @override
  String get forgotPasswordSuccess => 'Hvis e-mailen findes, er der sendt en genindstillingsknytning.';

  @override
  String get genericBack => 'Tilbage';

  @override
  String get genericCancel => 'Afbestilling';

  @override
  String get genericClear => 'Klart';

  @override
  String get genericClose => 'Tæt';

  @override
  String get genericConfirm => '- Det bekræfter jeg.';

  @override
  String get genericEdit => 'Redigér';

  @override
  String get genericError => 'Der gik noget galt.';

  @override
  String get genericLoading => '- Ladning...';

  @override
  String get genericNext => 'Næste';

  @override
  String get genericOk => 'Okay, hvad?';

  @override
  String get genericRetry => 'Gør det igen.';

  @override
  String get genericSuccess => 'Succes';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus:';
  }

  @override
  String get homeDispatchBlocked => 'Afsendelse blokeret';

  @override
  String get homeDispatchBlockedTitle => 'Afsendelse blokeret';

  @override
  String get homeErrorNoRoutesPreTrip => 'Ingen ruter til rådighed for at udføre Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Uden at starte op på serveren: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hej, V0';
  }

  @override
  String get homeLogout => 'Logut';

  @override
  String get homeMenuAppInfo => 'App-information';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Forvalteroplysninger';

  @override
  String get homeMenuLanguage => 'Sprog';

  @override
  String get homeMenuPreTrip => 'Inspektion inden rejsen';

  @override
  String get homeNoRoutes => 'Ingen ruter tilgængelige';

  @override
  String get homeReviewVerifyPreTrip => 'Gennemgå og bekræft forud for rejsen';

  @override
  String get homeSearchHint => 'Søgningslinjer';

  @override
  String get homeStart => 'Start';

  @override
  String get homeTitle => 'Hjem';

  @override
  String get homeVehicleOutOfServiceDefault => 'Køretøjet er i øjeblikket OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Køretøjet er klar og kontrolleret for sikker drift.';

  @override
  String get languageTitle => 'Sprog';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail eller telefonnummer';

  @override
  String get loginErrorEnterPassword => 'Vælg adgangskode';

  @override
  String get loginErrorEnterUsername => 'Vælg brugernavn';

  @override
  String get loginErrorFailed => 'Login fejlagtigt.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Vælg et gyldigt e-mail- eller telefonnummer';

  @override
  String get loginForgotPassword => 'Glemte du adgangskoden?';

  @override
  String get loginPasswordLabel => 'Passord';

  @override
  String get mapChildrenTooltip => 'Børn og værter';

  @override
  String get mapConfirmMessage => 'Vil du virkelig afslutte rejsen?';

  @override
  String get mapConfirmTitle => '- Det bekræfter jeg.';

  @override
  String get mapCurrentPosition => 'Aktuel position';

  @override
  String get mapNo => '- Nej, det er ikke det.';

  @override
  String get mapReconnectMessage => 'Lokation opdatering fejler ofte, så tjek dit internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stop!';

  @override
  String get mapStopping => '- Jeg stopper.';

  @override
  String get mapStopsTooltip => 'Stopp';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Opdateret for 10 år siden';
  }

  @override
  String get mapWaitingGps => 'Ventende på GPS...';

  @override
  String get mapYes => '- Ja, det er det.';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'Udenryddet';

  @override
  String get stopsCancelledSuccess => 'Aflyst med succes';

  @override
  String get stopsDefaultLabel => 'Stop!';

  @override
  String get stopsGenericError => 'Noget gik galt.';

  @override
  String get stopsStatusComplete => 'komplet';

  @override
  String get stopsStatusDone => 'udført';

  @override
  String stopsSubmitCount(Object count) {
    return 'Indgivelse ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Indleveret med succes';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'V1__/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsTypePick => 'Vælg';

  @override
  String stopsUndoCount(Object count) {
    return 'Uden ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Udentagelse af udvælgelse';

  @override
  String get tripConfirmCancel => 'Afbestilling';

  @override
  String get tripConfirmOk => '- Okay.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Der kræves tilladelse til at komme i gang med en rejse.';

  @override
  String get homeMenuPostCrashReporting => 'Rapportering efter et kramp';

  @override
  String homeVehicleReason(Object reason) {
    return 'Grunden:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG: LNG:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Søgemaskiner (f.eks. Market St)';

  @override
  String get crashLocationPickerTitle => 'Vælg placering på kortet';

  @override
  String get crashLocationPickerTooltip => 'Bevis om placering';

  @override
  String get incidentDashboardDescription => 'Vælg en handling, der skal fortsætte med incidentledelse eller se tidligere rapporter.';

  @override
  String get incidentDashboardHeadline => 'Rapportering af hændelser efter et ulykke';

  @override
  String get incidentDashboardLogNew => 'Log Ny Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Indled en ny kryds- og faldsrapport';

  @override
  String get incidentDashboardTitle => 'Indslag efter et kramp';

  @override
  String get incidentDashboardViewHistory => 'Se historie';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Se tidligere crash-rapporter og status';

  @override
  String get incidentDetailsAdminLetter => 'Admin-brev';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholtest nedtælling (2 timers grænse)';

  @override
  String get incidentDetailsBranchId => 'Afdeling ID';

  @override
  String get incidentDetailsBusPlate => 'Bus licensplade';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Indvirkning af citering: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'En citation til chaufføren';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinater: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopieret til klippan!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopiere til klippbordet';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum og tid: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE-rapport';

  @override
  String get incidentDetailsDoeReportTitle => 'Statens DOE-rapport (valgfritagende)';

  @override
  String get incidentDetailsDriverNotes => 'Forvalter Noter:';

  @override
  String get incidentDetailsDriverUserId => 'Kørers bruger-ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT-tests nedtælling (8 timers grænse)';

  @override
  String get incidentDetailsFatalityOccurred => 'En dødbringende ulykke';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Indslag #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Sår, der kræver medicinsk behandling';

  @override
  String get incidentDetailsLawEnforcement => 'Retshåndhævende agentur';

  @override
  String get incidentDetailsLoadFailed => '- Jeg har ikke lagt detaljer.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokation:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medietilhæftelser';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Nogen af disse';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ingen billeder eller videoer vedhæftet.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ingen elever var markeret ombord under hændelsen.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generere anmeldelsesrapporter og sende et mønsteret brev til distriktstilsynsmyndigheder eller administration.';

  @override
  String get incidentDetailsNotificationsTitle => 'Meddelelser om overførsel';

  @override
  String get incidentDetailsOfficer => 'Beskrivelse af tjenestemanden';

  @override
  String get incidentDetailsPoliceReport => 'Politirapportenummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Forudfyldt overføringsbrev:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulerende grundlag:';

  @override
  String get incidentDetailsRouteId => 'Ruten ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Beskrivelse til skoleadministratoren';

  @override
  String get incidentDetailsStatusPending => '- Jeg venter.';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detaljer: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Såret';

  @override
  String get incidentDetailsStudentNoInjury => 'Ingen skader';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Svært:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transport til: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studerende ombord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TESTING efter krach kræves';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Indlysninger om hændelsen';

  @override
  String get incidentDetailsVehicleTowed => 'Køretøj trukket';

  @override
  String get incidentDetailsYes => 'Ja, det er det.';

  @override
  String get incidentHistoryEmpty => 'Ingen hændelsesloger registreret for dette køretøj.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Uddannelse af log: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tiden: Bus: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Indslag #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ikke krævet';

  @override
  String get incidentHistoryTestingRequired => 'Krav';

  @override
  String get incidentHistoryTitle => 'Registrering af hændelser efter et ulykke';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Læg endnu et billede';

  @override
  String get incidentIntakeBadgeNumberError => 'Indtastet';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Bæltegnummer *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Optagelse af hændelsesstedet Foto';

  @override
  String get incidentIntakeCitationSubtitle => 'Er der blevet udstedt et anbringende for trafikovertrædelse til skolebusschaufføren?';

  @override
  String get incidentIntakeCitationTitle => 'Er der udgivet en citation?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Dato og Tid *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING ER IKKE nødvendig';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTING FORLEDT';

  @override
  String incidentIntakeDriver(Object driverName) {
    return '- Det er ikke noget.';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Indtast yderligere noter vedrørende kollisionen...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Anmeldelser om bilister';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Uden at lade passagerer på ruten: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Læg beviser (billeder) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Er der sket dødsfald som følge af dette ulykke?';

  @override
  String get incidentIntakeFatalityTitle => 'Er der sket et dødsfald?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-koordinater *';

  @override
  String get incidentIntakeHistoryTooltip => 'Se historie';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Er der nogen der har fået en kropsskader, som kræver øjeblikkelig medicinsk behandling uden for stedet?';

  @override
  String get incidentIntakeInjuriesTitle => 'Er der behov for medicinsk behandling?';

  @override
  String get incidentIntakeInjuryNotesError => 'Skader er obligatoriske for skadet studerende';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Beskæftigelsesoptegnelser / detaljer (obligatorisk) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Sværthed af skader *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Vær venlig at gå ind i politiet.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Retshåndhævende agentur (f.eks. statslig vejpatrulje) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Retshåndhævelse og politirapporten';

  @override
  String get incidentIntakeLocationDescError => 'Vælg en beskrivelse af placeringen';

  @override
  String get incidentIntakeLocationDescLabel => 'Beskrivelse af placeringen (f.eks. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicinsk facilitet transporteret til';

  @override
  String get incidentIntakeNoMatchingStudents => 'Ingen matchende elever.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ingen studerende fundet.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ingen elever ombord, så tryk på NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ingen studerende er registreret på denne rute.';

  @override
  String get incidentIntakeOfficerNameError => 'Indtast venligst officerens navn';

  @override
  String get incidentIntakeOfficerNameLabel => 'Officer navn *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Vælg politirapportenummer.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Politiet rapporteringsnummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Vej:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Ruten og chaufførsinformation';

  @override
  String get incidentIntakeSearchInjuredHint => 'Søg efter et såret barn...';

  @override
  String get incidentIntakeSearchStudentHint => '- Søg elev...';

  @override
  String get incidentIntakeSelectAll => 'Vælg alle elever';

  @override
  String get incidentIntakeSelectOnMap => 'VELK på kortet';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Mindre';

  @override
  String get incidentIntakeSeverityModerate => 'Moderat';

  @override
  String get incidentIntakeSeveritySevere => 'Svært';

  @override
  String get incidentIntakeSeverityTitle => 'Styrelsesværdi';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikation:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Rapport';

  @override
  String get incidentIntakeTitle => 'Indtag efter et kramperecident';

  @override
  String get incidentIntakeTowedSubtitle => 'Er der nogen bil, der er blevet skadet, og som skal slæbes ud af stedet?';

  @override
  String get incidentIntakeTowedTitle => '- Køretøj trukket?';

  @override
  String get incidentIntakeWasInjured => 'Var han såret?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'NEDER';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Kørere kommentarer / notater (valgfritagende)';

  @override
  String get dvirPreTripNoComments => 'Ingen kommentarer til.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Grunden:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Vej:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signaturen er blevet fanget.';

  @override
  String get dvirPreTripSigMissing => '- Der mangler signatur.';

  @override
  String get dvirPreTripSignDefectWarning => 'Signer venligst for at bekræfte reparation af tidligere fejl.';

  @override
  String get dvirPreTripStepSignOff => 'Underskrift';

  @override
  String get dvirPreTripStepSubmit => 'Indlever';

  @override
  String get dvirPreTripStepVerify => 'Kontroller';

  @override
  String get dvirPreTripTapNext => 'Tryk på NEXT for at fortsætte.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Bilen er ude af drift';

  @override
  String get dvirPreTripVehicleReady => 'Køretøjet er klar til at køre';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verificeret reparationsstatus:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Kontrollér, at alle rapporterede fejl er blevet repareret ved at tjekke boksen ved siden af hver fejl.';

  @override
  String get dvirPreTripYourComments => 'Dine kommentarer:';

  @override
  String get countryPickerNoCountries => 'Ingen lande fundet';

  @override
  String get countryPickerSearchHint => 'Søg efter land, kode eller nummernummer...';

  @override
  String get countryPickerTitle => 'Vælg land';

  @override
  String get mapDefaultStop => 'Stop!';

  @override
  String get mapEndLocation => 'Endestation';

  @override
  String get mapStartLocation => 'Start placering';

  @override
  String get stopsNoChangesToUndo => 'Ingen ændringer kan afskaffes.';

  @override
  String get stopsNoStopsAvailable => 'Ingen stoppesteder.';

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
