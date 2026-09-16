import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appInfoBuild => 'Izgradite broj';

  @override
  String get appInfoDevice => 'Model uređaja';

  @override
  String get appInfoOS => 'OS verzija';

  @override
  String get appInfoPackage => 'Paket';

  @override
  String get appInfoTitle => 'Informacije o aplikacijama';

  @override
  String get appInfoVersion => 'Verzija aplikacije';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Čuvari';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Povlašteni skrbnici za $name';
  }

  @override
  String get childrenNoGuardians => 'Nema ovlaštenog skrbnika u dosje za ovo dijete.';

  @override
  String get childrenStatusDropped => 'Odbačen';

  @override
  String get childrenStatusPending => 'Čekaju';

  @override
  String get childrenStatusPicked => 'Izbor';

  @override
  String childrenTitle(Object routeName) {
    return 'Djeca  __ V0__';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NIE U BUSU ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuirani';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuirani: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nema odsutnih studenata.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nema studenata označenih u autobusu.';

  @override
  String get drillChecklistNotOnBus => 'Ne na autobusu';

  @override
  String get drillChecklistOnBusNotEvacuated => 'U BUSU  NE Evakuirani';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'U BUSu ($count)';
  }

  @override
  String get drillChecklistProceed => 'U procesu hvatanja dokaza';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Put (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuacijski vježbi';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '-Nepoznat je student!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Jeste li sigurni da želite podnijeti ovaj dnevnik vježbanja?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potvrdi podnošenje vježbi';

  @override
  String get drillEvidenceDriverNotesHint => 'Opisivajte izvedbu vježbanja, ponašanje studenata, korištene izlazne staze i bilo kakve iznimke koje su uočene...';

  @override
  String get drillEvidenceDriverNotesLabel => 'U skladu s člankom 4. stavkom 1. točka 1.';

  @override
  String get drillEvidenceFailed => 'Nepostignut podnošenje';

  @override
  String get drillEvidenceMandatoryWarning => 'Za ispitivanje je obavezno podnijeti najmanje jedan dokaz s fotografije ili video snimka.';

  @override
  String get drillEvidenceRecordVideo => 'Snimajte video';

  @override
  String get drillEvidenceRetrySubmission => 'PONEDNJE';

  @override
  String get drillEvidenceReturnToDashboard => 'Vratite se na ploču.';

  @override
  String get drillEvidenceSubmitButton => 'Uložite drill log';

  @override
  String get drillEvidenceSubmitting => 'Slanje dnevnika vježbanja...';

  @override
  String get drillEvidenceSuccess => 'Podložnost uspješna!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakuacijski dnevnik je uspješno postavljen i čeka odobrenje.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografija';

  @override
  String get drillEvidenceTitle => 'Obavezni dokazi o vježbanjima';

  @override
  String get drillEvidenceUploading => 'Uploading evidence and checklist data';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vratnja:';
  }

  @override
  String get drillRosterMarkAttendance => 'Učešće Marka';

  @override
  String get drillRosterNoStudents => 'Nema studenata registriranih na ovoj rundi.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prethodni:';
  }

  @override
  String get drillRosterProceed => 'Učin provjere';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sjedište:';
  }

  @override
  String get drillRosterSelectAll => 'Izaberite sve';

  @override
  String get drillSummaryAdminNotesTitle => 'Napomena za upravitelja';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Odobravanje:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Odobravanje';

  @override
  String get drillSummaryBackToDrills => 'Vratimo se na vježbanje';

  @override
  String get drillSummaryBusNumber => 'Šifra autobusa';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Vođa:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalji vježbanja';

  @override
  String get drillSummaryDriverNotesTitle => 'Uznake vozača';

  @override
  String get drillSummaryDuration => 'Trajanje';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- Sljedeći članak';
  }

  @override
  String get drillSummaryEndTime => 'Vrijeme kraja';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuirani: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuirani';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Dokazi u vezi s medijima';

  @override
  String get drillSummaryGps => 'GPS koordinate';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nije uspjela učitati sažetak vježbanja za ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nema podataka o vježbama.';

  @override
  String get drillSummaryNotOnBus => 'Ne u autobusu';

  @override
  String get drillSummaryOnBusNotEvacuated => 'U BUSU - NE Evakuacija';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografski dokazi';

  @override
  String get drillSummaryRouteId => 'Identifikacija putovanja';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sjedište:';
  }

  @override
  String get drillSummaryStartTime => 'Vrijeme za početak';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Studentski dnevnik evakuacije';

  @override
  String drillSummaryTitle(Object id) {
    return 'Uvod u svrhu ispitivanja';
  }

  @override
  String get drillSummaryType => 'Vrsta vrtljača';

  @override
  String get drillSummaryVideoEvidence => 'Video dokazi';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus';
  }

  @override
  String get drillTypeClassification => 'Izberite klasifikaciju vježbi:';

  @override
  String get drillTypeCustomHint => 'Ulazite u tip evakuacijske vježbe...';

  @override
  String get drillTypeInvalidState => 'Nevaljan stav vozila ili traka.';

  @override
  String get drillTypeNameBusFire => 'Vatra u autobusu';

  @override
  String get drillTypeNameDangerZone => 'Zona opasnosti';

  @override
  String get drillTypeNameDriverIncapacitation => 'Neusposobnost vozača';

  @override
  String get drillTypeNameEquipmentOrientation => 'Osmjeravanje opreme';

  @override
  String get drillTypeNameFrontDoor => 'Prednja vrata';

  @override
  String get drillTypeNameOthers => 'Drugi';

  @override
  String get drillTypeNameRearDoor => 'Zadnja vrata';

  @override
  String get drillTypeNameSideOrRoof => 'Stranica ili krov';

  @override
  String get drillTypeNameSplit => 'Razdvojeni';

  @override
  String get drillTypeNoRouteSelected => 'Nema odabrane putove';

  @override
  String get drillTypePreparation => 'UZREDNJE';

  @override
  String get drillTypeProceed => 'Učin za studentske liste';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String get drillTypeSelectRoute => 'Izberite put:';

  @override
  String get drillTypeSpecifyCustom => 'Opis tipa vrtljača:';

  @override
  String get drillTypeTitle => 'Izberite tip vježbi';

  @override
  String get drillTypeWarning => 'Obezbedite da je vozilo sigurno parkirano prije početka izvršenja.';

  @override
  String get drillsAssignedVehicle => 'U skladu s člankom 1. stavkom 1.';

  @override
  String get drillsChecking => 'Provjeravam...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Uvod:';
  }

  @override
  String get drillsNoBusAssigned => 'Nema autobusa';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nema vježbi za autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nema putova za početak vježbanja.';

  @override
  String get drillsShowSummary => 'Sljedeći članak';

  @override
  String get drillsStartDrill => 'Počnite vježbanje';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Izvršeno: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuacijske vježbe';

  @override
  String get drillsVehicleOutOfService => 'Vozilo izvan usluga';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ovaj je vozilo trenutno u službi i ne može se koristiti za vježbanje.';

  @override
  String get driverDetailsCdlClassLabel => 'U redu';

  @override
  String get driverDetailsDrivingLicenseLabel => 'PRIJEDNIK';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Putnik';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Školski autobus';

  @override
  String get driverDetailsEndorsementsTitle => 'Podržani su odobrenja';

  @override
  String get driverDetailsExpiryDateLabel => 'Datum isteka';

  @override
  String get driverDetailsHolderSignature => 'PRIJEMIČI PRIJEMI';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikacija:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datum izdanja';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokumenti za izdavanje dozvole';

  @override
  String get driverDetailsLicenseNoLabel => 'Licenciranje';

  @override
  String get driverDetailsLicenseTitle => 'Podrobnosti o licenciranju';

  @override
  String get driverDetailsLicenseTypeLabel => 'Vrsta dozvole';

  @override
  String get driverDetailsOfficialSeal => 'Službeni pečat';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'U redu je.';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'STOP:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'U skladu s člankom 3.';
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
  String get driverDetailsTapToView => 'Kliknite da biste vidjeli DL dokument';

  @override
  String get driverDetailsTitle => 'Podrobnosti o vozaču';

  @override
  String get dvirCategoryBusSafetySystems => 'Služba za sigurnost za autobus';

  @override
  String get dvirCategoryCouplingDevices => 'Uređaji za spoj';

  @override
  String get dvirCategoryEmergencyEquipment => 'Uređaji za hitne slučajeve';

  @override
  String get dvirCategoryHorn => 'Ruga';

  @override
  String get dvirCategoryLightingReflectors => 'Uređaji za osvetljenje i reflektori';

  @override
  String get dvirCategoryMirrors => 'Ogledala za pozadinu';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Sjedišta putnika i ograničenja';

  @override
  String get dvirCategoryServiceBrakes => 'Brzdovi za rad';

  @override
  String get dvirCategorySteeringMechanism => 'Mekanism upravljanja';

  @override
  String get dvirCategoryTires => 'Ugrađivanje';

  @override
  String get dvirCategoryWheelsRims => 'Kolesi i removi';

  @override
  String get dvirCategoryWipers => 'Smazani za vjetrovlje';

  @override
  String get dvirPostTripCapturePhoto => 'Slika s nedostatkom kapture';

  @override
  String get dvirPostTripComplianceTitle => 'Službenici i nadležni tijela';

  @override
  String get dvirPostTripDefectButton => 'STOP';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Izjava o nedostatku bez fotografije';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Upozorenje: prijavljujete defekt u sigurnosnim zonama ($zones) bez priloženja fotografije.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekcija: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Udaj detalje o sigurnosnoj zabrinutosti...';

  @override
  String get dvirPostTripNotesLabel => 'UZNAMENJE (UZNAMENJE O ODVJEDNOM) i SFOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Odaberi DEFECT da biste ušli detalje sigurnosnih pitanja...';

  @override
  String get dvirPostTripOdometerHeader => 'Trenutno čitanje odometra';

  @override
  String get dvirPostTripOdometerInstructions => 'Ustavite kilometarskom braku točno kako je prikazano na panelu za uređaje autobusa:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mile)';

  @override
  String get dvirPostTripOdometerTitle => 'Vozilo trčanje vrijeme Metrika';

  @override
  String get dvirPostTripOdometerWarning => 'Molimo vas da uđete u odometar prije nego nastavite.';

  @override
  String get dvirPostTripPassButton => '-PAS';

  @override
  String get dvirPostTripPhotoAttached => 'Slika je uspješno priložena.';

  @override
  String get dvirPostTripProgressLabel => 'Napredak inspekcije';

  @override
  String get dvirPostTripSignatureCaptured => 'Potpis je uhvaćen.';

  @override
  String get dvirPostTripSignatureCert => 'Potvrđujem da je ovaj izvještaj o provjeri vozila završen u skladu s FMCSA 396.11 propisima.';

  @override
  String get dvirPostTripSignatureTitle => 'Provjera potpisa vozača';

  @override
  String get dvirPostTripSubmitButton => 'STOPNJE INSPEKCIJA';

  @override
  String get dvirPostTripSubmitSuccess => 'E-DVIR je uspješno podnesen.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA _V0__ OF _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zone ___ ___ ___ _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Priznajem da sam pregledao posljednji dostavljeni izvještaj o kvarovima i provjerio popravke (ako ih ima) i navodi da je autobus siguran za rad.';

  @override
  String get dvirPreTripActiveMessage => 'Ovaj je vozilo aktivno i nema otvorene nedostatke.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivni put: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'OPOZORNITA VOPREDNO: Nedostaci iz prethodnog dana';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Šifra autobusa:';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Provjera za isporuku vozila';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ne potpisuje:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nema prethodnih nedostataka zabilježenog';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ovaj je vozilo prijavljeno čist u prethodnoj inspekciji postepeno.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nema popravka potrebnih za siguran rad.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ovaj je vozilo izvan radnog reda za popravke/ održavanje.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vozilo izvan službe';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- (PREPARAN)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ZAŠTAJ NJEVI DEFEKT';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Prijavljanje novih kvarova je isključeno tijekom popravka.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Odluke podređenja';

  @override
  String get dvirPreTripReturnToHomeButton => 'Vratite se kući';

  @override
  String get dvirPreTripSignOffTitle => '-Pokazatelj za šetnju.';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikacija je potpisana uspješno.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'STOPNOST provjere';

  @override
  String get dvirPreTripTitle => 'Pre-trajektivna provjera';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status vozila:';
  }

  @override
  String get dvirSigDrawTitle => 'Nacrtajte potpis';

  @override
  String get dvirSigPreviewLabel => 'Prethodni pregled snimanog potpisa:';

  @override
  String get dvirSigRedraw => 'SPREDNIK';

  @override
  String get dvirSigSave => 'Spasite potpis';

  @override
  String get dvirSigTapToDraw => 'UZNAMENJE za snimanje potpisa (OBAZAN)';

  @override
  String get dvirSigWatermark => 'Potpis vertikalno (od dolje do gore)';

  @override
  String get forgotPasswordCancel => 'Otkazivanje';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Molimo uložite važeću e-mail';

  @override
  String get forgotPasswordSend => 'Pošaljite';

  @override
  String get forgotPasswordSuccess => 'Ako ta e-mail postoji, preostali link je poslat.';

  @override
  String get genericBack => 'Vratite se.';

  @override
  String get genericCancel => 'Otkazivanje';

  @override
  String get genericClear => 'Čisto';

  @override
  String get genericClose => '-U blizini.';

  @override
  String get genericConfirm => 'Potvrdi';

  @override
  String get genericEdit => 'Editiranje';

  @override
  String get genericError => 'Nešto nije u redu.';

  @override
  String get genericLoading => '-Naučavam...';

  @override
  String get genericNext => 'Sljedeći';

  @override
  String get genericOk => 'U redu.';

  @override
  String get genericRetry => 'Ponovo pokušaj.';

  @override
  String get genericSuccess => 'Uspjeh';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Poslatka blokirana';

  @override
  String get homeDispatchBlockedTitle => 'Poslatka blokirana';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nema putova za pre-trajp.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nije uspjela pokrenuti put na serveru: $error';
  }

  @override
  String homeHi(Object name) {
    return '-Zdravo, V0__';
  }

  @override
  String get homeLogout => 'Izlaz';

  @override
  String get homeMenuAppInfo => 'Informacije o aplikacijama';

  @override
  String get homeMenuDrill => 'Vratnja';

  @override
  String get homeMenuDriverDetails => 'Podrobnosti o vozaču';

  @override
  String get homeMenuLanguage => 'Jezik';

  @override
  String get homeMenuPreTrip => 'Pre-utjecaj inspekcija';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Nema dostupnih ruta';

  @override
  String get homeReviewVerifyPreTrip => 'Pregledanje i provjeravanje prije putovanja';

  @override
  String get homeSearchHint => 'Tražnja';

  @override
  String get homeStart => 'Počnite';

  @override
  String get homeTitle => 'Dom';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vozilo je trenutno izvan usluga.';

  @override
  String get homeVehicleReady => 'Vozilo je spremno i provjereno za sigurnu upotrebu.';

  @override
  String get languageTitle => 'Jezik';

  @override
  String get loginButton => 'Ulaz';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail ili telefonski broj';

  @override
  String get loginErrorEnterPassword => 'Molimo udajte lozinku';

  @override
  String get loginErrorEnterUsername => 'Molimo udajite korisničko ime';

  @override
  String get loginErrorFailed => 'Login je propao, molim vas, pokušajte ponovno.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Molimo ubaci valjan e-mail ili telefonski broj';

  @override
  String get loginForgotPassword => 'Zaboravio si lozinku?';

  @override
  String get loginPasswordLabel => 'Lozinka';

  @override
  String get mapChildrenTooltip => 'Djeca i skrbnici';

  @override
  String get mapConfirmMessage => 'Stvarno želiš završiti put?';

  @override
  String get mapConfirmTitle => 'Potvrdi';

  @override
  String get mapCurrentPosition => 'Trenutna pozicija';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'Pogosto ne može biti ažurirano mjesto, provjerite na internetu.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Prestani.';

  @override
  String get mapStopping => 'Prestani...';

  @override
  String get mapStopsTooltip => 'Stopi';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Uprovedeno prije 2 godine';
  }

  @override
  String get mapWaitingGps => 'Čekajući GPS...';

  @override
  String get mapYes => '- Da, da.';

  @override
  String get splashDriverApp => 'Aplikacija za vozače';

  @override
  String get stopsActionUndo => 'Neispravno';

  @override
  String get stopsCancelledSuccess => 'Uspješno otkazano';

  @override
  String get stopsDefaultLabel => 'Prestani.';

  @override
  String get stopsGenericError => 'Nešto nije u redu, molim te, pokušaj ponovo.';

  @override
  String get stopsStatusComplete => 'kompletan';

  @override
  String get stopsStatusDone => 'Ispunjeno';

  @override
  String stopsSubmitCount(Object count) {
    return 'Slanje ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Postupan';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected odabrani _$done/$total $status';
  }

  @override
  String get stopsTypeDrop => '-Pusti ga.';

  @override
  String get stopsTypePick => 'Izbor';

  @override
  String stopsUndoCount(Object count) {
    return 'U skladu s člankom 3.';
  }

  @override
  String get stopsUndoTooltip => 'Odricanje od odbijanja';

  @override
  String get tripConfirmCancel => 'Otkazivanje';

  @override
  String get tripConfirmOk => 'U redu.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Za početak putovanja potrebno je dozvolu za lokaciju.';

  @override
  String get homeMenuPostCrashReporting => 'Izvješća nakon nesreće';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razlog:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'U skladu s člankom 4. stavkom 1. stavkom 1.';

  @override
  String get crashLocationPickerTitle => 'Izberite lokaciju na mapi';

  @override
  String get crashLocationPickerTooltip => 'Potvrdi mjesto';

  @override
  String get incidentDashboardDescription => 'Izberite akciju za nastavak upravljanja incidentima ili pregledati prošle izvješća.';

  @override
  String get incidentDashboardHeadline => 'Izvješća o incidentima nakon nesreće';

  @override
  String get incidentDashboardLogNew => 'Log Novi Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Pokrenuti novi korak po korak izvještaj o nesreći';

  @override
  String get incidentDashboardTitle => 'Incident nakon nesreće';

  @override
  String get incidentDashboardViewHistory => 'Pogledajte povijest';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Prikaži prethodne izvješća o nesrećama i stanje';

  @override
  String get incidentDetailsAdminLetter => 'Pismo upravitelja';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Potvrdni broj testiranja alkohola (2-časovni limit)';

  @override
  String get incidentDetailsBranchId => 'Identifikacija podružnice';

  @override
  String get incidentDetailsBusPlate => 'Plaka za autobusnu dozvolu';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Uticaj citiranja: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citat koji je izdao vozaču';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinate: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '-V0__ kopiran na ploču!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopirajte na ploču';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum i vrijeme:';
  }

  @override
  String get incidentDetailsDoeReport => 'Izvješće DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'U skladu s člankom 4. stavkom 1. stavkom 1.';

  @override
  String get incidentDetailsDriverNotes => 'Uznake vozača:';

  @override
  String get incidentDetailsDriverUserId => 'ID korisnika vozača';

  @override
  String get incidentDetailsDrugCountdown => 'DOT-ovskaz na testiranje lijekova (8-satni limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Došlo je do smrtnosti';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Povrede koje zahtijevaju liječenje';

  @override
  String get incidentDetailsLawEnforcement => 'Agencija za provedbu zakona';

  @override
  String get incidentDetailsLoadFailed => 'Nisam mogao učitati detalje.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Mjesto:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Priloga medijima';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => '- Ne.';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nema fotografija ili video zapisi.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'U incidentu nisu bili označeni nijedni studenti.';

  @override
  String get incidentDetailsNotificationsDesc => 'Izradi izvješća o obavijestima i pošalje uzorke pisama okružnim nadzornicima ili uprave.';

  @override
  String get incidentDetailsNotificationsTitle => 'U skladu s člankom 1. stavkom 1.';

  @override
  String get incidentDetailsOfficer => 'Detalji o službeniku';

  @override
  String get incidentDetailsPoliceReport => 'Policijski broj izvješća';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Prepopulirani dopis za prijenos:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Pravilnik:';

  @override
  String get incidentDetailsRouteId => 'Identifikacija putovanja';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Obavijest upravitelja škole';

  @override
  String get incidentDetailsStatusPending => 'Čekaju';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Podrobnosti:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Povrijeđeni';

  @override
  String get incidentDetailsStudentNoInjury => 'Nema ozljeda';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Težina:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Prevoz do:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti na brodu ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Ne zahtijeva se testiranje nakon kraša';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Detalji o incidentu';

  @override
  String get incidentDetailsVehicleTowed => 'Vozilo povlačeno';

  @override
  String get incidentDetailsYes => '- Da.';

  @override
  String get incidentHistoryEmpty => 'Nema registriranih slučajeva u ovom vozilu.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ne uspjeli su vratiti dnevnik: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Vrijeme: V0__ Bus: V1__ Testiranje: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ne zahtijeva se';

  @override
  String get incidentHistoryTestingRequired => 'ODVEDNO';

  @override
  String get incidentHistoryTitle => 'Registri događaja nakon nesreće';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Dodajte još jednu sliku';

  @override
  String get incidentIntakeBadgeNumberError => 'Potreban';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Broj značke *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Šifra autobusa:';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografija snimka događaja';

  @override
  String get incidentIntakeCitationSubtitle => 'Je li se šoferu školskog autobusa izdao poziv za kršenje zakona o prometu?';

  @override
  String get incidentIntakeCitationTitle => 'Izdan citat?';

  @override
  String get incidentIntakeDateTimeLabel => 'Datum i vrijeme nesreće *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Ne zahtijeva se testiranje';

  @override
  String get incidentIntakeDotTestingRequired => 'ODEBIJENO testiranje';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Vozač:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Ustavite dodatne bilješke u vezi s sudarom...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Napisi o nesreći vozača';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nepostignut za prevoz putnika: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Priložite dokaze (fotografije) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Je li bilo smrtnih slučajeva u ovoj nesreći?';

  @override
  String get incidentIntakeFatalityTitle => 'Je li se dogodila smrtna nesreća?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordinate *';

  @override
  String get incidentIntakeHistoryTooltip => 'Pogledajte povijest';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Je li netko dobio tjelesnu ozljedu koja je zahtijevala hitnu medicinsku pomoć izvan mjesta događaja?';

  @override
  String get incidentIntakeInjuriesTitle => 'Povrede koje zahtijevaju liječenje?';

  @override
  String get incidentIntakeInjuryNotesError => 'Za ranjene učenike obvezni su izvještaji o povredama';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Uloga:';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Težina ozljede *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Molim vas, uđite u policijsku agenciju.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'U skladu s člankom 4. stavkom 1. stavkom 1. stavkom 1. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2. stavkom 2.';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Zakon i policijski izvještaj';

  @override
  String get incidentIntakeLocationDescError => 'Molimo udaj opis lokacije';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis mjesta (npr. Market St i 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicinska ustanova prebačena u';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nema odgovarajućih studenata.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nijedan učenik nije pronađen.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nema studenata na brodu.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nijedan učenik nije bio registriran za ovu rutu.';

  @override
  String get incidentIntakeOfficerNameError => 'Molim vas, unesite ime službenika.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ime službenika *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Molim vas, unesite broj policijskog izvještaja.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policijski broj izvješća *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacije o putu i vozaču';

  @override
  String get incidentIntakeSearchInjuredHint => 'Tražite ranjeno dijete...';

  @override
  String get incidentIntakeSearchStudentHint => 'Tražite studenta...';

  @override
  String get incidentIntakeSelectAll => 'Izaberite sve učenike';

  @override
  String get incidentIntakeSelectOnMap => 'Odabran na mapi';

  @override
  String get incidentIntakeSeverityFatal => 'Smrtonosno';

  @override
  String get incidentIntakeSeverityMinor => 'Neposrednji';

  @override
  String get incidentIntakeSeverityModerate => 'Smijereno';

  @override
  String get incidentIntakeSeveritySevere => 'Teška';

  @override
  String get incidentIntakeSeverityTitle => 'Razlika o težini nesreće';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikacija:';
  }

  @override
  String get incidentIntakeSubmitButton => 'SENDENJE ZAVORNO';

  @override
  String get incidentIntakeTitle => 'Unos nakon nesreće';

  @override
  String get incidentIntakeTowedSubtitle => 'Je li bilo kojeg vozila bilo oštećenja koji je zahtijevao da ga povuče s mjesta događaja?';

  @override
  String get incidentIntakeTowedTitle => 'Vozilo povuklo?';

  @override
  String get incidentIntakeWasInjured => 'Je li bio ozlijeđen?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'BUDU BUDU';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Komentar vozača / Napomena (neprihvatljivo)';

  @override
  String get dvirPreTripNoComments => 'Ne dodaje se nikakvih komentara.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Put:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Potpis uspješno uhvaćen.';

  @override
  String get dvirPreTripSigMissing => 'Nedostaje potpis.';

  @override
  String get dvirPreTripSignDefectWarning => 'Molim vas potpišite da potvrdite popravak prethodnih kvarova.';

  @override
  String get dvirPreTripStepSignOff => 'Potpis';

  @override
  String get dvirPreTripStepSubmit => 'Podnesite';

  @override
  String get dvirPreTripStepVerify => 'Provjeravanje';

  @override
  String get dvirPreTripTapNext => 'Molim vas, kliknite NAVDJE da nastavite.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vozilo je izvan službe';

  @override
  String get dvirPreTripVehicleReady => 'Vozilo je spremno za službu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Provjereno stanje popravka:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Ako je potrebno, provjerite da su sve prijavljene greške popravljene tako da provjerite polje uz svaki grešak.';

  @override
  String get dvirPreTripYourComments => 'Vaše komentare:';

  @override
  String get countryPickerNoCountries => 'Nema pronađenih zemalja';

  @override
  String get countryPickerSearchHint => 'Tražite po nazivu zemlje, kodu ili brojku...';

  @override
  String get countryPickerTitle => 'Izberite zemlju';

  @override
  String get mapDefaultStop => 'Prestani.';

  @override
  String get mapEndLocation => 'Krajnje mjesto';

  @override
  String get mapStartLocation => 'Start lokacija';

  @override
  String get stopsNoChangesToUndo => 'Nema promjena koja bi se mogla poništiti.';

  @override
  String get stopsNoStopsAvailable => 'Nema zaustavljanja.';

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
