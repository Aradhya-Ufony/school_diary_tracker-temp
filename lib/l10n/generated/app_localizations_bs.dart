import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appInfoBuild => 'Izgradnja broja';

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
    return 'Ovlašteni skrbnici za $name';
  }

  @override
  String get childrenNoGuardians => 'Nema ovlaštenog skrbnika u dosje za ovo dete.';

  @override
  String get childrenStatusDropped => 'Odbačen';

  @override
  String get childrenStatusPending => 'Čekaju';

  @override
  String get childrenStatusPicked => 'Izbor';

  @override
  String childrenTitle(Object routeName) {
    return 'Deca  __ V0__';
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
  String get drillChecklistNoStudentsOnBus => 'Nema učenika označenog na autobusu.';

  @override
  String get drillChecklistNotOnBus => 'Ne na autobusu';

  @override
  String get drillChecklistOnBusNotEvacuated => 'U BUSU  NE evakuiran';

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
  String get drillChecklistTitle => 'Evakuacioni vježbi';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '-Nepoznat student!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Da li ste sigurni da želite da podnesete ovaj dnevnik vježbanja?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potvrdi da je test podnesen';

  @override
  String get drillEvidenceDriverNotesHint => 'Opisivajte izvedbu vježbanja, ponašanje studenata, korištene izlazne staze i bilo kakve izuzetke koje su uočene...';

  @override
  String get drillEvidenceDriverNotesLabel => 'U nastavku, članak 1.';

  @override
  String get drillEvidenceFailed => 'Nepostignut podnošenje';

  @override
  String get drillEvidenceMandatoryWarning => 'Najmanje jedan foto ili video dokaz je obavezan za podnošenje vježbanja.';

  @override
  String get drillEvidenceRecordVideo => 'Snimaj video';

  @override
  String get drillEvidenceRetrySubmission => 'PONEDNJE';

  @override
  String get drillEvidenceReturnToDashboard => 'Vratite se na ploču';

  @override
  String get drillEvidenceSubmitButton => 'Uprkos tome, ne treba da se radi o';

  @override
  String get drillEvidenceSubmitting => '-Ponuđujem dnevnik vježbanja...';

  @override
  String get drillEvidenceSuccess => 'Podnosioci su uspješni!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakuacijski dnevnik je uspješno postavljen i čeka se odobrenje.';

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
  String get drillRosterMarkAttendance => 'Prisustvo Marka';

  @override
  String get drillRosterNoStudents => 'Nema studenata registrovanih na ovoj rundi.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prethodni:';
  }

  @override
  String get drillRosterProceed => 'PROCESU BORNING CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sjedište:';
  }

  @override
  String get drillRosterSelectAll => 'Izberite sve';

  @override
  String get drillSummaryAdminNotesTitle => 'Napomena za admin';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Odobravan na:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Odobravan u';

  @override
  String get drillSummaryBackToDrills => 'Vraćamo se na vježbanje';

  @override
  String get drillSummaryBusNumber => 'Buss broj';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Vođa:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalji bušenja';

  @override
  String get drillSummaryDriverNotesTitle => 'Uznake vozača';

  @override
  String get drillSummaryDuration => 'Trajanje';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- S1 - sek';
  }

  @override
  String get drillSummaryEndTime => 'Vreme kraja';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuirani: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuirani';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Dokazi u vezi sa medijima';

  @override
  String get drillSummaryGps => 'GPS koordinate';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ne mogu da učinim sažetak vježbanja za ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nema podataka o vježbama.';

  @override
  String get drillSummaryNotOnBus => 'Ne u autobusu';

  @override
  String get drillSummaryOnBusNotEvacuated => 'U BUSu - NE Evakuacija';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografski dokazi';

  @override
  String get drillSummaryRouteId => 'Identifikacija putovanja';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sjedište:';
  }

  @override
  String get drillSummaryStartTime => 'Vreme početka';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Studentski dnevnik evakuacije';

  @override
  String drillSummaryTitle(Object id) {
    return 'Povreme vježbanja (#$id)';
  }

  @override
  String get drillSummaryType => 'Vrsta bušenja';

  @override
  String get drillSummaryVideoEvidence => 'Video dokazi';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus';
  }

  @override
  String get drillTypeClassification => 'Izberite klasifikaciju vježbi:';

  @override
  String get drillTypeCustomHint => 'Ubaci tip evakuacije...';

  @override
  String get drillTypeInvalidState => 'Nevaljan status vozila ili rute.';

  @override
  String get drillTypeNameBusFire => 'Vatra u autobusu';

  @override
  String get drillTypeNameDangerZone => 'Zona opasnosti';

  @override
  String get drillTypeNameDriverIncapacitation => 'Neusposobnost vozača';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orijentacija opreme';

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
  String get drillTypePreparation => 'Preparacija za vježbanje';

  @override
  String get drillTypeProceed => 'PROCED TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String get drillTypeSelectRoute => 'Izberite put:';

  @override
  String get drillTypeSpecifyCustom => 'Specifikujte opisu tipa bušenja:';

  @override
  String get drillTypeTitle => 'Izberite tip bušenja';

  @override
  String get drillTypeWarning => 'Obezbedite da je vozilo sigurno parkirano pre početka izvršenja.';

  @override
  String get drillsAssignedVehicle => 'Vozilo koje je dodeljeno';

  @override
  String get drillsChecking => 'Proveravam...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vratnja #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nema autobusa';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nema vježbi za autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nema putova za pokretanje vježbanja.';

  @override
  String get drillsShowSummary => 'Ukratko';

  @override
  String get drillsStartDrill => 'Pokretanje vježbanja';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Izvodjen: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuacioni vježbanje';

  @override
  String get drillsVehicleOutOfService => 'Vozilo je isključeno';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ovaj vozilo je trenutno u eksploataciji i ne može se koristiti za vježbanje.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'PRIZORNI ZAŠTIV';

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
  String get driverDetailsEndorsementsTitle => 'Podržani odobrenja';

  @override
  String get driverDetailsExpiryDateLabel => 'Datum isteka';

  @override
  String get driverDetailsHolderSignature => 'PRIZORNI PRIZOR';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikacija:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datum izdanja';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument o licenciji';

  @override
  String get driverDetailsLicenseNoLabel => 'Licenca broj';

  @override
  String get driverDetailsLicenseTitle => 'Detalji o licenciji';

  @override
  String get driverDetailsLicenseTypeLabel => 'Vrsta dozvole';

  @override
  String get driverDetailsOfficialSeal => 'Službeni pečat';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasa:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'UVAZ:';
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
  String get driverDetailsTapToView => 'Kliknite da vidite DL dokument';

  @override
  String get driverDetailsTitle => 'Detalji o vozaču';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistem bezbednosti za specijalne autobuse';

  @override
  String get dvirCategoryCouplingDevices => 'Uređaji za spoj';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nadzorno oprema';

  @override
  String get dvirCategoryHorn => 'Ruga';

  @override
  String get dvirCategoryLightingReflectors => 'Uređaji za osvetljenje i reflektori';

  @override
  String get dvirCategoryMirrors => 'Ogledala za pozadinu';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Sjedišta i ograničenja putnika';

  @override
  String get dvirCategoryServiceBrakes => 'Brzdovi za servis';

  @override
  String get dvirCategorySteeringMechanism => 'Mekanism upravljanja';

  @override
  String get dvirCategoryTires => 'Ugrađivanje';

  @override
  String get dvirCategoryWheelsRims => 'Kolesi i rimovi';

  @override
  String get dvirCategoryWipers => 'Brzdovi za vjetrovod';

  @override
  String get dvirPostTripCapturePhoto => 'Slika sa defektom kapture';

  @override
  String get dvirPostTripComplianceTitle => 'Službenici';

  @override
  String get dvirPostTripDefectButton => 'Defekt';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Prijavljanje grešaka bez fotografije';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Upozorenje: prijavljujete defekt u sigurnosnim zonama ($zones) bez priloženja fotografije.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekcija: autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Ubaci detalje o bezbednosnoj zabrinutosti...';

  @override
  String get dvirPostTripNotesLabel => 'NOTE (UZOR NA DEFEKT) i SFOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Odaberi DEFECT da bi se uvele detalje o bezbednosnim problemima...';

  @override
  String get dvirPostTripOdometerHeader => 'Trenutna čitanja odometra';

  @override
  String get dvirPostTripOdometerInstructions => 'Ubaci procenu kilometraže tačno kao što je prikazano na panelu autobusa:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mile)';

  @override
  String get dvirPostTripOdometerTitle => 'Vozilo trčanje vrijeme metrika';

  @override
  String get dvirPostTripOdometerWarning => 'Molimo da pre nastavka uđete u odometar.';

  @override
  String get dvirPostTripPassButton => 'U redu je.';

  @override
  String get dvirPostTripPhotoAttached => 'Slika je uspješno priložena.';

  @override
  String get dvirPostTripProgressLabel => 'Napredak inspekcije';

  @override
  String get dvirPostTripSignatureCaptured => 'Potpis je uhvaćen.';

  @override
  String get dvirPostTripSignatureCert => 'Potvrđujem da je ovaj izvještaj o provjeri vozila završen u skladu sa FMCSA 396.11 propisima.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifikacija potpisa vozača';

  @override
  String get dvirPostTripSubmitButton => 'SENDENJA inspekcije';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR je uspešno podnesen.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA _V0__ OF _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zone _V0__ / _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Priznajem da sam pregledao poslednji dostavljen izveštaj o kvarovima i proverio popravke (ako postoje) i navodi da je autobus siguran za rad.';

  @override
  String get dvirPreTripActiveMessage => 'Ovaj vozilo je aktivno i nema otvorene mane, provjereno je i sigurno je za rad.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivni put: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'OBOZRAVANJU OPOZREDNO: Nedostaci iz prethodnog dana';

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
  String get dvirPreTripNoPriorDefects => 'Nema prethodnih nedostataka';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ovaj vozilo je prijavljeno čist u prethodnoj inspekciji postepeno.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nema popravki potrebne za siguran rad.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ovaj vozilo je izvan radnog reda za popravke/ održavanje.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vozilo je isključeno iz službe';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '_$description (repariran)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Nove defekte';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Prijavljanje novih grešaka je isključeno tokom popravka.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Rezolucija podrežitelja za transport';

  @override
  String get dvirPreTripReturnToHomeButton => 'Vrati se kući';

  @override
  String get dvirPreTripSignOffTitle => '-Pokazatelj za šetnju.';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikacija je potpisana uspešno.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SENDENJA VERIFIKACIJE';

  @override
  String get dvirPreTripTitle => 'Pre-trajp verifikacija';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status vozila: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Nacrta potpis';

  @override
  String get dvirSigPreviewLabel => 'Prethodni pregled snimanog potpisa:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Spasite potpis';

  @override
  String get dvirSigTapToDraw => 'TAP za snimanje potpisa (OBAZAN)';

  @override
  String get dvirSigWatermark => 'Potpis vertikalno (od dole do gore)';

  @override
  String get forgotPasswordCancel => 'Otkazivanje';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Molimo Vas da unesete važeću e-poštu';

  @override
  String get forgotPasswordSend => 'Pošalji';

  @override
  String get forgotPasswordSuccess => 'Ako ta e-pošta postoji, poslat je link za reset.';

  @override
  String get genericBack => 'Vratite se';

  @override
  String get genericCancel => 'Otkazivanje';

  @override
  String get genericClear => 'ČISTO';

  @override
  String get genericClose => 'Približno';

  @override
  String get genericConfirm => 'Potvrdi';

  @override
  String get genericEdit => 'Redakcija';

  @override
  String get genericError => 'Nešto nije u redu.';

  @override
  String get genericLoading => '-Naravno.';

  @override
  String get genericNext => 'Sledeći';

  @override
  String get genericOk => 'U redu.';

  @override
  String get genericRetry => 'Ponovo pokušaj';

  @override
  String get genericSuccess => 'Uspjeh';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Poslanje blokirano';

  @override
  String get homeDispatchBlockedTitle => 'Poslanje blokirano';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nema putova za pre-trajp.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ne uspjeli pokrenuti put na serveru: $error';
  }

  @override
  String homeHi(Object name) {
    return '-Hej, V0__';
  }

  @override
  String get homeLogout => 'Izjava';

  @override
  String get homeMenuAppInfo => 'Informacije o aplikacijama';

  @override
  String get homeMenuDrill => 'Vrtanje';

  @override
  String get homeMenuDriverDetails => 'Detalji o vozaču';

  @override
  String get homeMenuLanguage => 'Jezik';

  @override
  String get homeMenuPreTrip => 'Pre-trajp inspekcija';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Nema dostupnih ruta';

  @override
  String get homeReviewVerifyPreTrip => 'Pregled i provjera pre putovanja';

  @override
  String get homeSearchHint => 'Tražnje';

  @override
  String get homeStart => 'Počnite';

  @override
  String get homeTitle => 'Dom';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vozilo je trenutno OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Vozilo je spremno i provjereno za bezbednu upotrebu.';

  @override
  String get languageTitle => 'Jezik';

  @override
  String get loginButton => 'Ulaz';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail ili telefonski broj';

  @override
  String get loginErrorEnterPassword => 'Molim vas, unesite lozinku';

  @override
  String get loginErrorEnterUsername => 'Molimo Vas da unesete korisničko ime';

  @override
  String get loginErrorFailed => 'Login je propao, molim te, pokušaj ponovo.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Molimo da unesete važeću e-poštu ili telefonski broj';

  @override
  String get loginForgotPassword => 'Zaboravio si lozinku?';

  @override
  String get loginPasswordLabel => 'Lozinka';

  @override
  String get mapChildrenTooltip => 'Deca i skrbnici';

  @override
  String get mapConfirmMessage => 'Da li stvarno želiš da završiš put?';

  @override
  String get mapConfirmTitle => 'Potvrdi';

  @override
  String get mapCurrentPosition => 'Trenutna pozicija';

  @override
  String get mapNo => 'Ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne, ne,';

  @override
  String get mapReconnectMessage => 'Posebno ne može se ažurirati lokacija, pogledajte internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Prestani.';

  @override
  String get mapStopping => '-Strajanje...';

  @override
  String get mapStopsTooltip => 'Stopa';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Uprkos tome,';
  }

  @override
  String get mapWaitingGps => 'Čekam GPS...';

  @override
  String get mapYes => 'Da, da.';

  @override
  String get splashDriverApp => 'Aplikacija za vozače';

  @override
  String get stopsActionUndo => 'Neispravna';

  @override
  String get stopsCancelledSuccess => 'Uspješno otkazano';

  @override
  String get stopsDefaultLabel => 'Prestani.';

  @override
  String get stopsGenericError => 'Nešto nije u redu, molim te, pokušaj ponovo.';

  @override
  String get stopsStatusComplete => 'kompletan';

  @override
  String get stopsStatusDone => 'obavljao';

  @override
  String stopsSubmitCount(Object count) {
    return 'Slanje ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Posle poslate';

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
    return 'Uticaj na proizvodnju';
  }

  @override
  String get stopsUndoTooltip => 'Neispravni odabir/odbacivanje';

  @override
  String get tripConfirmCancel => 'Otkazivanje';

  @override
  String get tripConfirmOk => 'U redu je.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Za početak putovanja je potrebna dozvola za lokaciju.';

  @override
  String get homeMenuPostCrashReporting => 'Izveštaji nakon nesreće';

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
  String get crashLocationPickerSearchHint => 'Lokacija pretrage (npr. Market St)';

  @override
  String get crashLocationPickerTitle => 'Izberite lokaciju na mapi';

  @override
  String get crashLocationPickerTooltip => 'Potvrdi lokaciju';

  @override
  String get incidentDashboardDescription => 'Izberite akciju za nastavak upravljanja incidentima ili pregledavanje prethodnih izveštaja.';

  @override
  String get incidentDashboardHeadline => 'Izveštaji o incidentu nakon nesreće';

  @override
  String get incidentDashboardLogNew => 'Log Novi Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Pokrenuti novi korak po korak izveštaj o nesreći';

  @override
  String get incidentDashboardTitle => 'Incident nakon nesreće';

  @override
  String get incidentDashboardViewHistory => 'Prikazi istoriju';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Prikazi prethodne izveštaje o nesrećama i status';

  @override
  String get incidentDetailsAdminLetter => 'Adminov dopis';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Potvrdni broj testiranja alkohola (2-časovni limit)';

  @override
  String get incidentDetailsBranchId => 'Identifikacija podružnice';

  @override
  String get incidentDetailsBusPlate => 'Plaka za autobusnu dozvolu';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citatni uticaj: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citata za vozača';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinate: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '-V0__ kopiran na ploču!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopiraj na ploču';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum i vreme: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Izveštaj DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'U skladu sa člankom 3.';

  @override
  String get incidentDetailsDriverNotes => 'Uznake vozača:';

  @override
  String get incidentDetailsDriverUserId => 'ID korisnika vozača';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8-časovni limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Došlo je do smrtnosti';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Povrede koje zahtevaju medicinsko liječenje';

  @override
  String get incidentDetailsLawEnforcement => 'Agencija za sprovođenje zakona';

  @override
  String get incidentDetailsLoadFailed => 'Nisam mogao da učinim detalje.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokacija:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Priloga medijima';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Ne, ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nema fotografija ili video snimaka.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nijedan učenik nije bio označen na brodu tokom incidenta.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generira izvještaje o obaveštenju i šalje šablonirane pisma okružnim nadzornicima ili uprave.';

  @override
  String get incidentDetailsNotificationsTitle => 'Obaveštenja o prijenosu';

  @override
  String get incidentDetailsOfficer => 'Detalji o službeniku';

  @override
  String get incidentDetailsPoliceReport => 'Policijski broj izveštaja';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Prepopulirani prenosni list:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Pravilnik:';

  @override
  String get incidentDetailsRouteId => 'Identifikacija putovanja';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Obaveštenje za administratore škole';

  @override
  String get incidentDetailsStatusPending => 'Čekaju';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalji:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Povređeni';

  @override
  String get incidentDetailsStudentNoInjury => 'Nema povrede';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Težina:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Prevoz na:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti na brodu ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Nepotrebno je testiranje nakon kraša';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Detalji o incidentu';

  @override
  String get incidentDetailsVehicleTowed => 'Vozilo povukano';

  @override
  String get incidentDetailsYes => 'Da, da.';

  @override
  String get incidentHistoryEmpty => 'Nema registrovanih registara incidenata za ovaj automobil.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ne mogu da se preuzmu dnevnici: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Vreme: V0 _ Bus: V1 _ Testiranje: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NISTE OZVORENO';

  @override
  String get incidentHistoryTestingRequired => 'ODEBOJEN';

  @override
  String get incidentHistoryTitle => 'Registri post-crash incidenata';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Dodajte još jednu sliku';

  @override
  String get incidentIntakeBadgeNumberError => 'Zahtjev';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Bredžet broj *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Šifra autobusa:';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografija snimka događaja';

  @override
  String get incidentIntakeCitationSubtitle => 'Da li je vozaču školskog autobusa izdata citata za kršenje zakona o saobraćaju?';

  @override
  String get incidentIntakeCitationTitle => 'Citat je izdan?';

  @override
  String get incidentIntakeDateTimeLabel => 'Datum i vreme nesreće *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NEBE potrebno testiranje';

  @override
  String get incidentIntakeDotTestingRequired => 'ODEBIJE TESTING';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Vozač:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Ubaci dodatne bilješke u vezi sa sudarom...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Napisi o nesrećama vozača';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nepostignut za prevoz putnika: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Priključite dokaze (fotografije) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Da li je bilo smrtnih slučajeva kao rezultat ovog nesreće?';

  @override
  String get incidentIntakeFatalityTitle => 'Da li se dogodila smrtna nesreća?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordinate *';

  @override
  String get incidentIntakeHistoryTooltip => 'Prikazi istoriju';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Da li je neko dobio tjelesnu povredu koja je zahtijevala hitnu medicinsku pomoć izvan mjesta događaja?';

  @override
  String get incidentIntakeInjuriesTitle => 'Povrede koje zahtevaju liječenje?';

  @override
  String get incidentIntakeInjuryNotesError => 'Za ranjene studente obavezni su poruka o povredama';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Napomena o povredama / detalji (povezujuća) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Težina povrede *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Molim vas, uđite u policijsku agenciju.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agencija za sprovođenje zakona (npr. Državna patrolna služba za autoputeve) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Zakon o izvršavanju zakona i policijski izveštaj';

  @override
  String get incidentIntakeLocationDescError => 'Molim vas, unesite opis lokacije';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis lokacije (npr. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicinska ustanova prebačena';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nema odgovarajućih studenata.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nijedan učenik nije pronađen.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nema studenata na brodu, molim vas pritisnite NEXT da nastavite.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nijedan učenik nije bio registrovan za ovu rutu.';

  @override
  String get incidentIntakeOfficerNameError => 'Molim vas, unesite ime oficira.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ime oficira *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Molim vas, unesite broj policijskog izvještaja.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policijski broj izveštaja *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Put:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacije o putu i vozaču';

  @override
  String get incidentIntakeSearchInjuredHint => 'Tražite ranjeno dete...';

  @override
  String get incidentIntakeSearchStudentHint => 'Traži student...';

  @override
  String get incidentIntakeSelectAll => 'Izaberite sve učenike';

  @override
  String get incidentIntakeSelectOnMap => 'Odabran na mapi';

  @override
  String get incidentIntakeSeverityFatal => 'Fatalna';

  @override
  String get incidentIntakeSeverityMinor => 'Mlađi';

  @override
  String get incidentIntakeSeverityModerate => 'Smerni';

  @override
  String get incidentIntakeSeveritySevere => 'Teška';

  @override
  String get incidentIntakeSeverityTitle => 'Razlika teškosti nesreće';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikacija:';
  }

  @override
  String get incidentIntakeSubmitButton => 'SENDENJE PREDLOGA';

  @override
  String get incidentIntakeTitle => 'Unos nakon nesreće';

  @override
  String get incidentIntakeTowedSubtitle => 'Da li je bilo vozilo dobio oštećenje koje je zahtevalo da ga povuče sa mesta?';

  @override
  String get incidentIntakeTowedTitle => 'Vozilo povuklo?';

  @override
  String get incidentIntakeWasInjured => 'Da li je povrijeđen?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'BUDUĆE';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Komentar vozača / napomena (neobrazljivo)';

  @override
  String get dvirPreTripNoComments => 'Nema dodatnih komentara.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Put:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Potpis je uspešno zauzeta.';

  @override
  String get dvirPreTripSigMissing => 'Nedostaje potpis.';

  @override
  String get dvirPreTripSignDefectWarning => 'Molim vas potpišite da potvrdite popravak prethodnih grešaka.';

  @override
  String get dvirPreTripStepSignOff => 'Potpis';

  @override
  String get dvirPreTripStepSubmit => 'Podnesite';

  @override
  String get dvirPreTripStepVerify => 'Provjeravanje';

  @override
  String get dvirPreTripTapNext => 'Molim vas, kliknite NAŠI da nastavite.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vozilo je isključeno';

  @override
  String get dvirPreTripVehicleReady => 'Vozilo je spremno za servis';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Status popravka:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Molimo vas da provjerite da su svi prijavljeni defekti popravljeni tako što ćete proveriti polje pored svakog defekta.';

  @override
  String get dvirPreTripYourComments => 'Vaše komentare:';

  @override
  String get countryPickerNoCountries => 'Nema pronađenih zemalja';

  @override
  String get countryPickerSearchHint => 'Traži po nazivu zemlje, kodu ili brojku...';

  @override
  String get countryPickerTitle => 'Izberite zemlju';

  @override
  String get mapDefaultStop => 'Prestani.';

  @override
  String get mapEndLocation => 'Krajnje mjesto';

  @override
  String get mapStartLocation => 'Start lokacija';

  @override
  String get stopsNoChangesToUndo => 'Nema promena koja bi se mogla poništiti.';

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
