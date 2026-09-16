import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Luxembourgish Letzeburgesch (`lb`).
class AppLocalizationsLb extends AppLocalizations {
  AppLocalizationsLb([String locale = 'lb']) : super(locale);

  @override
  String get appInfoBuild => 'Bauen Nummer';

  @override
  String get appInfoDevice => 'Apparatmodell';

  @override
  String get appInfoOS => 'OS Versioun';

  @override
  String get appInfoPackage => 'Package';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App Versioun';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Wächter';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Autoriséiert Wächter fir $name';
  }

  @override
  String get childrenNoGuardians => 'Et gi keng autoriséiert Verwalter fir dëst Kand.';

  @override
  String get childrenStatusDropped => 'Gefall';

  @override
  String get childrenStatusPending => 'Wéinst der';

  @override
  String get childrenStatusPicked => 'Ausgeschafft';

  @override
  String childrenTitle(Object routeName) {
    return 'Kanner  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'D\'ABSENT / NIE BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuéiert';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuéiert: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Kee absente Schüler.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Kee Schüler op dem Bus markéiert.';

  @override
  String get drillChecklistNotOnBus => 'Net am Bus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'An engem Bus  net evakuéiert';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Op dem Bus ($count)';
  }

  @override
  String get drillChecklistProceed => 'D\'Befizelt';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Route (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuéierungsbohr Checklëscht';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Unreported Student (en) s) Remain!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Sidd Dir sécher, datt Dir dëse Drillbuch wëllt ofginn?';

  @override
  String get drillEvidenceConfirmSubmission => 'Bestätegt d\'Befragung';

  @override
  String get drillEvidenceDriverNotesHint => 'Beschreift d\'Exekutioun vum Drill, d\'Behuelen vun de Studenten, d\'Ausgangsweeër déi benotzt goufen, an all Observatiouns-Exceptiounen...';

  @override
  String get drillEvidenceDriverNotesLabel => 'D\'Frauer Notizen (Minimum 10 Charaktere):';

  @override
  String get drillEvidenceFailed => 'D\'Astellungsverschiddenheet';

  @override
  String get drillEvidenceMandatoryWarning => 'Et ass obligatoresch, mindestens 1 Foto oder Video Beweiser fir d\'Buch ze maachen.';

  @override
  String get drillEvidenceRecordVideo => 'Videoen opmaachen';

  @override
  String get drillEvidenceRetrySubmission => 'RETRY SUBmission';

  @override
  String get drillEvidenceReturnToDashboard => 'Retour zu DASHBOARD';

  @override
  String get drillEvidenceSubmitButton => 'Submit Drill Log';

  @override
  String get drillEvidenceSubmitting => 'Drill Log ze schécken...';

  @override
  String get drillEvidenceSuccess => 'D\'Uertschaft huet Erfolleg!';

  @override
  String get drillEvidenceSuccessMessage => 'D\'Evacuatiounsbohrbuch gouf erfollegräich eropgeladen an ass bis zu der Genehmegung.';

  @override
  String get drillEvidenceTakePhoto => 'Fotoen';

  @override
  String get drillEvidenceTitle => 'Obligatoresch Drill Beweiser';

  @override
  String get drillEvidenceUploading => 'Beweiser an Kontrolllëschtdaten eroplueden';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Drill: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Mark d\'Begraffheet';

  @override
  String get drillRosterNoStudents => 'Et gi keng Studenten op dëser Route registréiert.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Present: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'D\'Zäit fir d\'Checklëscht ze driléieren';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sëtz: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'All wielt';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notizen';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Geprouvéiert op: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Geprouvéiert bei';

  @override
  String get drillSummaryBackToDrills => 'Zurück zu Drills';

  @override
  String get drillSummaryBusNumber => 'Busnummer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Dirigéiert vun: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Drill Detailer';

  @override
  String get drillSummaryDriverNotesTitle => 'D\'Fahrer Notizen';

  @override
  String get drillSummaryDuration => 'D\'Dauer';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Endzeit';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuéiert: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuéiert $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Beweiser Medien Uschloss';

  @override
  String get drillSummaryGps => 'GPS Koordinaten';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'De Drill Summary fir ID #$id net geladen. $error';
  }

  @override
  String get drillSummaryNoData => 'Keen Drilldaten fonnt.';

  @override
  String get drillSummaryNotOnBus => 'Net am Bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'AN engem Bus - net evakuéiert';

  @override
  String get drillSummaryPhotoEvidence => 'Foto Beweiser';

  @override
  String get drillSummaryRouteId => 'Route ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sëtz: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Startzäit';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'D\'Evacuatiounsabschrëft vun de Studenten';

  @override
  String drillSummaryTitle(Object id) {
    return 'Drill Summary (#$id)';
  }

  @override
  String get drillSummaryType => 'Drill Typ';

  @override
  String get drillSummaryVideoEvidence => 'Video Beweiser';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Wielt d\'Borklassegatioun:';

  @override
  String get drillTypeCustomHint => 'Gitt e personaliséierte Evakuatiounsbohr Typ...';

  @override
  String get drillTypeInvalidState => 'Invaliden Zoustand vum Gefierer oder Route.';

  @override
  String get drillTypeNameBusFire => 'Bus Brand';

  @override
  String get drillTypeNameDangerZone => 'Gefor Zone';

  @override
  String get drillTypeNameDriverIncapacitation => 'D\'Fahrerin Incapacitéit';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ausrüstungsorientatioun';

  @override
  String get drillTypeNameFrontDoor => 'Fréier Dier';

  @override
  String get drillTypeNameOthers => 'Anerer';

  @override
  String get drillTypeNameRearDoor => 'Hintertür';

  @override
  String get drillTypeNameSideOrRoof => 'Säit oder Däck';

  @override
  String get drillTypeNameSplit => 'Split';

  @override
  String get drillTypeNoRouteSelected => 'Kee Wee gewielt';

  @override
  String get drillTypePreparation => 'D\'DROIL-PREPARATION';

  @override
  String get drillTypeProceed => 'D\'Studenten ginn op der Roll';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Wielt Route:';

  @override
  String get drillTypeSpecifyCustom => 'Besonnesch Drill Typ Beschreiwung:';

  @override
  String get drillTypeTitle => 'Drill Typ auswielen';

  @override
  String get drillTypeWarning => 'Gitt sécher datt de Gefier sécher geparkt ass ier d\'Exekutioun ufänkt.';

  @override
  String get drillsAssignedVehicle => 'Zuel vun de Bezuelungen';

  @override
  String get drillsChecking => 'Kontrolléieren...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Drill #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Keen Bus ass ugedeelt';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Keen Drill fir Bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Et gi keng Routen fir eng Drill ze starten.';

  @override
  String get drillsShowSummary => 'Show Summary';

  @override
  String get drillsStartDrill => 'Start Drill';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Gefouert: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuatiounsübungen';

  @override
  String get drillsVehicleOutOfService => 'Gefier ausserhalb';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Dëst Gefierer ass de Moment aus dem Service an kann net fir Drills benotzt ginn.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL Klass';

  @override
  String get driverDetailsDrivingLicenseLabel => 'DRIVING LICENSE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Numm: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passagéier';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Schoulbus';

  @override
  String get driverDetailsEndorsementsTitle => 'Ënnerstëtzung gehalen';

  @override
  String get driverDetailsExpiryDateLabel => 'Verfallsdatum';

  @override
  String get driverDetailsHolderSignature => 'D\'HALTERSCHIEN';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datum vun der Ausgabe';

  @override
  String get driverDetailsLicenseDocTitle => 'Lizenzdokument';

  @override
  String get driverDetailsLicenseNoLabel => 'Lizenz Nr.';

  @override
  String get driverDetailsLicenseTitle => 'Lizenzdetailer';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lizenztyp';

  @override
  String get driverDetailsOfficialSeal => 'Offiziell SEAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klass: V0';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORS:';
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
  String get driverDetailsTapToView => 'Klickt op DL Dokument ze gesinn';

  @override
  String get driverDetailsTitle => 'D\'Fahrerdetailer';

  @override
  String get dvirCategoryBusSafetySystems => 'Busspezifesch Sécherheetssystemer';

  @override
  String get dvirCategoryCouplingDevices => 'Koppelgeräter';

  @override
  String get dvirCategoryEmergencyEquipment => 'Noutfall Ausrüstung';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Liichtapparater & Reflektoren';

  @override
  String get dvirCategoryMirrors => 'Récksicht Spigelen';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Passagéier Sëtz & Zäitschränkungen';

  @override
  String get dvirCategoryServiceBrakes => 'Servicerbremsen';

  @override
  String get dvirCategorySteeringMechanism => 'D\'Regelung';

  @override
  String get dvirCategoryTires => 'Reifen';

  @override
  String get dvirCategoryWheelsRims => 'Räder a Rimm';

  @override
  String get dvirCategoryWipers => 'Windschutzschutzschutz';

  @override
  String get dvirPostTripCapturePhoto => 'D\'Fotografie ass net ze liesen.';

  @override
  String get dvirPostTripComplianceTitle => 'D\'Zertifikatioun vun der Konformitéit';

  @override
  String get dvirPostTripDefectButton => 'DEFECT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'De Fehler ouni Foto ze berichten';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Warnung: Dir bericht e Feeler an de Sécherheetszonen ($zones) ouni eng Foto ze fixéieren.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspektioun: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Gitt Detailer vun der Sécherheetsbetruecht...';

  @override
  String get dvirPostTripNotesLabel => 'NOTE (MANDATORY ON DEFECT) & FOTOS';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Wäert DEFECT fir d\'Sécherheetsbetriber Detailer anzesetzen...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktuell Odometer Liesung';

  @override
  String get dvirPostTripOdometerInstructions => 'Gitt d\'Kilometre Liesung genau wéi am Bus Instrument Panel gewisen:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (Milen)';

  @override
  String get dvirPostTripOdometerTitle => 'D\'Zäit vum Auto';

  @override
  String get dvirPostTripOdometerWarning => 'Gitt d\'Léisung vum Wandelmeter virum Ufank.';

  @override
  String get dvirPostTripPassButton => 'Pass';

  @override
  String get dvirPostTripPhotoAttached => 'Foto mat Erfolleg festgeluecht.';

  @override
  String get dvirPostTripProgressLabel => 'Inspektiounsgeméiss';

  @override
  String get dvirPostTripSignatureCaptured => 'Signatur erfaasst.';

  @override
  String get dvirPostTripSignatureCert => 'Ech bestätegen, datt dëse Kontrolllëscht Rapport vun der Gefierer-Retour-Vehikel an der Ofkommes vun den FMCSA 396.11 Reglementer ausgefouert gouf.';

  @override
  String get dvirPostTripSignatureTitle => 'Kontroll vun der Signatur vum Chauffeur';

  @override
  String get dvirPostTripSubmitButton => 'D\'Versammlung vun der EU';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR gouf erfollegräich ofginn.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zonen';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ech soen, datt ech den leschten ofgestallt Fehlerbericht iwwerpréift hunn an d\'Reparaturen verifizéiert hunn (wann et do ass) an erkläert datt de Bus sécher ass fir ze bedreiwen.';

  @override
  String get dvirPreTripActiveMessage => 'Dëst Gefier ass aktiv a huet keng offen Defekter. Et ass verifizéiert a sécher fir ze bedreiwen.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiv Route: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'D\'FRAGHÄRGUNG: Viruerteeler am Viraus';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'D\'Vëloun DISPATCH CHECK';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ënnerschrëft net: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Kee virdrun Verletzungen registréiert';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Dëst Gefier gouf bei der viregter Inspektioun no der Rees kloer gemellt.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Keen Reparatur ass néideg fir sécher Operatioun.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Dëst Gefier ass aus dem Service fir Reparatur/Wartung. Sécherheetsbedenken mussen vum Aarbechterpersonal virum Versand geléist ginn.';

  @override
  String get dvirPreTripOutofServiceButton => 'D\'Vëlo ass aus dem Service';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Grond:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARÉIER)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'NEUWER DEFEKTEN';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Neie Feeler ze berichten ass während Reparaturen ausgeschalt.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'D\'Resolutioun vum Sub-Admin';

  @override
  String get dvirPreTripReturnToHomeButton => 'Retour zu Heem';

  @override
  String get dvirPreTripSignOffTitle => 'Signatur fir de Walkaround ze féieren';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikatioun gesegnet.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'D\'Verifikatioun vun der Offer';

  @override
  String get dvirPreTripTitle => 'Virausfuerderunge';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status vum Gefier: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Schreift d\'Signatur';

  @override
  String get dvirSigPreviewLabel => 'Erfonnt Signatur Virausgespréich:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'ËNZERKLÄFT';

  @override
  String get dvirSigTapToDraw => 'TAP fir d\'SIGNATURE ze ze drécken (verléisseg)';

  @override
  String get dvirSigWatermark => 'Vertikal (Bottom to Top)';

  @override
  String get forgotPasswordCancel => 'Annuléiert';

  @override
  String get forgotPasswordEmailLabel => 'E-Mail';

  @override
  String get forgotPasswordInvalidEmail => 'Gitt eng gülteg E-Mail';

  @override
  String get forgotPasswordSend => 'Schreift';

  @override
  String get forgotPasswordSuccess => 'Wann dës E-Mail existéiert, ass e Reset Link geschéckt ginn.';

  @override
  String get genericBack => 'D\'Rückgängegkeet';

  @override
  String get genericCancel => 'Annuléiert';

  @override
  String get genericClear => 'KLEER';

  @override
  String get genericClose => 'Schrëtt';

  @override
  String get genericConfirm => 'Bestätegung';

  @override
  String get genericEdit => 'Editéiert';

  @override
  String get genericError => 'Et ass eppes falsch gaang.';

  @override
  String get genericLoading => 'Loading...';

  @override
  String get genericNext => 'NEXT';

  @override
  String get genericOk => 'Ok, dat ass gutt.';

  @override
  String get genericRetry => 'Probéiert nach eng Kéier';

  @override
  String get genericSuccess => 'Erfolleg';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus:';
  }

  @override
  String get homeDispatchBlocked => 'Versand blockéiert';

  @override
  String get homeDispatchBlockedTitle => 'Versand blockéiert';

  @override
  String get homeErrorNoRoutesPreTrip => 'Et gi keng Routen verfügbar fir Pre-Trip ze maachen.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'De Server huet net ugefaang: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hallo, V0__';
  }

  @override
  String get homeLogout => 'Logut';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'Drill';

  @override
  String get homeMenuDriverDetails => 'D\'Fahrerdetailer';

  @override
  String get homeMenuLanguage => 'Sprooch';

  @override
  String get homeMenuPreTrip => 'Virun der Rees Inspektioun';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Kee verfügbare Routen';

  @override
  String get homeReviewVerifyPreTrip => 'Iwwerpréiwen & Verifizéieren virum Rees';

  @override
  String get homeSearchHint => 'Sichrouten';

  @override
  String get homeStart => 'Start';

  @override
  String get homeTitle => 'Heem';

  @override
  String get homeVehicleOutOfServiceDefault => 'D\'Fëll ass de Moment OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'D\'Fëll ass prett a verifizéiert fir sécher Operatioun.';

  @override
  String get languageTitle => 'Sprooch';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'E-Mail oder Telefonsnummer';

  @override
  String get loginErrorEnterPassword => 'Gitt e Passwuert';

  @override
  String get loginErrorEnterUsername => 'Gitt Ären Benotzer Numm';

  @override
  String get loginErrorFailed => 'Login ass gescheitert. probéiert nach eng Kéier.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Gitt eng gülteg E-Mail oder Telefonsnummer';

  @override
  String get loginForgotPassword => 'Hutt Dir de Passwuert vergiess?';

  @override
  String get loginPasswordLabel => 'Passwuert';

  @override
  String get mapChildrenTooltip => 'Kanner & Betreier';

  @override
  String get mapConfirmMessage => 'Wëllt Dir wierklech d\'Rees ofschléissen?';

  @override
  String get mapConfirmTitle => 'Bestätegung';

  @override
  String get mapCurrentPosition => 'Aktuell Positioun';

  @override
  String get mapNo => 'Nee, net.';

  @override
  String get mapReconnectMessage => 'Aktualiséiert d\'Lokatioun oft, kuckt Är Internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Stop!';

  @override
  String get mapStopping => 'Stoppt...';

  @override
  String get mapStopsTooltip => 'Stoppt';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aktualiséiert ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Waarden op GPS...';

  @override
  String get mapYes => 'Jo, dat ass richteg.';

  @override
  String get splashDriverApp => 'Driver App';

  @override
  String get stopsActionUndo => 'Verëffentlecht';

  @override
  String get stopsCancelledSuccess => 'Erfollegräich annuléiert';

  @override
  String get stopsDefaultLabel => 'Stop!';

  @override
  String get stopsGenericError => 'Et ass eppes falsch gaang.';

  @override
  String get stopsStatusComplete => 'komplett';

  @override
  String get stopsStatusDone => 'gemaach';

  @override
  String stopsSubmitCount(Object count) {
    return 'D\'Informatioun ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Erfollegräich geschéckt';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected gewielt · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Drop';

  @override
  String get stopsTypePick => 'Wielt';

  @override
  String stopsUndoCount(Object count) {
    return 'Entlooss ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Unhänger/Léiss';

  @override
  String get tripConfirmCancel => 'Annuléiert';

  @override
  String get tripConfirmOk => 'OK, dat ass gutt.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Fir eng Rees ze starten, ass eng Locatiounspermissioun néideg.';

  @override
  String get homeMenuPostCrashReporting => 'Rapportéierunge no engem Crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Grond:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Sichplaz (zB Market St)';

  @override
  String get crashLocationPickerTitle => 'Plaz op der Kaart auswielen';

  @override
  String get crashLocationPickerTooltip => 'Bestëmmt Plaz';

  @override
  String get incidentDashboardDescription => 'Wielt eng Handlung fir mat der Incident Management weiderzeféieren oder virdrun Berichter ze gesinn.';

  @override
  String get incidentDashboardHeadline => 'Informatioun iwwer Accidenter no engem Crash';

  @override
  String get incidentDashboardLogNew => 'Log Neue Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Initiéiert en neie Schrëtt fir Schrëtt Accident Bericht';

  @override
  String get incidentDashboardTitle => 'Accident no engem Crash';

  @override
  String get incidentDashboardViewHistory => 'Geschicht gesinn';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vue virdrun Accidentmeldungen an de Status';

  @override
  String get incidentDetailsAdminLetter => 'Admin Bréif';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholtest Countdown (2 Stonnen Limit)';

  @override
  String get incidentDetailsBranchId => 'Zweignummer';

  @override
  String get incidentDetailsBusPlate => 'Bus Lizenzplack';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Zitat Impakt: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Zitat fir de Chauffeur';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinaten: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title op de Clippbrett kopiéiert!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopie op de Klippbord';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum & Zäit: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE Bericht';

  @override
  String get incidentDetailsDoeReportTitle => 'D\'State DOE Report (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Driver Notes:';

  @override
  String get incidentDetailsDriverUserId => 'Driver User ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drogentest Countdown (8 Stonnen Limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'D\'Fatalitéit ass geschitt';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Verletzungen, déi medizinesch Behandlung erfuerderen';

  @override
  String get incidentDetailsLawEnforcement => 'D\'Rechtverstoussagentur';

  @override
  String get incidentDetailsLoadFailed => 'Hatt huet d\'Detailer net geluecht.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Plaz: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Medien Uschloss';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'Net';

  @override
  String get incidentDetailsNoMediaAttachments => 'Kee Fotoen oder Videoen.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Keng Schüler waren um Bord während dem Accident markéiert.';

  @override
  String get incidentDetailsNotificationsDesc => 'Notifikatiounsberichter generéieren an Schablonn Bréiwer un d\'Bezirksverwaltung oder d\'Regierung schécken.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notifikatiounen iwwer d\'Omsendung';

  @override
  String get incidentDetailsOfficer => 'Offizier Detailer';

  @override
  String get incidentDetailsPoliceReport => 'Police Rapportnummer';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Virbereet Versandbréif:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Reglementar Basis:';

  @override
  String get incidentDetailsRouteId => 'Route ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notifikatioun vun der Scholadmin';

  @override
  String get incidentDetailsStatusPending => 'Wéinst der';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detailer: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Verletzte';

  @override
  String get incidentDetailsStudentNoInjury => 'Kee Verletzung';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Schweregkeet: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportéiert op: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenten um Bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'D\'TESTING POST-Crash ass néideg';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Incident Detailer';

  @override
  String get incidentDetailsVehicleTowed => 'Gebuergt Gefier';

  @override
  String get incidentDetailsYes => 'Gutt';

  @override
  String get incidentHistoryEmpty => 'Et gi keng Incident Logs fir dëst Gefier registréiert.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'D\'Logs konnten net erofgelueden ginn: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Zäit: V0__ Bus: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NET Ufuerderlech';

  @override
  String get incidentHistoryTestingRequired => 'D\'Besoin';

  @override
  String get incidentHistoryTitle => 'Accidenten no engem Crash Registry';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Eng aner Foto bäifügen';

  @override
  String get incidentIntakeBadgeNumberError => 'Erfuerderlech';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Badge Nummer *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Busnummer: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto vum Accident';

  @override
  String get incidentIntakeCitationSubtitle => 'War en eng bewegende Verletzung vu Verkéier Verkéier Zitat fir de Schoulbus Chauffeur ausginn?';

  @override
  String get incidentIntakeCitationTitle => 'Gëtt et eng Zitater?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Datum & Zäit *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'D\'TESTING ass net néideg';

  @override
  String get incidentIntakeDotTestingRequired => 'D\'TESTING ass néideg';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Fahrer:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Gitt all aner Notizen iwwer d\'Kollisioun...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Accidenter mat der Chauffeur';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Passagéier, déi net op der Route geladen sinn: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Beweiser (Fotoen) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Huet et zu engem Doudesfall gefall?';

  @override
  String get incidentIntakeFatalityTitle => 'Ass et eng Fatalitéit?';

  @override
  String get incidentIntakeGpsLabel => 'GPS Koordinaten *';

  @override
  String get incidentIntakeHistoryTooltip => 'Geschicht gesinn';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Huet iergendeen eng kierperlech Verletzung kritt déi direkt medizinesch Behandlung brauch?';

  @override
  String get incidentIntakeInjuriesTitle => 'Verletzungen, déi medizinesch Behandlung brauchen?';

  @override
  String get incidentIntakeInjuryNotesError => 'Verletzungsnotizen sinn obligatoresch fir verletzte Studenten';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Verletzungsnotizen / Detailer (Verbindlech) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Schwieregkeet vun der Verletzung *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Gitt an d\'Rechtverstoussagentur.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'D\'Rechtverstoussagentur (zB Staatsrotrotrouille) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Gesetz & Police Rapport';

  @override
  String get incidentIntakeLocationDescError => 'Gitt d\'Lokaliséierung vun der Plaz';

  @override
  String get incidentIntakeLocationDescLabel => 'D\'Lokatioun beschreift (zB Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medizinesch Facilitéit transportéiert';

  @override
  String get incidentIntakeNoMatchingStudents => 'Kee passend Schüler.';

  @override
  String get incidentIntakeNoStudentsFound => 'Kee Schüler fonnt.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Kee Schüler um Bord, drécke mir weider.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Et gouf keng Studenten fir dës Route registréiert.';

  @override
  String get incidentIntakeOfficerNameError => 'Gitt den Numm vum Offizier an';

  @override
  String get incidentIntakeOfficerNameLabel => 'Den Offizier Numm *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Gitt d\'Police-Berichtsnummer an';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Police Rapportnummer *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Route & Driver Informatioun';

  @override
  String get incidentIntakeSearchInjuredHint => 'Sich verletzte Kand...';

  @override
  String get incidentIntakeSearchStudentHint => 'Sich Studenten...';

  @override
  String get incidentIntakeSelectAll => 'Wielt all Studenten aus';

  @override
  String get incidentIntakeSelectOnMap => 'D\'KONSTRUKTION op der Karte';

  @override
  String get incidentIntakeSeverityFatal => 'Datesch';

  @override
  String get incidentIntakeSeverityMinor => 'Minor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderéiert';

  @override
  String get incidentIntakeSeveritySevere => 'Schwer';

  @override
  String get incidentIntakeSeverityTitle => 'D\'Schwieregkeetsvariabel vum Crash';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Rapport';

  @override
  String get incidentIntakeTitle => 'D\'Integratioun no engem Accident';

  @override
  String get incidentIntakeTowedSubtitle => 'Huet e Gefier eng Verletzung kritt, déi et aus der Plaz z\'erreechen huet?';

  @override
  String get incidentIntakeTowedTitle => 'Auto geschleppt?';

  @override
  String get incidentIntakeWasInjured => 'War verletzt?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus:';
  }

  @override
  String get dvirPreTripClose => 'D\'NIEWE';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Driver Kommentaren / Notizen (optional)';

  @override
  String get dvirPreTripNoComments => 'Keng Kommentaren.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Grond:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'D\'Signatur gouf erfollegräich erfaasst.';

  @override
  String get dvirPreTripSigMissing => 'D\'Signatur ass net.';

  @override
  String get dvirPreTripSignDefectWarning => 'Fir d\'Reparatioun vun virdrun Mängel ze verifizéieren, ënnerschreift.';

  @override
  String get dvirPreTripStepSignOff => 'Ënnerschrëft';

  @override
  String get dvirPreTripStepSubmit => 'Submit';

  @override
  String get dvirPreTripStepVerify => 'Verifizéieren';

  @override
  String get dvirPreTripTapNext => 'Gitt op NEXT fir weiderzeféieren.';

  @override
  String get dvirPreTripVehicleOutOfService => 'D\'Auto ass aus dem Service.';

  @override
  String get dvirPreTripVehicleReady => 'D\'Vehikel ass prett fir Service';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verifizéiert Reparaturstatus:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Kontrolléiert, ob all gemellt Defekter reparéiert goufen, andeems Dir d\'Këscht bei all Defekt kontrolléiert.';

  @override
  String get dvirPreTripYourComments => 'Är Kommentaren:';

  @override
  String get countryPickerNoCountries => 'Keen Land fonnt';

  @override
  String get countryPickerSearchHint => 'Sich no Landnamen, Code oder Wäertcode...';

  @override
  String get countryPickerTitle => 'Auswielt Land';

  @override
  String get mapDefaultStop => 'Stop!';

  @override
  String get mapEndLocation => 'Endplaz';

  @override
  String get mapStartLocation => 'Startplaz';

  @override
  String get stopsNoChangesToUndo => 'Et gi keng Ännerunge fir ze annuléieren.';

  @override
  String get stopsNoStopsAvailable => 'Et gi keng Stopp verfügbar.';

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
