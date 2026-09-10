import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Limburgan Limburger Limburgish (`li`).
class AppLocalizationsLi extends AppLocalizations {
  AppLocalizationsLi([String locale = 'li']) : super(locale);

  @override
  String get appInfoBuild => 'Bouw nummer';

  @override
  String get appInfoDevice => 'Gerätmodell';

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
  String get childrenActionGuardians => 'Besjtuurders';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Geautoriseerde voogd veur $name';
  }

  @override
  String get childrenNoGuardians => 'Gein geautoriseerde voogd is in de file veur dit kind.';

  @override
  String get childrenStatusDropped => 'Gehaold';

  @override
  String get childrenStatusPending => 'Waagend';

  @override
  String get childrenStatusPicked => 'Gewachte';

  @override
  String childrenTitle(Object routeName) {
    return 'Kinderen  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'BESVEUKING / NIET BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuere';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuere: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Gein afwesende sjtudente.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Gein leerlingen get gemarkeerd op de bus.';

  @override
  String get drillChecklistNotOnBus => 'NIE BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Op bus  NIE geëvacueerd';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Op BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Oetgesjreve tot bewijzing';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuatieboor checklist';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Onbekend Student s) Remain!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Is ge zeker dat ge dit boorlog wilt indienen?';

  @override
  String get drillEvidenceConfirmSubmission => 'Bevestig de booringsonderzoeg';

  @override
  String get drillEvidenceDriverNotesHint => 'Besjrief de oefeninge, \'t gedrag van de student, de gebruukde weg en alle oetzonderingen...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Voernootjes (minimaal 10 karakters):';

  @override
  String get drillEvidenceFailed => 'Inlevering mislukt';

  @override
  String get drillEvidenceMandatoryWarning => 'Minstens 1 foto of video bewies is verplichte veur de boor.';

  @override
  String get drillEvidenceRecordVideo => 'Opname Video';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY SUBmission';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN TO DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'De boordjlog...';

  @override
  String get drillEvidenceSuccess => 'De onderwerping is succesvol!';

  @override
  String get drillEvidenceSuccessMessage => 'De evacuatieboord is succesvol geüpload en is op goedkeuring.';

  @override
  String get drillEvidenceTakePhoto => 'Foto\'s maak';

  @override
  String get drillEvidenceTitle => 'Bewijs veur verplichte boor';

  @override
  String get drillEvidenceUploading => 'Uploading van bewies en checklistgegevens';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark de opkomst';

  @override
  String get drillRosterNoStudents => 'Op deze route is gein student geregistreerd.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Present: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'BESJKERKINGS BESJKERK';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sjtad: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Kies alle';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notes';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Goedgekeurd op: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Geaccepteerd bij';

  @override
  String get drillSummaryBackToDrills => 'Terug nao Drills';

  @override
  String get drillSummaryBusNumber => 'Busnummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Leider door: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill Details';

  @override
  String get drillSummaryDriverNotesTitle => 'Voer Notes';

  @override
  String get drillSummaryDuration => 'Duration';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Einde Tijd';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuere: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuere $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bewies media-aanhangsels';

  @override
  String get drillSummaryGps => 'GPS-coördinaten';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Gefaolig in de boorresumé te laden veur ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Gein boorgegevens weure meej gevonden.';

  @override
  String get drillSummaryNotOnBus => 'Neet op de bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Op de bus - NIET geëvacueerd';

  @override
  String get drillSummaryPhotoEvidence => 'Foto Bewies';

  @override
  String get drillSummaryRouteId => 'Route ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sjtad: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Beginningstied';

  @override
  String get drillSummaryStatus => 'Status vaan de aafhankelikheid';

  @override
  String get drillSummaryStudentLogTitle => 'Student Evakuatie log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String get drillSummaryType => 'Drill type';

  @override
  String get drillSummaryVideoEvidence => 'Video Bewies';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Kies de boorclassificatie:';

  @override
  String get drillTypeCustomHint => 'Doe \'t aovendj van de evacuatie drill...';

  @override
  String get drillTypeInvalidState => 'Invalide voertuig of route staat.';

  @override
  String get drillTypeNameBusFire => 'Bus brand';

  @override
  String get drillTypeNameDangerZone => 'Gevaarige Zone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Sjtuurvermogen';

  @override
  String get drillTypeNameEquipmentOrientation => 'Equipment oriëntatie';

  @override
  String get drillTypeNameFrontDoor => 'De veurdeur';

  @override
  String get drillTypeNameOthers => 'Aander';

  @override
  String get drillTypeNameRearDoor => 'Achterdeur';

  @override
  String get drillTypeNameSideOrRoof => 'Zijde of dak';

  @override
  String get drillTypeNameSplit => 'Splitsje';

  @override
  String get drillTypeNoRouteSelected => 'Gein route gesjleurd';

  @override
  String get drillTypePreparation => 'DROIL-PREPARATIE';

  @override
  String get drillTypeProceed => 'BROOK TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Kies route:';

  @override
  String get drillTypeSpecifyCustom => 'Besjreve de boortypebeschrijving:';

  @override
  String get drillTypeTitle => 'Kies de boortype';

  @override
  String get drillTypeWarning => 'Veurzeker dat \'t voertuig veilig is geparkeerd veur \'t begin van de executie.';

  @override
  String get drillsAssignedVehicle => 'Aangewezen voertuig';

  @override
  String get drillsChecking => 'Ik controleer...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Gein bus toegewezen';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Gein oefeninge getregde veur bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Gein routes die veur \'n boor begin.';

  @override
  String get drillsShowSummary => 'Vertoon samenvatting';

  @override
  String get drillsStartDrill => 'Begin drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Gevoerde: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuatie oefeninge';

  @override
  String get drillsVehicleOutOfService => 'Auto oet de dienst';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dit voertuig is momenteel óntgetrouwd en mag neet veur booringsgebeed gebruuk weure.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-klasse';

  @override
  String get driverDetailsDrivingLicenseLabel => 'LEVENZIGING';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAAM: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passagier';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Sjoolbus';

  @override
  String get driverDetailsEndorsementsTitle => 'Ondersteuning ingewikkeld';

  @override
  String get driverDetailsExpiryDateLabel => 'Vervaldatum';

  @override
  String get driverDetailsHolderSignature => 'HOLDER SIGNATURE';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Uitgavedatum';

  @override
  String get driverDetailsLicenseDocTitle => 'Licentie document';

  @override
  String get driverDetailsLicenseNoLabel => 'Licentie nr.';

  @override
  String get driverDetailsLicenseTitle => 'Licentie details';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licentie-type';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIële SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasse: V0';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORSE:';
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
  String get driverDetailsTapToView => 'Klik op om DL-document te zien';

  @override
  String get driverDetailsTitle => 'Besjrifte van bestuurders';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-specifieke veiligheidsstelsels';

  @override
  String get dvirCategoryCouplingDevices => 'Koppelingsapparaten';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipment voor noodgevallen';

  @override
  String get dvirCategoryHorn => 'Hoorn';

  @override
  String get dvirCategoryLightingReflectors => 'Verlichtingsapparaten en reflektoren';

  @override
  String get dvirCategoryMirrors => 'Achterziendspiegel';

  @override
  String get dvirCategoryParkingBrake => 'Parkeerbremse';

  @override
  String get dvirCategoryPassengerSeating => 'Passagierszitplek en beperkinge';

  @override
  String get dvirCategoryServiceBrakes => 'Serveur remme';

  @override
  String get dvirCategorySteeringMechanism => 'Mechanisme vaan bestuur';

  @override
  String get dvirCategoryTires => 'Reifen';

  @override
  String get dvirCategoryWheelsRims => 'Wiel en riem';

  @override
  String get dvirCategoryWipers => 'Windschutzversjuif';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOS DE FACTURE';

  @override
  String get dvirPostTripComplianceTitle => 'VERLIEVINGSCERTIFICATIE';

  @override
  String get dvirPostTripDefectButton => 'DEFEKT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapporteer van defect zonder foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Waarsjlaag: Je meldt \'n gebrek op de veiligheidszones ($zones) zonder \'n foto te beej te voege.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspectie: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Doe details van de veiligheidsvraag in...';

  @override
  String get dvirPostTripNotesLabel => 'NOTEN (MANDATORIE VAN DEFECT) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Selecteer DEFECT um details te gaeve van de veiligheidskrisis...';

  @override
  String get dvirPostTripOdometerHeader => 'Optoch van de Odometer';

  @override
  String get dvirPostTripOdometerInstructions => 'Veur de kilometers te lezen precies zoewie op \'t businstrumentpaneel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Miles)';

  @override
  String get dvirPostTripOdometerTitle => 'WAGEL RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Doe de kilometerslezing in veur de beëdiging.';

  @override
  String get dvirPostTripPassButton => 'Passe';

  @override
  String get dvirPostTripPhotoAttached => 'Foto gelökkig aangehaald.';

  @override
  String get dvirPostTripProgressLabel => 'Inspectie progress';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatuur gevang.';

  @override
  String get dvirPostTripSignatureCert => 'Ich certificeer dat dit voertuig rondjlaag checklist verslag is voltooid in volhouding mèt FMCSA 396.11 regelgeving.';

  @override
  String get dvirPostTripSignatureTitle => 'Veurkeuring van de bestuurderskinders';

  @override
  String get dvirPostTripSubmitButton => 'OVERSLAG INSPECTIE';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR is succesvol ingeleid.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zones V0 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ich bekind dat ich de lèste ingediende defekteverslag heb bekènd en de reparaties (indien eige) heb gecontroleerd en verklaore dat de bus veilig is veur exploitatie.';

  @override
  String get dvirPreTripActiveMessage => 'Dit voertuig is actief en heet gein open defecten.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktieve route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'WAARHEIDING VAN DE WAARHEID: Defecten van de vorige daag';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VEHICLES DISPATCH CHECK';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Gefijndj te tekenen: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Gein eige eerdere gebrekkige versjèl';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dit voertuig is naor de vorige inspectie nao de reis schoon gemeld.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Neet reparaties vereiste veur veilige werking.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dit voertuig is oet de gebruuk veur reparatie/onderhoudswerk.';

  @override
  String get dvirPreTripOutofServiceButton => 'Veerfiel oet de dienst';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Grond:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'NEUW DEFEKTEN VERLIEVEN';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'De melding van nieuwe defekte is tijdens reparaties uitgeschakeld.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: V0';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Resolutie van de sub-admin van vervoer';

  @override
  String get dvirPreTripReturnToHomeButton => 'BKOM TIE HEEM';

  @override
  String get dvirPreTripSignOffTitle => 'Sign-OFF om te gaon nao de wandel';

  @override
  String get dvirPreTripSignedSuccess => 'Verificatie is gesjreve.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERVERIKING';

  @override
  String get dvirPreTripTitle => 'Pre-reisverificatie';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Veertuigstatus: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Teken handtekening';

  @override
  String get dvirSigPreviewLabel => 'Gevangen handtekening Preview:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SPAAR SIGNATURE';

  @override
  String get dvirSigTapToDraw => 'TAP TO DRAW SIGNATURE (VERWORK)';

  @override
  String get dvirSigWatermark => 'Vertikal (oonder tot bovenaan)';

  @override
  String get forgotPasswordCancel => 'Annulere';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Doe \'n geldig e-mail in';

  @override
  String get forgotPasswordSend => 'Stuur \'t';

  @override
  String get forgotPasswordSuccess => 'As die e-mail bestèlt, is \'n reset-link gesjreve.';

  @override
  String get genericBack => 'BACK';

  @override
  String get genericCancel => 'Annulere';

  @override
  String get genericClear => 'KLEAR';

  @override
  String get genericClose => 'Neet te zien';

  @override
  String get genericConfirm => 'Bevestig';

  @override
  String get genericEdit => 'Bewirk';

  @override
  String get genericError => 'Iets ging mis.';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericNext => 'Volgende';

  @override
  String get genericOk => 'Ok, waor dat?';

  @override
  String get genericRetry => 'Weer proef';

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
  String get homeErrorNoRoutesPreTrip => 'Gein routes die veur de Pre-Trip beschikbaar zeen.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Neet op de server gestart: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hoi, V0__';
  }

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'Besjrifte van bestuurders';

  @override
  String get homeMenuLanguage => 'Taol';

  @override
  String get homeMenuPreTrip => 'Pre-reisinspectie';

  @override
  String get homeNoRoutes => 'Geen routes beschikbaar';

  @override
  String get homeReviewVerifyPreTrip => 'Review & Verify Pre-Trip';

  @override
  String get homeSearchHint => 'Zoektroutes';

  @override
  String get homeStart => 'Begin';

  @override
  String get homeTitle => 'Huus';

  @override
  String get homeVehicleOutOfServiceDefault => '\'t voertuig is momenteel OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => '\'t Veugel is klaor en geverifieerd veur veilige werking.';

  @override
  String get languageTitle => 'Taol';

  @override
  String get loginButton => 'Inlogging';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail of telefoonnummer';

  @override
  String get loginErrorEnterPassword => 'Doe \'t wachtwoord in';

  @override
  String get loginErrorEnterUsername => 'Doe \'t gebruuknaam in';

  @override
  String get loginErrorFailed => 'Login is misluk.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Veurgeve ein geldig e-mail of telefoonnummer in te voege';

  @override
  String get loginForgotPassword => 'Vergaete \'t wachtwoord?';

  @override
  String get loginPasswordLabel => 'Waordwoord';

  @override
  String get mapChildrenTooltip => 'Kinderen & voogd';

  @override
  String get mapConfirmMessage => 'Wil je de reis echt einmaol beëindige?';

  @override
  String get mapConfirmTitle => 'Bevestig';

  @override
  String get mapCurrentPosition => 'De huidige positie';

  @override
  String get mapNo => 'Neet';

  @override
  String get mapReconnectMessage => 'De locatie update mislukt dèks, geer zörg uw internet te controlere.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stop!';

  @override
  String get mapStopping => 'Stoppend...';

  @override
  String get mapStopsTooltip => 'Stoppings';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Updated ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Wachte op GPS...';

  @override
  String get mapYes => 'Jao, jao.';

  @override
  String get splashDriverApp => 'App veur bestuurders';

  @override
  String get stopsActionUndo => 'Oetgebreid';

  @override
  String get stopsCancelledSuccess => 'Succesvol geannuleerd';

  @override
  String get stopsDefaultLabel => 'Stop!';

  @override
  String get stopsGenericError => 'D\'r is iets mis gegaan.';

  @override
  String get stopsStatusComplete => 'voltooid';

  @override
  String get stopsStatusDone => 'gehaold';

  @override
  String stopsSubmitCount(Object count) {
    return 'Oonderhandiging ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Succesvol ingeleverd';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected geselecteerd _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsTypePick => 'Kies';

  @override
  String stopsUndoCount(Object count) {
    return 'Oetgebreid ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Oetgepak/drop';

  @override
  String get tripConfirmCancel => 'Annulere';

  @override
  String get tripConfirmOk => 'OK, good.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'De locatievergunning is vereiste um \'n reis te beginne.';

  @override
  String get homeMenuPostCrashReporting => 'Rapportage nao \'t krach';

  @override
  String homeVehicleReason(Object reason) {
    return 'Grond:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: V0';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Zoektplaats (bv. Marktstraot)';

  @override
  String get crashLocationPickerTitle => 'Kies plaats op kaart';

  @override
  String get crashLocationPickerTooltip => 'Bevestig plaots';

  @override
  String get incidentDashboardDescription => 'Kies \'n actie um door te gaon met incidentbeheer of bekijk verleden berichten.';

  @override
  String get incidentDashboardHeadline => 'Rapportering nao \'t ongeluk';

  @override
  String get incidentDashboardLogNew => 'Log Nieuwe Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Begin \'n nieuw stapsje-naotsverslag';

  @override
  String get incidentDashboardTitle => 'Naaf \'t ongeluk';

  @override
  String get incidentDashboardViewHistory => 'Bekijk geschiedenis';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Bekiek eige crashberichten en status';

  @override
  String get incidentDetailsAdminLetter => 'Admin brief';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholtesttelling (2-uur limiet)';

  @override
  String get incidentDetailsBranchId => 'Branch ID';

  @override
  String get incidentDetailsBusPlate => 'Bus Licens plaat';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citatie Impakt: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citat veur de bestuurder';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coördinaten: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title gekopieerd op de clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopie op de klinkbord';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum & Tijd: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Rapport van de DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Statse DOE-verslag (optioneel)';

  @override
  String get incidentDetailsDriverNotes => 'Voer Notes:';

  @override
  String get incidentDetailsDriverUserId => 'Driver User ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8-uur limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'D\'r woort \'n dodelik gebeurde';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Verwondinge die medische behandeling vereiste';

  @override
  String get incidentDetailsLawEnforcement => 'Regele-oefeningsautoriteit';

  @override
  String get incidentDetailsLoadFailed => 'Gein details opgeladen.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Plaats: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Media-aanhangsels';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: V0';
  }

  @override
  String get incidentDetailsNo => 'Neet';

  @override
  String get incidentDetailsNoMediaAttachments => 'Gein foto\'s of video\'s beige.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'D\'r woorte tijdens \'t incident gein student gemarkeerd.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generere meldingverslagen en verzènje sjablone brieven aan districtsinspecteurs of bestuur.';

  @override
  String get incidentDetailsNotificationsTitle => 'Verzendingskennisgewings';

  @override
  String get incidentDetailsOfficer => 'Besjriftelik details';

  @override
  String get incidentDetailsPoliceReport => 'Politieverslagnummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Voortgevulde oetzendingbrief:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Reglementaire basis:';

  @override
  String get incidentDetailsRouteId => 'Route ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Kennisgeving van de schoolbeheerder';

  @override
  String get incidentDetailsStatusPending => 'Waagend';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detail: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Verwonden';

  @override
  String get incidentDetailsStudentNoInjury => 'Gein verwonding';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Swaarheid: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Vervoer nao: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenten aan boord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DAT POST-Crash TESTING vereist';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: V0';
  }

  @override
  String get incidentDetailsTitle => 'Besjriftelik incident';

  @override
  String get incidentDetailsVehicleTowed => 'Veertuig getrokken';

  @override
  String get incidentDetailsYes => 'Jao';

  @override
  String get incidentHistoryEmpty => 'Gein incidentenregister is geregistreerd veur dit voertuig.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Gefaoligd logs te herrieve: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tyd: Bus: V1 _ Testing: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NIE vereiste';

  @override
  String get incidentHistoryTestingRequired => 'Vereiste';

  @override
  String get incidentHistoryTitle => 'Register van incidenten nao \'t ongeluk';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Voeg nog e foto toe';

  @override
  String get incidentIntakeBadgeNumberError => 'Vereiste';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Beldnummer *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto van de incidentscène opnames';

  @override
  String get incidentIntakeCitationSubtitle => 'Wurde \'n bewegende verkeersverstooringsvermelding aan de schoolbuschauffeur afgegeven?';

  @override
  String get incidentIntakeCitationTitle => 'Vergifte citatie?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Datum & Tijd *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING NIE vereist';

  @override
  String get incidentIntakeDotTestingRequired => 'DAT TESTING vereist';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Sjriever:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Doe alle aandere notities in met betrekking tot de botsing...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Besjrieveringsverlègingsbrief';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Vastelaovendj van de route: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Bekiek bewies (foto\'s) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Wurde er al gedood door dit ongeluk?';

  @override
  String get incidentIntakeFatalityTitle => 'Is \'t gedood?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-coördinaten *';

  @override
  String get incidentIntakeHistoryTooltip => 'Bekijk geschiedenis';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Is iemand van de plaatsvervanging lichamelijk verwond en vereiste onmiddellik medische behandeling?';

  @override
  String get incidentIntakeInjuriesTitle => 'Verwondinge die medische behandeling vereiste?';

  @override
  String get incidentIntakeInjuryNotesError => 'Verwondingsbrief is verplichte veur gewondjende studenten';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Verwondingsopmerkingen / Detail (verplicht) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Verwonding zwareheid *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Blief de wetshandhaving ingereis';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Strafbewachting (bv. Staatsstraotpatrouille) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rechterwachting en politierapport';

  @override
  String get incidentIntakeLocationDescError => 'Veur de plaatsbesjrieving ingelei';

  @override
  String get incidentIntakeLocationDescLabel => 'Plaatsbeschrijving (bv. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medische faciliteit getransporteerd nao';

  @override
  String get incidentIntakeNoMatchingStudents => 'Gein matcheende sjtudente.';

  @override
  String get incidentIntakeNoStudentsFound => 'Gein studente is gevonden.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Geer drökke op NEXT om door te gaon.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Gein studenten is op deze route geregistreerd.';

  @override
  String get incidentIntakeOfficerNameError => 'Doe de naam van de officier in';

  @override
  String get incidentIntakeOfficerNameLabel => 'Naam van de officier *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Doe \'t nummer van de politierapport in.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Politie melding nummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Route & Driver Information';

  @override
  String get incidentIntakeSearchInjuredHint => 'Zoek verwond kind...';

  @override
  String get incidentIntakeSearchStudentHint => 'Zoek student...';

  @override
  String get incidentIntakeSelectAll => 'Kies alle studenten';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT op kaart';

  @override
  String get incidentIntakeSeverityFatal => 'Fatale';

  @override
  String get incidentIntakeSeverityMinor => 'Kleinere';

  @override
  String get incidentIntakeSeverityModerate => 'Gematigd';

  @override
  String get incidentIntakeSeveritySevere => 'Swaar';

  @override
  String get incidentIntakeSeverityTitle => 'Variabele krachsgraad';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Verslag';

  @override
  String get incidentIntakeTitle => 'Inname nao \'t ongeluk';

  @override
  String get incidentIntakeTowedSubtitle => 'Is e voertuig ónmiddelijk gesjlaag en moogde \'t van de plaats delict get get get get get get get get get get?';

  @override
  String get incidentIntakeTowedTitle => 'Auto get getrokken?';

  @override
  String get incidentIntakeWasInjured => 'Was ie verwond?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'DIE BESJTEIN';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Voercommentaar / Notes (optioneel)';

  @override
  String get dvirPreTripNoComments => 'Gein opmerkingen toegevoegd.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Grond:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatuur geslaote.';

  @override
  String get dvirPreTripSigMissing => 'De handtekening is ontbrekend.';

  @override
  String get dvirPreTripSignDefectWarning => 'Teken alstublieft um de reparatie van eige gebrekkige verval te verifieëren.';

  @override
  String get dvirPreTripStepSignOff => 'Signaal';

  @override
  String get dvirPreTripStepSubmit => 'Oonderstuur';

  @override
  String get dvirPreTripStepVerify => 'Verifieër';

  @override
  String get dvirPreTripTapNext => 'Klik op NEXT om door te gaon.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Auto is uit dienst';

  @override
  String get dvirPreTripVehicleReady => '\'t Auto is gereed veur dienst';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verificeerde reparatie status:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Veur alle gemelde defecten te verifieëren is gerepareerd door de vak naeve elk defecte te checken.';

  @override
  String get dvirPreTripYourComments => 'D\'r Commentaar:';

  @override
  String get countryPickerNoCountries => 'Geen landen gevonden';

  @override
  String get countryPickerSearchHint => 'Zoek door landnaam, code of dialcode...';

  @override
  String get countryPickerTitle => 'Selecteer land';

  @override
  String get mapDefaultStop => 'Stop!';

  @override
  String get mapEndLocation => 'Eindeplaats';

  @override
  String get mapStartLocation => 'Startplaats';

  @override
  String get stopsNoChangesToUndo => 'Gein veranderinge die weej kinne oetgeve.';

  @override
  String get stopsNoStopsAvailable => 'Gein stops.';

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
