import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appInfoBuild => 'Vytvořte číslo';

  @override
  String get appInfoDevice => 'Model zařízení';

  @override
  String get appInfoOS => 'Verze systému OS';

  @override
  String get appInfoPackage => 'Balíček';

  @override
  String get appInfoTitle => 'Informace o aplikaci';

  @override
  String get appInfoVersion => 'Verze aplikace';

  @override
  String get appTitleSchoolDiary => 'SD sledovatel';

  @override
  String get childrenActionGuardians => 'Strážci';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Povolení opatrovníci pro $name';
  }

  @override
  String get childrenNoGuardians => 'Žádné oprávněné opatrovníky pro toto dítě.';

  @override
  String get childrenStatusDropped => 'Odpadl';

  @override
  String get childrenStatusPending => 'Čeká na to';

  @override
  String get childrenStatusPicked => 'Vybrat';

  @override
  String childrenTitle(Object routeName) {
    return 'Děti  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ZNESTAJENÍ / NESTAJENÍ V BUSU ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuované';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuované: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Žádné nepřítomné studenty.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Žádní studenti nejsou označeni v autobuse.';

  @override
  String get drillChecklistNotOnBus => 'Ne na autobusech';

  @override
  String get drillChecklistOnBusNotEvacuated => 'V autobuse  NEDEVAKUJEN';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Na BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Zobrazení důkazů';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Cesta (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Kontrolní seznam evakuačních cvičení';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Zůstalý student!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Jste si jistí, že chcete podat tento průkaz?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potvrďte předložení cvičení';

  @override
  String get drillEvidenceDriverNotesHint => 'Popis cvičení, behavior studentů, použité výstupní cesty a případné pozorované výjimky...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Poznámky řidiče (minimum 10 znaků):';

  @override
  String get drillEvidenceFailed => 'Neúspěch';

  @override
  String get drillEvidenceMandatoryWarning => 'Pro předložení cvičení je povinné alespoň jedno zdjęcie nebo video důkaz.';

  @override
  String get drillEvidenceRecordVideo => 'Zapíšejte video';

  @override
  String get drillEvidenceRetrySubmission => 'VYVĚDNÍ';

  @override
  String get drillEvidenceReturnToDashboard => 'VRAT k palubě';

  @override
  String get drillEvidenceSubmitButton => 'VYVĚDÍ DROIL LOG';

  @override
  String get drillEvidenceSubmitting => 'Přidávám průkaz...';

  @override
  String get drillEvidenceSuccess => 'Podniknutí úspěšné!';

  @override
  String get drillEvidenceSuccessMessage => 'Úspěšně byl nahrán deník evakuování a čeká na schválení.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografovat';

  @override
  String get drillEvidenceTitle => 'Povinná zkouška';

  @override
  String get drillEvidenceUploading => 'Složení důkazů a údajů kontrolního seznamu';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vyrážka:';
  }

  @override
  String get drillRosterMarkAttendance => 'Přítomnost Marka';

  @override
  String get drillRosterNoStudents => 'Na této trase se žádní studenti nezarejestrují.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Přítomnost: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCED TO DROW CHECKLIST';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedadlo:';
  }

  @override
  String get drillRosterSelectAll => 'Vyberte všechny';

  @override
  String get drillSummaryAdminNotesTitle => 'Poznámky správce';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Schváleno:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Souhlas s';

  @override
  String get drillSummaryBackToDrills => 'Zpět k cvičení';

  @override
  String get drillSummaryBusNumber => 'Číslo autobusu';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Vedení: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detaily vrtání';

  @override
  String get drillSummaryDriverNotesTitle => 'Poznámky řidiče';

  @override
  String get drillSummaryDuration => 'Délka trvání';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'V1 - min';
  }

  @override
  String get drillSummaryEndTime => 'Čas konce';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuované: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuované';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Důkazy o připojení médií';

  @override
  String get drillSummaryGps => 'GPS souřadnice';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'LNG: V1';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nedokázal se načítat souhrn vrtání ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Žádné údaje z vrtání nebyly nalezeny.';

  @override
  String get drillSummaryNotOnBus => 'Ne v autobusech';

  @override
  String get drillSummaryOnBusNotEvacuated => 'V autobusech - NEEVAKUJEN';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografické důkazy';

  @override
  String get drillSummaryRouteId => 'Identifikace trasy';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedadlo:';
  }

  @override
  String get drillSummaryStartTime => 'Čas začátku';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Úvodní záznam o evakuaci studentů';

  @override
  String drillSummaryTitle(Object id) {
    return 'Závodní závod (#$id)';
  }

  @override
  String get drillSummaryType => 'Typ vrtání';

  @override
  String get drillSummaryVideoEvidence => 'Video důkaz';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus';
  }

  @override
  String get drillTypeClassification => 'Vyberte klasifikaci vrtů:';

  @override
  String get drillTypeCustomHint => 'Vstupte do speciálního typu evakuačního cvičení...';

  @override
  String get drillTypeInvalidState => 'Neplatný stav vozidla nebo trasy.';

  @override
  String get drillTypeNameBusFire => 'Požár v autobusech';

  @override
  String get drillTypeNameDangerZone => 'Zóna nebezpečí';

  @override
  String get drillTypeNameDriverIncapacitation => 'Neschopnost řidiče';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientace zařízení';

  @override
  String get drillTypeNameFrontDoor => 'Přední dveře';

  @override
  String get drillTypeNameOthers => 'Ostatní';

  @override
  String get drillTypeNameRearDoor => 'Zadní dveře';

  @override
  String get drillTypeNameSideOrRoof => 'Strana nebo střecha';

  @override
  String get drillTypeNameSplit => 'Rozčlenění';

  @override
  String get drillTypeNoRouteSelected => 'Žádná cesta nevybrána';

  @override
  String get drillTypePreparation => 'Příprava na vrtání';

  @override
  String get drillTypeProceed => 'PROCED TO STUDENT ROSTER';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get drillTypeSelectRoute => 'Vyberte cestu:';

  @override
  String get drillTypeSpecifyCustom => 'Uveďte popis typu vrtání:';

  @override
  String get drillTypeTitle => 'Vyberte typ vrtání';

  @override
  String get drillTypeWarning => 'Před zahájením výkonu zajistěte, aby bylo vozidlo bezpečně zaparkováno.';

  @override
  String get drillsAssignedVehicle => 'Přidělené vozidlo';

  @override
  String get drillsChecking => 'Zkontroluji...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vyrovnání #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Žádný autobus nepřidělen';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Žádné cvičení zaznamenané pro autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Žádné cesty k zahájení cvičení nejsou k dispozici.';

  @override
  String get drillsShowSummary => 'Zpráva o shrnutí';

  @override
  String get drillsStartDrill => 'Začněte vrtání';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Vedené: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuační cvičení';

  @override
  String get drillsVehicleOutOfService => 'Vozidlo mimo provoz';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Toto vozidlo je v současné době mimo provoz a nemůže být použito pro cvičení.';

  @override
  String get driverDetailsCdlClassLabel => 'třída CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Řidičský průkaz';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Jméno:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Cestující';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Školní autobus';

  @override
  String get driverDetailsEndorsementsTitle => 'Podpory';

  @override
  String get driverDetailsExpiryDateLabel => 'Datum uplynutí platnosti';

  @override
  String get driverDetailsHolderSignature => 'Podpis držitelů';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikace:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datum vydání';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument licence';

  @override
  String get driverDetailsLicenseNoLabel => 'Licence č.';

  @override
  String get driverDetailsLicenseTitle => 'Podrobnosti o licenci';

  @override
  String get driverDetailsLicenseTypeLabel => 'Typ licence';

  @override
  String get driverDetailsOfficialSeal => 'Oficiální pečeť';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Věc:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'VZPĚD:';
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
  String get driverDetailsTapToView => 'Klikněte na zobrazení dokumentu DL';

  @override
  String get driverDetailsTitle => 'Podrobnosti o řidiči';

  @override
  String get dvirCategoryBusSafetySystems => 'Systémy bezpečnosti pro autobusy';

  @override
  String get dvirCategoryCouplingDevices => 'Přístroje pro spojování';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nádherné zařízení';

  @override
  String get dvirCategoryHorn => 'Růž';

  @override
  String get dvirCategoryLightingReflectors => 'Osvětlení a reflektory';

  @override
  String get dvirCategoryMirrors => 'Zpátky zrcadla';

  @override
  String get dvirCategoryParkingBrake => 'Parkování brzdy';

  @override
  String get dvirCategoryPassengerSeating => 'Sedadla a omezení pro cestující';

  @override
  String get dvirCategoryServiceBrakes => 'Služební brzdy';

  @override
  String get dvirCategorySteeringMechanism => 'Řešení';

  @override
  String get dvirCategoryTires => 'Pneumatiky';

  @override
  String get dvirCategoryWheelsRims => 'Kolesa a řepy';

  @override
  String get dvirCategoryWipers => 'Změrovací stroje pro přední sklo';

  @override
  String get dvirPostTripCapturePhoto => 'Fotografie';

  @override
  String get dvirPostTripComplianceTitle => 'SÚLNÍCÍ SÚLNÍ';

  @override
  String get dvirPostTripDefectButton => 'ZDÁHA';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Zprávy o chybě bez fotografie';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Varování: Vy hlásíte poruchu v bezpečnostních zónách ($zones) bez připojení fotografie.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekce: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Vložte podrobnosti o bezpečnostní záležitosti...';

  @override
  String get dvirPostTripNotesLabel => 'Poznámky (PŘÍMĚD O NEDVĚDNĚTNÉ) a SHOBÍ';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Vyberte Defect, abyste zadaly podrobnosti o bezpečnostních problémech...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktuální čtení odometru';

  @override
  String get dvirPostTripOdometerInstructions => 'Vložte údaje o kilometrovém rozmezí přesně tak, jak je zobrazeno na nástroji autobusu:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mile)';

  @override
  String get dvirPostTripOdometerTitle => 'VYHÁLÍČNÍ METRIK';

  @override
  String get dvirPostTripOdometerWarning => 'Před zahájením postupu zadávejte předběžné údaje odometru.';

  @override
  String get dvirPostTripPassButton => 'VYJÍ';

  @override
  String get dvirPostTripPhotoAttached => 'Fotka připojená úspěšně.';

  @override
  String get dvirPostTripProgressLabel => 'Pokrok kontroly';

  @override
  String get dvirPostTripSignatureCaptured => 'Podpis zachycen.';

  @override
  String get dvirPostTripSignatureCert => 'Potvrzuji, že tento průběh kontrolního seznamu vozidla byl dokončen v souladu s předpisy FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Ověření podpisů řidiče';

  @override
  String get dvirPostTripSubmitButton => 'Předseda inspekce';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR byla úspěšně předložena.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zóna $current ZONY $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zóny _BAR_';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Přiznávám, že jsem přezkoumal poslední předložený zpráva o chybách a ověřil opravy (je-li nějaké) a uvedl, že autobus je bezpečný pro provoz.';

  @override
  String get dvirPreTripActiveMessage => 'Toto vozidlo je aktivní a nemá žádné otevřené vady.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivní cesta: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ODPODÁNÍ: Zdeženy z předchozího dne';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Šetření:';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'ČEKOVÍ DISPATCH VEHIL';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Podpis selhal:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Žádné předchozí chyby zaznamenané';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Toto vozidlo bylo hlášeno čisté při předchozí inspekci po cestě.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Žádné opravy nepotřebujeme pro bezpečnou provoz.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Toto vozidlo je mimo provoz pro opravy/pomoci.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vozidla z provozu';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Důvod:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (OPRÁVENÉ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Zprávy o nových nedostatcích';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Při opravách je vyloučeno hlášení nových vad.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Důkazní rozhodnutí';

  @override
  String get dvirPreTripReturnToHomeButton => 'VRATEM do domova';

  @override
  String get dvirPreTripSignOffTitle => 'Připomínka na procházku';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikace byla úspěšně podepsána.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SÚBĚDNÍ ZPĚD';

  @override
  String get dvirPreTripTitle => 'Ověření před výletem';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status vozidla: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Vytáhněte podpis';

  @override
  String get dvirSigPreviewLabel => 'Získání předehledů:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'ZAŠTĚNÍ PŘÍMĚT';

  @override
  String get dvirSigTapToDraw => 'ZABRAHNÍ ZA ZA ZDÁLKA (PRAVEDNÁ)';

  @override
  String get dvirSigWatermark => 'Vzorné označení (od dolní až dolní)';

  @override
  String get forgotPasswordCancel => 'Zrušit';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Prosím, zadávejte platný e-mail';

  @override
  String get forgotPasswordSend => 'Posílejte';

  @override
  String get forgotPasswordSuccess => 'Pokud e-mail existuje, byl zaslán odkaz na reset.';

  @override
  String get genericBack => 'Vrátit se';

  @override
  String get genericCancel => 'Zrušit';

  @override
  String get genericClear => 'ČÁRNÉ';

  @override
  String get genericClose => 'V blízkosti';

  @override
  String get genericConfirm => 'Potvrďte';

  @override
  String get genericEdit => 'Vyměnit';

  @override
  String get genericError => 'Něco se pokazilo.';

  @override
  String get genericLoading => '- Nabíjení...';

  @override
  String get genericNext => 'NÁJSTE';

  @override
  String get genericOk => 'Dobře.';

  @override
  String get genericRetry => 'Zkuste znovu.';

  @override
  String get genericSuccess => 'Úspěch';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Posílání zablokováno';

  @override
  String get homeDispatchBlockedTitle => 'Posílání zablokováno';

  @override
  String get homeErrorNoRoutesPreTrip => 'Žádné trasy nejsou k dispozici pro provedení Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nevyšlo k spuštění cesty na serveru: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ahoj, V0__';
  }

  @override
  String get homeLogout => 'Úvod';

  @override
  String get homeMenuAppInfo => 'Informace o aplikaci';

  @override
  String get homeMenuDrill => 'Vytáčení';

  @override
  String get homeMenuDriverDetails => 'Podrobnosti o řidiči';

  @override
  String get homeMenuLanguage => 'Hovoření';

  @override
  String get homeMenuPreTrip => 'Předchozí inspekce';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Žádné dostupné trasy';

  @override
  String get homeReviewVerifyPreTrip => 'Přehled a ověření před výletem';

  @override
  String get homeSearchHint => 'Výsledky hledání';

  @override
  String get homeStart => 'Začínáme';

  @override
  String get homeTitle => 'Domů';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vozidlo je v současné době mimo provoz.';

  @override
  String get homeVehicleReady => 'Vozidlo je připravené a ověřeno pro bezpečné provozování.';

  @override
  String get languageTitle => 'Hovoření';

  @override
  String get loginButton => 'Vstup';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail nebo telefonní číslo';

  @override
  String get loginErrorEnterPassword => 'Prosím zadávejte heslo';

  @override
  String get loginErrorEnterUsername => 'Prosím zadávejte uživatelské jméno';

  @override
  String get loginErrorFailed => 'Přijíždění selhalo, prosím, zkus znovu.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Prosím, zadávejte platný e-mail nebo telefonní číslo';

  @override
  String get loginForgotPassword => 'Zapomněl jsi heslo?';

  @override
  String get loginPasswordLabel => 'Heslo';

  @override
  String get mapChildrenTooltip => 'Děti a opatrovníci';

  @override
  String get mapConfirmMessage => 'Opravdu chceš ukončit cestu?';

  @override
  String get mapConfirmTitle => 'Potvrďte';

  @override
  String get mapCurrentPosition => 'Současná pozice';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'Zpoždění místa se často neovlivňuje, prosím zkontrolujte internet.';

  @override
  String get mapReconnectTitle => 'Sledovatel';

  @override
  String get mapStop => 'Zastavte se.';

  @override
  String get mapStopping => 'Zastavte...';

  @override
  String get mapStopsTooltip => 'Zastavovat';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aktualizován před pár lety';
  }

  @override
  String get mapWaitingGps => 'Čekám na GPS...';

  @override
  String get mapYes => 'Ano, ano.';

  @override
  String get splashDriverApp => 'Aplikace řidiče';

  @override
  String get stopsActionUndo => 'Zrušení';

  @override
  String get stopsCancelledSuccess => 'Úspěšně zrušen';

  @override
  String get stopsDefaultLabel => 'Zastavte se.';

  @override
  String get stopsGenericError => 'Něco se pokazilo, zkus to znovu.';

  @override
  String get stopsStatusComplete => 'kompletní';

  @override
  String get stopsStatusDone => 'Vyrovnaný';

  @override
  String stopsSubmitCount(Object count) {
    return 'Předložit ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Úspěšně předložené';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Vybrané ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___ ___';
  }

  @override
  String get stopsTypeDrop => 'Odhoďte.';

  @override
  String get stopsTypePick => 'Vyberte';

  @override
  String stopsUndoCount(Object count) {
    return 'Odstranění ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Odstranění výběru/klesání';

  @override
  String get tripConfirmCancel => 'Zrušit';

  @override
  String get tripConfirmOk => 'Dobře.';

  @override
  String get tripConfirmTitle => 'Sledovatel';

  @override
  String get tripErrorLocationRequired => 'Na začátek cesty je nutné povolení k umístění.';

  @override
  String get homeMenuPostCrashReporting => 'Zprávy o následném krachu';

  @override
  String homeVehicleReason(Object reason) {
    return 'Důvod:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'LNG: V1';
  }

  @override
  String get crashLocationPickerSearchHint => 'Místo vyhledávání (např. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Vyberte místo na mapě';

  @override
  String get crashLocationPickerTooltip => 'Potvrďte místo';

  @override
  String get incidentDashboardDescription => 'Vyberte akci k pokračování v řízení incidentů nebo prohlížet minulé zprávy.';

  @override
  String get incidentDashboardHeadline => 'Zprávy o incidentích po havárii';

  @override
  String get incidentDashboardLogNew => 'Log Nový nehod';

  @override
  String get incidentDashboardLogNewSubtitle => 'Začněte nový krok za krokem zpráva o havárii';

  @override
  String get incidentDashboardTitle => 'Případ po havárii';

  @override
  String get incidentDashboardViewHistory => 'Pozor na dějiny';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Zobrazit předchozí zprávy o havárii a stav';

  @override
  String get incidentDetailsAdminLetter => 'Dopis správce';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Odpočet zkoušek alkoholu (2-hodinový limit)';

  @override
  String get incidentDetailsBranchId => 'Identifikace pobočky';

  @override
  String get incidentDetailsBusPlate => 'Plaka licence pro autobusy';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citování Účinek: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citát vydaný řidiči';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordináty: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return 'V0__ kopírované na desku!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopírovat na plochu';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum a čas: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Zpráva DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Zpráva státního ministerstva zahraničí (nepovinná)';

  @override
  String get incidentDetailsDriverNotes => 'Poznámky řidiče:';

  @override
  String get incidentDetailsDriverUserId => 'ID uživatele řidiče';

  @override
  String get incidentDetailsDrugCountdown => 'Odpočet testu na léky DOT (omezování 8 hodin)';

  @override
  String get incidentDetailsFatalityOccurred => 'Událost smrtící';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Poškození vyžadující lékařskou léčbu';

  @override
  String get incidentDetailsLawEnforcement => 'Úřad pro činnost v trestním řízení';

  @override
  String get incidentDetailsLoadFailed => 'Nedokázal jsem přeložit detaily.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Místo: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Přílohy k médiím';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Ne, ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Žádné fotografie ani videa.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Žádní studenti nebyli označeni na palubě během incidentu.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generovat zprávy o oznámení a zasílat vzorové dopisy do okresních dozorců nebo správ.';

  @override
  String get incidentDetailsNotificationsTitle => 'Oznámení o přenosu';

  @override
  String get incidentDetailsOfficer => 'Úředníci';

  @override
  String get incidentDetailsPoliceReport => 'Policie číslo hlášení';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Předem vyplněný přenosný dopis:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulační základ:';

  @override
  String get incidentDetailsRouteId => 'Identifikace trasy';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Oznámení správce školy';

  @override
  String get incidentDetailsStatusPending => 'Čeká na to';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Podrobnosti:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Zraněný';

  @override
  String get incidentDetailsStudentNoInjury => 'Žádné zranění';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'závažnost:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Přepravováno do:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenti na palubě ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Nevyžaduje se testování po havárii';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Podrobnosti o události';

  @override
  String get incidentDetailsVehicleTowed => 'Vězilo vlezené';

  @override
  String get incidentDetailsYes => 'Ano, ano.';

  @override
  String get incidentHistoryEmpty => 'Žádné záznamy incidentů nejsou zaznamenány.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nedokázal získat záznamy: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Čas: V0__ Autobus: V1__ Testování: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NESOŽEDNÉ';

  @override
  String get incidentHistoryTestingRequired => 'VYŽALENÍ';

  @override
  String get incidentHistoryTitle => 'Zápis o událostech po havárii';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Přidejte další fotku';

  @override
  String get incidentIntakeBadgeNumberError => 'Požadavky';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Číslo značky *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Šetření:';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografie z akce';

  @override
  String get incidentIntakeCitationSubtitle => 'Byl řidiči školního autobusu vydán citát pro porušení pravidel dopravy?';

  @override
  String get incidentIntakeCitationTitle => 'Vydařeno citát?';

  @override
  String get incidentIntakeDateTimeLabel => 'Datum a čas havárii *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NESOUŽEDNÉ zkoušky';

  @override
  String get incidentIntakeDotTestingRequired => 'K DETESTINGu je zapotřebí';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Řidič:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Vložte další poznámky týkající se kolizie...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Poznámky o dopravním nehodě';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Zničil přepravy cestujících: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Přidružte důkazy (fotografie) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Stalo se v důsledku této havárii nějaké úmrtí?';

  @override
  String get incidentIntakeFatalityTitle => 'Stalo se smrtelné?';

  @override
  String get incidentIntakeGpsLabel => 'GPS souřadnice *';

  @override
  String get incidentIntakeHistoryTooltip => 'Pozor na dějiny';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Byl někdo zraněn, který by potřeboval okamžitou lékařskou pomoc?';

  @override
  String get incidentIntakeInjuriesTitle => 'Po zranění, které vyžadují lékařskou péči?';

  @override
  String get incidentIntakeInjuryNotesError => 'Poškození je povinné pro zraněné studenty';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Poznámky o zranění / podrobnosti (příslušné) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Těžký zranění *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Prosím, zapojte se do policejního úřadu.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Úřad pro činnost v trestním řízení (např. státní dálniční hlídka) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Zpráva o prosazování práva a policii';

  @override
  String get incidentIntakeLocationDescError => 'Prosím, zadávejte popis místa.';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis umístění (např. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Lékařské zařízení přepravováno do';

  @override
  String get incidentIntakeNoMatchingStudents => 'Žádné odpovídající studenty.';

  @override
  String get incidentIntakeNoStudentsFound => 'Žádné studenty nenašli.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Žádní studenti na palubě, prosím stiskněte NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Žádní studenti se na tuto cestu nezaznamenal.';

  @override
  String get incidentIntakeOfficerNameError => 'Prosím, zadávejte jméno důstojníka.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Jméno důstojníka *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Prosím, zadávejte číslo policejní zprávy.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policie hlášení číslo *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informace o trati a řidiči';

  @override
  String get incidentIntakeSearchInjuredHint => 'Vyhledejte zraněné dítě...';

  @override
  String get incidentIntakeSearchStudentHint => 'Hledání studenta...';

  @override
  String get incidentIntakeSelectAll => 'Vyberte všechny studenty';

  @override
  String get incidentIntakeSelectOnMap => 'VYJÁRNÍ NA MAPě';

  @override
  String get incidentIntakeSeverityFatal => 'Úmrtní';

  @override
  String get incidentIntakeSeverityMinor => 'Mladší';

  @override
  String get incidentIntakeSeverityModerate => 'Uvolněné';

  @override
  String get incidentIntakeSeveritySevere => 'Příliš závažné';

  @override
  String get incidentIntakeSeverityTitle => 'Variabily závažnosti havárie';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikace:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Zpráva';

  @override
  String get incidentIntakeTitle => 'Příjem po havárii';

  @override
  String get incidentIntakeTowedSubtitle => 'Dostal nějaký vůz poškození, které by vyžadovalo, aby byl odtahován z místa?';

  @override
  String get incidentIntakeTowedTitle => '-Vytahovaný?';

  @override
  String get incidentIntakeWasInjured => 'Byl zraněn?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'Blízka';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Poznámky řidiče (nezveřejněné)';

  @override
  String get dvirPreTripNoComments => 'Žádné připomínky.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Důvod:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Podpis byl úspěšně zachycen.';

  @override
  String get dvirPreTripSigMissing => 'Podpis chybí.';

  @override
  String get dvirPreTripSignDefectWarning => 'Prosím, podepište potvrzení opravy předchozích vad.';

  @override
  String get dvirPreTripStepSignOff => 'Podpis';

  @override
  String get dvirPreTripStepSubmit => 'Přidání';

  @override
  String get dvirPreTripStepVerify => 'Ověřit';

  @override
  String get dvirPreTripTapNext => 'Prosím, klikněte na NEXT, abyste pokračovali.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vozidlo je mimo provoz.';

  @override
  String get dvirPreTripVehicleReady => 'Vozidlo je připraveno k službě';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Ověřený stav opravy:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Uvědomte si, zda byly všechny hlášené vady opravovány, a to tím, že si zapamatujete políčko vedle každé chyby.';

  @override
  String get dvirPreTripYourComments => 'Vaše připomínky:';

  @override
  String get countryPickerNoCountries => 'Žádné země nenalezly';

  @override
  String get countryPickerSearchHint => 'Hledání podle jména země, kódu nebo číselného čísla...';

  @override
  String get countryPickerTitle => 'Vyberte zemi';

  @override
  String get mapDefaultStop => 'Zastavte se.';

  @override
  String get mapEndLocation => 'Účinné místo';

  @override
  String get mapStartLocation => 'Startová poloha';

  @override
  String get stopsNoChangesToUndo => 'Žádné změny nemohou být zrušeny.';

  @override
  String get stopsNoStopsAvailable => 'Žádné zastávky nejsou k dispozici.';

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
