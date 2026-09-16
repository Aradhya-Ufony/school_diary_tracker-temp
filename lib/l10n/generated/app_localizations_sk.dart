import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appInfoBuild => 'Vytvorenie čísla';

  @override
  String get appInfoDevice => 'Model zariadenia';

  @override
  String get appInfoOS => 'Verzia OS';

  @override
  String get appInfoPackage => 'Balík';

  @override
  String get appInfoTitle => 'Informácie o aplikácii';

  @override
  String get appInfoVersion => 'Verzia aplikácie';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Strážcovia';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Povolení opatrovníci pre $name';
  }

  @override
  String get childrenNoGuardians => 'Žiadny oprávnený opatrovník na tomto dieťaťu.';

  @override
  String get childrenStatusDropped => 'Zhodnuté';

  @override
  String get childrenStatusPending => 'Čakanie';

  @override
  String get childrenStatusPicked => 'Vyberané';

  @override
  String childrenTitle(Object routeName) {
    return 'Deti  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ZAJEDNÉ / NIE NA BUSU ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuačné';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuačné: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Žiadny nezostávajúci študent.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Žiadny študent nebol označený v autobuse.';

  @override
  String get drillChecklistNotOnBus => 'Nie na autobuse';

  @override
  String get drillChecklistOnBusNotEvacuated => 'V autobuse  NEDEVAKUJENÉ';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Na autobus ($count)';
  }

  @override
  String get drillChecklistProceed => 'Úplný postup na zachytanie dôkazov';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Cesta (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Checklist evakuácie';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Nepoznaný študent s) Zostáva!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Si si istý, že chceš predložiť tento záznam?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potvrďte podanie cvičenia';

  @override
  String get drillEvidenceDriverNotesHint => 'Opíšte vykonávanie cvičenia, správanie študentov, použité východné cesty a akékoľvek pozorované výnimky...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Poznámky vodiča (minimálne 10 znakov):';

  @override
  String get drillEvidenceFailed => 'Zlyhanie podania';

  @override
  String get drillEvidenceMandatoryWarning => 'Na predloženie cvičenia je povinné aspoň jedno zdjęcie alebo video dôkaz.';

  @override
  String get drillEvidenceRecordVideo => 'Nahrávajte video';

  @override
  String get drillEvidenceRetrySubmission => 'VYHÁDNIE';

  @override
  String get drillEvidenceReturnToDashboard => 'Vráť sa na plošinu';

  @override
  String get drillEvidenceSubmitButton => 'VYHÁDNIE VŠEDNÍCH';

  @override
  String get drillEvidenceSubmitting => 'Predkladanie záznamu o výcviku...';

  @override
  String get drillEvidenceSuccess => 'Podniknutie úspešné!';

  @override
  String get drillEvidenceSuccessMessage => 'Úspěšne sa nahral záznam o evakuácii a je v odzve na schválenie.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografovať';

  @override
  String get drillEvidenceTitle => 'Povinný dôkaz o cvičení';

  @override
  String get drillEvidenceUploading => 'Následné informácie o kontrolnom zozname';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vyrážka:';
  }

  @override
  String get drillRosterMarkAttendance => 'Počet prítomnosti';

  @override
  String get drillRosterNoStudents => 'Na tejto trase sa žiaden študent nezasahuje.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Súčasný: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Účinky na skúšanie';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedadlo: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Vyberte všetky';

  @override
  String get drillSummaryAdminNotesTitle => 'Poznámky správcu';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Schválené na: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Schválené na';

  @override
  String get drillSummaryBackToDrills => 'Vráť sa k cvičením';

  @override
  String get drillSummaryBusNumber => 'Štatistika autobusu';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Vedené: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detaly vrtania';

  @override
  String get drillSummaryDriverNotesTitle => 'Poznámky vodiča';

  @override
  String get drillSummaryDuration => 'Dĺžka trvania';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sek';
  }

  @override
  String get drillSummaryEndTime => 'Čas konca';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuačné: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuačné _ V0__';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Príspevky na médiá';

  @override
  String get drillSummaryGps => 'Koordináty GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nedokázal si načítať súhrn vrtákov pre ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Žiadne údaje z vrtca neobjevené.';

  @override
  String get drillSummaryNotOnBus => 'Nie v autobuse';

  @override
  String get drillSummaryOnBusNotEvacuated => 'V autobuse - NEEVAKUÁCIEDNÉ';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografické dôkazy';

  @override
  String get drillSummaryRouteId => 'Identifikácia trasy';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedadlo: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Čas na začatie';

  @override
  String get drillSummaryStatus => 'Stav';

  @override
  String get drillSummaryStudentLogTitle => 'Úvod pre evakuačné záznamy študentov';

  @override
  String drillSummaryTitle(Object id) {
    return 'Zhrnutie cvičenia (#$id)';
  }

  @override
  String get drillSummaryType => 'Typ vrtania';

  @override
  String get drillSummaryVideoEvidence => 'Video dôkaz';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Vyberte klasifikáciu vrtákov:';

  @override
  String get drillTypeCustomHint => 'Vstupte do špeciálneho typu evakuačného cvičenia...';

  @override
  String get drillTypeInvalidState => 'Nevalidný stav vozidla alebo trasy.';

  @override
  String get drillTypeNameBusFire => 'Požar v autobuse';

  @override
  String get drillTypeNameDangerZone => 'Zóna nebezpečenstva';

  @override
  String get drillTypeNameDriverIncapacitation => 'Neschopnosť vodiča';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientacia zariadenia';

  @override
  String get drillTypeNameFrontDoor => 'Predné dvere';

  @override
  String get drillTypeNameOthers => 'Ostatné';

  @override
  String get drillTypeNameRearDoor => 'Zadné dvere';

  @override
  String get drillTypeNameSideOrRoof => 'Strana alebo strecha';

  @override
  String get drillTypeNameSplit => 'Rozdeľovanie';

  @override
  String get drillTypeNoRouteSelected => 'Žiadna cesta nevybraná';

  @override
  String get drillTypePreparation => 'VYVORNÍCH prípravy';

  @override
  String get drillTypeProceed => 'Pokrok na žiaci list';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get drillTypeSelectRoute => 'Vyberte trasu:';

  @override
  String get drillTypeSpecifyCustom => 'Uveďte opis typu vrtca:';

  @override
  String get drillTypeTitle => 'Vyberte typ vrtca';

  @override
  String get drillTypeWarning => 'Uistite sa, že vozidlo je bezpečne zaparkované pred začatím vykonávania.';

  @override
  String get drillsAssignedVehicle => 'Vyrábané vozidlo';

  @override
  String get drillsChecking => '- Skontrolujem...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vyrievanie #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Žiadny autobus nie je určený';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Žiadne cvičenia zaznamenané pre autobus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Žiadne cesty na začatie cvičenia nie sú k dispozícii.';

  @override
  String get drillsShowSummary => 'Zhrnutie preukazu';

  @override
  String get drillsStartDrill => 'Začnite cvičiť';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Vedené: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuačné cvičenia';

  @override
  String get drillsVehicleOutOfService => 'Vozidlo mimo prevádzky';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Toto vozidlo je v súčasnosti mimo prevádzky a nemôže sa používať na cvičenie.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ŠDÚVÍČNÍ ZÁLČNÍ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NÁM: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Cestujúci';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Školný autobus';

  @override
  String get driverDetailsEndorsementsTitle => 'Podporovanie sa konalo';

  @override
  String get driverDetailsExpiryDateLabel => 'Dátum uplynutia platnosti';

  @override
  String get driverDetailsHolderSignature => 'Podpis držiteľa';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identifikácia: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Dátum vydania';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument licencie';

  @override
  String get driverDetailsLicenseNoLabel => 'Licencia č.';

  @override
  String get driverDetailsLicenseTitle => 'Podrobnosti o licencii';

  @override
  String get driverDetailsLicenseTypeLabel => 'Typ licencie';

  @override
  String get driverDetailsOfficialSeal => 'Oficiálny pečeť';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'VYVORENIE:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'VÝVOR:';
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
  String get driverDetailsTapToView => 'Kliknite na zobrazenie dokumentu DL';

  @override
  String get driverDetailsTitle => 'Podrobnosti o vodiči';

  @override
  String get dvirCategoryBusSafetySystems => 'Bezpečnostné systémy pre autobusy';

  @override
  String get dvirCategoryCouplingDevices => 'Zložovacie zariadenia';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nadzorné zariadenia';

  @override
  String get dvirCategoryHorn => 'Horn';

  @override
  String get dvirCategoryLightingReflectors => 'Osvetlenie a reflektory';

  @override
  String get dvirCategoryMirrors => 'Zodpovedné zrkadlá';

  @override
  String get dvirCategoryParkingBrake => 'Parková brzda';

  @override
  String get dvirCategoryPassengerSeating => 'Sedadlá a obmedzenia pre cestujúcich';

  @override
  String get dvirCategoryServiceBrakes => 'Služebné brzdy';

  @override
  String get dvirCategorySteeringMechanism => 'Riadiaci mechanizmus';

  @override
  String get dvirCategoryTires => 'Pneumatiky';

  @override
  String get dvirCategoryWheelsRims => 'Kolesy a riamy';

  @override
  String get dvirCategoryWipers => 'Zmyčovače predného skla';

  @override
  String get dvirPostTripCapturePhoto => 'Fotografia z chýb';

  @override
  String get dvirPostTripComplianceTitle => 'SZERTIFIKácia SÚVEDNOSTI';

  @override
  String get dvirPostTripDefectButton => 'Zlyhanie';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Vyhlásenie chyby bez fotografie';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Upozornenie: Vyhlásíte chybu v bezpečnostných zónach ($zones) bez pridania fotografie.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekcia: Autobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Vložte podrobnosti o bezpečnostnej otázke...';

  @override
  String get dvirPostTripNotesLabel => 'Poznámky (POSUCHNÍ O ZVYVORNOM) a SZLAVA';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Vyberte DEFECT, aby ste zadali podrobnosti o bezpečnostných problémoch...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktuálne čítanie odometru';

  @override
  String get dvirPostTripOdometerInstructions => 'Vložte údaje o kilometraži presne tak, ako je zobrazené na nástroji autobusu:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (milie)';

  @override
  String get dvirPostTripOdometerTitle => 'Vozidlo beží čas';

  @override
  String get dvirPostTripOdometerWarning => 'Pred začatím postupujte prosím na odometru.';

  @override
  String get dvirPostTripPassButton => 'Prechádzať';

  @override
  String get dvirPostTripPhotoAttached => 'Fotografia úspešne pripojená.';

  @override
  String get dvirPostTripProgressLabel => 'Pokrok kontroly';

  @override
  String get dvirPostTripSignatureCaptured => 'Podpis zachytený.';

  @override
  String get dvirPostTripSignatureCert => 'Osvedčujem, že táto správa o kontrolnom zozname prechádzky vozidla bola vyplnená v súlade s predpismi FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verifikácia podpisov vodiča';

  @override
  String get dvirPostTripSubmitButton => 'ODNÁVANIE inšpekcie';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR sa úspešne predložilo.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zóna $current ZONY $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zóny _V0__ / _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Priznávam, že som preskúmal poslednú predloženú správu o defekte a overil opravy (ak sú) a uviedol, že autobus je bezpečný pre prevádzku.';

  @override
  String get dvirPreTripActiveMessage => 'Toto vozidlo je aktívne a nemá žiadne otvorené vady.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktíva cesta: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ODPOČINÁVAČNÉ POZOR: Zložené nedostatky z predchádzajúceho dňa';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobusová číslo: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'SCHEKOVÁNÉ ZDARENIE vozovky';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nedokázal podporiť: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Žiadne predchádzajúce chyby zaznamenané';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Toto vozidlo bolo hlásené v predchádzajúcej inšpekcii po výlete.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Pre bezpečnú prevádzku nie sú potrebné opravy.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Toto vozidlo je mimo prevádzky na opravy/ochranku.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vozidlo mimo služby';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Dôvod:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (OPRÁVANÉ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Zobraziť nové defekty';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Vyhlásenie nových vad je počas opravy zakázané.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'DHL. 010: ZAŠPÁTKY ZÁDNÁVY';

  @override
  String get dvirPreTripReturnToHomeButton => 'Vráť sa domov';

  @override
  String get dvirPreTripSignOffTitle => 'Signál na prechádzku';

  @override
  String get dvirPreTripSignedSuccess => 'Verifikácia úspešne podpísaná.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SÚPORNÍOTAVÉ ZAŠVORENIE';

  @override
  String get dvirPreTripTitle => 'Preverfikácia pred cestou';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Stav vozidla: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Vytáčajte podpis';

  @override
  String get dvirSigPreviewLabel => 'Zobral si predbežný prehľad podpisov:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'ZAŠAJTE podpis';

  @override
  String get dvirSigTapToDraw => 'KAPET na výtvar podpisov (VYŽALÁ)';

  @override
  String get dvirSigWatermark => 'Podpis vertikálne (od dolnej k hornej)';

  @override
  String get forgotPasswordCancel => 'Zrušiť';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Prosím, zadajte platný e-mail';

  @override
  String get forgotPasswordSend => 'Pošlite';

  @override
  String get forgotPasswordSuccess => 'Ak ten e-mail existuje, zaslaný je reset link.';

  @override
  String get genericBack => 'Vráť sa';

  @override
  String get genericCancel => 'Zrušiť';

  @override
  String get genericClear => 'ČÍRNÉ';

  @override
  String get genericClose => '- V blízkosti';

  @override
  String get genericConfirm => 'Potvrďte';

  @override
  String get genericEdit => 'Upravovať';

  @override
  String get genericError => 'Niečo sa pokazilo .';

  @override
  String get genericLoading => 'Náklad...';

  @override
  String get genericNext => 'NÁDŠÍ';

  @override
  String get genericOk => 'Dobre.';

  @override
  String get genericRetry => 'Skúste znova';

  @override
  String get genericSuccess => 'Úspech';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobus:';
  }

  @override
  String get homeDispatchBlocked => 'Poslanie blokované';

  @override
  String get homeDispatchBlockedTitle => 'Poslanie blokované';

  @override
  String get homeErrorNoRoutesPreTrip => 'Žiadne trasy na pre-tripu nie sú dostupné.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nevyšiel na start na serveri: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Ahoj, V0__';
  }

  @override
  String get homeLogout => 'Vstup';

  @override
  String get homeMenuAppInfo => 'Informácie o aplikácii';

  @override
  String get homeMenuDrill => 'Vyrievanie';

  @override
  String get homeMenuDriverDetails => 'Podrobnosti o vodiči';

  @override
  String get homeMenuLanguage => 'Jazyk';

  @override
  String get homeMenuPreTrip => 'Prešetrovanie pred cestovaním';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Žiadne dostupné trasy';

  @override
  String get homeReviewVerifyPreTrip => 'Prehľad a overenie pred výletom';

  @override
  String get homeSearchHint => 'Hľadanie';

  @override
  String get homeStart => 'Začnite';

  @override
  String get homeTitle => 'Domov';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vozidlo je v súčasnosti mimo prevádzky.';

  @override
  String get homeVehicleReady => 'Vozidlo je pripravené a overené na bezpečnú prevádzku.';

  @override
  String get languageTitle => 'Jazyk';

  @override
  String get loginButton => 'Vstup';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail alebo telefónne číslo';

  @override
  String get loginErrorEnterPassword => 'Prosím zadajte heslo';

  @override
  String get loginErrorEnterUsername => 'Prosím zadajte uživatelské meno';

  @override
  String get loginErrorFailed => 'Login sa zlyhal, skúste to znova.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Prosím zadajte platný e-mail alebo telefónny číslo';

  @override
  String get loginForgotPassword => 'Zabudla si heslo?';

  @override
  String get loginPasswordLabel => 'Heslo';

  @override
  String get mapChildrenTooltip => 'Deti a opatrovníci';

  @override
  String get mapConfirmMessage => 'Naozaj chceš ukončiť cestu?';

  @override
  String get mapConfirmTitle => 'Potvrďte';

  @override
  String get mapCurrentPosition => 'Aktuálna poloha';

  @override
  String get mapNo => 'Nie, nie.';

  @override
  String get mapReconnectMessage => 'Aktualizácia lokality často nevypadá, prosím skontrolujte si internet.';

  @override
  String get mapReconnectTitle => 'Sledovač';

  @override
  String get mapStop => 'Zastavte sa .';

  @override
  String get mapStopping => 'Zastaviť...';

  @override
  String get mapStopsTooltip => 'Zastavovanie';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Aktualizované pred pár rokmi';
  }

  @override
  String get mapWaitingGps => 'Čakať na GPS...';

  @override
  String get mapYes => 'Áno, áno.';

  @override
  String get splashDriverApp => 'Aplikácia vodiča';

  @override
  String get stopsActionUndo => 'Odstránenie';

  @override
  String get stopsCancelledSuccess => 'Úspechne zrušený';

  @override
  String get stopsDefaultLabel => 'Zastavte sa .';

  @override
  String get stopsGenericError => 'Niečo sa pokazilo, prosím, skúste znova.';

  @override
  String get stopsStatusComplete => 'kompletný';

  @override
  String get stopsStatusDone => 'Vyrobené';

  @override
  String stopsSubmitCount(Object count) {
    return 'Predložiť ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Úspechne predložené';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '_$selected vybraný ___ $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Odložte';

  @override
  String get stopsTypePick => 'Vyberte';

  @override
  String stopsUndoCount(Object count) {
    return 'Odstránenie ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Odstránenie/odkladanie';

  @override
  String get tripConfirmCancel => 'Zrušiť';

  @override
  String get tripConfirmOk => 'Dobre .';

  @override
  String get tripConfirmTitle => 'Sledovač';

  @override
  String get tripErrorLocationRequired => 'Na začatie cesty je potrebné povolenie na umiestnenie.';

  @override
  String get homeMenuPostCrashReporting => 'Správa o následnom zlyhaní';

  @override
  String homeVehicleReason(Object reason) {
    return 'Dôvod:';
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
  String get crashLocationPickerSearchHint => 'Lokalizacia vyhľadávania (napr. Market St)';

  @override
  String get crashLocationPickerTitle => 'Vyberte miesto na mape';

  @override
  String get crashLocationPickerTooltip => 'Potvrďte miesto';

  @override
  String get incidentDashboardDescription => 'Vyberte akciu na pokračovanie v riadení incidentov alebo prezeráte predchádzajúce správy.';

  @override
  String get incidentDashboardHeadline => 'Správa o udalostiach po havárií';

  @override
  String get incidentDashboardLogNew => 'Log Nový zlyhanie';

  @override
  String get incidentDashboardLogNewSubtitle => 'Začať nový krok za krokom výstražný záznam';

  @override
  String get incidentDashboardTitle => 'Prípad po havárií';

  @override
  String get incidentDashboardViewHistory => 'Pozrite si históriu';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Pozrite predchádzajúce správy o nehode a stav';

  @override
  String get incidentDetailsAdminLetter => 'List správcu';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Odpočítanie testu alkoholu (2-hodinový limit)';

  @override
  String get incidentDetailsBranchId => 'Identifikácia pobočky';

  @override
  String get incidentDetailsBusPlate => 'Autobusová licenčná taška';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citácia Účink: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citácia pre vodiča';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordináty: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopírované na štítku!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopírovať na plochu';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Dátum a čas: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Správa DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Správa štátneho ministerstva pre hospodársku súťaž (volatná)';

  @override
  String get incidentDetailsDriverNotes => 'Poznámky vodiča:';

  @override
  String get incidentDetailsDriverUserId => 'ID používateľa vodiča';

  @override
  String get incidentDetailsDrugCountdown => 'DOT testy na lieky (obmedzenie 8 hodín)';

  @override
  String get incidentDetailsFatalityOccurred => 'Stalo sa to smrteľne';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Poškodenosti vyžadujúce lekársku liečbu';

  @override
  String get incidentDetailsLawEnforcement => 'Úrad pre presadzovanie práva';

  @override
  String get incidentDetailsLoadFailed => 'Nedokázal si načítať detaily.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Poloha: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Pridané do médií';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Nie';

  @override
  String get incidentDetailsNoMediaAttachments => 'Žiadne fotografie ani videá pripojené.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Počas incidentu na palube neboli označení žiaden študent.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generovať správy o oznámení a odoslať vzorové listy okresným dohľadom alebo správnej službe.';

  @override
  String get incidentDetailsNotificationsTitle => 'Oznámenia o prenose';

  @override
  String get incidentDetailsOfficer => 'Úradné údaje';

  @override
  String get incidentDetailsPoliceReport => 'Policejní číslo hlásenia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Predbežne vyplnené prevodné listy:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulačný základ:';

  @override
  String get incidentDetailsRouteId => 'Identifikácia trasy';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Oznámenie správcu školy';

  @override
  String get incidentDetailsStatusPending => 'Čakanie';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Podrobnosti: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Zranený';

  @override
  String get incidentDetailsStudentNoInjury => 'Žiadne zranenie';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'závažnosť:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Prepravované na: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Študenti na palube ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Nevyžaduje sa testovanie po zhradení';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Podrobnosti o udalostiach';

  @override
  String get incidentDetailsVehicleTowed => 'Vodiče';

  @override
  String get incidentDetailsYes => 'Áno';

  @override
  String get incidentHistoryEmpty => 'Žiadne záznamy o incidentech sa na tomto vozidle nezobrazili.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nedokázal získať záznamy: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Čas: V0__ Autobus: V1__ Testovanie: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NIE je potrebné';

  @override
  String get incidentHistoryTestingRequired => 'VYVZATÉ';

  @override
  String get incidentHistoryTitle => 'Zápis incidentov po havárií';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Pridajte ďalšiu fotku';

  @override
  String get incidentIntakeBadgeNumberError => 'Vyžadované';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Číslo značky *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobusová číslo: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Zobraziť scénu';

  @override
  String get incidentIntakeCitationSubtitle => 'Bol šoférovi školského autobusu vydaný citát na porušenie predpisov?';

  @override
  String get incidentIntakeCitationTitle => 'Vydali citáciu?';

  @override
  String get incidentIntakeDateTimeLabel => 'Dátum a čas zlyhania *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NESOŽDANÉ testovanie';

  @override
  String get incidentIntakeDotTestingRequired => 'K dispozícii sú testy';

  @override
  String incidentIntakeDriver(Object driverName) {
    return '- Šofér:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Vložte akékoľvek ďalšie poznámky týkajúce sa zrážky...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Poznámky o dopravných udalostiach';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Zlyhanie naloženia cestujúcich trasy: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Pridajte dôkazy (fotografie) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Stalo sa v dôsledku tejto havárie nejaké úmrtia?';

  @override
  String get incidentIntakeFatalityTitle => 'Stalo sa to?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordináty *';

  @override
  String get incidentIntakeHistoryTooltip => 'Pozrite si históriu';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Dostal niekto zranenie, ktoré si vyžadovalo okamžité lekárske ošetrenie mimo miesta činu?';

  @override
  String get incidentIntakeInjuriesTitle => 'Po zranení, ktoré si vyžadujú lekársku liečbu?';

  @override
  String get incidentIntakeInjuryNotesError => 'Poškodení študenti musia mať povinné záznamy o zranení';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Poznámky o zranení / podrobnosti (Povinné) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Zranenie závažné *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Prosím, vstúpte do policajného úradu.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Úrad pre presadzovanie práva (napr. štátna diaľnica) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Údaje o presadzovaní práva a policii';

  @override
  String get incidentIntakeLocationDescError => 'Prosím zadajte opis miesta';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis umiestnenia (napr. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medzinárodná zdravotnícka inštitúcia';

  @override
  String get incidentIntakeNoMatchingStudents => 'Žiadny zhodný študent.';

  @override
  String get incidentIntakeNoStudentsFound => 'Žiadnych študentov nenašli.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Žiadny študent na palube, prosím stlačte NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Žiadny študent sa na túto cestu nezaznamenal.';

  @override
  String get incidentIntakeOfficerNameError => 'Prosím zadajte meno dôstojníka';

  @override
  String get incidentIntakeOfficerNameLabel => 'Názov dôstojníka *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Prosím zadajte číslo policajného hlásenia';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policejní číslo hlásenia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informácie o trase a vodiči';

  @override
  String get incidentIntakeSearchInjuredHint => 'Vyhľadávajte zranené dieťa...';

  @override
  String get incidentIntakeSearchStudentHint => 'Vyhľadávač...';

  @override
  String get incidentIntakeSelectAll => 'Vyberte všetkých študentov';

  @override
  String get incidentIntakeSelectOnMap => 'VYBORENÉ NA MAPU';

  @override
  String get incidentIntakeSeverityFatal => 'Úmrtný';

  @override
  String get incidentIntakeSeverityMinor => 'Malé';

  @override
  String get incidentIntakeSeverityModerate => 'Umierané';

  @override
  String get incidentIntakeSeveritySevere => 'Stresné';

  @override
  String get incidentIntakeSeverityTitle => 'Zmeniteľné závažnosti havárie';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identifikácia: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'ZHLUŠENIE';

  @override
  String get incidentIntakeTitle => 'Prípadný príjem po havárii';

  @override
  String get incidentIntakeTowedSubtitle => 'Dostal nejaký vozidlo poškodenie, ktoré si vyžadovalo, aby bol odtáčaný z miesta činu?';

  @override
  String get incidentIntakeTowedTitle => 'Vozidlo ťahané?';

  @override
  String get incidentIntakeWasInjured => 'Bol zranený?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobus:';
  }

  @override
  String get dvirPreTripClose => 'Blízka';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Poznámky vodiča / poznámky (voliteľné)';

  @override
  String get dvirPreTripNoComments => 'Žiadne pripomienky.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Dôvod:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Cesta:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Podpis úspešne zachytaný.';

  @override
  String get dvirPreTripSigMissing => 'Chýba podpis.';

  @override
  String get dvirPreTripSignDefectWarning => 'Prosím, podpíšte na overenie opravy predchádzajúcich vad.';

  @override
  String get dvirPreTripStepSignOff => 'Podpis';

  @override
  String get dvirPreTripStepSubmit => 'Podanie';

  @override
  String get dvirPreTripStepVerify => 'Preveriť';

  @override
  String get dvirPreTripTapNext => 'Prosím, kliknite na NEXT, aby ste pokračovali.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vozidlo je mimo prevádzky';

  @override
  String get dvirPreTripVehicleReady => 'Vozidlo je pripravené na službu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Ověřený stav opravy:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Preukázať, že všetky hlásené chyby boli opravené, prosím, skontrolujte políčko vedľa každej chyby.';

  @override
  String get dvirPreTripYourComments => 'Vaše pripomienky:';

  @override
  String get countryPickerNoCountries => 'Žiadne krajiny nenašli';

  @override
  String get countryPickerSearchHint => 'Vyhľadávanie podľa mena krajiny, kódu alebo číselného čísla...';

  @override
  String get countryPickerTitle => 'Vyberte krajinu';

  @override
  String get mapDefaultStop => 'Zastavte sa .';

  @override
  String get mapEndLocation => 'Koniec umiestnenia';

  @override
  String get mapStartLocation => 'Počiatočné umiestnenie';

  @override
  String get stopsNoChangesToUndo => 'Žiadne zmeny, ktoré by sa mohli zmeniť.';

  @override
  String get stopsNoStopsAvailable => 'Žiadne zastávky nie sú dostupné.';

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
