import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appInfoBuild => 'Rakennusnumero';

  @override
  String get appInfoDevice => 'Laitteen malli';

  @override
  String get appInfoOS => 'Käyttöjärjestelmäversio';

  @override
  String get appInfoPackage => 'Paketti';

  @override
  String get appInfoTitle => 'App-tiedot';

  @override
  String get appInfoVersion => 'App-versio';

  @override
  String get appTitleSchoolDiary => 'SD-jäljitys';

  @override
  String get childrenActionGuardians => 'Vartijat';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Valtuutetut huoltajat $name';
  }

  @override
  String get childrenNoGuardians => 'Lapsen rekisterissä ei ole valtuutettuja huoltajat.';

  @override
  String get childrenStatusDropped => '- Heitetään pois.';

  @override
  String get childrenStatusPending => 'Odotetaan';

  @override
  String get childrenStatusPicked => 'Valitseminen';

  @override
  String childrenTitle(Object routeName) {
    return 'Lapset  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'EI BUSSissa ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autossa:';
  }

  @override
  String get drillChecklistEvacuated => 'Päästetty pois';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Talous:';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Ei poissaolevia opiskelijoita.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ei opiskelijoita.';

  @override
  String get drillChecklistNotOnBus => 'EI BUSSissa';

  @override
  String get drillChecklistOnBusNotEvacuated => 'BUSSI  EI evakuoitu';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUSSissa ($count)';
  }

  @override
  String get drillChecklistProceed => 'Tärkein todiste';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Reitti (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Pääsy- ja evakuointiharjoitusluettelo';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- V0__ Unccounted Student (V0__) Jää!';
  }

  @override
  String get drillEvidenceConfirmMessage => '- Haluatko varmasti toimittaa tämän harjoituksen?';

  @override
  String get drillEvidenceConfirmSubmission => 'Vahvista harjoitusjoukkojen toimittaminen';

  @override
  String get drillEvidenceDriverNotesHint => 'Kuvaile harjoitusten suorittamista, opiskelijan käyttäytymistä, käytettyjä poistumistieja ja havaittuja poikkeuksia.';

  @override
  String get drillEvidenceDriverNotesLabel => 'Kuljettajan huomautukset (vähintään 10 merkkiä):';

  @override
  String get drillEvidenceFailed => 'Epäonnistunut toimitus';

  @override
  String get drillEvidenceMandatoryWarning => 'Vähintään yksi kuva- tai videotodistus on pakollinen harjoitusohjelman toimittamiseen.';

  @override
  String get drillEvidenceRecordVideo => 'Laita videot';

  @override
  String get drillEvidenceRetrySubmission => 'VARASTAUJA';

  @override
  String get drillEvidenceReturnToDashboard => 'Palaa painiketta';

  @override
  String get drillEvidenceSubmitButton => 'Kokeilu- ja leikkausluokkaa';

  @override
  String get drillEvidenceSubmitting => '- Lähetän harjoituspäiväkirjan...';

  @override
  String get drillEvidenceSuccess => 'Allekirjoitus onnistui!';

  @override
  String get drillEvidenceSuccessMessage => 'Pakettiin evakuointiharjoitus kirjaus on onnistunut ja se odottaa hyväksyntää.';

  @override
  String get drillEvidenceTakePhoto => 'Ota kuva';

  @override
  String get drillEvidenceTitle => 'Pakolliset harjoitusnäyttöä';

  @override
  String get drillEvidenceUploading => 'Todisteiden ja tarkistusluettelon tietojen lataaminen';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autossa:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- Vähittäjä.';
  }

  @override
  String get drillRosterMarkAttendance => 'Markin läsnäolo';

  @override
  String get drillRosterNoStudents => 'Tällä reittillä ei ole opiskelijoita.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Nykyinen: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'TASKINTAAT TASKINTA';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Reitti:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Pysäys:';
  }

  @override
  String get drillRosterSelectAll => 'Valitse kaikki';

  @override
  String get drillSummaryAdminNotesTitle => 'Hallintotunnukset';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Hyväksytytyt:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Hyväksyttiin';

  @override
  String get drillSummaryBackToDrills => 'Palaa harjoituskeinoihin';

  @override
  String get drillSummaryBusNumber => 'Bussin numero';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Johtaja:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Harjoitus yksityiskohdat';

  @override
  String get drillSummaryDriverNotesTitle => 'Kuljettajan huomautukset';

  @override
  String get drillSummaryDuration => 'Kesto';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'V0__ min __ V1__ sek';
  }

  @override
  String get drillSummaryEndTime => 'Lopun aika';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Talous:';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Tyyppiä on evakuoitu.';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Todisteet Media-liitännät';

  @override
  String get drillSummaryGps => 'GPS-koordinaatit';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return '- En voi sanoa mitään.';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return '- Ei ole ladattu ID #$id:n harjoituskatso.';
  }

  @override
  String get drillSummaryNoData => '- Ei ole löydetty mitään.';

  @override
  String get drillSummaryNotOnBus => 'Ei bussissa';

  @override
  String get drillSummaryOnBusNotEvacuated => 'BUSSI - EI evakuoitu';

  @override
  String get drillSummaryPhotoEvidence => 'Kuvan todisteet';

  @override
  String get drillSummaryRouteId => 'Reitin tunnus';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Pysäys:';
  }

  @override
  String get drillSummaryStartTime => 'Aloitusaika';

  @override
  String get drillSummaryStatus => 'Tilanne';

  @override
  String get drillSummaryStudentLogTitle => 'Opiskelijoiden evakuointipäiväkirja';

  @override
  String drillSummaryTitle(Object id) {
    return 'Työskentely (V0)';
  }

  @override
  String get drillSummaryType => 'Tyyppinen poraus';

  @override
  String get drillSummaryVideoEvidence => 'Videon todisteet';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autossa';
  }

  @override
  String get drillTypeClassification => 'Valitse urakointiluokka:';

  @override
  String get drillTypeCustomHint => '- Kirjoita kustomistilanne.';

  @override
  String get drillTypeInvalidState => 'Epävirallinen ajoneuvon tai reitin tila.';

  @override
  String get drillTypeNameBusFire => 'Autossa tulipalo';

  @override
  String get drillTypeNameDangerZone => 'Vaarallisuusalue';

  @override
  String get drillTypeNameDriverIncapacitation => 'Kuljettajan kyky';

  @override
  String get drillTypeNameEquipmentOrientation => 'Laitteiden suuntaus';

  @override
  String get drillTypeNameFrontDoor => 'Etäoven ovi';

  @override
  String get drillTypeNameOthers => 'Muut';

  @override
  String get drillTypeNameRearDoor => 'Takaovet';

  @override
  String get drillTypeNameSideOrRoof => 'Sijainen tai katto';

  @override
  String get drillTypeNameSplit => 'Jakaus';

  @override
  String get drillTypeNoRouteSelected => 'Ei valittua reittiä';

  @override
  String get drillTypePreparation => 'KOKOITUS';

  @override
  String get drillTypeProceed => 'Tärkein tapa on saada opiskelijat';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Reitti:';
  }

  @override
  String get drillTypeSelectRoute => 'Valitse reitti:';

  @override
  String get drillTypeSpecifyCustom => 'Määritä poraustyypin kuvaus:';

  @override
  String get drillTypeTitle => 'Valitse poraustyypi';

  @override
  String get drillTypeWarning => 'Varmista, että ajoneuvo pysäköidään turvallisesti ennen teloituksen aloittamista.';

  @override
  String get drillsAssignedVehicle => 'Toimivaltainen ajoneuvo';

  @override
  String get drillsChecking => 'Tarkistan...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vähennä #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ei bussi määrätty';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ei ole havaittu harjoitusten tekemistä bussille $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Ei ole reittejä harjoittelun aloittamiseen.';

  @override
  String get drillsShowSummary => 'Näytelmä';

  @override
  String get drillsStartDrill => 'Aloita harjoitukset';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Toimittu: $date Tila: $status';
  }

  @override
  String get drillsTitle => 'Pääsykäytöt';

  @override
  String get drillsVehicleOutOfService => 'Ajoneuvo on käytöstä poissa';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Tämä ajoneuvo on käytössä eikä sitä voida käyttää harjoituksiin.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL-luokka';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Kuljetuslupa';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nimi:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Matkustaja';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Koulubussi';

  @override
  String get driverDetailsEndorsementsTitle => 'Hyväksytytään';

  @override
  String get driverDetailsExpiryDateLabel => 'Kestävyyspäivä';

  @override
  String get driverDetailsHolderSignature => 'PÄÄÄÄÄÄÄÄÄÄÄÄ';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Lähetyspäivä';

  @override
  String get driverDetailsLicenseDocTitle => 'Lisenssiasiakirja';

  @override
  String get driverDetailsLicenseNoLabel => 'Lupa ei ole';

  @override
  String get driverDetailsLicenseTitle => 'Lisenssin tiedot';

  @override
  String get driverDetailsLicenseTypeLabel => 'Lisenssin tyyppi';

  @override
  String get driverDetailsOfficialSeal => 'Virallinen sinetti';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Luokka:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'K:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'KYVÄRÄ:';
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
  String get driverDetailsTapToView => 'Napsauta DL- asiakirjan katsomiseen';

  @override
  String get driverDetailsTitle => 'Kuljettajan tiedot';

  @override
  String get dvirCategoryBusSafetySystems => 'Autobussille tarkoitettujen turvallisuusjärjestelmien käyttö';

  @override
  String get dvirCategoryCouplingDevices => 'Kytkintälaitteet';

  @override
  String get dvirCategoryEmergencyEquipment => 'Hätävarusteet';

  @override
  String get dvirCategoryHorn => 'Korvi';

  @override
  String get dvirCategoryLightingReflectors => 'Valonlaitteet ja heijastimet';

  @override
  String get dvirCategoryMirrors => 'Taka-ilmakäyttö';

  @override
  String get dvirCategoryParkingBrake => 'Parkkiraja';

  @override
  String get dvirCategoryPassengerSeating => 'Matkustajien istuimet ja rajoitukset';

  @override
  String get dvirCategoryServiceBrakes => 'Palvelupremit';

  @override
  String get dvirCategorySteeringMechanism => 'Ohjausmekanismi';

  @override
  String get dvirCategoryTires => 'Pyyhkeet';

  @override
  String get dvirCategoryWheelsRims => 'Pyörät ja rimu';

  @override
  String get dvirCategoryWipers => 'Tuuliklaatikkojen pyyhkäisevät';

  @override
  String get dvirPostTripCapturePhoto => 'VÄYRÄVÄVÄVÄVÄVÄTÄ';

  @override
  String get dvirPostTripComplianceTitle => 'YMPÄISYHTYKYSELY';

  @override
  String get dvirPostTripDefectButton => 'VÄRÄÄ';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Vääräntä ilmoittaminen ilman kuvaa';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Huomio: ilmoitatte virheestä turvallisuusalueella ($zones) ilman kuvaa.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Tarkastus: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Kirjoita turvallisuusongelma yksityiskohdat...';

  @override
  String get dvirPostTripNotesLabel => 'Huomattelut (VALKINUSVALKIN) ja PÄÄÄÄÄ';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Valitse DEFECT, jotta voit kirjoittaa turvallisuusongelmien yksityiskohdat...';

  @override
  String get dvirPostTripOdometerHeader => 'Nykyinen Odometerin lukeminen';

  @override
  String get dvirPostTripOdometerInstructions => 'Kirjoita kilometrin lukeminen juuri niin kuin se näkyy linja-auto-instrumenttipaneelissa:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (milimet)';

  @override
  String get dvirPostTripOdometerTitle => 'Autoja ajateltava aika';

  @override
  String get dvirPostTripOdometerWarning => 'Kirjoita kilometrin lukeminen ennen jatkotoiminta.';

  @override
  String get dvirPostTripPassButton => '- En ole nähnyt .';

  @override
  String get dvirPostTripPhotoAttached => 'Kuva kiinnitetty onnistuneesti.';

  @override
  String get dvirPostTripProgressLabel => 'Tarkastuksen edistyminen';

  @override
  String get dvirPostTripSignatureCaptured => 'Allekirjoitus kiinni.';

  @override
  String get dvirPostTripSignatureCert => 'Todistan, että tämä ajoneuvon kierrosluettelo on täytetty FMCSA 396.11 -asetusten mukaisesti.';

  @override
  String get dvirPostTripSignatureTitle => 'Kuljettajan allekirjoitusvalvonta';

  @override
  String get dvirPostTripSubmitButton => 'KATKUSKAN tarkastus';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR toimitti menestyksekkäästi.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Alue $current V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'V0__ / V1__ alueet';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Tunnistan, että olen tarkastanut viimeisen toimitettujen virheiden raportin ja tarkistanut korjaukset (jos niitä on) ja ilmoittanut, että linja-auto on turvallinen.';

  @override
  String get dvirPreTripActiveMessage => 'Tämä ajoneuvo on Active, jolla ei ole avoimia virheitä, se on todettu ja turvallinen käytettäväksi.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiivinen reitti: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'VARASTAU: Eilen tapahtuneet virheet';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Bussin numero: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'YHVENVENVENNENVENNEN tarkastus';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Epäonnistunut allekirjoittaminen:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Edellinen virhe ei ole kirjattu';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Tämä ajoneuvo ilmoitti puhtaana edellisessä matkan jälkeisessä työkierroksessa.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ei tarvitse korjata turvallista toimintaa.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Tämä ajoneuvo on käytöstä poissa korjaamiseksi/huoltokäyttöön.';

  @override
  String get dvirPreTripOutofServiceButton => 'Auto on poissa palvelusta';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Syynä:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '- V0__ (korjautettu)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Uudet virheet';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Uusien virheiden ilmoittaminen on käytössä korjausten aikana.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Tilanne:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Liikenne- ja liikennealan hallintoneuvoston päätöslauselma';

  @override
  String get dvirPreTripReturnToHomeButton => 'Palaa kotiin';

  @override
  String get dvirPreTripSignOffTitle => '-Sign-OFF: N kävelymatkan eteenpäin .';

  @override
  String get dvirPreTripSignedSuccess => 'Tarkistus allekirjoitettiin onnistuneesti.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Ehdotus:';

  @override
  String get dvirPreTripTitle => 'Matkan edeltävä tarkistus';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Ajoneuvon tila: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Piirrä allekirjoitus';

  @override
  String get dvirSigPreviewLabel => 'Saatu allekirjoitus:';

  @override
  String get dvirSigRedraw => 'VALKASTO';

  @override
  String get dvirSigSave => 'Säästä allekirjoitus';

  @override
  String get dvirSigTapToDraw => 'TAPP VALKISTAA VALKISTA (KESKETY)';

  @override
  String get dvirSigWatermark => 'Väärin merkki (alasta ylöspäin)';

  @override
  String get forgotPasswordCancel => 'Perustetaan';

  @override
  String get forgotPasswordEmailLabel => 'E-mailin lähettäminen';

  @override
  String get forgotPasswordInvalidEmail => 'Kirjoita voimassa oleva sähköposti';

  @override
  String get forgotPasswordSend => 'Lähetä';

  @override
  String get forgotPasswordSuccess => 'Jos sähköposti on olemassa, on lähetetty uudelleenjärjestelylinkki.';

  @override
  String get genericBack => '- Takaisin .';

  @override
  String get genericCancel => 'Perustetaan';

  @override
  String get genericClear => 'Selvä';

  @override
  String get genericClose => 'Lähes';

  @override
  String get genericConfirm => 'Vahvistus';

  @override
  String get genericEdit => 'Muokkaus';

  @override
  String get genericError => 'Jokin meni pieleen.';

  @override
  String get genericLoading => 'Laadun laittaminen...';

  @override
  String get genericNext => 'Seuraava';

  @override
  String get genericOk => 'Hyvä on.';

  @override
  String get genericRetry => 'Yritä uudelleen .';

  @override
  String get genericSuccess => 'Menestys';

  @override
  String homeBusLabel(Object busId) {
    return 'Autossa:';
  }

  @override
  String get homeDispatchBlocked => 'Lähetys estettiin';

  @override
  String get homeDispatchBlockedTitle => 'Lähetys estettiin';

  @override
  String get homeErrorNoRoutesPreTrip => 'Pre-Trip-reittiä ei ole käytettävissä.';

  @override
  String homeFailedToStartTrip(Object error) {
    return '- Se ei käynnistynyt.';
  }

  @override
  String homeHi(Object name) {
    return 'Hei, V0';
  }

  @override
  String get homeLogout => 'Käyntikäyttö';

  @override
  String get homeMenuAppInfo => 'App-tiedot';

  @override
  String get homeMenuDrill => 'Pöytä';

  @override
  String get homeMenuDriverDetails => 'Kuljettajan tiedot';

  @override
  String get homeMenuLanguage => 'Kielenkäyttö';

  @override
  String get homeMenuPreTrip => 'Matkan edeltävä tarkastus';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Ei ole käytettävissä reittejä';

  @override
  String get homeReviewVerifyPreTrip => 'Tarkastelu & tarkistelu ennen matkaa';

  @override
  String get homeSearchHint => 'Etsivärejä';

  @override
  String get homeStart => 'Aloita';

  @override
  String get homeTitle => 'Koti';

  @override
  String get homeVehicleOutOfServiceDefault => 'Ajoneuvo on tällä hetkellä OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Ajoneuvo on valmis ja tarkistettu turvalliseen käyttöön.';

  @override
  String get languageTitle => 'Kielenkäyttö';

  @override
  String get loginButton => 'Sisääntyminen';

  @override
  String get loginEmailOrPhoneLabel => 'E-mailin tai puhelinnumeron';

  @override
  String get loginErrorEnterPassword => 'Kirjoita salasana';

  @override
  String get loginErrorEnterUsername => 'Kirjoita käyttäjänimi';

  @override
  String get loginErrorFailed => 'Sisäsy epäonnistunut.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Kirjoita voimassa oleva sähköposti- tai puhelinnumero';

  @override
  String get loginForgotPassword => 'Unohditko salasanan?';

  @override
  String get loginPasswordLabel => 'Salaus';

  @override
  String get mapChildrenTooltip => 'Lapset ja huoltajat';

  @override
  String get mapConfirmMessage => 'Haluatko todella lopettaa matkan?';

  @override
  String get mapConfirmTitle => 'Vahvistus';

  @override
  String get mapCurrentPosition => 'Nykyinen asema';

  @override
  String get mapNo => '- Ei , ei .';

  @override
  String get mapReconnectMessage => 'Paikan päivitys epäonnistuu usein, tarkista internetissäsi.';

  @override
  String get mapReconnectTitle => 'Jäljitys';

  @override
  String get mapStop => 'Lopeta.';

  @override
  String get mapStopping => '- Lopettakaa.';

  @override
  String get mapStopsTooltip => '- Se pysähtyy .';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Päivitetty .';
  }

  @override
  String get mapWaitingGps => 'Odottamassa GPS:tä...';

  @override
  String get mapYes => '- Kyllä , minä olen .';

  @override
  String get splashDriverApp => 'Kuljettajan sovellus';

  @override
  String get stopsActionUndo => 'Vihreä';

  @override
  String get stopsCancelledSuccess => 'Onnistuva peruutus';

  @override
  String get stopsDefaultLabel => 'Lopeta.';

  @override
  String get stopsGenericError => 'Jokin meni pieleen.';

  @override
  String get stopsStatusComplete => 'täysimääräinen';

  @override
  String get stopsStatusDone => 'tehty';

  @override
  String stopsSubmitCount(Object count) {
    return 'Toiminta ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Edullisesti toimitettu';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'V:n valinta';
  }

  @override
  String get stopsTypeDrop => '- Laske .';

  @override
  String get stopsTypePick => 'Valitse';

  @override
  String stopsUndoCount(Object count) {
    return 'Vähennetty ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Valittu valinta/lasku';

  @override
  String get tripConfirmCancel => 'Perustetaan';

  @override
  String get tripConfirmOk => 'Hyvä on.';

  @override
  String get tripConfirmTitle => 'Jäljitys';

  @override
  String get tripErrorLocationRequired => 'Matkan aloittamiseen tarvitaan sijaintilupaa.';

  @override
  String get homeMenuPostCrashReporting => 'Ruton jälkeen raportointi';

  @override
  String homeVehicleReason(Object reason) {
    return 'Syynä:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Tilanne:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return '- En voi sanoa mitään.';
  }

  @override
  String get crashLocationPickerSearchHint => 'Etsiväla (esim. Market St)';

  @override
  String get crashLocationPickerTitle => 'Valitse sijainti kartalla';

  @override
  String get crashLocationPickerTooltip => 'Vahvista sijainti';

  @override
  String get incidentDashboardDescription => 'Valitse toimi, jolla voit jatkaa tapahtumahallintaa tai katsoa aiemmat raportit.';

  @override
  String get incidentDashboardHeadline => 'Ruton jälkeen tapahtuvan tapahtuman raportointi';

  @override
  String get incidentDashboardLogNew => 'Login Uusi kouristelu';

  @override
  String get incidentDashboardLogNewSubtitle => 'Aloita uusi askel askelkohtauskertomus';

  @override
  String get incidentDashboardTitle => 'Ruton jälkeen tapahtuma';

  @override
  String get incidentDashboardViewHistory => 'Katso historiaa';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Näytä aiemmat onnettomuuskertomukset ja tila';

  @override
  String get incidentDetailsAdminLetter => 'Hallintoneuvoston kirje';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholi-testien laskenta (kaksi tunnin raja)';

  @override
  String get incidentDetailsBranchId => 'Osaston tunnus';

  @override
  String get incidentDetailsBusPlate => 'Autoluokituslauta';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citation Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Kuljettajalle myönnetty lainaus';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinaatit: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0... kopioitu levylaudalle!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopioi äänitekijä';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Päivä ja aika: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Talousministeriön raportti';

  @override
  String get incidentDetailsDoeReportTitle => 'Valtion EY-raportti (valinnainen)';

  @override
  String get incidentDetailsDriverNotes => 'Kuljettajan huomautukset:';

  @override
  String get incidentDetailsDriverUserId => 'Kuljettajan käyttäjä- tunnus';

  @override
  String get incidentDetailsDrugCountdown => 'DOT huumeiden testauksen laskenta (kymmenen tunnin raja)';

  @override
  String get incidentDetailsFatalityOccurred => 'Tapahtuma tapahtui';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Tapahtuma #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Lääketieteen tarpeessa olevat vammat';

  @override
  String get incidentDetailsLawEnforcement => 'Oikeusvalvontavirasto';

  @override
  String get incidentDetailsLoadFailed => '- Ei ole ladattu yksityiskohtia.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Paikka:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Media-liittymät';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Tilanne:';
  }

  @override
  String get incidentDetailsNo => 'Ei ole';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ei kuvia tai videoita.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ei ollut mitään opiskelijoita.';

  @override
  String get incidentDetailsNotificationsDesc => 'Tuotetaan ilmoituksia ja lähetetään mallina kirjoituksia alueviranomaisille tai hallintoon.';

  @override
  String get incidentDetailsNotificationsTitle => 'Lähetysilmoitukset';

  @override
  String get incidentDetailsOfficer => 'Virkamiesten tiedot';

  @override
  String get incidentDetailsPoliceReport => 'Poliisi-ilmoitusnumero';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Ennakko-siirto:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Säännöllinen perusta:';

  @override
  String get incidentDetailsRouteId => 'Reitin tunnus';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Kouluvalvoja ilmoittaa';

  @override
  String get incidentDetailsStatusPending => 'Odotetaan';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Yksityiskohdat:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Loukkaantunut';

  @override
  String get incidentDetailsStudentNoInjury => 'Ei loukkaantuneita';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Raskeus:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Siirretään:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Opiskelijat Aluksella ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Testaus vaatii vahingon jälkeistä testiä';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Tilanne:';
  }

  @override
  String get incidentDetailsTitle => 'Tapahtumista koskevat yksityiskohdat';

  @override
  String get incidentDetailsVehicleTowed => 'Ajoneuvo vetäytyy';

  @override
  String get incidentDetailsYes => 'Kyllä , minä olen .';

  @override
  String get incidentHistoryEmpty => 'Ei ole rekisteröityä tapauskirjoja.';

  @override
  String incidentHistoryFailed(Object error) {
    return '- Ei saatu kirjaimia: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Aika: V0 Bus: V1 Testing: V2';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Tapahtuma #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'EI TÄVÄ';

  @override
  String get incidentHistoryTestingRequired => 'Vaatimukset';

  @override
  String get incidentHistoryTitle => 'Ruton jälkeen tapahtuvien tapahtumien rekisteri';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Lisää toinen kuva';

  @override
  String get incidentIntakeBadgeNumberError => 'Vaatimukset';

  @override
  String get incidentIntakeBadgeNumberLabel => '- Vihreiden numero *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bussin numero: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Kuva tapahtuman kohtauksesta';

  @override
  String get incidentIntakeCitationSubtitle => '- Onko koulubussin kuljettajalle annettu liikenneviikko?';

  @override
  String get incidentIntakeCitationTitle => 'Onko lainaus annettu?';

  @override
  String get incidentIntakeDateTimeLabel => 'Hyökkäyspäivä & aika *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Testaus ei ole tarpeen';

  @override
  String get incidentIntakeDotTestingRequired => 'KATSOITUS KATSOITUS';

  @override
  String incidentIntakeDriver(Object driverName) {
    return '- Vankki.';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Kirjoita lisätietoja törmäyksestä...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Kuljettajan onnettomuusmerkinnät';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Matkan matkustajat eivät ole ladattu: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Liittäkää todisteet (kuvat) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Tapahtuiko onnettomuudessa mitään kuolemantapauksia?';

  @override
  String get incidentIntakeFatalityTitle => 'Tapahtuiko kuolema?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-koordinaatit *';

  @override
  String get incidentIntakeHistoryTooltip => 'Katso historiaa';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Onko kukaan saanut ruumiillista vammaa, joka vaati välittömästi hoitoa paikan ulkopuolella?';

  @override
  String get incidentIntakeInjuriesTitle => 'Haavoittuminen, joka vaatii lääketieteellistä hoitoa?';

  @override
  String get incidentIntakeInjuryNotesError => 'Loukkaantumisasiakirjat ovat pakollisia loukkaantuneille opiskelijoille';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Vaurioiden ilmoitus / yksityiskohdat (velvollinen) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Loukkaantumisen vakavuus *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Sisään tullaan .';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Oikeusvalvontavirasto (esim. valtion tievartiot) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Oikeusvalvonta ja poliisi';

  @override
  String get incidentIntakeLocationDescError => 'Kirjoita sijainti kuvaus';

  @override
  String get incidentIntakeLocationDescLabel => 'Paikan kuvaus (esim. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Lääketieteellinen laitosto kuljetetaan';

  @override
  String get incidentIntakeNoMatchingStudents => 'Ei yhtään vastaavaa opiskelijaa.';

  @override
  String get incidentIntakeNoStudentsFound => 'Opiskelijoita ei löytynyt.';

  @override
  String get incidentIntakeNoStudentsOnboard => '- Ei opiskelijoita.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ei opiskelijoita.';

  @override
  String get incidentIntakeOfficerNameError => 'Kirjoita virkamiehen nimi .';

  @override
  String get incidentIntakeOfficerNameLabel => 'Poliisin nimi *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Kirjoita poliisi-ilmoitusnumero .';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Poliisi-ilmoitusnumero *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Reitti:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Reitin ja kuljettajan tiedot';

  @override
  String get incidentIntakeSearchInjuredHint => 'Etsikää loukkaantuneita lapsia...';

  @override
  String get incidentIntakeSearchStudentHint => 'Etsi opiskelija...';

  @override
  String get incidentIntakeSelectAll => 'Valitse kaikki oppilaat';

  @override
  String get incidentIntakeSelectOnMap => 'VALKOITUS kartalla';

  @override
  String get incidentIntakeSeverityFatal => 'Todellinen';

  @override
  String get incidentIntakeSeverityMinor => 'Pienempi';

  @override
  String get incidentIntakeSeverityModerate => 'Keskityt';

  @override
  String get incidentIntakeSeveritySevere => 'Vakava';

  @override
  String get incidentIntakeSeverityTitle => 'Vajelemisen vakavuusmuutokset';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'KATKUSKIN';

  @override
  String get incidentIntakeTitle => 'Ruton jälkeen tapahtuva syöpää';

  @override
  String get incidentIntakeTowedSubtitle => 'Onko jokin ajoneuvo saanut vammauksia, jotka vaativat sen vetämisen paikalta?';

  @override
  String get incidentIntakeTowedTitle => '- Auto vetäytyi?';

  @override
  String get incidentIntakeWasInjured => '- Loukkaantuiko?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autossa:';
  }

  @override
  String get dvirPreTripClose => 'Lähes';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Kuljettajan huomautukset / huomautukset (valinnainen)';

  @override
  String get dvirPreTripNoComments => 'Ei lisätty huomautuksia.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Syynä:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Reitti:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Allekirjoitus onnistuneesti saatu.';

  @override
  String get dvirPreTripSigMissing => '- Allekirjoitus on kadonnut.';

  @override
  String get dvirPreTripSignDefectWarning => 'Kirjoita allekirjoitus, jotta varmistetaan, että aiemmat virheet on korjattu.';

  @override
  String get dvirPreTripStepSignOff => 'Allekirjoitus';

  @override
  String get dvirPreTripStepSubmit => 'Jätä';

  @override
  String get dvirPreTripStepVerify => 'Tarkista';

  @override
  String get dvirPreTripTapNext => 'Kytketään NEXT -näppäimen.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Auto on poissa käytöstä';

  @override
  String get dvirPreTripVehicleReady => 'Ajoneuvo on valmiina palvelukseen';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Tarkistetun korjauksen tila:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Tarkista, että kaikki ilmoitetut vikaat on korjattu, tarkistaen kullekin vikaan vieressä olevan laatikon.';

  @override
  String get dvirPreTripYourComments => 'Kommenttisi:';

  @override
  String get countryPickerNoCountries => 'Ei ole löydetty maata';

  @override
  String get countryPickerSearchHint => 'Etsi maan nimi, koodi tai soittokodilla...';

  @override
  String get countryPickerTitle => 'Valitse maa';

  @override
  String get mapDefaultStop => 'Lopeta.';

  @override
  String get mapEndLocation => 'Loppupaikka';

  @override
  String get mapStartLocation => 'Aloitustapaikka';

  @override
  String get stopsNoChangesToUndo => 'Muutoksia ei voida peruuttaa.';

  @override
  String get stopsNoStopsAvailable => '- Ei pysähdyksiä.';

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
