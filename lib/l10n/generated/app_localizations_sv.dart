import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appInfoBuild => 'Bygga nummer';

  @override
  String get appInfoDevice => 'Anordningens modell';

  @override
  String get appInfoOS => 'OS-version';

  @override
  String get appInfoPackage => 'Förpackning';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'Appversion';

  @override
  String get appTitleSchoolDiary => 'SD-tracker';

  @override
  String get childrenActionGuardians => 'Vaktare';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Tillåtna förvaltare för $name';
  }

  @override
  String get childrenNoGuardians => 'Ingen behörig vårdnadshavare.';

  @override
  String get childrenStatusDropped => '- Jag har tappat.';

  @override
  String get childrenStatusPending => 'Väntar på';

  @override
  String get childrenStatusPicked => '- Jag har valt.';

  @override
  String childrenTitle(Object routeName) {
    return 'Barn  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'FÖRLIG/NÄR på bussen ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return '- Buss:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakueras';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuerade: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ingen frånvarande elever.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ingen elever markerade på bussen.';

  @override
  String get drillChecklistNotOnBus => 'Inte på bussen';

  @override
  String get drillChecklistOnBusNotEvacuated => 'På bussen  INTE evakuerad';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'På BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'TIL att fånga bevis';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Ruten (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakueringsanvisningskontrolllista';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '-Oberäknade studenter återstår!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Är du säker på att du vill skicka in den här borrloggen?';

  @override
  String get drillEvidenceConfirmSubmission => 'Bekräfta att man har gjort en övning';

  @override
  String get drillEvidenceDriverNotesHint => 'Beskriv utförande, studentbeteende, utgångsvägar och eventuella undantag.';

  @override
  String get drillEvidenceDriverNotesLabel => 'Förare noteringar (minimum 10 tecken):';

  @override
  String get drillEvidenceFailed => 'Inlämning misslyckades';

  @override
  String get drillEvidenceMandatoryWarning => 'Minst ett fotobeskrivning eller ett videobeskrivning är obligatoriskt för att lämna in en övning.';

  @override
  String get drillEvidenceRecordVideo => 'Ta in videon';

  @override
  String get drillEvidenceRetrySubmission => 'Återbetalning';

  @override
  String get drillEvidenceReturnToDashboard => 'Återvänd till dashbordet';

  @override
  String get drillEvidenceSubmitButton => 'Förberedelse för att';

  @override
  String get drillEvidenceSubmitting => '- Jag skickar in en drill log...';

  @override
  String get drillEvidenceSuccess => 'Underkastelse framgångsrik!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakueringspridning loggen har laddats upp och väntar på godkännande.';

  @override
  String get drillEvidenceTakePhoto => 'Ta en bild';

  @override
  String get drillEvidenceTitle => 'Bärande bevis för borrning';

  @override
  String get drillEvidenceUploading => 'Uppladdning av bevis och kontrolllistauppgifter';

  @override
  String drillRosterBus(Object busNumber) {
    return '- Buss:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- Jag har inte hört det.';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark närvaro';

  @override
  String get drillRosterNoStudents => 'Ingen student registrerad på den här vägen.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Present: V1';
  }

  @override
  String get drillRosterProceed => 'Självklart inte.';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Ruten:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sätplats:';
  }

  @override
  String get drillRosterSelectAll => 'Välj alla';

  @override
  String get drillSummaryAdminNotesTitle => 'Anmälningar för administratörer';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Godkänd vid:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Godkänd i';

  @override
  String get drillSummaryBackToDrills => 'Tillbaka till Drills';

  @override
  String get drillSummaryBusNumber => 'Bussenummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Ledda av:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Borningsuppgifter';

  @override
  String get drillSummaryDriverNotesTitle => 'Förar Noter';

  @override
  String get drillSummaryDuration => 'Varaktighet';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- V1 - min';
  }

  @override
  String get drillSummaryEndTime => 'Sluttiden';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuerade: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuerad';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bevismedieanhang';

  @override
  String get drillSummaryGps => 'GPS-koordinater';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Längre:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Misslyckades med att ladda borrresuméet för ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Inga data hittades.';

  @override
  String get drillSummaryNotOnBus => 'Inte på bussen';

  @override
  String get drillSummaryOnBusNotEvacuated => 'I bussen - INTE evakuerad';

  @override
  String get drillSummaryPhotoEvidence => 'Bilder som bevisar det';

  @override
  String get drillSummaryRouteId => 'Ruten ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sätplats:';
  }

  @override
  String get drillSummaryStartTime => 'Började tid';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Studenternas evakuering logg';

  @override
  String drillSummaryTitle(Object id) {
    return 'Uppföljning av utbyggnaden av ett system för att kunna';
  }

  @override
  String get drillSummaryType => 'Borstyper';

  @override
  String get drillSummaryVideoEvidence => 'Videobestämmelser';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Välj borrklassificering:';

  @override
  String get drillTypeCustomHint => 'Ange en anpassad evakueringstyp...';

  @override
  String get drillTypeInvalidState => 'Invalida fordon eller rutten.';

  @override
  String get drillTypeNameBusFire => 'Bussen brinner.';

  @override
  String get drillTypeNameDangerZone => 'Farliga zoner';

  @override
  String get drillTypeNameDriverIncapacitation => 'Förarens otillräckliga förmåga';

  @override
  String get drillTypeNameEquipmentOrientation => 'Anordningens orientering';

  @override
  String get drillTypeNameFrontDoor => 'Fördörren';

  @override
  String get drillTypeNameOthers => 'Andra';

  @override
  String get drillTypeNameRearDoor => 'Bakre dörren';

  @override
  String get drillTypeNameSideOrRoof => 'Sidor eller tak';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Ingen väg vald';

  @override
  String get drillTypePreparation => 'Förberedelse för drill';

  @override
  String get drillTypeProceed => 'PROCED till studenten roster';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Ruten:';
  }

  @override
  String get drillTypeSelectRoute => 'Välj väg:';

  @override
  String get drillTypeSpecifyCustom => 'Ange typbeskrivning av borr:';

  @override
  String get drillTypeTitle => 'Välj borrtyp';

  @override
  String get drillTypeWarning => 'Se till att fordonet parkeras säkert innan verkställigheten påbörjas.';

  @override
  String get drillsAssignedVehicle => 'Tilldelat fordon';

  @override
  String get drillsChecking => 'Jag kollar...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Träning #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ingen buss tilldelad';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Inga övningar registrerade för bussen $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Inga vägar finns tillgängliga för att starta en borr.';

  @override
  String get drillsShowSummary => 'Visa sammanfattning';

  @override
  String get drillsStartDrill => 'Börja borrning';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Företag: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakueringsanpassningar';

  @override
  String get drillsVehicleOutOfService => 'Bilen är inte längre i drift';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Detta fordon är för närvarande inte i drift och kan inte användas för övning.';

  @override
  String get driverDetailsCdlClassLabel => 'Klass CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Körkort';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Namn:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passagerare';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Skolbus';

  @override
  String get driverDetailsEndorsementsTitle => 'Stödet hölls';

  @override
  String get driverDetailsExpiryDateLabel => 'Förbrukningsperiod';

  @override
  String get driverDetailsHolderSignature => 'HÄRDARSIGNATUR';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Utgått datum';

  @override
  String get driverDetailsLicenseDocTitle => 'Licensdokument';

  @override
  String get driverDetailsLicenseNoLabel => 'Licens nr';

  @override
  String get driverDetailsLicenseTitle => 'Licensuppgifter';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licenstyp';

  @override
  String get driverDetailsOfficialSeal => 'OFFICIAL SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klass:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Högsta nivån';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'Exp:';
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
  String get driverDetailsTapToView => 'Klicka på för att visa DL-dokumentet';

  @override
  String get driverDetailsTitle => 'Förareuppgifter';

  @override
  String get dvirCategoryBusSafetySystems => 'Busshäftelsesspecifika säkerhetssystem';

  @override
  String get dvirCategoryCouplingDevices => 'Kopplingsanordningar';

  @override
  String get dvirCategoryEmergencyEquipment => 'Huvudutrustning';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Ljusutrustning och reflektorer';

  @override
  String get dvirCategoryMirrors => 'Bakre-synspeglar';

  @override
  String get dvirCategoryParkingBrake => 'Parkeringsbroms';

  @override
  String get dvirCategoryPassengerSeating => 'Passagerarsäten och begränsningarna';

  @override
  String get dvirCategoryServiceBrakes => 'Tjänstbromsar';

  @override
  String get dvirCategorySteeringMechanism => 'Styrningssystem';

  @override
  String get dvirCategoryTires => 'Täck';

  @override
  String get dvirCategoryWheelsRims => 'Rullor och rimmar';

  @override
  String get dvirCategoryWipers => 'Vinterglasväppare';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOS:';

  @override
  String get dvirPostTripComplianceTitle => 'ENNÄRLIGHET';

  @override
  String get dvirPostTripDefectButton => 'FÖRDÖK';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapporterar fel utan bild';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Varning: Du rapporterar ett fel i säkerhetszonerna ($zones) utan att lägga till ett foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektion: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Ange detaljer om säkerhetsproblemet...';

  @override
  String get dvirPostTripNotesLabel => 'Anmärkningar (Förbud om defekt) och bild';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Välj DEFECT för att ange säkerhetsproblem...';

  @override
  String get dvirPostTripOdometerHeader => 'Läsning av den aktuella ödometern';

  @override
  String get dvirPostTripOdometerInstructions => 'Ange kilometersläsningen exakt som visas på instrumentpanelen:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mil)';

  @override
  String get dvirPostTripOdometerTitle => 'HÄRRVÄKEL RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Vänligen ange avståndsmätaren innan du fortsätter.';

  @override
  String get dvirPostTripPassButton => 'Pass';

  @override
  String get dvirPostTripPhotoAttached => 'Foto tillkopplat framgångsrikt.';

  @override
  String get dvirPostTripProgressLabel => 'Inspektionsutvecklingen';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatur fångad.';

  @override
  String get dvirPostTripSignatureCert => 'Jag intygar att denna checklista har slutförts i enlighet med FMCSA 396.11-föreskrifter.';

  @override
  String get dvirPostTripSignatureTitle => 'Kontroll av förarens signatur';

  @override
  String get dvirPostTripSubmitButton => 'Förhandsbesök';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR har lämnats framgångsrikt.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZON _V0__ OF _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V1 - Zoner';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Jag erkänner att jag har granskat den senaste inlämnade felrapporten och kontrollerat reparationerna (om det finns) och angett att bussen är säker för drift.';

  @override
  String get dvirPreTripActiveMessage => 'Detta fordon är aktivt och har inga öppna defekter.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiv väg: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'VÄRKFÖR: FÖRRDÄGNA DAGES MÄNDLAR';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'SYKELS-DISPATCH-kontroll';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Underlåtit att skriva på:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Inga tidigare fel registrerades';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Detta fordon rapporterades rent vid den tidigare inspektionen efter resan.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ingen reparation behövs för säker drift.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Detta fordon är av drift för reparationer/underhåll.';

  @override
  String get dvirPreTripOutofServiceButton => 'Föraren är inte längre i drift';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Anledningen:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- V0__ (reparerad)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'REPORTER NÅU VÄRKLAR';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Upplysningar om nya fel kan inte göras under reparationer.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transport-Underförvaltningsbeslut';

  @override
  String get dvirPreTripReturnToHomeButton => 'Återvända hem';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF för att gå runt';

  @override
  String get dvirPreTripSignedSuccess => 'Verifiering undertecknad framgångsrikt.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Förhandsförklaring';

  @override
  String get dvirPreTripTitle => 'Kontroll före resan';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Fordons status: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Resa signatur';

  @override
  String get dvirSigPreviewLabel => 'Förhandsgranskning av signatur:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SKAV underteckningen';

  @override
  String get dvirSigTapToDraw => 'TAPP för att rita signatur (Förutsättning)';

  @override
  String get dvirSigWatermark => 'Skriv vertikalt (Bottom to Top)';

  @override
  String get forgotPasswordCancel => 'Avbokning';

  @override
  String get forgotPasswordEmailLabel => 'E-post';

  @override
  String get forgotPasswordInvalidEmail => 'Vänligen ange ett giltigt e-postmeddelande';

  @override
  String get forgotPasswordSend => 'Skicka';

  @override
  String get forgotPasswordSuccess => 'Om e-post finns, har en återställningslänk skickats.';

  @override
  String get genericBack => 'Återvänd';

  @override
  String get genericCancel => 'Avbokning';

  @override
  String get genericClear => 'Klart';

  @override
  String get genericClose => 'Nära';

  @override
  String get genericConfirm => '- Det är inte det.';

  @override
  String get genericEdit => 'Redigera';

  @override
  String get genericError => 'Något gick fel.';

  @override
  String get genericLoading => '- Laddning...';

  @override
  String get genericNext => 'Nästa';

  @override
  String get genericOk => 'Okej, okej.';

  @override
  String get genericRetry => 'Försök igen.';

  @override
  String get genericSuccess => 'Framgång';

  @override
  String homeBusLabel(Object busId) {
    return '- Buss:';
  }

  @override
  String get homeDispatchBlocked => 'Sändning blockerad';

  @override
  String get homeDispatchBlockedTitle => 'Sändning blockerad';

  @override
  String get homeErrorNoRoutesPreTrip => 'Inga ruter tillgängliga för att utföra Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Misslyckades med att starta resan på servern: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hej, V0';
  }

  @override
  String get homeLogout => 'Inloggning';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Träcka';

  @override
  String get homeMenuDriverDetails => 'Förareuppgifter';

  @override
  String get homeMenuLanguage => 'Språk';

  @override
  String get homeMenuPreTrip => 'Inspektion före resan';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Inga ruter tillgängliga';

  @override
  String get homeReviewVerifyPreTrip => 'Övervakning och verifiering före resan';

  @override
  String get homeSearchHint => 'Sökvägar';

  @override
  String get homeStart => 'Börja';

  @override
  String get homeTitle => 'Hem';

  @override
  String get homeVehicleOutOfServiceDefault => 'Fordonet är för närvarande OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Fordonet är redo och kontrollerat för säker drift.';

  @override
  String get languageTitle => 'Språk';

  @override
  String get loginButton => 'Inloggning';

  @override
  String get loginEmailOrPhoneLabel => 'E-post eller telefonnummer';

  @override
  String get loginErrorEnterPassword => 'Vänligen ange lösenord';

  @override
  String get loginErrorEnterUsername => 'Vänligen ange användarnamn';

  @override
  String get loginErrorFailed => 'Loggen misslyckades.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Ange ett giltigt e-postmeddelande eller telefonnummer';

  @override
  String get loginForgotPassword => '- Glömde du lösenordet?';

  @override
  String get loginPasswordLabel => 'Passord';

  @override
  String get mapChildrenTooltip => 'Barn & vårdnadshavare';

  @override
  String get mapConfirmMessage => 'Vill du verkligen avsluta resan?';

  @override
  String get mapConfirmTitle => '- Det är inte det.';

  @override
  String get mapCurrentPosition => 'Den nuvarande positionen';

  @override
  String get mapNo => '- Nej, det gör jag inte.';

  @override
  String get mapReconnectMessage => 'Uppdatering av plats misslyckas ofta, kolla på internet.';

  @override
  String get mapReconnectTitle => 'Spårare';

  @override
  String get mapStop => 'Sluta.';

  @override
  String get mapStopping => '- Stanna.';

  @override
  String get mapStopsTooltip => 'Stannar';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Uppdaterad för några år sedan';
  }

  @override
  String get mapWaitingGps => '-Väntar på GPS...';

  @override
  String get mapYes => '- Ja, det är det.';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'Avskaffat';

  @override
  String get stopsCancelledSuccess => 'Avbokad framgångsrikt';

  @override
  String get stopsDefaultLabel => 'Sluta.';

  @override
  String get stopsGenericError => 'Något gick fel, försök igen.';

  @override
  String get stopsStatusComplete => 'fullständig';

  @override
  String get stopsStatusDone => '- Det är klart.';

  @override
  String stopsSubmitCount(Object count) {
    return 'Förmedling ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sökt med framgång';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'V1 - V2 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 - V3 -';
  }

  @override
  String get stopsTypeDrop => 'Släpp';

  @override
  String get stopsTypePick => 'Välj';

  @override
  String stopsUndoCount(Object count) {
    return 'Avskaffade';
  }

  @override
  String get stopsUndoTooltip => 'Avvecklad val/dropp';

  @override
  String get tripConfirmCancel => 'Avbokning';

  @override
  String get tripConfirmOk => '- Okej.';

  @override
  String get tripConfirmTitle => 'Spårare';

  @override
  String get tripErrorLocationRequired => 'Om man vill börja en resa krävs tillstånd.';

  @override
  String get homeMenuPostCrashReporting => 'Rapportering efter ett krasch';

  @override
  String homeVehicleReason(Object reason) {
    return 'Anledningen:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Längre:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Sökplats (t.ex. Market St)';

  @override
  String get crashLocationPickerTitle => 'Välj plats på kartan';

  @override
  String get crashLocationPickerTooltip => 'Bekräfta platsen';

  @override
  String get incidentDashboardDescription => 'Välj en åtgärd för att fortsätta med incidenthanteringen eller se tidigare rapporter.';

  @override
  String get incidentDashboardHeadline => 'Rapporter om händelser efter kraschen';

  @override
  String get incidentDashboardLogNew => 'Logg Ny Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Inled en ny steg för steg kraschrapport';

  @override
  String get incidentDashboardTitle => 'Efter kraschen';

  @override
  String get incidentDashboardViewHistory => 'Se historia';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Se tidigare kraschrapporter och status';

  @override
  String get incidentDetailsAdminLetter => 'Admin brev';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholtest avräkning (2 timmars gräns)';

  @override
  String get incidentDetailsBranchId => 'Avdelningskort';

  @override
  String get incidentDetailsBusPlate => 'Busslicensskylt';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citationseffekt: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citat till föraren';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Samordning: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- Vi har kopierat det!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopia till klippbordet';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum och tid: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE-rapporten';

  @override
  String get incidentDetailsDoeReportTitle => 'Statliga utredningsorganets rapport (alternativ)';

  @override
  String get incidentDetailsDriverNotes => 'Förare Noter:';

  @override
  String get incidentDetailsDriverUserId => 'Användaridentitet för föraren';

  @override
  String get incidentDetailsDrugCountdown => 'Avräkning av drogprov (dvs. 8-timmars gräns)';

  @override
  String get incidentDetailsFatalityOccurred => 'En dödlig händelse';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Skador som kräver medicinsk behandling';

  @override
  String get incidentDetailsLawEnforcement => 'Rättsäkerhetsorgan';

  @override
  String get incidentDetailsLoadFailed => '- Jag har inte laddat detaljer.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Plats:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medieanhang';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'NÄR';

  @override
  String get incidentDetailsNoMediaAttachments => 'Inga bilder eller videor.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ingen student var märkt ombord under händelsen.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generera meddelanderapporter och skicka ut mallbrev till distriktsövervakare eller förvaltning.';

  @override
  String get incidentDetailsNotificationsTitle => 'Anmälan om överföring';

  @override
  String get incidentDetailsOfficer => 'Ansvarspersonuppgifter';

  @override
  String get incidentDetailsPoliceReport => 'Polisen rapporterar nummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Förbefolkning av förmedlingsbrev:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regleringsgrund:';

  @override
  String get incidentDetailsRouteId => 'Ruten ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Anmälan till skolans administratör';

  @override
  String get incidentDetailsStatusPending => 'Väntar på';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Uppgifter:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Skadad';

  @override
  String get incidentDetailsStudentNoInjury => 'Ingen skada';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Svårighet:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transport till:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenter ombord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Tester efter krasch krävs';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Upplysningar om händelsen';

  @override
  String get incidentDetailsVehicleTowed => 'Föraren dragad';

  @override
  String get incidentDetailsYes => 'Ja, det är det.';

  @override
  String get incidentHistoryEmpty => 'Ingen incident logg registrerats för detta fordon.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Misslyckades med att hämta loggar: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tiden: 0 bussen: 0 provning: 0';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'INTE BETRÖVT';

  @override
  String get incidentHistoryTestingRequired => 'RÄVNING';

  @override
  String get incidentHistoryTitle => 'Post-crash incident register';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Lägg till ett annat foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Förpliktelser';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Bärningsnummer *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Ta bilden av händelseplatsen';

  @override
  String get incidentIntakeCitationSubtitle => '-Försökte man för att ha brottat trafiken?';

  @override
  String get incidentIntakeCitationTitle => '-Försökning?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Datum och tid *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING INTE krävs';

  @override
  String get incidentIntakeDotTestingRequired => 'TESTING krävs';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Förare:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Ange några ytterligare anteckningar om kollisionen...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Anmärkningar om förarincidenter';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Inlått att ladda passagerare på rutten: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Lägga till bevis (bilder) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Har några dödsfall inträffat som ett resultat av denna olycka?';

  @override
  String get incidentIntakeFatalityTitle => 'Har dödlighet inträffat?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-koordinater *';

  @override
  String get incidentIntakeHistoryTooltip => 'Se historia';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Har någon fått kroppsskador som kräver omedelbar medicinsk behandling utanför platsen?';

  @override
  String get incidentIntakeInjuriesTitle => 'Skador som kräver medicinsk behandling?';

  @override
  String get incidentIntakeInjuryNotesError => 'Skador är obligatoriska för skadad elev';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Skador Noter / detaljer (bindande) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Sårens allvar *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Vänligen gå in i brottsbekämpande myndigheter';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Rättsbekämpande myndighet (t.ex. statlig motorvägpatruller) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Rättsbekämpning och polisrapport';

  @override
  String get incidentIntakeLocationDescError => 'Ange platsbeskrivning';

  @override
  String get incidentIntakeLocationDescLabel => 'Platsbeskrivning (t.ex. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicinska anläggningar transporterade till';

  @override
  String get incidentIntakeNoMatchingStudents => 'Inga matcherande elever.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ingen student hittades.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ingen student ombord, tryck på NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ingen student registrerades för den här vägen.';

  @override
  String get incidentIntakeOfficerNameError => 'Ange tjänstemans namn.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Officer Namn *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Ange polisrapportenummer.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Polisen rapporterar nummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Ruten:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Ruten & förarens information';

  @override
  String get incidentIntakeSearchInjuredHint => '-Sök efter skadad barn...';

  @override
  String get incidentIntakeSearchStudentHint => '-Sök student...';

  @override
  String get incidentIntakeSelectAll => 'Välj alla elever';

  @override
  String get incidentIntakeSelectOnMap => 'VÄLLNING på kartan';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Mindre';

  @override
  String get incidentIntakeSeverityModerate => 'Medelmåttig';

  @override
  String get incidentIntakeSeveritySevere => 'Svåra';

  @override
  String get incidentIntakeSeverityTitle => 'Variabler av kraschvärde';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Rapport';

  @override
  String get incidentIntakeTitle => 'Intag efter ett krasch';

  @override
  String get incidentIntakeTowedSubtitle => 'Har någon bil fått skador som gör att den måste dras från platsen?';

  @override
  String get incidentIntakeTowedTitle => '- Bilen dragit?';

  @override
  String get incidentIntakeWasInjured => '- Var han skadad?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return '- Buss:';
  }

  @override
  String get dvirPreTripClose => 'TILLBRA';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Anmärkning/noter från föraren (alternativ)';

  @override
  String get dvirPreTripNoComments => 'Inga kommentarer.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Anledningen:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Ruten:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signatur lyckats fånga.';

  @override
  String get dvirPreTripSigMissing => 'Signaturen saknas.';

  @override
  String get dvirPreTripSignDefectWarning => 'Skriv under för att bekräfta reparation av tidigare fel.';

  @override
  String get dvirPreTripStepSignOff => 'Förteckning';

  @override
  String get dvirPreTripStepSubmit => 'Förmedla';

  @override
  String get dvirPreTripStepVerify => 'Kontrollera';

  @override
  String get dvirPreTripTapNext => 'Klicka på NEXT för att fortsätta.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Bilen är inte i drift.';

  @override
  String get dvirPreTripVehicleReady => 'Bilen är redo för tjänstgöring';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verifierad reparationsstatus:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Kontrollera att alla rapporterade fel har reparerats genom att kolla i rutan bredvid varje fel.';

  @override
  String get dvirPreTripYourComments => 'Dina kommentarer:';

  @override
  String get countryPickerNoCountries => 'Inga länder hittades';

  @override
  String get countryPickerSearchHint => 'Sök efter landnamn, kod eller nummernummer...';

  @override
  String get countryPickerTitle => 'Välj land';

  @override
  String get mapDefaultStop => 'Sluta.';

  @override
  String get mapEndLocation => 'Slutplats';

  @override
  String get mapStartLocation => 'Startplats';

  @override
  String get stopsNoChangesToUndo => 'Inga förändringar som kan ändras.';

  @override
  String get stopsNoStopsAvailable => 'Inga stopp tillgängliga.';

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
