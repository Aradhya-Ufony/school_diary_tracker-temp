import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appInfoBuild => 'Számot építsen';

  @override
  String get appInfoDevice => 'A készülék modellje';

  @override
  String get appInfoOS => 'OS verzió';

  @override
  String get appInfoPackage => 'A csomag';

  @override
  String get appInfoTitle => 'App Info';

  @override
  String get appInfoVersion => 'App verzió';

  @override
  String get appTitleSchoolDiary => 'SD nyomkövető';

  @override
  String get childrenActionGuardians => 'A védelem';

  @override
  String childrenGuardiansFor(Object name) {
    return 'A $name jogosult titkárjai';
  }

  @override
  String get childrenNoGuardians => 'Nincs jogosult gondviselő a gyermekről.';

  @override
  String get childrenStatusDropped => 'Eldobta';

  @override
  String get childrenStatusPending => 'Várakozás';

  @override
  String get childrenStatusPicked => 'Kiválaszthatott';

  @override
  String childrenTitle(Object routeName) {
    return 'Gyermekek  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'A BUSZONON nem / Nem ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autópálya:';
  }

  @override
  String get drillChecklistEvacuated => 'Évadolták';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Évadolt: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nincs hiányzó diák.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nincs diákja a buszon.';

  @override
  String get drillChecklistNotOnBus => 'Nem az autóbuszon';

  @override
  String get drillChecklistOnBusNotEvacuated => 'A buszon  Nem evakuáltak';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'A BUSZ ($count)';
  }

  @override
  String get drillChecklistProceed => 'A bizonyítékok elfogása';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Útvonal (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Az evakuációs gyakorlat ellenőrző listája';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'V0__ Nem ismert diák... marad!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Biztos, hogy be akarja küldeni a füstlevél?';

  @override
  String get drillEvidenceConfirmSubmission => 'A gyakorlat benyújtását erősítse meg';

  @override
  String get drillEvidenceDriverNotesHint => 'Írja le a gyakorlat végrehajtását, a diákok viselkedését, a kijárati útvonalakat, és a megfigyelett kivételeket...';

  @override
  String get drillEvidenceDriverNotesLabel => 'A járművezető jegyzőkönyvei (minimum 10 karakter):';

  @override
  String get drillEvidenceFailed => 'A benyújtás nem sikerült';

  @override
  String get drillEvidenceMandatoryWarning => 'A gyakorlat benyújtásához legalább 1 fénykép vagy videó bizonyíték szükséges.';

  @override
  String get drillEvidenceRecordVideo => 'Videó felvétel';

  @override
  String get drillEvidenceRetrySubmission => 'A nyugdíj előfizetése';

  @override
  String get drillEvidenceReturnToDashboard => 'Visszatér a mérőpultra';

  @override
  String get drillEvidenceSubmitButton => 'A szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi szárazföldi sz';

  @override
  String get drillEvidenceSubmitting => '- A kikészítés naplóját...';

  @override
  String get drillEvidenceSuccess => 'Sikeres a felajánlás!';

  @override
  String get drillEvidenceSuccessMessage => 'A evakuációs gyakorlat naplóját sikeresen feltöltötték, és még jóváhagyásra vár.';

  @override
  String get drillEvidenceTakePhoto => 'Vedd fel a képet!';

  @override
  String get drillEvidenceTitle => 'Kötelességes gyakorlat';

  @override
  String get drillEvidenceUploading => 'Beadása bizonyítékok és ellenőrzési lista adatok';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autópálya:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'A csőcső:';
  }

  @override
  String get drillRosterMarkAttendance => 'Márk jelenléte';

  @override
  String get drillRosterNoStudents => 'Nincs bejegyzett diák ezen az úton.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Jelenleg: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'A vizsgálati listát kell kipróbálni';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Út: V0';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Ülőhely:';
  }

  @override
  String get drillRosterSelectAll => 'Válassza ki a Minden';

  @override
  String get drillSummaryAdminNotesTitle => 'Adminjegyzések';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Hivatalos:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'A Bizottság jóváhagyta';

  @override
  String get drillSummaryBackToDrills => 'Vissza a borítékokhoz';

  @override
  String get drillSummaryBusNumber => 'Autópályaútszám';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'A következő vezette:';
  }

  @override
  String get drillSummaryDetailsTitle => 'A borító részletek';

  @override
  String get drillSummaryDriverNotesTitle => 'A vezetői jegyzetek';

  @override
  String get drillSummaryDuration => 'Időtartomány';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'V0__ min __ V1__ másodperc';
  }

  @override
  String get drillSummaryEndTime => 'A végidő';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Évadolt: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Évadolt...';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Bizonyítékok A médiával kapcsolatos csatolmányok';

  @override
  String get drillSummaryGps => 'GPS koordináták';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'A következők:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nem töltöttem be a borító összefoglalóját az ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nincs adat a kikapcsolásról.';

  @override
  String get drillSummaryNotOnBus => 'Nem buszon';

  @override
  String get drillSummaryOnBusNotEvacuated => 'A buszon - nem evakuálva';

  @override
  String get drillSummaryPhotoEvidence => 'Fotó bizonyíték';

  @override
  String get drillSummaryRouteId => 'Útjáró azonosító';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Ülőhely:';
  }

  @override
  String get drillSummaryStartTime => 'Kezdőidő';

  @override
  String get drillSummaryStatus => 'Szállás';

  @override
  String get drillSummaryStudentLogTitle => 'A diákok evakuálása';

  @override
  String drillSummaryTitle(Object id) {
    return 'A gyakorlat összefoglalója (#$id)';
  }

  @override
  String get drillSummaryType => 'A borító típus';

  @override
  String get drillSummaryVideoEvidence => 'Videó bizonyítékok';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autópálya';
  }

  @override
  String get drillTypeClassification => 'Válassza ki a gyakorlat osztályozását:';

  @override
  String get drillTypeCustomHint => 'Adjon be a szokásos evakuációs gyakorlatot...';

  @override
  String get drillTypeInvalidState => 'Nem érvényes jármű vagy útvonal állapot.';

  @override
  String get drillTypeNameBusFire => 'A busz tűz';

  @override
  String get drillTypeNameDangerZone => 'Veszélyes zóna';

  @override
  String get drillTypeNameDriverIncapacitation => 'A sofőr nem képes';

  @override
  String get drillTypeNameEquipmentOrientation => 'A berendezések irányítása';

  @override
  String get drillTypeNameFrontDoor => 'Előttjárat';

  @override
  String get drillTypeNameOthers => 'Mások';

  @override
  String get drillTypeNameRearDoor => 'A hátsó ajtó';

  @override
  String get drillTypeNameSideOrRoof => 'A fél vagy a tető';

  @override
  String get drillTypeNameSplit => 'Szétosztás';

  @override
  String get drillTypeNoRouteSelected => 'Nem választott útvonal';

  @override
  String get drillTypePreparation => 'A FERÁGÁSZÁS';

  @override
  String get drillTypeProceed => 'A tanulók listájához';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Út: V0';
  }

  @override
  String get drillTypeSelectRoute => 'Válassza ki a útvonalat:';

  @override
  String get drillTypeSpecifyCustom => 'A borító típus leírása:';

  @override
  String get drillTypeTitle => 'Válassza ki a borító típusát';

  @override
  String get drillTypeWarning => 'Biztosítsák, hogy a jármű biztonságosan parkol, mielőtt elkezdi a végrehajtást.';

  @override
  String get drillsAssignedVehicle => 'A kijelölt jármű';

  @override
  String get drillsChecking => '- Ellenőrzés...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'A #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nem rendelkezett busz';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'A buszhoz nem történt edzés';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nincs útvonal a gyakorlat elindításához.';

  @override
  String get drillsShowSummary => 'A bemutató összefoglalója';

  @override
  String get drillsStartDrill => 'Kezdjük a gyakorlatot';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'A következő:';
  }

  @override
  String get drillsTitle => 'Évadászat';

  @override
  String get drillsVehicleOutOfService => 'A jármű nem működik';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ez a jármű jelenleg nem működik, és nem használható gyakorlatokhoz.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL osztály';

  @override
  String get driverDetailsDrivingLicenseLabel => 'A vezetési engedély';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'HÉRNEM:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: V0';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Útjáró';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Iskolabusz';

  @override
  String get driverDetailsEndorsementsTitle => 'Az előzetes jóváhagyás';

  @override
  String get driverDetailsExpiryDateLabel => 'A lejárati idő';

  @override
  String get driverDetailsHolderSignature => 'A FELTÉTŐI ÍRÁS';

  @override
  String driverDetailsId(Object driverId) {
    return 'A következő:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Kiadás időpontja';

  @override
  String get driverDetailsLicenseDocTitle => 'A jogosítványok';

  @override
  String get driverDetailsLicenseNoLabel => 'A jogosítvány nem';

  @override
  String get driverDetailsLicenseTitle => 'A licenc részletei';

  @override
  String get driverDetailsLicenseTypeLabel => 'A jogosultság típusa';

  @override
  String get driverDetailsOfficialSeal => 'Hivatalos pecsét';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'A következő osztály:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'A következő:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'A következő:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN: V0';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: V0';
  }

  @override
  String get driverDetailsTapToView => 'Nyomja meg a DL dokumentum megtekintéséhez';

  @override
  String get driverDetailsTitle => 'A járművezető részletei';

  @override
  String get dvirCategoryBusSafetySystems => 'Autópálya-specifikus biztonsági rendszerek';

  @override
  String get dvirCategoryCouplingDevices => 'A csatlakozó eszközök';

  @override
  String get dvirCategoryEmergencyEquipment => 'A vészhelyzetre szolgáló berendezések';

  @override
  String get dvirCategoryHorn => 'Szóró';

  @override
  String get dvirCategoryLightingReflectors => 'Fényszerek és tükrözőgépek';

  @override
  String get dvirCategoryMirrors => 'A hátsó látás tükörje';

  @override
  String get dvirCategoryParkingBrake => 'Parkolófék';

  @override
  String get dvirCategoryPassengerSeating => 'Útjáró ülés és korlátozás';

  @override
  String get dvirCategoryServiceBrakes => 'Szolgálati fék';

  @override
  String get dvirCategorySteeringMechanism => 'A vezérlő mechanizmus';

  @override
  String get dvirCategoryTires => 'Lámok';

  @override
  String get dvirCategoryWheelsRims => 'Kerék és csík';

  @override
  String get dvirCategoryWipers => 'Szélsziklászívók';

  @override
  String get dvirPostTripCapturePhoto => 'A fénykép';

  @override
  String get dvirPostTripComplianceTitle => 'A megfelelés tanúsítása';

  @override
  String get dvirPostTripDefectButton => 'A hibás';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'A képet nélkül jelenteni a hiba';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Figyelmeztetés: Ön biztonsági övezetekben ($zones) hibaot jelentett, fotót nem csatolva.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Vizsgálás: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Be kell írnia a biztonsági kérdéseket...';

  @override
  String get dvirPostTripNotesLabel => 'Megjegyzések (A hibákra vonatkozó parancs) és a fénykép';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Válassza a DEFECT-t, hogy megadja a biztonsági problémák részleteit...';

  @override
  String get dvirPostTripOdometerHeader => 'Jelenleg az Odometer olvasása';

  @override
  String get dvirPostTripOdometerInstructions => 'Adja be a mérföldkövet pontosan úgy, ahogy a busz hangszerpaneliján látható:';

  @override
  String get dvirPostTripOdometerLabel => 'Odométer (Mile)';

  @override
  String get dvirPostTripOdometerTitle => 'A jármű futási idő METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Kérjük, adja be a járómérő felmérését, mielőtt folytatja.';

  @override
  String get dvirPostTripPassButton => 'A KÖZÉS';

  @override
  String get dvirPostTripPhotoAttached => 'A fotó sikeresen csatlakoztatott.';

  @override
  String get dvirPostTripProgressLabel => 'A vizsgálat előrehaladása';

  @override
  String get dvirPostTripSignatureCaptured => 'Megkapták a aláírást.';

  @override
  String get dvirPostTripSignatureCert => 'Megerősítem, hogy a jármű körüli ellenőrzési lista jelentését a FMCSA 396.11 szabályainak megfelelően készítették.';

  @override
  String get dvirPostTripSignatureTitle => 'A vezető aláírásának ellenőrzése';

  @override
  String get dvirPostTripSubmitButton => 'A felügyelői';

  @override
  String get dvirPostTripSubmitSuccess => 'Az eDVIR sikeresen benyújtott.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'A V1ZON';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V0__ / V1__ zónák';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Bevallom, hogy átnéztem az utolsó benyújtott hibajelentést, és ellenőriztem a javításokat (ha van) és azt állítom, hogy a busz biztonságos üzemeltetésre.';

  @override
  String get dvirPreTripActiveMessage => 'Ez a jármű aktív, és nincs nyílt hibája, ellenőrizve és biztonságos üzemeltetésre.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktívan út: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'FELTÉTETTETTÉS: Előző nap hibák';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autópálya: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'A járművek küldési ellenőrzése';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nem írt alá: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Előző hibák nem szerepelnek';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'A jármű tisztaságáról a korábbi utazás utáni műszakvizsgálatban jelentették be.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nem kell javítani a biztonságos működéshez.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'A jármű javítás/karbantartás céljából kiállt, a biztonsági problémákat a szállítás előtt a munkavállalók megoldják.';

  @override
  String get dvirPreTripOutofServiceButton => 'A jármű nem működik';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Ok:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (TÉRTÉK)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ÚJ HÁZLÁSÁG';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'A javítás során nem jelenthetők új hibák.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Szállás: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'A közlekedés-alap-működtető határozat';

  @override
  String get dvirPreTripReturnToHomeButton => 'Visszatérek hazamentek';

  @override
  String get dvirPreTripSignOffTitle => 'A felvonulás a sétára';

  @override
  String get dvirPreTripSignedSuccess => 'A hitelesítés sikeresen aláírt, a utazás előtti zárat kioldották.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'A Bizottság a Bizottságnak a következőket javasolja:';

  @override
  String get dvirPreTripTitle => 'Utazás előtti ellenőrzése';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'A jármű állapotát: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Írja alá a szerződést';

  @override
  String get dvirSigPreviewLabel => 'Megkapott aláírás előképe:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'A KÖZSÉS ÍRÉS';

  @override
  String get dvirSigTapToDraw => 'A FELTEKERŐK aláírására (követelendő)';

  @override
  String get dvirSigWatermark => 'Vertikálisan (alacsonyról fentről)';

  @override
  String get forgotPasswordCancel => 'Törölni';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Kérjük, írjon be egy érvényes e-mail-t.';

  @override
  String get forgotPasswordSend => 'Küldj el!';

  @override
  String get forgotPasswordSuccess => 'Ha ez az e-mail létezik, küldött egy visszaállító link.';

  @override
  String get genericBack => 'Vissza!';

  @override
  String get genericCancel => 'Törölni';

  @override
  String get genericClear => 'KÉRTÉS';

  @override
  String get genericClose => 'Közel';

  @override
  String get genericConfirm => '- Biztosan.';

  @override
  String get genericEdit => 'Szerkesztés';

  @override
  String get genericError => 'Valami rosszul ment.';

  @override
  String get genericLoading => '- Töltő...';

  @override
  String get genericNext => 'KÉPÉS';

  @override
  String get genericOk => 'Rendben.';

  @override
  String get genericRetry => 'Próbáld meg újra!';

  @override
  String get genericSuccess => 'Siker';

  @override
  String homeBusLabel(Object busId) {
    return 'Autópálya:';
  }

  @override
  String get homeDispatchBlocked => 'A küldés lezárult';

  @override
  String get homeDispatchBlockedTitle => 'A küldés lezárult';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nincs útvonal a Pre-Trip-re.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nem indult a kiszolgáló út: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Szia, V0__';
  }

  @override
  String get homeLogout => 'A bejelentkezési';

  @override
  String get homeMenuAppInfo => 'App Info';

  @override
  String get homeMenuDrill => 'A szárazföldi';

  @override
  String get homeMenuDriverDetails => 'A járművezető részletei';

  @override
  String get homeMenuLanguage => 'Nyelv';

  @override
  String get homeMenuPreTrip => 'Utazás előtti ellenőrzés';

  @override
  String get homeNoRoutes => 'Nem áll rendelkezésre útvonalak';

  @override
  String get homeReviewVerifyPreTrip => 'Átnézést és ellenőrzést utazás előtti';

  @override
  String get homeSearchHint => 'Keresési útvonalak';

  @override
  String get homeStart => 'Kezdjük';

  @override
  String get homeTitle => 'Otthon';

  @override
  String get homeVehicleOutOfServiceDefault => 'A jármű jelenleg KITALÁSÁGASZT.';

  @override
  String get homeVehicleReady => 'A jármű kész és biztonságos üzemeltetésre ellenőrizve.';

  @override
  String get languageTitle => 'Nyelv';

  @override
  String get loginButton => 'Beutazás';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail vagy telefonszám';

  @override
  String get loginErrorEnterPassword => 'Kérjük, adja meg a jelszót';

  @override
  String get loginErrorEnterUsername => 'Kérjük, adja be a felhasználónevét';

  @override
  String get loginErrorFailed => 'Nem sikerült bejelentkezni, kérem, próbáld meg újra.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Kérjük, adja be egy érvényes e-mail-t vagy telefonszámot';

  @override
  String get loginForgotPassword => 'Elfelejtetted a jelszót?';

  @override
  String get loginPasswordLabel => 'Jelszó';

  @override
  String get mapChildrenTooltip => 'Gyermekek és gondviselők';

  @override
  String get mapConfirmMessage => 'Tényleg befejezni akarod a utazást?';

  @override
  String get mapConfirmTitle => '- Biztosan.';

  @override
  String get mapCurrentPosition => 'Jelenlegi helyzet';

  @override
  String get mapNo => 'Nem, nem.';

  @override
  String get mapReconnectMessage => 'A helymeghatározás rendszeresen nem működik, kérjük, ellenőrizze az internetet.';

  @override
  String get mapReconnectTitle => 'A nyomkövető';

  @override
  String get mapStop => 'Állj meg!';

  @override
  String get mapStopping => '- Megállom...';

  @override
  String get mapStopsTooltip => 'Megállás';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Friss.';
  }

  @override
  String get mapWaitingGps => 'A GPS-re várva...';

  @override
  String get mapYes => 'Igen, igen.';

  @override
  String get splashDriverApp => 'A vezető alkalmazás';

  @override
  String get stopsActionUndo => 'Eltörölte';

  @override
  String get stopsCancelledSuccess => 'Sikeresen törölt';

  @override
  String get stopsDefaultLabel => 'Állj meg!';

  @override
  String get stopsGenericError => 'Valami rosszul ment, kérlek próbáld meg újra.';

  @override
  String get stopsStatusComplete => 'teljes';

  @override
  String get stopsStatusDone => 'kész';

  @override
  String stopsSubmitCount(Object count) {
    return 'A Bizottság a következőket állapítja meg:';
  }

  @override
  String get stopsSubmittedSuccess => 'Sikeresen benyújtott';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'V1__/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Dobja le!';

  @override
  String get stopsTypePick => 'Válassz!';

  @override
  String stopsUndoCount(Object count) {
    return 'A felvételi és a felvételi műveletek';
  }

  @override
  String get stopsUndoTooltip => 'A felvétel/csökkenés';

  @override
  String get tripConfirmCancel => 'Törölni';

  @override
  String get tripConfirmOk => '- Rendben.';

  @override
  String get tripConfirmTitle => 'A nyomkövető';

  @override
  String get tripErrorLocationRequired => 'A utazás megkezdéséhez a helyszín engedélyének szükségessége van.';

  @override
  String get homeMenuPostCrashReporting => 'A baleset utáni jelentések';

  @override
  String homeVehicleReason(Object reason) {
    return 'Ok:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Szállás: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'A következők:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Keresési hely (pl. Market St)';

  @override
  String get crashLocationPickerTitle => 'Válassza ki a helyszínt a térképen';

  @override
  String get crashLocationPickerTooltip => 'Biztosanítsd a helyszínt';

  @override
  String get incidentDashboardDescription => 'Válassza ki egy fellépést, hogy folytassa a balesetkezelést, vagy nézze meg a korábbi jelentéseket.';

  @override
  String get incidentDashboardHeadline => 'A baleset utáni események jelentése';

  @override
  String get incidentDashboardLogNew => 'Újszámadás';

  @override
  String get incidentDashboardLogNewSubtitle => 'Indítson egy új lépésről lépésre jelentést a balesetről';

  @override
  String get incidentDashboardTitle => 'A baleset utáni esemény';

  @override
  String get incidentDashboardViewHistory => 'Történet néző';

  @override
  String get incidentDashboardViewHistorySubtitle => 'A korábbi balesetjelentések és állapot megtekintése';

  @override
  String get incidentDetailsAdminLetter => 'Admin levél';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholvizsgálat visszaszámolása (2 órás határidő)';

  @override
  String get incidentDetailsBranchId => 'Hálózat-szám';

  @override
  String get incidentDetailsBusPlate => 'Autópályaútengedélytár';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citat Károsodás: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'A sofőrnek adtak idézetet';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordináták: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0__ másolat a pincérre!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'KÖPJELJETEK A KLIPBORDra';

  @override
  String get incidentDetailsCrashCitationInfo => 'A Crasch & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Nap és idő: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'A DOE jelentése';

  @override
  String get incidentDetailsDoeReportTitle => 'Az állami adatszolgáltatási hatóság jelentése (elvéve)';

  @override
  String get incidentDetailsDriverNotes => 'A vezető jegyzetek:';

  @override
  String get incidentDetailsDriverUserId => 'A vezető felhasználói azonosítója';

  @override
  String get incidentDetailsDrugCountdown => 'A DOT drogvizsgálat visszaszámolása (8 órás határidő)';

  @override
  String get incidentDetailsFatalityOccurred => 'Halálos események';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return '#$id incidens';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'A gyógykezelést igénylő sérülések';

  @override
  String get incidentDetailsLawEnforcement => 'Törvényrendelő ügynökség';

  @override
  String get incidentDetailsLoadFailed => 'Nem tudott betölteni a részleteket.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Helyezkedés:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'A média csatolásai';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Szállás: $status';
  }

  @override
  String get incidentDetailsNo => 'Nem';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nincs fotó vagy videó.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'A baleset során nem volt jelölés a fedélzeten.';

  @override
  String get incidentDetailsNotificationsDesc => 'Jelentési jelentéseket generáljon és mintákkal ellátott leveleket küldjön a körzeti felügyelőkre vagy a kormányzatnak.';

  @override
  String get incidentDetailsNotificationsTitle => 'Az átviteli értesítések';

  @override
  String get incidentDetailsOfficer => 'Hivatalos részletek';

  @override
  String get incidentDetailsPoliceReport => 'A rendőrségi jelentés száma';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Előre megtöltött átviteli levél:';

  @override
  String get incidentDetailsRegulatoryBasis => 'A szabályozási alap:';

  @override
  String get incidentDetailsRouteId => 'Útjáró azonosító';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Az iskolai adminisztrátor értesítése';

  @override
  String get incidentDetailsStatusPending => 'Várakozás';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Tárgyalás';
  }

  @override
  String get incidentDetailsStudentInjured => 'Megsebesült';

  @override
  String get incidentDetailsStudentNoInjury => 'Nem sérült meg.';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Súly:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'A szállítás:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'A fedélzeten lévő diákok ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'A nem-becsapás utáni tesztelés szükséges';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Szállás: $status';
  }

  @override
  String get incidentDetailsTitle => 'Történet részletei';

  @override
  String get incidentDetailsVehicleTowed => 'A jármű vonatolt';

  @override
  String get incidentDetailsYes => 'Igen.';

  @override
  String get incidentHistoryEmpty => 'Nincs baleset napló a járműre vonatkozóan.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nem sikerült visszanyerni a naplókat: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Idő: V0__ Bus: V1__ Testelés: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return '#$id incidens';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Nem szükséges';

  @override
  String get incidentHistoryTestingRequired => 'KELLÉSETT';

  @override
  String get incidentHistoryTitle => 'A baleset utáni események nyilvántartása';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Adj még egy képet';

  @override
  String get incidentIntakeBadgeNumberError => 'Szükséges';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Jelvény száma *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autópálya: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'A helyszín fényképezés';

  @override
  String get incidentIntakeCitationSubtitle => 'Egy mozgó közlekedési jogsértésről szóló idézetet adtak ki az iskolai busz sofőrnek?';

  @override
  String get incidentIntakeCitationTitle => '- Kiadták a idézetet?';

  @override
  String get incidentIntakeDateTimeLabel => 'A robbanás időpontja és időpontja *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'A vizsgálat nem szükséges';

  @override
  String get incidentIntakeDotTestingRequired => 'A vizsgálatot nem kell végezni';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'A járművezető:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Be kell írnia a ütközéshez kapcsolódó további jegyzeteket...';

  @override
  String get incidentIntakeDriverNotesTitle => 'A sofőr baleseteirányzatok';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'A utasokat nem rakta be a útvonalon: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Be kell csatolni a bizonyítékot (képek) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Volt-e halálos áldozat a baleset következtében?';

  @override
  String get incidentIntakeFatalityTitle => 'Megtörtént a halál?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordináták *';

  @override
  String get incidentIntakeHistoryTooltip => 'Történet néző';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Volt-e valaki, aki sérült a helyszínen, és azonnal orvosi ellátást igényelt?';

  @override
  String get incidentIntakeInjuriesTitle => 'Megsérült, és orvosi kezelést igényel?';

  @override
  String get incidentIntakeInjuryNotesError => 'A sérült diákok számára kötelező a sérülési jegyzőkönyv';

  @override
  String get incidentIntakeInjuryNotesLabel => 'A sérülésekről szóló jegyzetek / részletek (követeljes) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Sebesültség súlyossága *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Kérem, lépjen be a bűnüldöző szervbe.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'A törvény végrehajtási hivatal (pl. az Állami Autópálya-őrök) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Törvényrendszék és rendőrség jelentése';

  @override
  String get incidentIntakeLocationDescError => 'Kérjük, írja be a helyszín leírását.';

  @override
  String get incidentIntakeLocationDescLabel => 'Helyezési leírás (pl. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Orvosi létesítménybe szállították';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nincs megfelelő diák.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nem találtak diákokat.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Kérem nyomja meg a NEXT-t, hogy folytassa.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nincs diák, aki felvett volna ezt a utat.';

  @override
  String get incidentIntakeOfficerNameError => 'Kérem, adja be a tiszt nevét.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Hivatalos neve *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Kérjük, adja be a rendőrségi jelentés számát.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'A rendőrségi jelentés száma *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Út: V0';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Útjárási és sofőrinformáció';

  @override
  String get incidentIntakeSearchInjuredHint => 'Keresd meg a sérült gyermeket...';

  @override
  String get incidentIntakeSearchStudentHint => 'Keresés diák...';

  @override
  String get incidentIntakeSelectAll => 'Válassza ki az összes tanulót';

  @override
  String get incidentIntakeSelectOnMap => 'A térképen kiválasztott';

  @override
  String get incidentIntakeSeverityFatal => 'Végzetes';

  @override
  String get incidentIntakeSeverityMinor => 'Kisebb';

  @override
  String get incidentIntakeSeverityModerate => 'Szintén';

  @override
  String get incidentIntakeSeveritySevere => 'Részletes';

  @override
  String get incidentIntakeSeverityTitle => 'A baleset súlyosságának változói';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'A következő:';
  }

  @override
  String get incidentIntakeSubmitButton => 'HELYETETETET';

  @override
  String get incidentIntakeTitle => 'A baleset utáni bevitel';

  @override
  String get incidentIntakeTowedSubtitle => 'Volt-e olyan jármű, amelyik sérülést kapott, ami miatt el kellett vonni a helyszínről?';

  @override
  String get incidentIntakeTowedTitle => '- A járművet?';

  @override
  String get incidentIntakeWasInjured => 'Megsebesült?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autópálya:';
  }

  @override
  String get dvirPreTripClose => 'Közel';

  @override
  String get dvirPreTripDriverCommentsLabel => 'A vezető megjegyzései / megjegyzései (Felvételi)';

  @override
  String get dvirPreTripNoComments => 'Nem tettek hozzá észrevételeket.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Ok:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Út: V0';
  }

  @override
  String get dvirPreTripSigCaptured => 'A aláírás sikeresen elfoglalt.';

  @override
  String get dvirPreTripSigMissing => 'A aláírás hiányzik.';

  @override
  String get dvirPreTripSignDefectWarning => 'Kérjük, írja alá a korábbi hibák javítását ellenőriző jelzésre.';

  @override
  String get dvirPreTripStepSignOff => 'Írás aláírása';

  @override
  String get dvirPreTripStepSubmit => 'A benyújtás';

  @override
  String get dvirPreTripStepVerify => 'Ellenőrizze';

  @override
  String get dvirPreTripTapNext => 'Kérem, nyomja meg a NEXT-t, hogy folytassa.';

  @override
  String get dvirPreTripVehicleOutOfService => 'A jármű nem működik.';

  @override
  String get dvirPreTripVehicleReady => 'A jármű készen áll a szolgálatra';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'A javítás ellenőrzött állapotát:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Kérjük, ellenőrizze, hogy minden bejelentett hiba megjavult-e, minden hiba mellett a dobozban feltüntetve.';

  @override
  String get dvirPreTripYourComments => 'A megjegyzéseid:';

  @override
  String get countryPickerNoCountries => 'Nem találtak országokat';

  @override
  String get countryPickerSearchHint => 'Keresd meg ország nevét, kódot vagy számjegy...';

  @override
  String get countryPickerTitle => 'Válassza ki az országot';

  @override
  String get mapDefaultStop => 'Állj meg!';

  @override
  String get mapEndLocation => 'Véghelye';

  @override
  String get mapStartLocation => 'Indulóhelye';

  @override
  String get stopsNoChangesToUndo => 'Nincs változtatás, amit vissza kell hozni.';

  @override
  String get stopsNoStopsAvailable => 'Nincs állomás.';

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
