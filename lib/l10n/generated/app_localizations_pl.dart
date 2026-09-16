import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appInfoBuild => 'Numer kompilacji';

  @override
  String get appInfoDevice => 'Model urządzenia';

  @override
  String get appInfoOS => 'Wersja systemu operacyjnego';

  @override
  String get appInfoPackage => 'Pakiet';

  @override
  String get appInfoTitle => 'Informacje o aplikacji';

  @override
  String get appInfoVersion => 'Wersja aplikacji';

  @override
  String get appTitleSchoolDiary => 'Tracker SD';

  @override
  String get childrenActionGuardians => 'Opiekunowie';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Upoważnieni opiekunowie dla $name';
  }

  @override
  String get childrenNoGuardians => 'Brak zarejestrowanych upoważnionych opiekunów dla tego dziecka.';

  @override
  String get childrenStatusDropped => 'Wysiadł';

  @override
  String get childrenStatusPending => 'Oczekujące';

  @override
  String get childrenStatusPicked => 'Wsiadł';

  @override
  String childrenTitle(Object routeName) {
    return 'Dzieci - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NIEOBECNY / NIE W AUTOBUSIE ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Ewakuowany';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Ewakuowano: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Brak nieobecnych uczniów.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Brak oznaczonych uczniów w autobusie.';

  @override
  String get drillChecklistNotOnBus => 'NIE W AUTOBUSIE';

  @override
  String get drillChecklistOnBusNotEvacuated => 'W AUTOBUSIE - NIE EWAKUOWANY';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'W AUTOBUSIE ($count)';
  }

  @override
  String get drillChecklistProceed => 'PRZEJDŹ DO ZBIERANIA DOWODÓW';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Trasa (na żywo): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista kontrolna próbnej ewakuacji';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Brakuje $count ucznia(ów)!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Czy na pewno chcesz przesłać ten dziennik ewakuacji? Tej akcji nie można cofnąć.';

  @override
  String get drillEvidenceConfirmSubmission => 'Potwierdź przesłanie próbnej ewakuacji';

  @override
  String get drillEvidenceDriverNotesHint => 'Opisz przebieg ewakuacji próbnej, zachowanie uczniów, użyte drogi wyjścia i wszelkie zaobserwowane wyjątki...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notatki kierowcy (minimum 10 znaków):';

  @override
  String get drillEvidenceFailed => 'Przesyłanie nie powiodło się';

  @override
  String get drillEvidenceMandatoryWarning => 'Do przesłania próbnej ewakuacji wymagane jest co najmniej 1 zdjęcie lub nagranie wideo.';

  @override
  String get drillEvidenceRecordVideo => 'Nagraj wideo';

  @override
  String get drillEvidenceRetrySubmission => 'PONÓW PRZESYŁANIE';

  @override
  String get drillEvidenceReturnToDashboard => 'WRÓĆ DO KOKPITU';

  @override
  String get drillEvidenceSubmitButton => 'PRZEŚLIJ DZIENNIK PRÓBNEJ EWAKUACJI';

  @override
  String get drillEvidenceSubmitting => 'Przesyłanie dziennika próbnej ewakuacji...';

  @override
  String get drillEvidenceSuccess => 'Przesyłanie zakończone sukcesem!';

  @override
  String get drillEvidenceSuccessMessage => 'Dziennik próbnej ewakuacji został pomyślnie przesłany i oczekuje na zatwierdzenie.';

  @override
  String get drillEvidenceTakePhoto => 'Zrób zdjęcie';

  @override
  String get drillEvidenceTitle => 'Obowiązkowe dowody próbnej ewakuacji';

  @override
  String get drillEvidenceUploading => 'Przesyłanie dowodów i danych listy kontrolnej';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Próbna ewakuacja: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Sprawdź obecność';

  @override
  String get drillRosterNoStudents => 'Brak uczniów zarejestrowanych na tej trasie.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Obecni: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PRZEJDŹ DO LISTY KONTROLNEJ EWAKUACJI PRÓBNEJ';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Trasa: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Miejsce: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Zaznacz wszystko';

  @override
  String get drillSummaryAdminNotesTitle => 'Notatki administratora';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Zatwierdzono: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Data zatwierdzenia';

  @override
  String get drillSummaryBackToDrills => 'Wróć do próbnych ewakuacji';

  @override
  String get drillSummaryBusNumber => 'Numer autobusu';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Przeprowadzone przez: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Szczegóły próbnej ewakuacji';

  @override
  String get drillSummaryDriverNotesTitle => 'Notatki kierowcy';

  @override
  String get drillSummaryDuration => 'Czas trwania';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sek';
  }

  @override
  String get drillSummaryEndTime => 'Czas zakończenia';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Ewakuowano: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Ewakuowano o $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Załączniki z dowodami multimedialnymi';

  @override
  String get drillSummaryGps => 'Współrzędne GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Szer: $lat, Dł: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nie udało się załadować podsumowania próbnej ewakuacji dla ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Nie znaleziono danych o próbnej ewakuacji.';

  @override
  String get drillSummaryNotOnBus => 'Nie w autobusie';

  @override
  String get drillSummaryOnBusNotEvacuated => 'W AUTOBUSIE - NIE EWAKUOWANY';

  @override
  String get drillSummaryPhotoEvidence => 'Dowody fotograficzne';

  @override
  String get drillSummaryRouteId => 'ID trasy';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Miejsce: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Czas rozpoczęcia';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Dziennik ewakuacji uczniów';

  @override
  String drillSummaryTitle(Object id) {
    return 'Podsumowanie próbnej ewakuacji (#$id)';
  }

  @override
  String get drillSummaryType => 'Typ próbnej ewakuacji';

  @override
  String get drillSummaryVideoEvidence => 'Dowody wideo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Wybierz klasyfikację próbnej ewakuacji:';

  @override
  String get drillTypeCustomHint => 'Wprowadź niestandardowy typ próbnej ewakuacji...';

  @override
  String get drillTypeInvalidState => 'Nieprawidłowy stan pojazdu lub trasy.';

  @override
  String get drillTypeNameBusFire => 'Pożar autobusu';

  @override
  String get drillTypeNameDangerZone => 'Strefa zagrożenia';

  @override
  String get drillTypeNameDriverIncapacitation => 'Niezdolność kierowcy do prowadzenia pojazdu';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientacja sprzętu';

  @override
  String get drillTypeNameFrontDoor => 'Przednie drzwi';

  @override
  String get drillTypeNameOthers => 'Inne';

  @override
  String get drillTypeNameRearDoor => 'Tylne drzwi';

  @override
  String get drillTypeNameSideOrRoof => 'Drzwi boczne lub dach';

  @override
  String get drillTypeNameSplit => 'Podział';

  @override
  String get drillTypeNoRouteSelected => 'Nie wybrano trasy';

  @override
  String get drillTypePreparation => 'PRZYGOTOWANIE DO EWAKUACJI PRÓBNEJ';

  @override
  String get drillTypeProceed => 'PRZEJDŹ DO LISTY UCZNIÓW';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Trasa: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Wybierz trasę:';

  @override
  String get drillTypeSpecifyCustom => 'Określ opis typu próbnej ewakuacji:';

  @override
  String get drillTypeTitle => 'Wybierz typ próbnej ewakuacji';

  @override
  String get drillTypeWarning => 'Upewnij się, że pojazd jest bezpiecznie zaparkowany przed rozpoczęciem ewakuacji.';

  @override
  String get drillsAssignedVehicle => 'Przypisany pojazd';

  @override
  String get drillsChecking => 'Sprawdzanie...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Próbna ewakuacja #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Brak przypisanego autobusu';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Brak zarejestrowanych próbnych ewakuacji dla autobusu $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Brak dostępnych tras, aby rozpocząć próbną ewakuację.';

  @override
  String get drillsShowSummary => 'Pokaż podsumowanie';

  @override
  String get drillsStartDrill => 'Rozpocznij próbną ewakuację';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Przeprowadzono: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Próbne ewakuacje';

  @override
  String get drillsVehicleOutOfService => 'Pojazd wycofany z eksploatacji';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Pojazd jest obecnie wycofany z eksploatacji i nie może być użyty do próbnych ewakuacji.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'PRAWO JAZDY';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'IMIĘ I NAZWISKO: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'NR: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasażer';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobus szkolny';

  @override
  String get driverDetailsEndorsementsTitle => 'Posiadane uprawnienia';

  @override
  String get driverDetailsExpiryDateLabel => 'Data ważności';

  @override
  String get driverDetailsHolderSignature => 'PODPIS POSIADACZA';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data wydania';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument prawa jazdy';

  @override
  String get driverDetailsLicenseNoLabel => 'Nr prawa jazdy';

  @override
  String get driverDetailsLicenseTitle => 'Szczegóły prawa jazdy';

  @override
  String get driverDetailsLicenseTypeLabel => 'Typ prawa jazdy';

  @override
  String get driverDetailsOfficialSeal => 'PIECZĘĆ URZĘDOWA';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLASA: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DATA UR.: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'UPRAWNIENIA: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'WAŻNE DO: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'NR PR.: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'IM.: $name';
  }

  @override
  String get driverDetailsTapToView => 'Stuknij, aby wyświetlić dokument prawa jazdy';

  @override
  String get driverDetailsTitle => 'Szczegóły kierowcy';

  @override
  String get dvirCategoryBusSafetySystems => 'Systemy bezpieczeństwa autobusu';

  @override
  String get dvirCategoryCouplingDevices => 'Urządzenia sprzęgające';

  @override
  String get dvirCategoryEmergencyEquipment => 'Wyposażenie awaryjne';

  @override
  String get dvirCategoryHorn => 'Klakson';

  @override
  String get dvirCategoryLightingReflectors => 'Urządzenia oświetleniowe i odblaskowe';

  @override
  String get dvirCategoryMirrors => 'Lusterka wsteczne';

  @override
  String get dvirCategoryParkingBrake => 'Hamulec postojowy';

  @override
  String get dvirCategoryPassengerSeating => 'Siedzenia pasażerów i zabezpieczenia';

  @override
  String get dvirCategoryServiceBrakes => 'Hamulce robocze';

  @override
  String get dvirCategorySteeringMechanism => 'Układ kierowniczy';

  @override
  String get dvirCategoryTires => 'Opony';

  @override
  String get dvirCategoryWheelsRims => 'Koła i felgi';

  @override
  String get dvirCategoryWipers => 'Wycieraczki przedniej szyby';

  @override
  String get dvirPostTripCapturePhoto => 'ZRÓB ZDJĘCIE USTERKI';

  @override
  String get dvirPostTripComplianceTitle => 'CERTYFIKAT ZGODNOŚCI';

  @override
  String get dvirPostTripDefectButton => 'USTERKA';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Zgłaszanie usterki bez zdjęcia';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Ostrzeżenie: Zgłaszasz usterkę w strefach bezpieczeństwa ($zones) bez dołączenia zdjęcia. Czy na pewno chcesz przesłać zgłoszenie?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Kontrola: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Wprowadź szczegóły problemu z bezpieczeństwem...';

  @override
  String get dvirPostTripNotesLabel => 'NOTATKI (OBOWIĄZKOWE W PRZYPADKU USTERKI) I ZDJĘCIE';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Wybierz USTERKA, aby wprowadzić szczegóły problemu...';

  @override
  String get dvirPostTripOdometerHeader => 'Obecny stan licznika przebiegu';

  @override
  String get dvirPostTripOdometerInstructions => 'Wprowadź przebieg dokładnie tak, jak jest wyświetlany na desce rozdzielczej autobusu:';

  @override
  String get dvirPostTripOdometerLabel => 'Licznik (mile/km)';

  @override
  String get dvirPostTripOdometerTitle => 'WSPÓŁCZYNNIK CZASU PRACY POJAZDU';

  @override
  String get dvirPostTripOdometerWarning => 'Przed kontynuowaniem wprowadź stan licznika przebiegu.';

  @override
  String get dvirPostTripPassButton => 'SPRAWNE';

  @override
  String get dvirPostTripPhotoAttached => 'Pomyślnie załączono zdjęcie.';

  @override
  String get dvirPostTripProgressLabel => 'Postęp kontroli';

  @override
  String get dvirPostTripSignatureCaptured => 'Podpis został zarejestrowany.';

  @override
  String get dvirPostTripSignatureCert => 'Zaświadczam, że ten raport z przeglądu pojazdu został wypełniony zgodnie z przepisami FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Weryfikacja podpisu kierowcy';

  @override
  String get dvirPostTripSubmitButton => 'PRZEŚLIJ KONTROLĘ';

  @override
  String get dvirPostTripSubmitSuccess => 'Pomyślnie przesłano eDVIR.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'STREFA $current Z $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Strefy';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Oświadczam, że zapoznałem się z ostatnim przesłanym raportem usterek i sprawdziłem naprawy (jeśli wystąpiły) oraz stwierdzam, że autobus jest bezpieczny w eksploatacji.';

  @override
  String get dvirPreTripActiveMessage => 'Ten pojazd jest aktywny i nie ma otwartych usterek. Jest sprawdzony i bezpieczny w eksploatacji.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktywna trasa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'WYMAGANA UWAGA: ZAREJESTROWANO USTERKI Z POPRZEDNIEGO DNIA';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numer autobusu: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'KONTROLA GOTOWOŚCI POJAZDU DO TRASY';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nie udało się złożyć podpisu: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Brak zarejestrowanych wcześniejszych usterek';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Podczas poprzedniej kontroli pojazdu po zmianie nie zgłoszono żadnych usterek.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nie są wymagane żadne naprawy do bezpiecznej eksploatacji.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ten pojazd jest wycofany z eksploatacji w celu naprawy/konserwacji. Problemy z bezpieczeństwem muszą zostać rozwiązane przez personel warsztatu przed wysłaniem w trasę.';

  @override
  String get dvirPreTripOutofServiceButton => 'POJAZD WYCOFANY Z EKSPLOATACJI';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Powód: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (NAPRAWIONE)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ZGŁOŚ NOWE USTERKI';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Zgłaszanie nowych usterek jest wyłączone podczas napraw.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'ROZWIĄZANIE ADMINISTRATORA DS. TRANSPORTU';

  @override
  String get dvirPreTripReturnToHomeButton => 'WRÓĆ DO STRONY GŁÓWNEJ';

  @override
  String get dvirPreTripSignOffTitle => 'ZŁÓŻ PODPIS, ABY PRZEJŚĆ DO KONTROLI';

  @override
  String get dvirPreTripSignedSuccess => 'Pomyślnie podpisano weryfikację. Kontrola przed trasą odblokowana.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'PRZEŚLIJ WERYFIKACJĘ';

  @override
  String get dvirPreTripTitle => 'Weryfikacja przed trasą';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status pojazdu: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Narysuj podpis';

  @override
  String get dvirSigPreviewLabel => 'Podgląd zarejestrowanego podpisu:';

  @override
  String get dvirSigRedraw => 'NARYSUJ PONOWNIE';

  @override
  String get dvirSigSave => 'ZAPISZ PODPIS';

  @override
  String get dvirSigTapToDraw => 'STUKNIJ, ABY NARYSOWAĆ PODPIS (OBOWIĄZKOWE)';

  @override
  String get dvirSigWatermark => 'Podpisz pionowo (z dołu do góry)';

  @override
  String get forgotPasswordCancel => 'Anuluj';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Podaj prawidłowy adres e-mail';

  @override
  String get forgotPasswordSend => 'Wyślij';

  @override
  String get forgotPasswordSuccess => 'Jeśli taki e-mail istnieje, wysłano link do resetowania hasła.';

  @override
  String get genericBack => 'WSTECZ';

  @override
  String get genericCancel => 'Anuluj';

  @override
  String get genericClear => 'WYCZYŚĆ';

  @override
  String get genericClose => 'Zamknij';

  @override
  String get genericConfirm => 'Potwierdź';

  @override
  String get genericEdit => 'Edytuj';

  @override
  String get genericError => 'Coś poszło nie tak';

  @override
  String get genericLoading => 'Ładowanie...';

  @override
  String get genericNext => 'DALEJ';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Spróbuj ponownie';

  @override
  String get genericSuccess => 'Sukces';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Wyjazd zablokowany';

  @override
  String get homeDispatchBlockedTitle => 'Wyjazd zablokowany';

  @override
  String get homeErrorNoRoutesPreTrip => 'Brak dostępnych tras, aby wykonać kontrolę przed trasą.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nie udało się rozpocząć trasy na serwerze: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Cześć, $name';
  }

  @override
  String get homeLogout => 'Wyloguj się';

  @override
  String get homeMenuAppInfo => 'Informacje o aplikacji';

  @override
  String get homeMenuDrill => 'Próbna ewakuacja';

  @override
  String get homeMenuDriverDetails => 'Szczegóły kierowcy';

  @override
  String get homeMenuLanguage => 'Język';

  @override
  String get homeMenuPreTrip => 'Kontrola przed trasą';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Brak dostępnych tras';

  @override
  String get homeReviewVerifyPreTrip => 'Przejrzyj i zweryfikuj pojazd';

  @override
  String get homeSearchHint => 'Szukaj tras';

  @override
  String get homeStart => 'Rozpocznij';

  @override
  String get homeTitle => 'Strona główna';

  @override
  String get homeVehicleOutOfServiceDefault => 'Pojazd jest obecnie WYCOFANY Z EKSPLOATACJI.';

  @override
  String get homeVehicleReady => 'Pojazd jest gotowy i sprawdzony do bezpiecznej eksploatacji.';

  @override
  String get languageTitle => 'Język';

  @override
  String get loginButton => 'Zaloguj się';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail lub numer telefonu';

  @override
  String get loginErrorEnterPassword => 'Wprowadź hasło';

  @override
  String get loginErrorEnterUsername => 'Wprowadź nazwę użytkownika';

  @override
  String get loginErrorFailed => 'Logowanie nie powiodło się. Spróbuj ponownie.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Wprowadź prawidłowy adres e-mail lub numer telefonu';

  @override
  String get loginForgotPassword => 'Zapomniałeś hasła?';

  @override
  String get loginPasswordLabel => 'Hasło';

  @override
  String get mapChildrenTooltip => 'Dzieci i opiekunowie';

  @override
  String get mapConfirmMessage => 'Czy na pewno chcesz zakończyć trasę?';

  @override
  String get mapConfirmTitle => 'Potwierdź';

  @override
  String get mapCurrentPosition => 'Bieżąca pozycja';

  @override
  String get mapNo => 'Nie';

  @override
  String get mapReconnectMessage => 'Aktualizacja lokalizacji często zawodzi. Sprawdź połączenie z Internetem.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Zatrzymaj';

  @override
  String get mapStopping => 'Zatrzymywanie...';

  @override
  String get mapStopsTooltip => 'Przystanki';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Zaktualizowano $seconds s temu';
  }

  @override
  String get mapWaitingGps => 'Oczekiwanie na sygnał GPS...';

  @override
  String get mapYes => 'Tak';

  @override
  String get splashDriverApp => 'Aplikacja kierowcy';

  @override
  String get stopsActionUndo => 'Cofnij';

  @override
  String get stopsCancelledSuccess => 'Pomyślnie anulowano';

  @override
  String get stopsDefaultLabel => 'Przystanek';

  @override
  String get stopsGenericError => 'Coś poszło nie tak. Spróbuj ponownie.';

  @override
  String get stopsStatusComplete => 'zakończono';

  @override
  String get stopsStatusDone => 'gotowe';

  @override
  String stopsSubmitCount(Object count) {
    return 'Prześlij ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Pomyślnie przesłano';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Wybrano $selected · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Wysiadanie';

  @override
  String get stopsTypePick => 'Wsiadanie';

  @override
  String stopsUndoCount(Object count) {
    return 'Cofnij ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Cofnij wsiadanie/wysiadanie';

  @override
  String get tripConfirmCancel => 'Anuluj';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Do rozpoczęcia trasy wymagane jest zezwolenie na lokalizację.';

  @override
  String get homeMenuPostCrashReporting => 'Raport powypadkowy';

  @override
  String homeVehicleReason(Object reason) {
    return 'Powód: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Szer: $lat, Dł: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Szukaj lokalizacji (np. ulica Długa)';

  @override
  String get crashLocationPickerTitle => 'Wybierz lokalizację na mapie';

  @override
  String get crashLocationPickerTooltip => 'Potwierdź lokalizację';

  @override
  String get incidentDashboardDescription => 'Wybierz akcję, aby kontynuować zarządzanie incydentami lub przejrzeć poprzednie raporty.';

  @override
  String get incidentDashboardHeadline => 'Raportowanie incydentów powypadkowych';

  @override
  String get incidentDashboardLogNew => 'Zarejestruj nowy wypadek';

  @override
  String get incidentDashboardLogNewSubtitle => 'Rozpocznij nowy raport z wypadku krok po kroku';

  @override
  String get incidentDashboardTitle => 'Incydent powypadkowy';

  @override
  String get incidentDashboardViewHistory => 'Wyświetl historię';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Wyświetl poprzednie raporty z wypadków i ich status';

  @override
  String get incidentDetailsAdminLetter => 'Pismo do administracji';

  @override
  String get incidentDetailsAlcoholCountdown => 'Odliczanie testu na alkohol DOT (limit 2 godzin)';

  @override
  String get incidentDetailsBranchId => 'ID oddziału';

  @override
  String get incidentDetailsBusPlate => 'Numer rejestracyjny autobusu';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Wpływ mandatu: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Wystawiono mandat kierowcy';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Współrzędne: Szer. $lat, Dł. $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return 'Skopiowano $title do schowka!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Skopiuj do schowka';

  @override
  String get incidentDetailsCrashCitationInfo => 'Informacje o wypadku i mandacie';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data i czas: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raport DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raport stanowy DOE (opcjonalny)';

  @override
  String get incidentDetailsDriverNotes => 'Notatki kierowcy:';

  @override
  String get incidentDetailsDriverUserId => 'ID użytkownika kierowcy';

  @override
  String get incidentDetailsDrugCountdown => 'Odliczanie testu na narkotyki DOT (limit 8 godzin)';

  @override
  String get incidentDetailsFatalityOccurred => 'Wypadek śmiertelny';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incydent #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Obrażenia wymagające leczenia medycznego';

  @override
  String get incidentDetailsLawEnforcement => 'Służby porządkowe';

  @override
  String get incidentDetailsLoadFailed => 'Nie udało się załadować szczegółów.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokalizacja: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Załączniki multimedialne';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'Nie';

  @override
  String get incidentDetailsNoMediaAttachments => 'Brak załączonych zdjęć lub filmów.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Podczas incydentu nie zarejestrowano żadnych uczniów w autobusie.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generuj raporty z powiadomieniami i wysyłaj pisma z szablonów do przełożonych w okręgu lub administracji.';

  @override
  String get incidentDetailsNotificationsTitle => 'Powiadomienia o przekazaniu';

  @override
  String get incidentDetailsOfficer => 'Dane funkcjonariusza';

  @override
  String get incidentDetailsPoliceReport => 'Numer raportu policyjnego';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Wstępnie wypełnione pismo o przekazaniu:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Podstawa prawna:';

  @override
  String get incidentDetailsRouteId => 'ID trasy';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Powiadomienie administracji szkoły';

  @override
  String get incidentDetailsStatusPending => 'Oczekujące';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Szczegóły: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Ranny';

  @override
  String get incidentDetailsStudentNoInjury => 'Brak obrażeń';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Stopień: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Przetransportowany do: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Uczniowie w autobusie ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Wymagane testy powypadkowe DOT';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Szczegóły incydentu';

  @override
  String get incidentDetailsVehicleTowed => 'Pojazd odholowany';

  @override
  String get incidentDetailsYes => 'Tak';

  @override
  String get incidentHistoryEmpty => 'Brak zarejestrowanych incydentów dla tego pojazdu.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nie udało się pobrać logów: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Czas: $time Autobus: $busNumber Testy: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incydent #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Niewymagane';

  @override
  String get incidentHistoryTestingRequired => 'Wymagane';

  @override
  String get incidentHistoryTitle => 'Rejestr incydentów powypadkowych';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Dodaj kolejne zdjęcie';

  @override
  String get incidentIntakeBadgeNumberError => 'Wymagane';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numer odznaki*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numer autobusu: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Zrób zdjęcie miejsca wypadku';

  @override
  String get incidentIntakeCitationSubtitle => 'Czy kierowca autobusu szkolnego otrzymał mandat za wykroczenie drogowe?';

  @override
  String get incidentIntakeCitationTitle => 'Wystawiono mandat?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data i godzina wypadku*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Testy DOT NIE są wymagane';

  @override
  String get incidentIntakeDotTestingRequired => 'Wymagane testy DOT';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Kierowca: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Wprowadź wszelkie dodatkowe uwagi dotyczące kolizji...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notatki kierowcy z incydentu';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nie udało się załadować pasażerów trasy: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Dołącz dowody (zdjęcia) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Czy w wyniku tego wypadku doszło do jakichkolwiek ofiar śmiertelnych?';

  @override
  String get incidentIntakeFatalityTitle => 'Wypadek śmiertelny?';

  @override
  String get incidentIntakeGpsLabel => 'Współrzędne GPS*';

  @override
  String get incidentIntakeHistoryTooltip => 'Wyświetl historię';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Czy jakakolwiek osoba odniosła obrażenia fizyczne wymagające natychmiastowego leczenia medycznego poza miejscem zdarzenia?';

  @override
  String get incidentIntakeInjuriesTitle => 'Obrażenia wymagające leczenia medycznego?';

  @override
  String get incidentIntakeInjuryNotesError => 'Notatki o obrażeniach są obowiązkowe dla rannych uczniów';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notatki / szczegóły dotyczące obrażeń (obowiązkowe) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Stopień obrażeń *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Podaj służby porządkowe';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Służby porządkowe (np. policja drogowa)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Służby porządkowe i raport policyjny';

  @override
  String get incidentIntakeLocationDescError => 'Podaj opis lokalizacji';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis lokalizacji (np. Skrzyżowanie ulic) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Placówka medyczna do której przetransportowano';

  @override
  String get incidentIntakeNoMatchingStudents => 'Brak pasujących uczniów.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nie znaleziono uczniów.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Brak uczniów w autobusie, naciśnij DALEJ, aby kontynuować.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Brak uczniów zarejestrowanych na tę trasę.';

  @override
  String get incidentIntakeOfficerNameError => 'Podaj imię i nazwisko funkcjonariusza.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Imię i nazwisko funkcjonariusza*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Podaj numer raportu policyjnego';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numer raportu policyjnego *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Trasa: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacje o trasie i kierowcy';

  @override
  String get incidentIntakeSearchInjuredHint => 'Szukaj rannego dziecka...';

  @override
  String get incidentIntakeSearchStudentHint => 'Szukaj ucznia...';

  @override
  String get incidentIntakeSelectAll => 'Wybierz wszystkich uczniów';

  @override
  String get incidentIntakeSelectOnMap => 'Wybierz na mapie';

  @override
  String get incidentIntakeSeverityFatal => 'Śmiertelne';

  @override
  String get incidentIntakeSeverityMinor => 'Lekkie';

  @override
  String get incidentIntakeSeverityModerate => 'Średnie';

  @override
  String get incidentIntakeSeveritySevere => 'Ciężkie';

  @override
  String get incidentIntakeSeverityTitle => 'Zmienne określające stopień wypadku';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Prześlij raport';

  @override
  String get incidentIntakeTitle => 'Rejestracja incydentu powypadkowego';

  @override
  String get incidentIntakeTowedSubtitle => 'Czy jakikolwiek pojazd uległ uszkodzeniom uniemożliwiającym jazdę i wymagał odholowania z miejsca zdarzenia?';

  @override
  String get incidentIntakeTowedTitle => 'Pojazd odholowany?';

  @override
  String get incidentIntakeWasInjured => 'Czy odniósł obrażenia?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Zamknij';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Komentarze / notatki kierowcy (opcjonalne)';

  @override
  String get dvirPreTripNoComments => 'Nie dodano żadnych komentarzy.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Powód: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Trasa: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Pomyślnie zarejestrowano podpis.';

  @override
  String get dvirPreTripSigMissing => 'Brakuje podpisu.';

  @override
  String get dvirPreTripSignDefectWarning => 'Złóż podpis, aby zweryfikować naprawę poprzednich usterek.';

  @override
  String get dvirPreTripStepSignOff => 'Podpis';

  @override
  String get dvirPreTripStepSubmit => 'Prześlij';

  @override
  String get dvirPreTripStepVerify => 'Zweryfikuj';

  @override
  String get dvirPreTripTapNext => 'Stuknij DALEJ, aby kontynuować.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Pojazd wycofany z eksploatacji';

  @override
  String get dvirPreTripVehicleReady => 'Pojazd jest gotowy do użytku';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Zweryfikowany status naprawy:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Zweryfikuj, czy wszystkie zgłoszone usterki zostały naprawione, zaznaczając pole wyboru przy każdej z nich.';

  @override
  String get dvirPreTripYourComments => 'Twoje komentarze:';

  @override
  String get countryPickerNoCountries => 'Nie znaleziono państw';

  @override
  String get countryPickerSearchHint => 'Szukaj według nazwy państwa, kodu lub numeru kierunkowego...';

  @override
  String get countryPickerTitle => 'Wybierz kraj';

  @override
  String get mapDefaultStop => 'Przystanek';

  @override
  String get mapEndLocation => 'Lokalizacja końcowa';

  @override
  String get mapStartLocation => 'Lokalizacja początkowa';

  @override
  String get stopsNoChangesToUndo => 'Brak zmian do cofnięcia.';

  @override
  String get stopsNoStopsAvailable => 'Brak dostępnych przystanków.';

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
