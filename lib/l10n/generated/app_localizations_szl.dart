import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Silesian (`szl`).
class AppLocalizationsSzl extends AppLocalizations {
  AppLocalizationsSzl([String locale = 'szl']) : super(locale);

  @override
  String get appInfoBuild => 'Budować numer';

  @override
  String get appInfoDevice => 'Model urzyndōw';

  @override
  String get appInfoOS => 'Wersyjŏ ôs';

  @override
  String get appInfoPackage => 'Paket ôbrozkowy';

  @override
  String get appInfoTitle => 'Informacyje ô aplikacyji';

  @override
  String get appInfoVersion => 'Wersyjŏ aplikacyje';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Strōny';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Autoryzowani ôrganizmy ôrganizmu';
  }

  @override
  String get childrenNoGuardians => 'Niy ma ôna, kery by bōł w ksiōnżce tego dziecka.';

  @override
  String get childrenStatusDropped => 'Utrōniōno';

  @override
  String get childrenStatusPending => 'Wczekajōm';

  @override
  String get childrenStatusPicked => 'Wybrano';

  @override
  String childrenTitle(Object routeName) {
    return 'Dzieci  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'SI: Niy ma ôbusow ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus: V0__';
  }

  @override
  String get drillChecklistEvacuated => 'Ewakuacyje';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Ewakuacyje: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Niy ma ôstatnich uczniōw.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Żodyn uczniowie niy ôznaczōł we autobusie.';

  @override
  String get drillChecklistNotOnBus => 'Niy na autobusie';

  @override
  String get drillChecklistOnBusNotEvacuated => 'W autobusie  NIYE Ewakuacjowane';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Na autobusie ($count)';
  }

  @override
  String get drillChecklistProceed => 'Proces do wykrycia dowodu';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Strōna (Przeżyw): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Szczyt ewakuacyjnych szpilōw';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Niewiadomiy Student! - Pozostaje!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Je żeś sie prōbowoł przesłać tyn log?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potwierdź podanie szpilōw';

  @override
  String get drillEvidenceDriverNotesHint => 'Ôpisuj wykōnanie ćwiyrdzia, zachowanie uczniōw, używane szlaki wyjściowe i wszelkie ôbserwowane wykluczenia...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Uznŏrki ô kierowcy (minimalnie 10 znakōw):';

  @override
  String get drillEvidenceFailed => 'Przesłōbiynie ôbrōńdziło';

  @override
  String get drillEvidenceMandatoryWarning => 'Przikłŏd przikładu zdjyntego abo wideo je ôbsztalowy.';

  @override
  String get drillEvidenceRecordVideo => 'Zagraj wideo';

  @override
  String get drillEvidenceRetrySubmission => 'ZAWORZYŚĆ';

  @override
  String get drillEvidenceReturnToDashboard => 'Wrōć do szpilki';

  @override
  String get drillEvidenceSubmitButton => 'Użyjŏcie szpilōw';

  @override
  String get drillEvidenceSubmitting => 'Przesyłajōm log drill...';

  @override
  String get drillEvidenceSuccess => 'Podpōniyńcie sie dobrze!';

  @override
  String get drillEvidenceSuccessMessage => 'Log szkoleń ekwayuzacyje bōł z powodzōńciym przesyłany i je na zatwierdzyniu.';

  @override
  String get drillEvidenceTakePhoto => 'Zarysować';

  @override
  String get drillEvidenceTitle => 'Zobowiązkowe dowody na wiyrzynie';

  @override
  String get drillEvidenceUploading => 'Ôtłōnczanie dowodōw i danych z listy kontrolnyj';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus: V0__';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Wiyrzynie:';
  }

  @override
  String get drillRosterMarkAttendance => 'Markōw';

  @override
  String get drillRosterNoStudents => 'Żŏdnych studentōw na tyj szlaku niy ma.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Przisłuszo: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Proces do szczyranio';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Strōna: V0';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Siedziba: V0';
  }

  @override
  String get drillRosterSelectAll => 'Wybierz wszyjske';

  @override
  String get drillSummaryAdminNotesTitle => 'Uznŏrki ôd admin';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Zaprŏwŏ na:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Zaprōbowane we';

  @override
  String get drillSummaryBackToDrills => 'Wrōć do Drills';

  @override
  String get drillSummaryBusNumber => 'Numer ôbusu';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Wykōnowany bez: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Szczegóły wiyrzōw';

  @override
  String get drillSummaryDriverNotesTitle => 'Ôpŏwiŏki ô kierowcy';

  @override
  String get drillSummaryDuration => 'Dugość';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '_V0__ min _V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Czas kōńca';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Ewakuacyje: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Ewakuacyjo _ V0__';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Przekōńce do dowodōw medialnych';

  @override
  String get drillSummaryGps => 'Koordynaty GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Niy wkludziōł ôbsztalowanio wiyrzōw do ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Niy ma danych z wiyrzy.';

  @override
  String get drillSummaryNotOnBus => 'Niy we autobusie';

  @override
  String get drillSummaryOnBusNotEvacuated => 'W autobusie - niy ewakuowane';

  @override
  String get drillSummaryPhotoEvidence => 'Fotokŏzy dowodujōm';

  @override
  String get drillSummaryRouteId => 'Idyntyfikacyjo trasy';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Siedziba: V0';
  }

  @override
  String get drillSummaryStartTime => 'Czas zaczōn';

  @override
  String get drillSummaryStatus => 'Status ôstatek';

  @override
  String get drillSummaryStudentLogTitle => 'Ewakuacyjŏ studentōw';

  @override
  String drillSummaryTitle(Object id) {
    return 'Przikludziŏ wiyrzōw (#$id)';
  }

  @override
  String get drillSummaryType => 'Typowi wiyrzy';

  @override
  String get drillSummaryVideoEvidence => 'Wideo dowody';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobusy _ V0__';
  }

  @override
  String get drillTypeClassification => 'Wybierz klasyfikacyjo wiyrzy:';

  @override
  String get drillTypeCustomHint => 'Wlacz typ ewakuacyjny...';

  @override
  String get drillTypeInvalidState => 'Nielogowe ôbudowa ôbudowy abo szlaku.';

  @override
  String get drillTypeNameBusFire => 'Ôbusowy ôbżar';

  @override
  String get drillTypeNameDangerZone => 'Zōna zagrożōno';

  @override
  String get drillTypeNameDriverIncapacitation => 'Niykapacitŏ kierowcy';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientacyjo sprzedowanio';

  @override
  String get drillTypeNameFrontDoor => 'Przednie drōga';

  @override
  String get drillTypeNameOthers => 'Inksze';

  @override
  String get drillTypeNameRearDoor => 'Za tylnymi drōzami';

  @override
  String get drillTypeNameSideOrRoof => 'Strōny abo dach';

  @override
  String get drillTypeNameSplit => 'Rozdzielać';

  @override
  String get drillTypeNoRouteSelected => 'Niy wybrała sie żŏdnyj szlaku';

  @override
  String get drillTypePreparation => 'PRZEDYWANIE do drillingu';

  @override
  String get drillTypeProceed => 'Wykōńczōńć na studynt';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Strōna: V0';
  }

  @override
  String get drillTypeSelectRoute => 'Wybierz szlaku:';

  @override
  String get drillTypeSpecifyCustom => 'Użyj ôpis typu wiyrzy:';

  @override
  String get drillTypeTitle => 'Wybierz typ wiyrzŏ';

  @override
  String get drillTypeWarning => 'Zapewnij sie, iże pojazd je bezpiecznie zaparkowany przed rozpoczynaniym wykonywanio.';

  @override
  String get drillsAssignedVehicle => 'Pojazd przidzielōny';

  @override
  String get drillsChecking => 'Sprawdzam...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Wiyrz #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Niy przidŏwano autobusōw';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Niy ma wykorzystań na autobusie $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Niy ma szlaku do zaczyńcio wiyrzy.';

  @override
  String get drillsShowSummary => 'Przekōńcie';

  @override
  String get drillsStartDrill => 'Zacnij wiyrzić';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Ôdwiōnzany: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Ewakuacyjŏ';

  @override
  String get drillsVehicleOutOfService => 'Pojazd bez użycio';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Tyn ôbserwat je teroźnie niywykorzystany i niy może być używany do wiyrzy.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasy CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'SIENKO DRUKIJCE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAME: V0';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: _V0__';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasażerski';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus szkolny';

  @override
  String get driverDetailsEndorsementsTitle => 'Podpiyrwŏniŏ';

  @override
  String get driverDetailsExpiryDateLabel => 'Data kōnsekcyjŏ';

  @override
  String get driverDetailsHolderSignature => 'TAKSYJNIK TAKSYJNIK';

  @override
  String driverDetailsId(Object driverId) {
    return 'Id: V0';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Dato wydania';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument ô licencyji';

  @override
  String get driverDetailsLicenseNoLabel => 'Licencjo Niy';

  @override
  String get driverDetailsLicenseTitle => 'Szczegōły licencyje';

  @override
  String get driverDetailsLicenseTypeLabel => 'Typ licencyje';

  @override
  String get driverDetailsOfficialSeal => 'Ôficjalny pieczęć';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klasa: V0';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: _V0__';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Wrōć:';
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
  String get driverDetailsTapToView => 'Kliknij, coby wyświetlać dokument DL';

  @override
  String get driverDetailsTitle => 'Szczegōły ôbudowy';

  @override
  String get dvirCategoryBusSafetySystems => 'Systymy Bezpieczeństwa ôbusowego';

  @override
  String get dvirCategoryCouplingDevices => 'Urządzenia do łączania';

  @override
  String get dvirCategoryEmergencyEquipment => 'Urzyndne sprzyrzynie';

  @override
  String get dvirCategoryHorn => 'Rōnek';

  @override
  String get dvirCategoryLightingReflectors => 'Urządzynia ôbświetlacze i ôdbicie';

  @override
  String get dvirCategoryMirrors => 'Spiegła z tyłu';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Siedziba pasażerōw i ôgraniczynia';

  @override
  String get dvirCategoryServiceBrakes => 'Brzdy za ôbserwowanie';

  @override
  String get dvirCategorySteeringMechanism => 'Mechanizm kierownictwa';

  @override
  String get dvirCategoryTires => 'Plywiki';

  @override
  String get dvirCategoryWheelsRims => 'Koła i rymy';

  @override
  String get dvirCategoryWipers => 'Wypyrowaniŏ szklōnōw';

  @override
  String get dvirPostTripCapturePhoto => 'SZYŁKOŚĆ WYJSTOWKA';

  @override
  String get dvirPostTripComplianceTitle => 'Certyfikacyjo zgodności';

  @override
  String get dvirPostTripDefectButton => 'Wrōch';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Zgłŏwianie wady bez zdjyncio';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Uwaga: zgłaszasz defekt w strefach bezpieczeństwa ($zones) bez prziłączynio zdjyncia.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ôbuss $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Wpisz szczegóły ô ôbrozce bezpieczeństwa...';

  @override
  String get dvirPostTripNotesLabel => 'UWAGA (UWAGA NA WYGANIE) & SZYWAT';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Wybierz DEFECT, coby wkludzić szczegóły ô ôbŏżności...';

  @override
  String get dvirPostTripOdometerHeader => 'Ôczyńść ôdometru';

  @override
  String get dvirPostTripOdometerInstructions => 'Wklŏdaj ôczyńcie kilometrażu tak, jak je wyślōndane na panelu ôbusowym:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mile)';

  @override
  String get dvirPostTripOdometerTitle => 'SIEGOWY RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Proszê przed rozpoczyn±mi w3askn±æ odmytrowanie.';

  @override
  String get dvirPostTripPassButton => 'Przechodź';

  @override
  String get dvirPostTripPhotoAttached => 'Zdjęcie zaliczōne z powodzōń.';

  @override
  String get dvirPostTripProgressLabel => 'Wpływ inspekcyje';

  @override
  String get dvirPostTripSignatureCaptured => 'Zatrzymano podpis.';

  @override
  String get dvirPostTripSignatureCert => 'Potwierdziōm, iże ta raportŏ ô kontrolnyj listie ôbiegōw ô pojazdie ôstała wypełniōno zgodnie z regulacyjōm FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'weryfikacyjo podpisu ôprowdcy';

  @override
  String get dvirPostTripSubmitButton => 'Przesyłka';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR z powodzōnym podŏwōm.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA _V0__ O _V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zóny _V0__ / _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Przyznajóm, iże przejrzoł żech ôstatni zgłoszowany ôbszk, a weryfikowoł naprawki (jeźli je) i ôświadczōł, iże autobus je bezpieczny do eksploatacyje.';

  @override
  String get dvirPreTripActiveMessage => 'Je to ôbserwowane i bezpieczne do eksploatacyje.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktywny szlak: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'UWAGA: Wypisanie wpisōw na poprzedni dziyń';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numer ôbusu: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'CHECK DISPATCH VEHICLE';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Niy podpisał: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Niy zaczyto sie żodnych wcześniejszych wad';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'We poprzednij inspekcyji na sztafach po wycieczce ôstało ô tym ôbieg ôczystym.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Żŏdnych napraw niy ma potrzebnych do bezpiecznego ôperacyje.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Je to ôbszyrk ôbrōńdziōny w ôbszyrku ôbszyrkōw.';

  @override
  String get dvirPreTripOutofServiceButton => 'SIEGOWIE Z ôstatnego ôbiodu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Powod:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '_$description (REPARED)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ZAWSZYŃAJĄ NOWE WYJY';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Ôgłŏżanie nowych wad je ôblokowane w czasie napraw.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: _V0__';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Ôdresōlujōm podadminōm ô transport';

  @override
  String get dvirPreTripReturnToHomeButton => 'Wrōć do dom';

  @override
  String get dvirPreTripSignOffTitle => 'SIGN-OFF do prowadzynio do spacery';

  @override
  String get dvirPreTripSignedSuccess => 'Zdo sie, że potwierdziła sie bez problemu.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Wersyfikacyjo';

  @override
  String get dvirPreTripTitle => 'Prōdzij do wycieczki weryfikacyjo';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status pojazdu: _V0__';
  }

  @override
  String get dvirSigDrawTitle => 'Ryskutować podpisu';

  @override
  String get dvirSigPreviewLabel => 'Zatrzymane Przeglōndy podpisu:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'ZAWARZANIE podpisu';

  @override
  String get dvirSigTapToDraw => 'TAP do wyciągania podpisu (pozycjŏ)';

  @override
  String get dvirSigWatermark => 'Podpisany piyrwno (zdowo do wiyrchu)';

  @override
  String get forgotPasswordCancel => 'Zaneckować';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Wpisz warty e-mail';

  @override
  String get forgotPasswordSend => 'Wysyłać';

  @override
  String get forgotPasswordSuccess => 'Jeźli ta e-mail istnieje, prziszoł link do resetowanio.';

  @override
  String get genericBack => 'Wrōć';

  @override
  String get genericCancel => 'Zaneckować';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Przi bliskim';

  @override
  String get genericConfirm => 'Potwierdzić';

  @override
  String get genericEdit => 'Edytorzōm';

  @override
  String get genericError => 'Coś poszło źle';

  @override
  String get genericLoading => 'Ładowanie...';

  @override
  String get genericNext => 'SI:';

  @override
  String get genericOk => 'Wiycie?';

  @override
  String get genericRetry => 'Wrociyło sie';

  @override
  String get genericSuccess => 'Sukcesyjo';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus: V0__';
  }

  @override
  String get homeDispatchBlocked => 'Ôblokowano wysyłanie';

  @override
  String get homeDispatchBlockedTitle => 'Ôblokowano wysyłanie';

  @override
  String get homeErrorNoRoutesPreTrip => 'Niy ma szlaku do wykonywanio Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Niy wcisnoł sie na serwer: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Cześć, V0__';
  }

  @override
  String get homeLogout => 'Logut';

  @override
  String get homeMenuAppInfo => 'Informacyje ô aplikacyji';

  @override
  String get homeMenuDrill => 'Szczypōn';

  @override
  String get homeMenuDriverDetails => 'Szczegōły ôbudowy';

  @override
  String get homeMenuLanguage => 'Jŏzyk';

  @override
  String get homeMenuPreTrip => 'Przijechowo inspekcyjo';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Niy ma dostympnych tras';

  @override
  String get homeReviewVerifyPreTrip => 'Przeglōnd i weryfikacyjo przed wycieczką';

  @override
  String get homeSearchHint => 'Szukacyje';

  @override
  String get homeStart => 'Zaczynŏ';

  @override
  String get homeTitle => 'Dom we ôstatnim czasie';

  @override
  String get homeVehicleOutOfServiceDefault => 'Jeździec je terozki ôstatnie ôstatni.';

  @override
  String get homeVehicleReady => 'Jeździec je gotowy i weryfikowany na bezpieczny ôperacyjõ.';

  @override
  String get languageTitle => 'Jŏzyk';

  @override
  String get loginButton => 'Login sie wpisuje';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail abo numer telefonu';

  @override
  String get loginErrorEnterPassword => 'Wpisz hasło';

  @override
  String get loginErrorEnterUsername => 'Wpisz miano użytkownika';

  @override
  String get loginErrorFailed => 'Login sie nie udał, prosze, pokŏż sie jeszcze raz.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Wpisz warty e-mail abo numer telefonu';

  @override
  String get loginForgotPassword => 'Zapōmniōł żeś hasło?';

  @override
  String get loginPasswordLabel => 'Szymulŏ';

  @override
  String get mapChildrenTooltip => 'Dzieci i opiekunki';

  @override
  String get mapConfirmMessage => 'Chcesz sie zawrzić?';

  @override
  String get mapConfirmTitle => 'Potwierdzić';

  @override
  String get mapCurrentPosition => 'Aktualne pozycyje';

  @override
  String get mapNo => 'Niy , niy';

  @override
  String get mapReconnectMessage => 'Używanie lokalizacyje czynsto sie niy sprawdza, proszê o sprawdzenie sie w internecie.';

  @override
  String get mapReconnectTitle => 'Śledzōnŏcz';

  @override
  String get mapStop => 'Przestańcie';

  @override
  String get mapStopping => 'Przestańcie...';

  @override
  String get mapStopsTooltip => 'Zatrzymaj sie';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Używany _ V0__s ago';
  }

  @override
  String get mapWaitingGps => 'Czekam na GPS...';

  @override
  String get mapYes => '- Tak, to sie dzieje.';

  @override
  String get splashDriverApp => 'Aplikacyjo ôbudowy';

  @override
  String get stopsActionUndo => 'Uderzōne';

  @override
  String get stopsCancelledSuccess => 'Skuli tego ôbeszczōno';

  @override
  String get stopsDefaultLabel => 'Przestańcie';

  @override
  String get stopsGenericError => 'Coś poszło źle. Sprōbuj jeszcze raz.';

  @override
  String get stopsStatusComplete => 'kōmpletny';

  @override
  String get stopsStatusDone => 'wykōnowane';

  @override
  String stopsSubmitCount(Object count) {
    return 'Przesun ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Z powodzōnym podniesiōnōm';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Wybrano _ V0 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _';
  }

  @override
  String get stopsTypeDrop => 'Wyrzuć';

  @override
  String get stopsTypePick => 'Wybierzōm';

  @override
  String stopsUndoCount(Object count) {
    return 'Udo ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Udowe ôbranie/płynanie';

  @override
  String get tripConfirmCancel => 'Zaneckować';

  @override
  String get tripConfirmOk => 'Wōm sie to niy podoba.';

  @override
  String get tripConfirmTitle => 'Śledzōnŏcz';

  @override
  String get tripErrorLocationRequired => 'Do rozpoczynanio wycieczki wymŏgŏ sie zgodã na lokalizacyjo.';

  @override
  String get homeMenuPostCrashReporting => 'Raporty ô wypadkach po wypadku';

  @override
  String homeVehicleReason(Object reason) {
    return 'Powod:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: _V0__';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Lokalizacyjo wyszukiwanio (np. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Wybierz miyjsce na mapie';

  @override
  String get crashLocationPickerTooltip => 'Potwierdź miyjsce';

  @override
  String get incidentDashboardDescription => 'Wybierz czynność, coby kontynuować zarzōndzanie zdarzyniami abo przeglōndać poprzednie raporty.';

  @override
  String get incidentDashboardHeadline => 'Raporty ô zdarzyniŏch po wypadku';

  @override
  String get incidentDashboardLogNew => 'Log Nowy zderz';

  @override
  String get incidentDashboardLogNewSubtitle => 'Wstŏwŏ nowy raport ô wypadku krok po kroku';

  @override
  String get incidentDashboardTitle => 'Incydynt po wypadku';

  @override
  String get incidentDashboardViewHistory => 'Przijrzij historyjo';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Przijrzij poprzednie raporty awaryjne i status';

  @override
  String get incidentDetailsAdminLetter => 'List ôd admin';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Liczba ôdliczno testowa alkoholu (limita 2 godz.)';

  @override
  String get incidentDetailsBranchId => 'Idyncyjŏ ôd ôddziału';

  @override
  String get incidentDetailsBusPlate => 'Ôbusowe karty';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Ôpływ cytu: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Cytacyjo do szofera';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordynaty: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- W0__ kopiowano na taśmōm!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopij na klawiaturã';

  @override
  String get incidentDetailsCrashCitationInfo => 'Informacyje ô krash i cytacyji';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data i Godzina: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raport DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raport państwowego DOE (opcjonalny)';

  @override
  String get incidentDetailsDriverNotes => 'Uznŏrki ô kierowcy:';

  @override
  String get incidentDetailsDriverUserId => 'Id Użytkownika ôbudowy';

  @override
  String get incidentDetailsDrugCountdown => 'Liczba ôdliczno testowa drōgōw DOT (8 godzinŏ ôgraniczŏ)';

  @override
  String get incidentDetailsFatalityOccurred => 'Prziszło śmiertelność';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incydynt #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Pociōngniŏ, co wymagajōm leczenia medycznego';

  @override
  String get incidentDetailsLawEnforcement => 'Agencyjo przikładowo';

  @override
  String get incidentDetailsLoadFailed => 'Niy wkludziōł szczegōlōw.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokalizacyjo: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Przikłady do mediōw';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: _V0__';
  }

  @override
  String get incidentDetailsNo => 'Niy';

  @override
  String get incidentDetailsNoMediaAttachments => 'Niy ma zdjyncio ani filmōw.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Żodyn z uczniōw niy bōł ôznaczōny na pokładzie w czasie incydyntōw.';

  @override
  String get incidentDetailsNotificationsDesc => 'Zgenerować raporty ô powiadōmowaniu i wysyłać szablōnowane listy do ôparnych ôparōw abo administracyje.';

  @override
  String get incidentDetailsNotificationsTitle => 'Powiadomiynia ô przenoszynie';

  @override
  String get incidentDetailsOfficer => 'Szczegōły ôficyrōw';

  @override
  String get incidentDetailsPoliceReport => 'Policyjny numer raportu';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Wczesny list przenoszyny:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Podstawy regulacyjne:';

  @override
  String get incidentDetailsRouteId => 'Idyntyfikacyjo trasy';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Powiadomiynie ôd zarzōndcy szkoły';

  @override
  String get incidentDetailsStatusPending => 'Wczekajōm';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Szczegóły: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Zraniōny';

  @override
  String get incidentDetailsStudentNoInjury => 'Niy ma ôszkodowanio';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Ciynżkość:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Przenoszone do:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Uczniowie na pokładzie ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'SI: Trza testować po wypadku';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: _V0__';
  }

  @override
  String get incidentDetailsTitle => 'Szczegōły zdarzyniŏ';

  @override
  String get incidentDetailsVehicleTowed => 'Pojazd wyciągany';

  @override
  String get incidentDetailsYes => 'SI:';

  @override
  String get incidentHistoryEmpty => 'Niy ma registrōw incydyntōw na tym pojeździe.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Niy podarziło sie ôdzyskać logōw: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ôbuss: V1__ Testing: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incydynt #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Niy wymŏgŏ';

  @override
  String get incidentHistoryTestingRequired => 'Wymŏżōne';

  @override
  String get incidentHistoryTitle => 'Rejestr zdarzyń po wypadku';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Dodaj inksze zdjyncie';

  @override
  String get incidentIntakeBadgeNumberError => 'Wymogi';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Ôznacznik ôdpisŏ';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numer ôbusu: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Zgrabiynie sceny zdarzynio';

  @override
  String get incidentIntakeCitationSubtitle => 'Czy szkoleński szofer dostał cytu za ruch z naruszaniym drogowym?';

  @override
  String get incidentIntakeCitationTitle => 'Cytuje sie?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data i godzina zderzyniŏ *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTING NIE POWINTOWANIE';

  @override
  String get incidentIntakeDotTestingRequired => 'SI: Testy wymagane';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Kierownik:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Wpisz jakiekŏ inkszo notka ô kolizji...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Ôpisy ô wypadkach z kierowcami';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Niy wkludziyli pasażerōw trasy: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Dołącz dowody (Fotografije) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Czy w wyniku tego wypadku zdarzyły sie żodne śmiertelne?';

  @override
  String get incidentIntakeFatalityTitle => 'Prziszło śmiertelność?';

  @override
  String get incidentIntakeGpsLabel => 'Koordynaty GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Przijrzij historyjo';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Czy ftoś mioł ôszkodowanie ciała, co wymagało natychmiastowego leczenia poza miyjscem?';

  @override
  String get incidentIntakeInjuriesTitle => 'Pociōngniŏ, co wymaga leczenia medycznego?';

  @override
  String get incidentIntakeInjuryNotesError => 'Sztudyntōw, kere sōm zraniōne, trza zapisać na ôpowiadōmowanie ô zranioch';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Uznŏrki ô szkodzie / Szczegóły (polegacyjne) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Ciyrpliwość urazu *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Proszê wejść do agencji siê przestrzegaæ prawa';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agencyjo prziprawŏ prawa (np. Patroly państwowe drōg) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raport ô ściganie i policyjo';

  @override
  String get incidentIntakeLocationDescError => 'Proszê wpisaæ opis lokalizacyje';

  @override
  String get incidentIntakeLocationDescLabel => 'Ôpis lokalizacyje (np. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Do placu medycznego przeniesiōne';

  @override
  String get incidentIntakeNoMatchingStudents => 'Niy ma ôdpasujōncych sie uczniōw.';

  @override
  String get incidentIntakeNoStudentsFound => 'Żodyn z uczniōw niy znaleziōł.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Żŏdnych studentōw na pokładzie.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Żodyn student niy zapisoł sie na ta szlaku.';

  @override
  String get incidentIntakeOfficerNameError => 'Proszê wpisaæ nazwisko oficyrza';

  @override
  String get incidentIntakeOfficerNameLabel => 'Miano ôficira *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Proszê wpisaæ numer raportu policyjnego';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policyjny numer raportu *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Strōna: V0';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacyje ô szlaku i ô kierowcy';

  @override
  String get incidentIntakeSearchInjuredHint => 'Szukaj ranny dziecek...';

  @override
  String get incidentIntakeSearchStudentHint => 'Szukaj studenta...';

  @override
  String get incidentIntakeSelectAll => 'Wybierz wszyjskich uczniōw';

  @override
  String get incidentIntakeSelectOnMap => 'Wybōr na mapie';

  @override
  String get incidentIntakeSeverityFatal => 'Śmiychny';

  @override
  String get incidentIntakeSeverityMinor => 'Mŏgłe';

  @override
  String get incidentIntakeSeverityModerate => 'Miyndzyciśniōne';

  @override
  String get incidentIntakeSeveritySevere => 'Szyroki';

  @override
  String get incidentIntakeSeverityTitle => 'Wariable ciynżkości awaryjōw';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Id: V0';
  }

  @override
  String get incidentIntakeSubmitButton => 'ZAPROZYTAJĄ';

  @override
  String get incidentIntakeTitle => 'Po wypadku prziwyk';

  @override
  String get incidentIntakeTowedSubtitle => 'Czy jakiś ôtok dostŏwŏł szkody, co wymagało, coby go wyciągać z miejsca zdarzyniŏ?';

  @override
  String get incidentIntakeTowedTitle => 'Pojazd wyciągany?';

  @override
  String get incidentIntakeWasInjured => 'Zraniōł sie?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus: V0__';
  }

  @override
  String get dvirPreTripClose => 'Blisko';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Ôpōmynki/noty ôd kierowcy (Wyborne)';

  @override
  String get dvirPreTripNoComments => 'Niy dodali sie żodnych uwag.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Powod:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Strōna: V0';
  }

  @override
  String get dvirPreTripSigCaptured => 'Podpis z powodzōnym zachycōnym.';

  @override
  String get dvirPreTripSigMissing => 'Brakuje podpisu.';

  @override
  String get dvirPreTripSignDefectWarning => 'Proszê podpisaæ na weryfika3ê naprawê poprzednich wad.';

  @override
  String get dvirPreTripStepSignOff => 'Przikrycie';

  @override
  String get dvirPreTripStepSubmit => 'Przidŏwŏ';

  @override
  String get dvirPreTripStepVerify => 'Przekōnij';

  @override
  String get dvirPreTripTapNext => 'Prosze kliknij NAJDALNE, coby kontynuować.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Jeździec je bez użycio';

  @override
  String get dvirPreTripVehicleReady => 'Pojazd je gotowy do roboty';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Zweryfikowany status naprawy:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Zweryfikuj, iże wszyske zgłoszōne wady sōm naprawiōne, ôznaczajōnc skrzynia kole kożdego wady.';

  @override
  String get dvirPreTripYourComments => 'Twoje ôpowiedzi:';

  @override
  String get countryPickerNoCountries => 'Żŏdnych państw niy stŏwŏ';

  @override
  String get countryPickerSearchHint => 'Szukać po miana kraju, kodu abo kodu...';

  @override
  String get countryPickerTitle => 'Wybierz Kraj';

  @override
  String get mapDefaultStop => 'Przestańcie';

  @override
  String get mapEndLocation => 'Ôkryślōne ôbiekty';

  @override
  String get mapStartLocation => 'Poczōntek Lokalizacyjŏ';

  @override
  String get stopsNoChangesToUndo => 'Niy ma możliwości ôdwołanio zmian.';

  @override
  String get stopsNoStopsAvailable => 'Niy ma dostympnych sztrajfōw.';

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
