import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appInfoBuild => 'Bou nommer';

  @override
  String get appInfoDevice => 'Toestelmodel';

  @override
  String get appInfoOS => 'OS Weergawe';

  @override
  String get appInfoPackage => 'Pakket';

  @override
  String get appInfoTitle => 'App-inligting';

  @override
  String get appInfoVersion => 'App-weergawe';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Voogde';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Gemagtigde voogde vir $name';
  }

  @override
  String get childrenNoGuardians => 'Geen gemagtigde voogde op lêer vir hierdie kind nie.';

  @override
  String get childrenStatusDropped => 'Gelaat';

  @override
  String get childrenStatusPending => 'No preview available';

  @override
  String get childrenStatusPicked => 'Gekies';

  @override
  String childrenTitle(Object routeName) {
    return 'Kinders — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Afwesig / NIE OP BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Ontruim';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Ontruim: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Geen afwesige studente nie.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Geen leerlinge word op busse gemerk nie.';

  @override
  String get drillChecklistNotOnBus => 'NIE OP BUS NIE';

  @override
  String get drillChecklistOnBusNotEvacuated => 'OP BUS — NIE ontruim nie';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'OP BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'VERVORDER NA BEWYS V';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Roete (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Ontruimingsboor kontrolelys';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Onbekende Student(s) Oorblyfsel!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Is jy seker jy wil hierdie boorlog stuur? Hierdie aksie kan nie ongedaan gemaak word nie.';

  @override
  String get drillEvidenceConfirmSubmission => 'Bevestig Boor Voorlegging';

  @override
  String get drillEvidenceDriverNotesHint => 'Beskryf boor uitvoering, student gedrag, uitgang paaie gebruik, en enige uitsonderings waargeneem...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Bestuurder Notas (Minimum 10 karakters):';

  @override
  String get drillEvidenceFailed => 'Voorlegging het misluk';

  @override
  String get drillEvidenceMandatoryWarning => 'Ten minste 1 foto- of videobewyse is verpligtend om boor in te dien.';

  @override
  String get drillEvidenceRecordVideo => '_Neem \'n video op';

  @override
  String get drillEvidenceRetrySubmission => 'Probeer weer voorlegging';

  @override
  String get drillEvidenceReturnToDashboard => 'Keer terug na die Beheerpaneel';

  @override
  String get drillEvidenceSubmitButton => 'Dien boorlog in';

  @override
  String get drillEvidenceSubmitting => 'Stuur Boor Log...';

  @override
  String get drillEvidenceSuccess => 'Voorlegging suksesvol!';

  @override
  String get drillEvidenceSuccessMessage => 'Die ontruimingsboorlog is suksesvol opgelaai en wag op goedkeuring.';

  @override
  String get drillEvidenceTakePhoto => 'Neem foto';

  @override
  String get drillEvidenceTitle => 'Verpligte boorbewyse';

  @override
  String get drillEvidenceUploading => 'Oplaai bewyse en kontrolelys data';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Boor: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Merk Bywoning';

  @override
  String get drillRosterNoStudents => 'Geen leerlinge is op die pad geregistreer nie.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Teenwoordig: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Voortgaan om te boor kontrolelys';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Roete: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sitplek: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Kies alles';

  @override
  String get drillSummaryAdminNotesTitle => 'Administratiewe notas';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Goedgekeur by: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Goedgekeur by';

  @override
  String get drillSummaryBackToDrills => 'Terug na Drills';

  @override
  String get drillSummaryBusNumber => 'Busnommer';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Beheer deur: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Boorbesonderhede';

  @override
  String get drillSummaryDriverNotesTitle => 'Bestuurdernotas';

  @override
  String get drillSummaryDuration => 'Duur';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sek';
  }

  @override
  String get drillSummaryEndTime => 'Eindig Tyd';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Ontruim: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Ontruim $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bewysmedia-aanhegsels';

  @override
  String get drillSummaryGps => 'GPS koördinate:';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Kon nie booropsomming vir ID #$id laai nie.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Geen boordata gevind nie.';

  @override
  String get drillSummaryNotOnBus => 'Nie op die bus nie';

  @override
  String get drillSummaryOnBusNotEvacuated => 'OP BUS - NIE ontruim nie';

  @override
  String get drillSummaryPhotoEvidence => 'Fotobewyse';

  @override
  String get drillSummaryRouteId => 'Roete-ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sitplek: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Begin Tyd';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Student ontruiming Log';

  @override
  String drillSummaryTitle(Object id) {
    return 'Boor Opsomming (#$id)';
  }

  @override
  String get drillSummaryType => 'Boor Tipe';

  @override
  String get drillSummaryVideoEvidence => 'Video Bewyse';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Kies boorklassifikasie:';

  @override
  String get drillTypeCustomHint => 'Tik persoonlike ontruiming boor tipe...';

  @override
  String get drillTypeInvalidState => 'Ongeldige voertuig of roete staat.';

  @override
  String get drillTypeNameBusFire => 'Busvuur';

  @override
  String get drillTypeNameDangerZone => 'Gevaarsone';

  @override
  String get drillTypeNameDriverIncapacitation => 'Bestuurderongeskiktheid';

  @override
  String get drillTypeNameEquipmentOrientation => 'Toerusting Oriëntasie';

  @override
  String get drillTypeNameFrontDoor => 'Voordeur';

  @override
  String get drillTypeNameOthers => 'Ander';

  @override
  String get drillTypeNameRearDoor => 'Agterdeur';

  @override
  String get drillTypeNameSideOrRoof => 'Kant of dak';

  @override
  String get drillTypeNameSplit => 'l: City in Croatia';

  @override
  String get drillTypeNoRouteSelected => 'Geen roete gekies nie';

  @override
  String get drillTypePreparation => 'Boor voorbereiding';

  @override
  String get drillTypeProceed => 'Voortgaan om STUDENT rooster';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Roete: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Kies Roete';

  @override
  String get drillTypeSpecifyCustom => 'Spesifiseer Boor Tipe Beskrywing:';

  @override
  String get drillTypeTitle => 'Kies Boor Tipe';

  @override
  String get drillTypeWarning => 'Verseker dat u voertuig veilig geparkeer is voordat u met die uitvoering begin.';

  @override
  String get drillsAssignedVehicle => 'Toegewyde Voertuig';

  @override
  String get drillsChecking => 'Besig om na te gaan ...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Boor #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Geen bus toegewys nie';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Geen bore aangeteken vir bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Geen roetes beskikbaar om \'n boor te begin nie.';

  @override
  String get drillsShowSummary => 'Vertoon Opsomming';

  @override
  String get drillsStartDrill => 'Begin boor';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Uitgevoer: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Ontruimingsoefeninge';

  @override
  String get drillsVehicleOutOfService => 'Voertuig buite diens';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Hierdie voertuig is tans buite gebruik en kan nie vir bore gebruik word nie.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-klas';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Bestuurslisensie';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Naam: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passasier';

  @override
  String get driverDetailsEndorsementSchoolBus => 'DINO SKOOLBUS';

  @override
  String get driverDetailsEndorsementsTitle => 'Endossemente gehou';

  @override
  String get driverDetailsExpiryDateLabel => 'Vervaldatum';

  @override
  String get driverDetailsHolderSignature => 'Houer handtekening';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => ' Eerste Sleutel';

  @override
  String get driverDetailsLicenseDocTitle => 'Lisensiedokument';

  @override
  String get driverDetailsLicenseNoLabel => 'Lisensie Geen';

  @override
  String get driverDetailsLicenseTitle => 'Lisensie Besonderhede';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lisensie Tipe';

  @override
  String get driverDetailsOfficialSeal => 'Amptelike seël';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klas: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Bevestig: $endorsements';
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
  String get driverDetailsTapToView => 'Tik om DL-dokument te besigtig';

  @override
  String get driverDetailsTitle => 'Bestuurder Besonderhede';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-spesifieke veiligheidstelsels';

  @override
  String get dvirCategoryCouplingDevices => 'Koppeling Toestelle';

  @override
  String get dvirCategoryEmergencyEquipment => 'Noodtoerusting';

  @override
  String get dvirCategoryHorn => 'Horing';

  @override
  String get dvirCategoryLightingReflectors => 'Beligtingstoestelle en weerkaatsers';

  @override
  String get dvirCategoryMirrors => 'Agter-Visie Spieëls';

  @override
  String get dvirCategoryParkingBrake => 'Parkeerrem';

  @override
  String get dvirCategoryPassengerSeating => 'Passasiersitplek en -beperkings';

  @override
  String get dvirCategoryServiceBrakes => 'Diensremme';

  @override
  String get dvirCategorySteeringMechanism => 'Stuurmeganisme';

  @override
  String get dvirCategoryTires => 'Bande';

  @override
  String get dvirCategoryWheelsRims => 'Wiele en rims';

  @override
  String get dvirCategoryWipers => 'WINDHIELD VERWYDERING';

  @override
  String get dvirPostTripCapturePhoto => 'Vang defekfoto';

  @override
  String get dvirPostTripComplianceTitle => 'Voldoening sertifisering';

  @override
  String get dvirPostTripDefectButton => 'Fout';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Rapportering van defek sonder foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'WAARSKUWING: Jy rapporteer \'n defek op veiligheidsones ($zones) sonder om \'n foto aan te heg. Is jy seker jy wil in elk geval inskryf?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspeksie: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Voer die besonderhede van die veiligheidskwessie in...';

  @override
  String get dvirPostTripNotesLabel => 'Notas (verpligtend op defek) & Foto';

  @override
  String get dvirPostTripNotesPassedHint => 'Kies defek om veiligheidsbesonderhede in te voer...';

  @override
  String get dvirPostTripOdometerHeader => 'Huidige Odometer Lees';

  @override
  String get dvirPostTripOdometerInstructions => 'Invoer die kilometers lees presies soos op die bus instrument paneel:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (myl)';

  @override
  String get dvirPostTripOdometerTitle => 'Voertuig hardloop tyd metrieke';

  @override
  String get dvirPostTripOdometerWarning => 'Voer asseblief die odometerlesing in voordat u verder gaan.';

  @override
  String get dvirPostTripPassButton => 'SLAAG';

  @override
  String get dvirPostTripPhotoAttached => 'Foto suksesvol aangeheg.';

  @override
  String get dvirPostTripProgressLabel => 'Inspeksie Vordering';

  @override
  String get dvirPostTripSignatureCaptured => 'Handtekening opgepakt.';

  @override
  String get dvirPostTripSignatureCert => 'Ek sertifiseer dat hierdie voertuig se kontrolelysverslag voltooi is in ooreenstemming met FMCSA 396.11 regulasies.';

  @override
  String get dvirPostTripSignatureTitle => 'Bestuurder Handtekening Verifikasie';

  @override
  String get dvirPostTripSubmitButton => 'voor te lê';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR suksesvol ingedien.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Sone $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Sones';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Ek erken dat ek die laaste voorgelêde defekverslag nagegaan het en die herstelwerk(indien enige) geverifieer het en verklaar dat die bus veilig is vir werking.';

  @override
  String get dvirPreTripActiveMessage => 'Hierdie voertuig is aktief en het geen oop gebreke nie. Dit is geverifieer en veilig om te gebruik.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiewe roete: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'Aandag benodig: gebreke van die vorige dag is aangeteken';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Busnommer: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Voertuigversendingskontrole';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Kon nie teken nie: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Geen vorige gebreke aangemeld nie';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Hierdie voertuig is skoon gerapporteer in die vorige post-trip verskuiwing inspeksie.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Geen herstelwerk nodig om veilig te werk nie.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Hierdie voertuig is buite diens vir herstelwerk/instandhouding. Veiligheidskwessies moet deur winkelpersoneel opgelos word voordat dit gestuur word.';

  @override
  String get dvirPreTripOutofServiceButton => 'Voertuig buite diens';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Rede: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (herstel)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Rapporteer nuwe gebreke';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Rapportering van nuwe gebreke is afgeskakel tydens herstelwerk.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Vervoer SUB-ADMIN-resolusie';

  @override
  String get dvirPreTripReturnToHomeButton => 'TERUG NA HUIS';

  @override
  String get dvirPreTripSignOffTitle => 'Meld af om voort te gaan na WALKAROUND';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikasie suksesvol onderteken. Pre-Trip ontsluit.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Dien verifikasie in';

  @override
  String get dvirPreTripTitle => 'Pre-Trip Verifikasie';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Voertuigstatus: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Teken Handtekening';

  @override
  String get dvirSigPreviewLabel => 'Gevang Handtekening Voorskou:';

  @override
  String get dvirSigRedraw => 'Herskryf';

  @override
  String get dvirSigSave => 'Stoor handtekening';

  @override
  String get dvirSigTapToDraw => 'Tik om handtekening te teken (vereis)';

  @override
  String get dvirSigWatermark => 'Teken vertikaal (onder na bo)';

  @override
  String get forgotPasswordCancel => 'Kanselleer';

  @override
  String get forgotPasswordEmailLabel => 'E-pos';

  @override
  String get forgotPasswordInvalidEmail => 'Voer asseblief \'n geldige eposadres in';

  @override
  String get forgotPasswordSend => 'Stuur';

  @override
  String get forgotPasswordSuccess => 'As daardie e-pos bestaan, is \'n terugstelskakel gestuur.';

  @override
  String get genericBack => 'Terug';

  @override
  String get genericCancel => 'Kanselleer';

  @override
  String get genericClear => 'Maak skoon';

  @override
  String get genericClose => 'Maak toe';

  @override
  String get genericConfirm => 'Bevestig';

  @override
  String get genericEdit => 'Wysig';

  @override
  String get genericError => 'Iets het verkeerd gegaan';

  @override
  String get genericLoading => 'Besig om te laai .....';

  @override
  String get genericNext => 'Volgende';

  @override
  String get genericOk => 'Goed';

  @override
  String get genericRetry => 'Herprobeer';

  @override
  String get genericSuccess => 'Sukses';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Versending geblokkeer';

  @override
  String get homeDispatchBlockedTitle => 'Versending geblokkeer';

  @override
  String get homeErrorNoRoutesPreTrip => 'Geen roetes beskikbaar om Pre-Trip uit te voer nie.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Kon nie die reis op die bediener begin nie: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Hi, $name';
  }

  @override
  String get homeLogout => 'Teken uit';

  @override
  String get homeMenuAppInfo => 'App-inligting';

  @override
  String get homeMenuDrill => 'Boormasjien';

  @override
  String get homeMenuDriverDetails => 'Bestuurder Besonderhede';

  @override
  String get homeMenuLanguage => 'taal';

  @override
  String get homeMenuPreTrip => 'Pre-Trip Inspeksie';

  @override
  String get homeNoRoutes => 'Geen roetes beskikbaar nie';

  @override
  String get homeReviewVerifyPreTrip => 'Hersien en verifieer Pre-Trip';

  @override
  String get homeSearchHint => 'Soekroetes';

  @override
  String get homeStart => 'ek is goed en hoe gaan dit met jou?';

  @override
  String get homeTitle => 'Tuis';

  @override
  String get homeVehicleOutOfServiceDefault => 'Voertuig is tans uit_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Voertuig is gereed en geverifieer vir veilige werking.';

  @override
  String get languageTitle => 'taal';

  @override
  String get loginButton => 'Meld aan';

  @override
  String get loginEmailOrPhoneLabel => 'E-pos of telefoonnommer';

  @override
  String get loginErrorEnterPassword => 'Vul asseblief jou wagwoord in.';

  @override
  String get loginErrorEnterUsername => 'Voltooi asseblief jou gebruikersnaam.';

  @override
  String get loginErrorFailed => 'Aanteken het misluk. Probeer asseblief weer.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Voer asseblief \'n geldige e-pos of telefoonnommer in';

  @override
  String get loginForgotPassword => 'Wagwoord vergeet?';

  @override
  String get loginPasswordLabel => 'Wagwoord';

  @override
  String get mapChildrenTooltip => 'Kinder & Voogde';

  @override
  String get mapConfirmMessage => 'Wil jy regtig die reis afsluit?';

  @override
  String get mapConfirmTitle => 'Bevestig';

  @override
  String get mapCurrentPosition => 'Huidige posisie';

  @override
  String get mapNo => 'Wees \'n goeie kind';

  @override
  String get mapReconnectMessage => 'Ligging opdatering misluk dikwels, Kontroleer asseblief jou internet.';

  @override
  String get mapReconnectTitle => 'Oordra';

  @override
  String get mapStop => 'Stop';

  @override
  String get mapStopping => 'Stop...';

  @override
  String get mapStopsTooltip => 'Stop';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Opgedateer ${seconds}s gelede';
  }

  @override
  String get mapWaitingGps => 'Ek wag nog vir die GPS...';

  @override
  String get mapYes => 'Ja ';

  @override
  String get splashDriverApp => 'Bestuurder App';

  @override
  String get stopsActionUndo => 'Ongedaan';

  @override
  String get stopsCancelledSuccess => 'Gekanselleer suksesvol';

  @override
  String get stopsDefaultLabel => 'Stop';

  @override
  String get stopsGenericError => 'Iets het verkeerd geloop. Probeer asseblief weer later!';

  @override
  String get stopsStatusComplete => 'voltooi';

  @override
  String get stopsStatusDone => 'gereed';

  @override
  String stopsSubmitCount(Object count) {
    return 'Dien in ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Suksesvol ingedien';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected geselekteerde · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Val';

  @override
  String get stopsTypePick => 'sinoniem vir pluk';

  @override
  String stopsUndoCount(Object count) {
    return 'Ontdoen ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Ontdoen kies/laat val';

  @override
  String get tripConfirmCancel => 'Kanselleer';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Oordra';

  @override
  String get tripErrorLocationRequired => 'Plek toestemming is nodig om \'n reis te begin.';

  @override
  String get homeMenuPostCrashReporting => 'Post-Crash Report';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lang: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Search Location (e.g. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Select Location on Map';

  @override
  String get crashLocationPickerTooltip => 'Confirm location';

  @override
  String get incidentDashboardDescription => 'Select an action to proceed with incident management or view past reports.';

  @override
  String get incidentDashboardHeadline => 'Post-Crash Incident Reporting';

  @override
  String get incidentDashboardLogNew => 'Log new crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Initiate a new step by step crash report';

  @override
  String get incidentDashboardTitle => 'Post-Crash Incident';

  @override
  String get incidentDashboardViewHistory => 'View History';

  @override
  String get incidentDashboardViewHistorySubtitle => 'View previous crash reports and status';

  @override
  String get incidentDetailsAdminLetter => 'Admin Letter';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcohol Test Countdown (2-hour limit)';

  @override
  String get incidentDetailsBranchId => 'Branch ID';

  @override
  String get incidentDetailsBusPlate => 'Bus License Number';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citation Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citation issued to driver';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinates: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copied to clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copy to the clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Date & Time: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE Report';

  @override
  String get incidentDetailsDoeReportTitle => 'State DOE report (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Driver\'s Notes:';

  @override
  String get incidentDetailsDriverUserId => 'Driver user ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8-hour limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Fatality Occurred';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injuries Requiring Medical Treatment';

  @override
  String get incidentDetailsLawEnforcement => 'Law enforcement agency';

  @override
  String get incidentDetailsLoadFailed => 'Failed to load details.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Location: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Media attachments';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No photos or videos attached.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No students were marked onboard during the incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generate notification reports and send templated letters to district supervisors or administration.';

  @override
  String get incidentDetailsNotificationsTitle => 'Transmittal Notifications';

  @override
  String get incidentDetailsOfficer => 'Officer\'s Details';

  @override
  String get incidentDetailsPoliceReport => 'Police Report Number';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Pre-populated transmission letter:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulatory Basis:';

  @override
  String get incidentDetailsRouteId => 'Route ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'School Admin Notification';

  @override
  String get incidentDetailsStatusPending => 'Pending';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Details: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Injured';

  @override
  String get incidentDetailsStudentNoInjury => 'No Injury';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Severity: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transported to: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Students Onboard ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT post-crash testing required';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Incident Details';

  @override
  String get incidentDetailsVehicleTowed => 'Vehicle towed';

  @override
  String get incidentDetailsYes => 'Yes';

  @override
  String get incidentHistoryEmpty => 'No incident logs registered for this vehicle.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Failed to retrieve logs: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Time: $time Bus: $busNumber Testing: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Not required';

  @override
  String get incidentHistoryTestingRequired => 'Required';

  @override
  String get incidentHistoryTitle => 'Post-Crash Incident Registry';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Add Another Photo';

  @override
  String get incidentIntakeBadgeNumberError => 'Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Badge number*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bus number: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capture Incident Scene Photo';

  @override
  String get incidentIntakeCitationSubtitle => 'Was a moving traffic violation citation issued to the school bus driver?';

  @override
  String get incidentIntakeCitationTitle => 'Citation Issued?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT Testing NOT required';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT Testing required';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Driver: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Enter any additional notes regarding the collision...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Driver Incident Notes';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Failed to load route passengers: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Attach Evidence (Photos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Did any fatalities occur as a result of this crash?';

  @override
  String get incidentIntakeFatalityTitle => 'Fatality Occurred?';

  @override
  String get incidentIntakeGpsLabel => 'GPS Coordinates*';

  @override
  String get incidentIntakeHistoryTooltip => 'View history';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Did any person get a physical injury requiring immediate medical treatment away from the scene?';

  @override
  String get incidentIntakeInjuriesTitle => 'Injuries Requiring Medical Treatment?';

  @override
  String get incidentIntakeInjuryNotesError => 'Injury notes are mandatory for injured students';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Injury notes / details (mandatory) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Injury Severity *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Please enter law enforcement agency';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Law enforcement agency (e.g. State Highway Patrol)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Law enforcement and police report';

  @override
  String get incidentIntakeLocationDescError => 'Please enter location description';

  @override
  String get incidentIntakeLocationDescLabel => 'Location Description (e.g. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medical facility transported to';

  @override
  String get incidentIntakeNoMatchingStudents => 'No matching students.';

  @override
  String get incidentIntakeNoStudentsFound => 'No students found.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No students on board, please press NEXT to continue.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No students registered for this route.';

  @override
  String get incidentIntakeOfficerNameError => 'Please enter the officer\'s name.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Officer name*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Please enter the police report number';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Police report number *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Route and driver information';

  @override
  String get incidentIntakeSearchInjuredHint => 'Search injured child...';

  @override
  String get incidentIntakeSearchStudentHint => 'Search student...';

  @override
  String get incidentIntakeSelectAll => 'Select all students';

  @override
  String get incidentIntakeSelectOnMap => 'Select on Map';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderate';

  @override
  String get incidentIntakeSeveritySevere => 'Severe';

  @override
  String get incidentIntakeSeverityTitle => 'Crash Severity Variables';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Submit Report';

  @override
  String get incidentIntakeTitle => 'Post-Crash Incident Intake';

  @override
  String get incidentIntakeTowedSubtitle => 'Did any vehicle receive disabling damage requiring it to be towed from the scene?';

  @override
  String get incidentIntakeTowedTitle => 'Vehicle towed?';

  @override
  String get incidentIntakeWasInjured => 'Was Injured?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Close up';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Driver comments / notes (optional)';

  @override
  String get dvirPreTripNoComments => 'No comments added.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signature successfully captured.';

  @override
  String get dvirPreTripSigMissing => 'Signature is missing.';

  @override
  String get dvirPreTripSignDefectWarning => 'Please sign to verify repair of previous defects.';

  @override
  String get dvirPreTripStepSignOff => 'Sign off';

  @override
  String get dvirPreTripStepSubmit => 'Submit';

  @override
  String get dvirPreTripStepVerify => 'Verify';

  @override
  String get dvirPreTripTapNext => 'Please tap NEXT to proceed.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vehicle is out of service';

  @override
  String get dvirPreTripVehicleReady => 'Vehicle is ready for service';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verified Repair Status:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Please verify that all reported defects have been repaired by checking the box next to each defect.';

  @override
  String get dvirPreTripYourComments => 'Your comments:';

  @override
  String get countryPickerNoCountries => 'No countries found';

  @override
  String get countryPickerSearchHint => 'Search by country name, code, or dial code...';

  @override
  String get countryPickerTitle => 'Select country';

  @override
  String get mapDefaultStop => 'Stop';

  @override
  String get mapEndLocation => 'End location';

  @override
  String get mapStartLocation => 'Start location';

  @override
  String get stopsNoChangesToUndo => 'No changes available to undo.';

  @override
  String get stopsNoStopsAvailable => 'No stops available.';
}
