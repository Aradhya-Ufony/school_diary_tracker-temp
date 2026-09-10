import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appInfoBuild => 'Build-Nummer';

  @override
  String get appInfoDevice => 'Gerätemodell';

  @override
  String get appInfoOS => 'Betriebssystemversion';

  @override
  String get appInfoPackage => 'Paket';

  @override
  String get appInfoTitle => 'App-Info';

  @override
  String get appInfoVersion => 'App-Version';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Erziehungsberechtigte';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Autorisierte Erziehungsberechtigte für $name';
  }

  @override
  String get childrenNoGuardians => 'Keine autorisierten Erziehungsberechtigten für dieses Kind hinterlegt.';

  @override
  String get childrenStatusDropped => 'Abgesetzt';

  @override
  String get childrenStatusPending => 'Ausstehend';

  @override
  String get childrenStatusPicked => 'Abgeholt';

  @override
  String childrenTitle(Object routeName) {
    return 'Kinder - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ABWESEND / NICHT IM BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuiert';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuiert: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Keine abwesenden Schüler.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Keine Schüler im Bus markiert.';

  @override
  String get drillChecklistNotOnBus => 'NICHT IM BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'IM BUS - NICHT EVAKUIERT';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'IM BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'WEITER ZUR BEWEISAUFNAHME';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuierungsübung-Checkliste';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count fehlende(r) Schüler verbleibend!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Sind Sie sicher, dass Sie dieses Übungsprotokoll einreichen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get drillEvidenceConfirmSubmission => 'Übungseinreichung bestätigen';

  @override
  String get drillEvidenceDriverNotesHint => 'Beschreiben Sie den Übungsablauf, das Verhalten der Schüler, genutzte Fluchtwege und beobachtete Besonderheiten...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Fahrernotizen (mindestens 10 Zeichen):';

  @override
  String get drillEvidenceFailed => 'Einreichung fehlgeschlagen';

  @override
  String get drillEvidenceMandatoryWarning => 'Mindestens 1 Foto- oder Videobeweis ist zwingend erforderlich, um die Übung einzureichen.';

  @override
  String get drillEvidenceRecordVideo => 'Video aufnehmen';

  @override
  String get drillEvidenceRetrySubmission => 'EINREICHUNG WIEDERHOLEN';

  @override
  String get drillEvidenceReturnToDashboard => 'ZURÜCK ZUM DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'ÜBUNGSPROTOKOLL EINREICHEN';

  @override
  String get drillEvidenceSubmitting => 'Übungsprotokoll wird eingereicht...';

  @override
  String get drillEvidenceSuccess => 'Einreichung erfolgreich!';

  @override
  String get drillEvidenceSuccessMessage => 'Das Evakuierungsübungsprotokoll wurde erfolgreich hochgeladen und wartet auf Genehmigung.';

  @override
  String get drillEvidenceTakePhoto => 'Foto aufnehmen';

  @override
  String get drillEvidenceTitle => 'Obligatorischer Übungsbeweis';

  @override
  String get drillEvidenceUploading => 'Beweismittel und Checklisten-Daten werden hochgeladen';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Übung: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Anwesenheit markieren';

  @override
  String get drillRosterNoStudents => 'Keine Schüler für diese Route registriert.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Anwesend: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'WEITER ZUR ÜBUNGSCHECKLISTE';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sitz: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Alle auswählen';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin-Notizen';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Genehmigt am: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Genehmigungsdatum';

  @override
  String get drillSummaryBackToDrills => 'Zurück zu Übungen';

  @override
  String get drillSummaryBusNumber => 'Busnummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Durchgeführt von: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Übungsdetails';

  @override
  String get drillSummaryDriverNotesTitle => 'Fahrernotizen';

  @override
  String get drillSummaryDuration => 'Dauer';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes Min $seconds Sek';
  }

  @override
  String get drillSummaryEndTime => 'Endzeit';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuiert: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuiert um $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Beweismittel-Anhänge';

  @override
  String get drillSummaryGps => 'GPS-Koordinaten';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Breite: $lat, Länge: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Fehler beim Laden der Übungszusammenfassung für ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Keine Übungsdaten gefunden.';

  @override
  String get drillSummaryNotOnBus => 'Nicht im Bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'IM BUS - NICHT EVAKUIERT';

  @override
  String get drillSummaryPhotoEvidence => 'Fotobeweis';

  @override
  String get drillSummaryRouteId => 'Routen-ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sitz: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Startzeit';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Schüler-Evakuierungsprotokoll';

  @override
  String drillSummaryTitle(Object id) {
    return 'Übungszusammenfassung (#$id)';
  }

  @override
  String get drillSummaryType => 'Übungsart';

  @override
  String get drillSummaryVideoEvidence => 'Videobeweis';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Wählen Sie die Übungsklassifizierung:';

  @override
  String get drillTypeCustomHint => 'Geben Sie eine benutzerdefinierte Übungsart ein...';

  @override
  String get drillTypeInvalidState => 'Ungültiger Fahrzeug- oder Routenstatus.';

  @override
  String get drillTypeNameBusFire => 'Busbrand';

  @override
  String get drillTypeNameDangerZone => 'Gefahrenzone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Fahrerausfall';

  @override
  String get drillTypeNameEquipmentOrientation => 'Geräteorientierung';

  @override
  String get drillTypeNameFrontDoor => 'Vordertür';

  @override
  String get drillTypeNameOthers => 'Andere';

  @override
  String get drillTypeNameRearDoor => 'Hintertür';

  @override
  String get drillTypeNameSideOrRoof => 'Seite oder Dach';

  @override
  String get drillTypeNameSplit => 'Geteilt';

  @override
  String get drillTypeNoRouteSelected => 'Keine Route ausgewählt';

  @override
  String get drillTypePreparation => 'ÜBUNGSVORBEREITUNG';

  @override
  String get drillTypeProceed => 'WEITER ZUR SCHÜLERLISTE';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Route auswählen:';

  @override
  String get drillTypeSpecifyCustom => 'Übungsbeschreibung angeben:';

  @override
  String get drillTypeTitle => 'Übungsart auswählen';

  @override
  String get drillTypeWarning => 'Stellen Sie sicher, dass das Fahrzeug sicher geparkt ist, bevor Sie mit der Übung beginnen.';

  @override
  String get drillsAssignedVehicle => 'Zugewiesenes Fahrzeug';

  @override
  String get drillsChecking => 'Überprüfung...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Übung #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Kein Bus zugewiesen';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Keine Übungen für Bus $busNumber aufgezeichnet';
  }

  @override
  String get drillsNoRoutesAvailable => 'Keine Routen zum Starten einer Übung verfügbar.';

  @override
  String get drillsShowSummary => 'Zusammenfassung anzeigen';

  @override
  String get drillsStartDrill => 'Übung starten';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Durchgeführt: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Evakuierungsübungen';

  @override
  String get drillsVehicleOutOfService => 'Fahrzeug außer Betrieb';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dieses Fahrzeug ist derzeit außer Betrieb und kann nicht für Übungen verwendet werden.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-Klasse';

  @override
  String get driverDetailsDrivingLicenseLabel => 'FÜHRERSCHEIN';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'FS: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Fahrgast';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Schulbus';

  @override
  String get driverDetailsEndorsementsTitle => 'Fahrerlaubnisklassen';

  @override
  String get driverDetailsExpiryDateLabel => 'Ablaufdatum';

  @override
  String get driverDetailsHolderSignature => 'UNTERSCHRIFT DES INHABERS';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Ausstellungsdatum';

  @override
  String get driverDetailsLicenseDocTitle => 'Führerscheindokument';

  @override
  String get driverDetailsLicenseNoLabel => 'Führerscheinnummer';

  @override
  String get driverDetailsLicenseTitle => 'Führerscheindetails';

  @override
  String get driverDetailsLicenseTypeLabel => 'Führerscheintyp';

  @override
  String get driverDetailsOfficialSeal => 'AMTLICHES SIEGEL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLASSE: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'GEB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ZUSATZ: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'ABLAUF: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'FS-NR: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'VN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Tippen, um Führerscheindokument anzuzeigen';

  @override
  String get driverDetailsTitle => 'Fahrerdetails';

  @override
  String get dvirCategoryBusSafetySystems => 'Busspezifische Sicherheitssysteme';

  @override
  String get dvirCategoryCouplingDevices => 'Kupplungsvorrichtungen';

  @override
  String get dvirCategoryEmergencyEquipment => 'Notfallausrüstung';

  @override
  String get dvirCategoryHorn => 'Hupe';

  @override
  String get dvirCategoryLightingReflectors => 'Beleuchtungseinrichtungen & Reflektoren';

  @override
  String get dvirCategoryMirrors => 'Rückspiegel';

  @override
  String get dvirCategoryParkingBrake => 'Feststellbremse';

  @override
  String get dvirCategoryPassengerSeating => 'Fahrgastsitze & Rückhaltesysteme';

  @override
  String get dvirCategoryServiceBrakes => 'Betriebsbremsen';

  @override
  String get dvirCategorySteeringMechanism => 'Lenkmechanismus';

  @override
  String get dvirCategoryTires => 'Reifen';

  @override
  String get dvirCategoryWheelsRims => 'Räder und Felgen';

  @override
  String get dvirCategoryWipers => 'Scheibenwischer';

  @override
  String get dvirPostTripCapturePhoto => 'DEFEKTFOTO AUFNEHMEN';

  @override
  String get dvirPostTripComplianceTitle => 'KONFORMITÄTSBESCHEINIGUNG';

  @override
  String get dvirPostTripDefectButton => 'DEFEKT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Defekt ohne Foto melden';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Warnung: Sie melden einen Defekt in den Sicherheitszonen ($zones), ohne ein Foto anzuhängen. Sind Sie sicher, dass Sie trotzdem einreichen möchten?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektion: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Geben Sie Details zum Sicherheitsproblem ein...';

  @override
  String get dvirPostTripNotesLabel => 'NOTIZEN (PFLICHT BEI DEFEKT) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Wählen Sie DEFEKT, um Details zum Sicherheitsproblem einzugeben...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktueller Kilometerstand';

  @override
  String get dvirPostTripOdometerInstructions => 'Geben Sie den Kilometerstand genau so ein, wie er auf der Instrumententafel des Busses angezeigt wird:';

  @override
  String get dvirPostTripOdometerLabel => 'Kilometerzähler (Meilen)';

  @override
  String get dvirPostTripOdometerTitle => 'FAHRZEUGLAUFZEITMETRIK';

  @override
  String get dvirPostTripOdometerWarning => 'Bitte geben Sie den Kilometerstand ein, bevor Sie fortfahren.';

  @override
  String get dvirPostTripPassButton => 'BESTANDEN';

  @override
  String get dvirPostTripPhotoAttached => 'Foto erfolgreich angehängt.';

  @override
  String get dvirPostTripProgressLabel => 'Inspektionsfortschritt';

  @override
  String get dvirPostTripSignatureCaptured => 'Unterschrift erfasst.';

  @override
  String get dvirPostTripSignatureCert => 'Ich bescheinige, dass dieser Fahrzeugprüfbericht gemäß den FMCSA 396.11 Vorschriften ausgefüllt wurde.';

  @override
  String get dvirPostTripSignatureTitle => 'Überprüfung der Fahrerunterschrift';

  @override
  String get dvirPostTripSubmitButton => 'INSPEKTION EINREICHEN';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR erfolgreich eingereicht.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current VON $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zonen';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ich bestätige, dass ich den zuletzt eingereichten Defektbericht überprüft und die Reparaturen (falls vorhanden) verifiziert habe und erkläre, dass der Bus sicher für den Betrieb ist.';

  @override
  String get dvirPreTripActiveMessage => 'Dieses Fahrzeug ist aktiv und hat keine offenen Defekte. Es ist verifiziert und sicher für den Betrieb.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktive Route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ACHTUNG ERFORDERLICH: DEFEKTE VOM VORTAG PROTOKOLLIERT';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'FAHRZEUGEINSATZPRÜFUNG';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Unterschrift fehlgeschlagen: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Keine vorherigen Defekte protokolliert';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dieses Fahrzeug wurde in der vorherigen Post-Trip-Schichtinspektion als mängelfrei gemeldet.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Keine Reparaturen für den sicheren Betrieb erforderlich.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dieses Fahrzeug ist wegen Reparaturen/Wartung außer Betrieb. Sicherheitsprobleme müssen vom Werkstattpersonal vor dem Einsatz behoben werden.';

  @override
  String get dvirPreTripOutofServiceButton => 'FAHRZEUG AUßER BETRIEB';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Grund: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARIERT)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'NEUE DEFEKTE MELDEN';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Das Melden neuer Defekte ist während Reparaturen deaktiviert.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'TRANSPORT-SUBADMIN-LÖSUNG';

  @override
  String get dvirPreTripReturnToHomeButton => 'ZURÜCK ZUR STARTSEITE';

  @override
  String get dvirPreTripSignOffTitle => 'ABZEICHNEN UM ZUR ÜBERPRÜFUNG FORTZUFAHREN';

  @override
  String get dvirPreTripSignedSuccess => 'Verifizierung erfolgreich unterschrieben. Pre-Trip entsperrt.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'VERIFIZIERUNG EINREICHEN';

  @override
  String get dvirPreTripTitle => 'Pre-Trip Verifizierung';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Fahrzeugstatus: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Unterschrift zeichnen';

  @override
  String get dvirSigPreviewLabel => 'Vorschau der erfassten Unterschrift:';

  @override
  String get dvirSigRedraw => 'NEU ZEICHNEN';

  @override
  String get dvirSigSave => 'UNTERSCHRIFT SPEICHERN';

  @override
  String get dvirSigTapToDraw => 'TIPPEN, UM UNTERSCHRIFT ZU ZEICHNEN (PFLICHT)';

  @override
  String get dvirSigWatermark => 'Vertikal unterschreiben (von unten nach oben)';

  @override
  String get forgotPasswordCancel => 'Abbrechen';

  @override
  String get forgotPasswordEmailLabel => 'E-Mail';

  @override
  String get forgotPasswordInvalidEmail => 'Bitte geben Sie eine gültige E-Mail-Adresse ein';

  @override
  String get forgotPasswordSend => 'Senden';

  @override
  String get forgotPasswordSuccess => 'Falls diese E-Mail existiert, wurde ein Link zum Zurücksetzen gesendet.';

  @override
  String get genericBack => 'ZURÜCK';

  @override
  String get genericCancel => 'Abbrechen';

  @override
  String get genericClear => 'LÖSCHEN';

  @override
  String get genericClose => 'Schließen';

  @override
  String get genericConfirm => 'Bestätigen';

  @override
  String get genericEdit => 'Bearbeiten';

  @override
  String get genericError => 'Etwas ist schiefgelaufen';

  @override
  String get genericLoading => 'Wird geladen...';

  @override
  String get genericNext => 'WEITER';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Wiederholen';

  @override
  String get genericSuccess => 'Erfolgreich';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Einsatz blockiert';

  @override
  String get homeDispatchBlockedTitle => 'Einsatz blockiert';

  @override
  String get homeErrorNoRoutesPreTrip => 'Keine Routen verfügbar, um Pre-Trip durchzuführen.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Fehler beim Starten der Fahrt auf dem Server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hallo, $name';
  }

  @override
  String get homeLogout => 'Abmelden';

  @override
  String get homeMenuAppInfo => 'App-Info';

  @override
  String get homeMenuDrill => 'Übung';

  @override
  String get homeMenuDriverDetails => 'Fahrerdetails';

  @override
  String get homeMenuLanguage => 'Sprache';

  @override
  String get homeMenuPreTrip => 'Pre-Trip-Inspektion';

  @override
  String get homeNoRoutes => 'Keine Routen verfügbar';

  @override
  String get homeReviewVerifyPreTrip => 'Pre-Trip überprüfen & verifizieren';

  @override
  String get homeSearchHint => 'Routen suchen';

  @override
  String get homeStart => 'Starten';

  @override
  String get homeTitle => 'Startseite';

  @override
  String get homeVehicleOutOfServiceDefault => 'Fahrzeug ist derzeit AUßER BETRIEB.';

  @override
  String get homeVehicleReady => 'Fahrzeug ist bereit und für den sicheren Betrieb verifiziert.';

  @override
  String get languageTitle => 'Sprache';

  @override
  String get loginButton => 'Anmelden';

  @override
  String get loginEmailOrPhoneLabel => 'E-Mail oder Telefonnummer';

  @override
  String get loginErrorEnterPassword => 'Bitte geben Sie das Passwort ein';

  @override
  String get loginErrorEnterUsername => 'Bitte geben Sie den Benutzernamen ein';

  @override
  String get loginErrorFailed => 'Anmeldung fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Bitte geben Sie eine gültige E-Mail-Adresse oder Telefonnummer ein';

  @override
  String get loginForgotPassword => 'Passwort vergessen?';

  @override
  String get loginPasswordLabel => 'Passwort';

  @override
  String get mapChildrenTooltip => 'Kinder & Erziehungsberechtigte';

  @override
  String get mapConfirmMessage => 'Möchten Sie die Fahrt wirklich beenden?';

  @override
  String get mapConfirmTitle => 'Bestätigen';

  @override
  String get mapCurrentPosition => 'Aktuelle Position';

  @override
  String get mapNo => 'Nein';

  @override
  String get mapReconnectMessage => 'Standortaktualisierung schlägt häufig fehl, bitte überprüfen Sie Ihre Internetverbindung.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stopp';

  @override
  String get mapStopping => 'Wird gestoppt...';

  @override
  String get mapStopsTooltip => 'Haltestellen';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Vor ${seconds}s aktualisiert';
  }

  @override
  String get mapWaitingGps => 'Warten auf GPS...';

  @override
  String get mapYes => 'Ja';

  @override
  String get splashDriverApp => 'Fahrer-App';

  @override
  String get stopsActionUndo => 'Rückgängig';

  @override
  String get stopsCancelledSuccess => 'Erfolgreich abgebrochen';

  @override
  String get stopsDefaultLabel => 'Haltestelle';

  @override
  String get stopsGenericError => 'Etwas ist schiefgelaufen. Bitte versuchen Sie es erneut.';

  @override
  String get stopsStatusComplete => 'abgeschlossen';

  @override
  String get stopsStatusDone => 'erledigt';

  @override
  String stopsSubmitCount(Object count) {
    return 'Einreichen ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Erfolgreich eingereicht';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected ausgewählt · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Aussteigen';

  @override
  String get stopsTypePick => 'Einsteigen';

  @override
  String stopsUndoCount(Object count) {
    return 'Rückgängig ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Ein-/Aussteigen rückgängig machen';

  @override
  String get tripConfirmCancel => 'Abbrechen';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Standortberechtigung ist erforderlich, um eine Fahrt zu starten.';

  @override
  String get homeMenuPostCrashReporting => 'Post-Crash-Bericht';

  @override
  String homeVehicleReason(Object reason) {
    return 'Grund: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Breite: $lat, Länge: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Standort suchen (z.B. Hauptstraße)';

  @override
  String get crashLocationPickerTitle => 'Standort auf der Karte auswählen';

  @override
  String get crashLocationPickerTooltip => 'Standort bestätigen';

  @override
  String get incidentDashboardDescription => 'Wählen Sie eine Aktion, um mit dem Vorfallmanagement fortzufahren oder vergangene Berichte anzuzeigen.';

  @override
  String get incidentDashboardHeadline => 'Post-Crash-Vorfallberichterstattung';

  @override
  String get incidentDashboardLogNew => 'Neuen Unfall protokollieren';

  @override
  String get incidentDashboardLogNewSubtitle => 'Einen neuen schrittweisen Unfallbericht initiieren';

  @override
  String get incidentDashboardTitle => 'Post-Crash-Vorfall';

  @override
  String get incidentDashboardViewHistory => 'Historie anzeigen';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vorherige Unfallberichte und Status anzeigen';

  @override
  String get incidentDetailsAdminLetter => 'Admin-Brief';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT-Alkoholtest-Countdown (2-Stunden-Limit)';

  @override
  String get incidentDetailsBranchId => 'Filial-ID';

  @override
  String get incidentDetailsBusPlate => 'Bus-Kennzeichen';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Auswirkung des Strafzettels: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Strafzettel an Fahrer ausgestellt';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinaten: Breite $lat, Länge $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title in die Zwischenablage kopiert!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'In die Zwischenablage kopieren';

  @override
  String get incidentDetailsCrashCitationInfo => 'Unfall- & Strafzettel-Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum & Zeit: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE-Bericht';

  @override
  String get incidentDetailsDoeReportTitle => 'Staatlicher DOE-Bericht (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Fahrernotizen:';

  @override
  String get incidentDetailsDriverUserId => 'Fahrer-Benutzer-ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT-Drogentest-Countdown (8-Stunden-Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Todesfall aufgetreten';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Vorfall #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Verletzungen, die medizinische Behandlung erfordern';

  @override
  String get incidentDetailsLawEnforcement => 'Strafverfolgungsbehörde';

  @override
  String get incidentDetailsLoadFailed => 'Fehler beim Laden der Details.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Standort: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medienanhänge';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'Nein';

  @override
  String get incidentDetailsNoMediaAttachments => 'Keine Fotos oder Videos angehängt.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Während des Vorfalls wurden keine Schüler im Bus markiert.';

  @override
  String get incidentDetailsNotificationsDesc => 'Erstellen Sie Benachrichtigungsberichte und senden Sie Vorlagenbriefe an die Bezirksleiter oder die Verwaltung.';

  @override
  String get incidentDetailsNotificationsTitle => 'Übermittlungsbenachrichtigungen';

  @override
  String get incidentDetailsOfficer => 'Details des Beamten';

  @override
  String get incidentDetailsPoliceReport => 'Polizeiberichtnummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Vorausgefüllter Übermittlungsbrief:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulatorische Grundlage:';

  @override
  String get incidentDetailsRouteId => 'Routen-ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Schulverwaltungsbenachrichtigung';

  @override
  String get incidentDetailsStatusPending => 'Ausstehend';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Details: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Verletzt';

  @override
  String get incidentDetailsStudentNoInjury => 'Keine Verletzung';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Schweregrad: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportiert nach: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Schüler im Bus ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT-Post-Crash-Tests erforderlich';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Vorfalldetails';

  @override
  String get incidentDetailsVehicleTowed => 'Fahrzeug abgeschleppt';

  @override
  String get incidentDetailsYes => 'Ja';

  @override
  String get incidentHistoryEmpty => 'Keine Vorfallprotokolle für dieses Fahrzeug registriert.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Fehler beim Abrufen der Protokolle: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Zeit: $time Bus: $busNumber Tests: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Vorfall #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Nicht erforderlich';

  @override
  String get incidentHistoryTestingRequired => 'Erforderlich';

  @override
  String get incidentHistoryTitle => 'Post-Crash-Vorfallregister';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Ein weiteres Foto hinzufügen';

  @override
  String get incidentIntakeBadgeNumberError => 'Erforderlich';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Dienstmarkennummer*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto vom Unfallort aufnehmen';

  @override
  String get incidentIntakeCitationSubtitle => 'Wurde dem Schulbusfahrer ein Strafzettel für einen Verstoß im fließenden Verkehr ausgestellt?';

  @override
  String get incidentIntakeCitationTitle => 'Strafzettel ausgestellt?';

  @override
  String get incidentIntakeDateTimeLabel => 'Datum & Zeit des Unfalls*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT-Tests NICHT erforderlich';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT-Tests erforderlich';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Fahrer: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Geben Sie zusätzliche Notizen zur Kollision ein...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Fahrer-Vorfallnotizen';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Fehler beim Laden der Routenpassagiere: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Beweismittel anhängen (Fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Gab es infolge dieses Unfalls Todesfälle?';

  @override
  String get incidentIntakeFatalityTitle => 'Todesfall aufgetreten?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-Koordinaten*';

  @override
  String get incidentIntakeHistoryTooltip => 'Historie anzeigen';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Hat eine Person körperliche Verletzungen erlitten, die eine sofortige medizinische Behandlung abseits des Unfallorts erfordern?';

  @override
  String get incidentIntakeInjuriesTitle => 'Verletzungen, die medizinische Behandlung erfordern?';

  @override
  String get incidentIntakeInjuryNotesError => 'Verletzungsnotizen sind für verletzte Schüler obligatorisch';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Verletzungsnotizen / Details (obligatorisch) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Schwere der Verletzung *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Bitte geben Sie die Strafverfolgungsbehörde ein';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Strafverfolgungsbehörde (z.B. Autobahnpolizei)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Strafverfolgung und Polizeibericht';

  @override
  String get incidentIntakeLocationDescError => 'Bitte geben Sie eine Standortbeschreibung ein';

  @override
  String get incidentIntakeLocationDescLabel => 'Standortbeschreibung (z.B. Hauptstraße & 5. Allee) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medizinische Einrichtung, zu der transportiert wurde';

  @override
  String get incidentIntakeNoMatchingStudents => 'Keine passenden Schüler.';

  @override
  String get incidentIntakeNoStudentsFound => 'Keine Schüler gefunden.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Keine Schüler an Bord, bitte drücken Sie WEITER, um fortzufahren.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Keine Schüler für diese Route registriert.';

  @override
  String get incidentIntakeOfficerNameError => 'Bitte geben Sie den Namen des Beamten ein.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Name des Beamten*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Bitte geben Sie die Polizeiberichtnummer ein';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Polizeiberichtnummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Routen- und Fahrerinformationen';

  @override
  String get incidentIntakeSearchInjuredHint => 'Verletztes Kind suchen...';

  @override
  String get incidentIntakeSearchStudentHint => 'Schüler suchen...';

  @override
  String get incidentIntakeSelectAll => 'Alle Schüler auswählen';

  @override
  String get incidentIntakeSelectOnMap => 'Auf Karte auswählen';

  @override
  String get incidentIntakeSeverityFatal => 'Tödlich';

  @override
  String get incidentIntakeSeverityMinor => 'Leicht';

  @override
  String get incidentIntakeSeverityModerate => 'Mittelschwer';

  @override
  String get incidentIntakeSeveritySevere => 'Schwer';

  @override
  String get incidentIntakeSeverityTitle => 'Variablen der Unfallschwere';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Bericht einreichen';

  @override
  String get incidentIntakeTitle => 'Post-Crash-Vorfallaufnahme';

  @override
  String get incidentIntakeTowedSubtitle => 'Hat ein Fahrzeug einen Betriebsunfähigkeitsschaden erlitten, sodass es vom Unfallort abgeschleppt werden musste?';

  @override
  String get incidentIntakeTowedTitle => 'Fahrzeug abgeschleppt?';

  @override
  String get incidentIntakeWasInjured => 'Wurde verletzt?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Schließen';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Fahrerkommentare / Notizen (optional)';

  @override
  String get dvirPreTripNoComments => 'Keine Kommentare hinzugefügt.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Grund: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Unterschrift erfolgreich erfasst.';

  @override
  String get dvirPreTripSigMissing => 'Unterschrift fehlt.';

  @override
  String get dvirPreTripSignDefectWarning => 'Bitte unterschreiben Sie, um die Reparatur vorheriger Defekte zu bestätigen.';

  @override
  String get dvirPreTripStepSignOff => 'Abzeichnen';

  @override
  String get dvirPreTripStepSubmit => 'Einreichen';

  @override
  String get dvirPreTripStepVerify => 'Überprüfen';

  @override
  String get dvirPreTripTapNext => 'Bitte tippen Sie auf WEITER, um fortzufahren.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Fahrzeug ist außer Betrieb';

  @override
  String get dvirPreTripVehicleReady => 'Fahrzeug ist einsatzbereit';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Überprüfter Reparaturstatus:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Bitte überprüfen Sie, ob alle gemeldeten Defekte repariert wurden, indem Sie das Kästchen neben jedem Defekt ankreuzen.';

  @override
  String get dvirPreTripYourComments => 'Ihre Kommentare:';

  @override
  String get countryPickerNoCountries => 'Keine Länder gefunden';

  @override
  String get countryPickerSearchHint => 'Nach Ländername, Code oder Vorwahl suchen...';

  @override
  String get countryPickerTitle => 'Land auswählen';

  @override
  String get mapDefaultStop => 'Haltestelle';

  @override
  String get mapEndLocation => 'Zielort';

  @override
  String get mapStartLocation => 'Startort';

  @override
  String get stopsNoChangesToUndo => 'Keine Änderungen zum Rückgängigmachen verfügbar.';

  @override
  String get stopsNoStopsAvailable => 'Keine Haltestellen verfügbar.';

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
