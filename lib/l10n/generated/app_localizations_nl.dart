import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appInfoBuild => 'Gebouwd nummer';

  @override
  String get appInfoDevice => 'Deeltje';

  @override
  String get appInfoOS => 'OS-versie';

  @override
  String get appInfoPackage => 'Pakket';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'Appversie';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Bewakers';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Geautoriseerde voogden voor $name';
  }

  @override
  String get childrenNoGuardians => 'Er zijn geen geautoriseerde voogden bij dit kind.';

  @override
  String get childrenStatusDropped => 'Vervallen';

  @override
  String get childrenStatusPending => 'In afwachting';

  @override
  String get childrenStatusPicked => 'Uitgekozen';

  @override
  String childrenTitle(Object routeName) {
    return 'Kinderen  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absent / niet op de bus ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Geevacueerd';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Geevacueerd: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Geen afwezige studenten.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Geen studenten gemarkeerd op de bus.';

  @override
  String get drillChecklistNotOnBus => 'Niet op de bus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'In de bus  Niet geëvacueerd';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'De bewijzen worden vastgelegd';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rout (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuatieboorlijst';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Onbekende student blijft.';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Weet je zeker dat je dit boorboek wilt indienen?';

  @override
  String get drillEvidenceConfirmSubmission => 'Bevestig de onderleg van de boor';

  @override
  String get drillEvidenceDriverNotesHint => 'Beschrijf de uitvoering van de oefening, het gedrag van de studenten, de gebruikte uitgangspadens en eventuele uitzonderingen...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Voer Notes (minimaal 10 tekens):';

  @override
  String get drillEvidenceFailed => 'Inschrijving mislukt';

  @override
  String get drillEvidenceMandatoryWarning => 'Ten minste 1 foto of video bewijsmateriaal is verplicht om een boor te indienen.';

  @override
  String get drillEvidenceRecordVideo => 'Video opnemen';

  @override
  String get drillEvidenceRetrySubmission => 'VAN OVERLEDEN';

  @override
  String get drillEvidenceReturnToDashboard => 'Terug naar het dashboard';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Ik stuur de boorlog...';

  @override
  String get drillEvidenceSuccess => 'Onderwerping met succes!';

  @override
  String get drillEvidenceSuccessMessage => 'Het evacuatieboorlog is met succes geüpload en wacht op goedkeuring.';

  @override
  String get drillEvidenceTakePhoto => 'Neem een foto.';

  @override
  String get drillEvidenceTitle => 'Bewijs voor verplichte booringen';

  @override
  String get drillEvidenceUploading => 'Uploading van bewijsmateriaal en gegevens over de checklist';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill:';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark de aanwezigheid';

  @override
  String get drillRosterNoStudents => 'Er zijn geen studenten geregistreerd op deze route.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Aanwezig: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'De procedure om de lijst te gaan checken';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Rout:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sitting:';
  }

  @override
  String get drillRosterSelectAll => 'Selecteer Alle';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notes';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Goedgekeurd op:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Goedkeuring door';

  @override
  String get drillSummaryBackToDrills => 'Terug naar Drills';

  @override
  String get drillSummaryBusNumber => 'Busnummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Geduid door: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill Details';

  @override
  String get drillSummaryDriverNotesTitle => 'Voertuigvermeldingen';

  @override
  String get drillSummaryDuration => 'Duur';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- V0__ min __ V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Eindtijd';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Geevacueerd: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Geevacueerd';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bewijs bijgevoegde media';

  @override
  String get drillSummaryGps => 'GPS-coördinaten';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'De volgende punten worden behandeld:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Het is niet gelukt om de boorresumé te laden voor ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Geen boorgegevens gevonden.';

  @override
  String get drillSummaryNotOnBus => 'Niet op de bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'In de bus - niet geëvacueerd';

  @override
  String get drillSummaryPhotoEvidence => 'Fotobewijs';

  @override
  String get drillSummaryRouteId => 'Routeno-ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sitting:';
  }

  @override
  String get drillSummaryStartTime => 'Beginntijd';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Student Evacuatie Log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String get drillSummaryType => 'Type boor';

  @override
  String get drillSummaryVideoEvidence => 'Videobewijs';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Kies de boorclassificatie:';

  @override
  String get drillTypeCustomHint => 'Geef een speciale evacuatieboor.';

  @override
  String get drillTypeInvalidState => 'Niet-valide voertuig- of route staat.';

  @override
  String get drillTypeNameBusFire => 'Busbrand';

  @override
  String get drillTypeNameDangerZone => 'Gevaarlijke zone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Voervermogen';

  @override
  String get drillTypeNameEquipmentOrientation => 'Oriëntatie van de apparatuur';

  @override
  String get drillTypeNameFrontDoor => 'Voordeur';

  @override
  String get drillTypeNameOthers => 'Andere';

  @override
  String get drillTypeNameRearDoor => 'Achterdeur';

  @override
  String get drillTypeNameSideOrRoof => 'Zijde of dak';

  @override
  String get drillTypeNameSplit => 'Verdeel';

  @override
  String get drillTypeNoRouteSelected => 'Geen route gekozen';

  @override
  String get drillTypePreparation => 'DROIL voorbereiding';

  @override
  String get drillTypeProceed => 'PROCED TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Rout:';
  }

  @override
  String get drillTypeSelectRoute => 'Selecteer route:';

  @override
  String get drillTypeSpecifyCustom => 'Specificeer de boortypebeschrijving:';

  @override
  String get drillTypeTitle => 'Selecteer boortype';

  @override
  String get drillTypeWarning => 'Zorg ervoor dat het voertuig veilig is geparkeerd voordat de uitvoering begint.';

  @override
  String get drillsAssignedVehicle => 'Vervaardiging van de aanwijzing';

  @override
  String get drillsChecking => 'Ik controleer...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Geen bus toegekend';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Geen boeien geregistreerd voor bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Er zijn geen routes beschikbaar om een boor te starten.';

  @override
  String get drillsShowSummary => 'Toon samenvatting';

  @override
  String get drillsStartDrill => 'Begin met boeren';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Gevoerd: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evacuatie oefeningen';

  @override
  String get drillsVehicleOutOfService => 'Voertuig uit dienst';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dit voertuig is momenteel niet in gebruik en kan niet worden gebruikt voor booringen.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Rijvergunning';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAAM:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passagier';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Scholybus';

  @override
  String get driverDetailsEndorsementsTitle => 'Ondersteuning gegeven';

  @override
  String get driverDetailsExpiryDateLabel => 'Vervaldatum';

  @override
  String get driverDetailsHolderSignature => 'HOLDER\'S handtekening';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificatie:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Uitgifte datum';

  @override
  String get driverDetailsLicenseDocTitle => 'Vergunningsdocument';

  @override
  String get driverDetailsLicenseNoLabel => 'Vergunning nr.';

  @override
  String get driverDetailsLicenseTitle => 'Vergunninggegevens';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licentietype';

  @override
  String get driverDetailsOfficialSeal => 'OFICIële SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasse:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'BESCHUTTING:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
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
  String get driverDetailsTapToView => 'Tik om het DL-document te bekijken';

  @override
  String get driverDetailsTitle => 'Besonderheden van de bestuurder';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-specifieke veiligheidssystemen';

  @override
  String get dvirCategoryCouplingDevices => 'Koppelapparaten';

  @override
  String get dvirCategoryEmergencyEquipment => 'Noodvoorzieningen';

  @override
  String get dvirCategoryHorn => 'Hoorn';

  @override
  String get dvirCategoryLightingReflectors => 'Verlichtingsapparaten en reflectieapparaten';

  @override
  String get dvirCategoryMirrors => 'Achterzichtspiegels';

  @override
  String get dvirCategoryParkingBrake => 'Parkeerrem';

  @override
  String get dvirCategoryPassengerSeating => 'Passagierszitjes en beperkingen';

  @override
  String get dvirCategoryServiceBrakes => 'Blokken voor de dienst';

  @override
  String get dvirCategorySteeringMechanism => 'Steermechanisme';

  @override
  String get dvirCategoryTires => 'De banden';

  @override
  String get dvirCategoryWheelsRims => 'Wielen en riemen';

  @override
  String get dvirCategoryWipers => 'Windschermwijpers';

  @override
  String get dvirPostTripCapturePhoto => 'Foto van de afname van de capture';

  @override
  String get dvirPostTripComplianceTitle => 'VERVERKING van de NAVOLGING';

  @override
  String get dvirPostTripDefectButton => 'Defect';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Het melden van een gebrek zonder foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'U meldt een gebrek aan de veiligheidszones ($zones) zonder een foto aan te plakken.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspectie: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Geef details van de veiligheidsproblemen...';

  @override
  String get dvirPostTripNotesLabel => 'Notities (MANDATORIE VAN DE FAK) & FOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Selecteer DEFECT om veiligheidsgerelateerde gegevens in te voeren...';

  @override
  String get dvirPostTripOdometerHeader => 'Huidige Odometer Lezing';

  @override
  String get dvirPostTripOdometerInstructions => 'Voer de kilometersnelheid precies in zoals aangegeven op het businstrumentpaneel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Voordat u verdergaat, moet u de kilometersmeter inlezen.';

  @override
  String get dvirPostTripPassButton => 'Pas';

  @override
  String get dvirPostTripPhotoAttached => 'Foto met succes bevestigd.';

  @override
  String get dvirPostTripProgressLabel => 'De voortgang van de inspectie';

  @override
  String get dvirPostTripSignatureCaptured => 'Ondertekening vastgelegd.';

  @override
  String get dvirPostTripSignatureCert => 'Ik bevestig dat dit voertuig rondloop checklist verslag is voltooid in overeenstemming met FMCSA 396.11 voorschriften.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificatie van de handtekening van de bestuurder';

  @override
  String get dvirPostTripSubmitButton => 'In het kader van de onderhavige verordening wordt de Commissie verzocht de Commissie te verzoeken om een aanvullende verordening vast te stellen.';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR is met succes ingediend.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zones van de V0';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ik geef toe dat ik het laatste ingediende foutverslag heb bekeken en de reparaties (indien van toepassing) heb gecontroleerd en heb verklaard dat de bus veilig is voor gebruik.';

  @override
  String get dvirPreTripActiveMessage => 'Dit voertuig is actief en heeft geen open defecten.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Actieve route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'VERSCHUWING: Defecten van de vorige dag';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VECHT-VERSLAG CHECK';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Niet ondertekend: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Geen eerdere tekortkomingen geregistreerd';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dit voertuig werd schoon gemeld bij de vorige inspectie na de dienst.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Geen reparaties nodig voor een veilige werking.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dit voertuig is uit gebruik voor reparatie/onderhoud.';

  @override
  String get dvirPreTripOutofServiceButton => 'Voertuig uit dienst';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Reactie:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- V0__ (REPAREerd)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Nieuwe tekortkomingen';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Het melden van nieuwe defecten wordt tijdens de reparaties uitgeschakeld.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'De Commissie heeft de Commissie een voorstel voor een verordening (EG) nr.';

  @override
  String get dvirPreTripReturnToHomeButton => 'Terug naar huis';

  @override
  String get dvirPreTripSignOffTitle => 'Sign-OFF om te gaan wandelen';

  @override
  String get dvirPreTripSignedSuccess => 'Verificatie gesloten, pre-trip ontgrendeld.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERVERGING van de aanbieding';

  @override
  String get dvirPreTripTitle => 'Pre-reiscontrole';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Voertuigstatus: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Schrijf een handtekening';

  @override
  String get dvirSigPreviewLabel => 'Gevangen Signatuur Voorbeeld:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SCHRIFTINGSCHRIFT';

  @override
  String get dvirSigTapToDraw => 'TAP om handtekening te trekken (verplicht)';

  @override
  String get dvirSigWatermark => 'Verticaal tekenen (boven naar beneden)';

  @override
  String get forgotPasswordCancel => 'Afzeggen';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Geef een geldig e-mail in';

  @override
  String get forgotPasswordSend => 'Stuur het .';

  @override
  String get forgotPasswordSuccess => 'Als die e-mail bestaat, is er een reset link gestuurd.';

  @override
  String get genericBack => '- Ik ben terug .';

  @override
  String get genericCancel => 'Afzeggen';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => '- Niet meer .';

  @override
  String get genericConfirm => 'Bevestig';

  @override
  String get genericEdit => 'Bewerken';

  @override
  String get genericError => 'Er is iets mis gegaan.';

  @override
  String get genericLoading => '- Het is een vrachtwagen.';

  @override
  String get genericNext => 'Volgende';

  @override
  String get genericOk => 'Oké, goed.';

  @override
  String get genericRetry => 'Weer proberen.';

  @override
  String get genericSuccess => 'Succes';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus:';
  }

  @override
  String get homeDispatchBlocked => 'Afzending geblokkeerd';

  @override
  String get homeDispatchBlockedTitle => 'Afzending geblokkeerd';

  @override
  String get homeErrorNoRoutesPreTrip => 'Geen routes beschikbaar voor Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Niet gestart op de server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hallo, V0__';
  }

  @override
  String get homeLogout => 'Inlog';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Besonderheden van de bestuurder';

  @override
  String get homeMenuLanguage => 'Taal';

  @override
  String get homeMenuPreTrip => 'Pre-reisinspectie';

  @override
  String get homeNoRoutes => 'Geen routes beschikbaar';

  @override
  String get homeReviewVerifyPreTrip => 'Review & Verifiëren voor het reizen';

  @override
  String get homeSearchHint => 'Zoekroutes';

  @override
  String get homeStart => 'Begin';

  @override
  String get homeTitle => 'Huis';

  @override
  String get homeVehicleOutOfServiceDefault => 'Het voertuig is momenteel OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Het voertuig is klaar en gecontroleerd voor veilig gebruik.';

  @override
  String get languageTitle => 'Taal';

  @override
  String get loginButton => 'Inlog';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail of telefoonnummer';

  @override
  String get loginErrorEnterPassword => 'Voer het wachtwoord in';

  @override
  String get loginErrorEnterUsername => 'Geef de gebruikersnaam in';

  @override
  String get loginErrorFailed => 'Login is mislukt.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Geef een geldig e-mail- of telefoonnummer in';

  @override
  String get loginForgotPassword => 'Vergeet je wachtwoord?';

  @override
  String get loginPasswordLabel => 'Passwoord';

  @override
  String get mapChildrenTooltip => 'Kinderen en voogden';

  @override
  String get mapConfirmMessage => 'Wil je echt de reis afsluiten?';

  @override
  String get mapConfirmTitle => 'Bevestig';

  @override
  String get mapCurrentPosition => 'Huidige positie';

  @override
  String get mapNo => '- Nee, dat is niet zo.';

  @override
  String get mapReconnectMessage => 'Plaats bijwerken mislukt vaak, kijk op internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stop .';

  @override
  String get mapStopping => '- Ik stop.';

  @override
  String get mapStopsTooltip => 'Stopt';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated ${seconds}s geleden';
  }

  @override
  String get mapWaitingGps => 'Wachtend op de GPS...';

  @override
  String get mapYes => '- Ja, dat is het.';

  @override
  String get splashDriverApp => 'App voor bestuurders';

  @override
  String get stopsActionUndo => 'Vernietigbaar';

  @override
  String get stopsCancelledSuccess => 'Succesvol geannuleerd';

  @override
  String get stopsDefaultLabel => 'Stop .';

  @override
  String get stopsGenericError => 'Er is iets mis gegaan.';

  @override
  String get stopsStatusComplete => 'voltooid';

  @override
  String get stopsStatusDone => 'gesloten';

  @override
  String stopsSubmitCount(Object count) {
    return 'Inschrijven ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Succesvol ingediend';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'De volgende punten worden hieronder beschreven:';
  }

  @override
  String get stopsTypeDrop => 'Laat vallen.';

  @override
  String get stopsTypePick => 'Kies';

  @override
  String stopsUndoCount(Object count) {
    return 'Vernietigend ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Verwijderde pick/drop';

  @override
  String get tripConfirmCancel => 'Afzeggen';

  @override
  String get tripConfirmOk => '- Oké .';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Een locatievergunning is vereist om een reis te starten.';

  @override
  String get homeMenuPostCrashReporting => 'Rapportering na een crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reactie:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'De volgende punten worden behandeld:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Zoeklocatie (bv. Market St)';

  @override
  String get crashLocationPickerTitle => 'Selecteer locatie op kaart';

  @override
  String get crashLocationPickerTooltip => 'Bevestig de locatie';

  @override
  String get incidentDashboardDescription => 'Selecteer een actie om verder te gaan met incidentbeheer of bekijk eerdere rapporten.';

  @override
  String get incidentDashboardHeadline => 'Rapportering van incidenten na een ongeluk';

  @override
  String get incidentDashboardLogNew => 'Log Nieuwe crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Een nieuwe stap voor stap crashrapport opzetten';

  @override
  String get incidentDashboardTitle => 'Het incident na het ongeluk';

  @override
  String get incidentDashboardViewHistory => 'Bekijk geschiedenis';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Bekijk eerdere crashberichten en status';

  @override
  String get incidentDetailsAdminLetter => 'Adminbrief';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcoholtest aftelling (2 uur limiet)';

  @override
  String get incidentDetailsBranchId => 'Afdeling ID';

  @override
  String get incidentDetailsBusPlate => 'Busvergunningsplat';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citaten Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Aan de bestuurder gegeven citaat';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coördinaten: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0... gekopieerd op het clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopieer op de clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum en tijd: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Verslag van de DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'De Commissie heeft de Commissie verzocht om een aanvullende informatie te verstrekken.';

  @override
  String get incidentDetailsDriverNotes => 'Voer Notities:';

  @override
  String get incidentDetailsDriverUserId => 'Driver-gebruikers-ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8 uur maximum)';

  @override
  String get incidentDetailsFatalityOccurred => 'Een fataliteit';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Wonderen die medische behandeling vereisen';

  @override
  String get incidentDetailsLawEnforcement => 'Wetshandhavingsagentschap';

  @override
  String get incidentDetailsLoadFailed => '- Ik heb geen details.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Plaats:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Bijlagen bij de media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => '- Nee, niet.';

  @override
  String get incidentDetailsNoMediaAttachments => 'Geen foto\'s of video\'s bijgevoegd.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Er waren geen studenten aan boord tijdens het incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Het genereren van meldingsverslagen en het verzenden van teksten aan de districtsinspecteurs of de administratie.';

  @override
  String get incidentDetailsNotificationsTitle => 'Verzendingsmeldingen';

  @override
  String get incidentDetailsOfficer => 'Beambten';

  @override
  String get incidentDetailsPoliceReport => 'Politieverslagnummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Vooraf gepopuleerde overzendbrief:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Reglementaire basis:';

  @override
  String get incidentDetailsRouteId => 'Routeno-ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Kennisgeving van de schoolbeheerder';

  @override
  String get incidentDetailsStatusPending => 'In afwachting';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Details: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Gewonde';

  @override
  String get incidentDetailsStudentNoInjury => 'Geen blessure';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gezondheid:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Vervoerd naar: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenten aan boord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NIE POST-Crash TESTING vereist';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Details van het incident';

  @override
  String get incidentDetailsVehicleTowed => 'Vervoertuig getrokken';

  @override
  String get incidentDetailsYes => 'Ja, dat is het geval.';

  @override
  String get incidentHistoryEmpty => 'Er zijn geen incidenten logs geregistreerd voor dit voertuig.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Niet in staat om logs te vinden: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tijd: Bus: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Niet vereist';

  @override
  String get incidentHistoryTestingRequired => 'Vervolgens';

  @override
  String get incidentHistoryTitle => 'Register van incidenten na een ongeluk';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Voeg nog een foto toe';

  @override
  String get incidentIntakeBadgeNumberError => 'Verplichting';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Badge nummer *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto van het incident';

  @override
  String get incidentIntakeCitationSubtitle => 'Is een bewegende verkeersovertreding aangevraagd door de schoolbuschauffeur?';

  @override
  String get incidentIntakeCitationTitle => 'Is er een citaat uitgebracht?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Datum en tijd *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING NIE vereist';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTING vereist';

  @override
  String incidentIntakeDriver(Object driverName) {
    return '- Voer:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Geef extra notities over de botsing in...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notities over het bestuurderincident';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passagiers van de route niet geladen: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Bewijs aanhangen (foto\'s) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Is er in de crash iemand gedood?';

  @override
  String get incidentIntakeFatalityTitle => 'Is er een fataliteit gebeurd?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-coördinaten *';

  @override
  String get incidentIntakeHistoryTooltip => 'Bekijk geschiedenis';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Heeft iemand lichamelijk letsel gekregen die onmiddellijk medische behandeling nodig had buiten de plaats van de gebeurtenis?';

  @override
  String get incidentIntakeInjuriesTitle => 'Wonderen van medische behandeling?';

  @override
  String get incidentIntakeInjuryNotesError => 'Verwondingen zijn verplicht voor gewonden studenten';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Verwondingen / Details (verplichte) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Schade ernstig *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Ga naar de politie .';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Wetshandhavingsagentschap (bv. Staatsveiligheidsraad) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Wetshandhaving en politierapport';

  @override
  String get incidentIntakeLocationDescError => 'Geef de locatiebeschrijving in.';

  @override
  String get incidentIntakeLocationDescLabel => 'Beskrywing van de locatie (bv. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medische faciliteit vervoerd naar';

  @override
  String get incidentIntakeNoMatchingStudents => 'Geen overeenkomende studenten.';

  @override
  String get incidentIntakeNoStudentsFound => 'Geen studenten gevonden.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Geen studenten aan boord.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Geen studenten geregistreerd voor deze route.';

  @override
  String get incidentIntakeOfficerNameError => 'Geef de naam van de officier in .';

  @override
  String get incidentIntakeOfficerNameLabel => 'Naam van de officier *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Geef het politierapportnummer in.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Politieverslagnummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Rout:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Routenoordelen en bestuurderinformatie';

  @override
  String get incidentIntakeSearchInjuredHint => 'Zoek het gewonden kind...';

  @override
  String get incidentIntakeSearchStudentHint => 'Zoek student...';

  @override
  String get incidentIntakeSelectAll => 'Kies alle studenten';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT op de kaart';

  @override
  String get incidentIntakeSeverityFatal => 'Fataal';

  @override
  String get incidentIntakeSeverityMinor => 'Kleine';

  @override
  String get incidentIntakeSeverityModerate => 'Gematigd';

  @override
  String get incidentIntakeSeveritySevere => 'Zware';

  @override
  String get incidentIntakeSeverityTitle => 'Veranderlijke crashgraagheid';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificatie:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Verslag';

  @override
  String get incidentIntakeTitle => 'Inname na een ongeluk';

  @override
  String get incidentIntakeTowedSubtitle => 'Heeft een voertuig een schade veroorzaakt waardoor het moet worden getrokken?';

  @override
  String get incidentIntakeTowedTitle => '- Een wagen getrokken?';

  @override
  String get incidentIntakeWasInjured => 'Was hij gewond?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'BENNEN';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Voercommentaar / Notities (optioneel)';

  @override
  String get dvirPreTripNoComments => 'Geen opmerkingen toegevoegd.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reactie:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Rout:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Ondertekening met succes vastgelegd.';

  @override
  String get dvirPreTripSigMissing => 'De handtekening ontbreekt.';

  @override
  String get dvirPreTripSignDefectWarning => 'Teken om te bevestigen dat eerdere defecten zijn hersteld.';

  @override
  String get dvirPreTripStepSignOff => 'Ondertekening';

  @override
  String get dvirPreTripStepSubmit => 'Inleveren';

  @override
  String get dvirPreTripStepVerify => 'Bevestigen';

  @override
  String get dvirPreTripTapNext => 'Klik op NEXT om verder te gaan.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Het voertuig is uit dienst .';

  @override
  String get dvirPreTripVehicleReady => 'Het voertuig is klaar voor dienst';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Geverifieerde herstelstatus:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Controleer of alle gemelde defecten zijn gerepareerd door het vak naast elk defect te checken.';

  @override
  String get dvirPreTripYourComments => 'Uw opmerkingen:';

  @override
  String get countryPickerNoCountries => 'Geen landen gevonden';

  @override
  String get countryPickerSearchHint => 'Zoek naar landnaam, code of nummercode...';

  @override
  String get countryPickerTitle => 'Selecteer land';

  @override
  String get mapDefaultStop => 'Stop .';

  @override
  String get mapEndLocation => 'Eindlocatie';

  @override
  String get mapStartLocation => 'Startlocatie';

  @override
  String get stopsNoChangesToUndo => 'Geen veranderingen die kunnen worden hersteld.';

  @override
  String get stopsNoStopsAvailable => 'Geen stops beschikbaar.';
}
