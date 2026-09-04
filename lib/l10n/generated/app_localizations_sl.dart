import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appInfoBuild => 'Izgradnja številke';

  @override
  String get appInfoDevice => 'Model naprave';

  @override
  String get appInfoOS => 'OS različica';

  @override
  String get appInfoPackage => 'Paket';

  @override
  String get appInfoTitle => 'Informacije o aplikacijah';

  @override
  String get appInfoVersion => 'App različica';

  @override
  String get appTitleSchoolDiary => 'SD sledilnik';

  @override
  String get childrenActionGuardians => 'Varuhovi';

  @override
  String childrenGuardiansFor(Object name) {
    return 'pooblaščeni skrbniki za $name';
  }

  @override
  String get childrenNoGuardians => 'Za otroka ni pooblaščenih skrbnikov.';

  @override
  String get childrenStatusDropped => 'Odvrgnena';

  @override
  String get childrenStatusPending => 'Čakajo';

  @override
  String get childrenStatusPicked => 'Izbrana';

  @override
  String childrenTitle(Object routeName) {
    return 'Otroci  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NE BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Avtobus:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuirani';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuirani: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Brez odsotnih študentov.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Študenti niso označeni v avtobusu.';

  @override
  String get drillChecklistNotOnBus => 'Niti na avtobusu.';

  @override
  String get drillChecklistOnBusNotEvacuated => 'V BUSU  NEDEBE evakuiran';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Na BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Vnaprej so našli dokaze.';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Pot (živo): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Preveritev evakuacijskega vrtljaja';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '-Neznan študent je ostal!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ste prepričani, da želite predložiti ta dnevnik?';

  @override
  String get drillEvidenceConfirmSubmission => 'Potrdite, da je bil opravljen vrt';

  @override
  String get drillEvidenceDriverNotesHint => 'Opišite izvedbo vadbe, vedenje študentov, uporabljene poti izhoda in vse opažene izjeme...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Opombe voznika (najmanj 10 znakov):';

  @override
  String get drillEvidenceFailed => 'Predložba ni uspela';

  @override
  String get drillEvidenceMandatoryWarning => 'Za predložitev vzorca je obvezno vsaj eno fotografijo ali video dokazila.';

  @override
  String get drillEvidenceRecordVideo => 'Snimite video';

  @override
  String get drillEvidenceRetrySubmission => 'VZAPRAVNJANJE';

  @override
  String get drillEvidenceReturnToDashboard => 'VRAČ na tablico';

  @override
  String get drillEvidenceSubmitButton => 'Vključite v vrtno log';

  @override
  String get drillEvidenceSubmitting => 'Predlagam dnevnik vrtovanja...';

  @override
  String get drillEvidenceSuccess => 'Podložnost uspešno!';

  @override
  String get drillEvidenceSuccessMessage => 'Log evakuacijskega izvedenja je uspešno prenesen in je v postopku odobritve.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografija';

  @override
  String get drillEvidenceTitle => 'Obvezni dokazi za vrtanje';

  @override
  String get drillEvidenceUploading => 'Nadzor dokazov in podatkov o kontrolnih seznamih';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Avtobus:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Vrtje:';
  }

  @override
  String get drillRosterMarkAttendance => 'Prihod na obisk';

  @override
  String get drillRosterNoStudents => 'Na tej poti ni študentov.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prihodnost:';
  }

  @override
  String get drillRosterProceed => 'V nadaljevanju je preverjanje';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Pot:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sedlo:';
  }

  @override
  String get drillRosterSelectAll => 'Izberite vse';

  @override
  String get drillSummaryAdminNotesTitle => 'Opombe upravitelja';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Odobrava se na:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Odobrava se na';

  @override
  String get drillSummaryBackToDrills => 'Vračamo se v vrtnice';

  @override
  String get drillSummaryBusNumber => 'Številka avtobusa';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Vodja:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Podrobnosti vrtal';

  @override
  String get drillSummaryDriverNotesTitle => 'Opombe voznika';

  @override
  String get drillSummaryDuration => 'Trajanje';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'V1 _ min';
  }

  @override
  String get drillSummaryEndTime => 'Čas konca';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuirani: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuirani';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Dokazni priloženi mediji';

  @override
  String get drillSummaryGps => 'GPS koordinate';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Vprašanje je:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ne morem naložiti povzetka za ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ni podatkov o vrtalkih.';

  @override
  String get drillSummaryNotOnBus => 'Ne v avtobusu.';

  @override
  String get drillSummaryOnBusNotEvacuated => 'V BUSU - NISTE evakuirani';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografski dokazi';

  @override
  String get drillSummaryRouteId => 'Identifikacija poti';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sedlo:';
  }

  @override
  String get drillSummaryStartTime => 'Čas za začetek';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Študentov evakuacijski dnevnik';

  @override
  String drillSummaryTitle(Object id) {
    return 'Povzetek vrtal (#$id)';
  }

  @override
  String get drillSummaryType => 'Vrsta vrtal';

  @override
  String get drillSummaryVideoEvidence => 'Video dokazi';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Avtobus';
  }

  @override
  String get drillTypeClassification => 'Izberite razvrstitev vrtal:';

  @override
  String get drillTypeCustomHint => 'Vnesite tip evakuacijskega vrtljaja...';

  @override
  String get drillTypeInvalidState => 'Neveljavno stanje vozila ali poti.';

  @override
  String get drillTypeNameBusFire => 'Požar v avtobusu';

  @override
  String get drillTypeNameDangerZone => 'Zona nevarnosti';

  @override
  String get drillTypeNameDriverIncapacitation => 'Nesposobnost voznika';

  @override
  String get drillTypeNameEquipmentOrientation => 'Uprava opreme';

  @override
  String get drillTypeNameFrontDoor => 'Prednja vrata';

  @override
  String get drillTypeNameOthers => 'Drugi';

  @override
  String get drillTypeNameRearDoor => 'Zadnja vrata';

  @override
  String get drillTypeNameSideOrRoof => 'Stranska ali streha';

  @override
  String get drillTypeNameSplit => 'Razdelitev';

  @override
  String get drillTypeNoRouteSelected => 'Ni izbrane poti';

  @override
  String get drillTypePreparation => 'VZRADNINA';

  @override
  String get drillTypeProceed => 'Vstop v študenta';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Pot:';
  }

  @override
  String get drillTypeSelectRoute => 'Izberite pot:';

  @override
  String get drillTypeSpecifyCustom => 'Opis tipa vrtal:';

  @override
  String get drillTypeTitle => 'Izberite vrsto vrtal';

  @override
  String get drillTypeWarning => 'Preverite, da je vozilo varno parkirano pred začetkom izvrševanja.';

  @override
  String get drillsAssignedVehicle => 'Vzeljeno vozilo';

  @override
  String get drillsChecking => 'Preverjam...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Vrt #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nobenega avtobusa ni bilo dodeljeno';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Za avtobus ni bilo zapisanih vadb.';
  }

  @override
  String get drillsNoRoutesAvailable => 'Ni poti za začetek vrtovanja.';

  @override
  String get drillsShowSummary => 'Povzetek prikaza';

  @override
  String get drillsStartDrill => 'Začnite vrtati';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Vodeni: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuacijski vadbe';

  @override
  String get drillsVehicleOutOfService => 'Vozilo izstopilo iz službe';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ta vozilo je trenutno izstopilo iz službe in se ne more uporabljati za vadbe.';

  @override
  String get driverDetailsCdlClassLabel => 'Razred CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Vozniško dovoljenje';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Ime:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Potnik';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Šolski avtobus';

  @override
  String get driverDetailsEndorsementsTitle => 'Podporovanje';

  @override
  String get driverDetailsExpiryDateLabel => 'Datum izteka roka';

  @override
  String get driverDetailsHolderSignature => 'Podpis imetnika';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datum izdajanja';

  @override
  String get driverDetailsLicenseDocTitle => 'Dokument licence';

  @override
  String get driverDetailsLicenseNoLabel => 'Število dovoljenja';

  @override
  String get driverDetailsLicenseTitle => 'Podrobnosti o dovoljenju';

  @override
  String get driverDetailsLicenseTypeLabel => 'Vrsta dovoljenja';

  @override
  String get driverDetailsOfficialSeal => 'Uradna pečat';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'STOP:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'VZELJ:';
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
  String get driverDetailsTapToView => 'Kliknite, da si ogledate dokument DL';

  @override
  String get driverDetailsTitle => 'Podrobnosti o voznikovih';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistem za varnost v avtobusih';

  @override
  String get dvirCategoryCouplingDevices => 'Naprave za priključje';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nadzorni oprema';

  @override
  String get dvirCategoryHorn => 'Rjec';

  @override
  String get dvirCategoryLightingReflectors => 'Osvetljavače in reflektorji';

  @override
  String get dvirCategoryMirrors => 'Ogledala za zadnjo vizijo';

  @override
  String get dvirCategoryParkingBrake => 'Parkirna zavorka';

  @override
  String get dvirCategoryPassengerSeating => 'Sedišča za potnike in omejitve';

  @override
  String get dvirCategoryServiceBrakes => 'Vrednostna zavorna vozila';

  @override
  String get dvirCategorySteeringMechanism => 'Mehanizem upravljanja';

  @override
  String get dvirCategoryTires => 'Škatle';

  @override
  String get dvirCategoryWheelsRims => 'Kolesa in rims';

  @override
  String get dvirCategoryWipers => 'Zizračna stekla';

  @override
  String get dvirPostTripCapturePhoto => 'Slika s napako v kapturi';

  @override
  String get dvirPostTripComplianceTitle => 'Družba, ki je bila v skladu z zahtevami';

  @override
  String get dvirPostTripDefectButton => 'DEFEKT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Poročanje o napaki brez fotografije';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Opozorilo: prijavljate napako v varnostnih območjih ($zones) brez priložitve fotografije.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Preveritev: Avtobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Vnesite podrobnosti o varnostni zadevi...';

  @override
  String get dvirPostTripNotesLabel => 'Opombe (POPOŠTNOVKA O NEDOBI) in STOP';

  @override
  String get dvirPostTripNotesPassedHint => 'Izberite DEFECT za vnos podrobnosti o varnostnih pomislih...';

  @override
  String get dvirPostTripOdometerHeader => 'Trenutni odometri';

  @override
  String get dvirPostTripOdometerInstructions => 'Vnesite kilometrsko vrednost, natančno kot je prikazano na zaslonu avtobusa:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (mile)';

  @override
  String get dvirPostTripOdometerTitle => 'Vozilo je v teku';

  @override
  String get dvirPostTripOdometerWarning => 'Prosimo, da pred nadaljevanjem vnesete odmetnik.';

  @override
  String get dvirPostTripPassButton => 'Prehod';

  @override
  String get dvirPostTripPhotoAttached => 'Slika je bila uspešno priložena.';

  @override
  String get dvirPostTripProgressLabel => 'Napredek inšpekcije';

  @override
  String get dvirPostTripSignatureCaptured => 'Podpis je zajel.';

  @override
  String get dvirPostTripSignatureCert => 'Potrdim, da je bil ta poročilo o preverjanju vozila dokončeno v skladu z FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Preverjanje voznikovega podpisov';

  @override
  String get dvirPostTripSubmitButton => 'Nadzor za pregled';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR je uspešno predložil.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONJA $current O_V1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Območja _______ / _______';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Priznam, da sem pregledal zadnji predloženi poročilo o napakih in preveril popravke (če obstajajo) in navedel, da je avtobus varen za delovanje.';

  @override
  String get dvirPreTripActiveMessage => 'Ta vozilo je aktivno in nima odprtih napak, je preverjeno in varno za delovanje.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktivna pot: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'VOMORANJE VOMORANJE: Napake iz prejšnjega dne';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Številka avtobusa: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Preveritev pošiljanja vozil';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ni podpisal: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Ni bilo zapisano nobene prejšnje napake';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ta vozilo je bilo prijavljeno čist v prejšnjem pregledu, ki je bil opravljen po potovanju.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Za varno delovanje ni potrebnih popravil.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ta vozilo je izstopilo iz servisiranja/ vzdrževanja.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vozilo iz službe';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (repariran)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Poročilo o novih napakoh';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Ob opravih se ne prijavijo nove napake.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Odločba podrejnika za promet';

  @override
  String get dvirPreTripReturnToHomeButton => 'VRAČNITE se domov';

  @override
  String get dvirPreTripSignOffTitle => 'Podpis za sprehod.';

  @override
  String get dvirPreTripSignedSuccess => 'Preverjanje je uspešno podpisano.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Predlog preverjanja';

  @override
  String get dvirPreTripTitle => 'Preverjanje pred potovanjem';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status vozila: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Naredite podpis';

  @override
  String get dvirSigPreviewLabel => 'Preverjanje podpisov:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SPREBI podpis';

  @override
  String get dvirSigTapToDraw => 'TAP za črpanje podpise (po potrebi)';

  @override
  String get dvirSigWatermark => 'Vzorno označite (od spodaj do zgoraj)';

  @override
  String get forgotPasswordCancel => 'Odpoved';

  @override
  String get forgotPasswordEmailLabel => 'E-poštna sporočila';

  @override
  String get forgotPasswordInvalidEmail => 'Vnesite veljavno e-pošto.';

  @override
  String get forgotPasswordSend => 'Pošlji';

  @override
  String get forgotPasswordSuccess => 'Če ta e-pošta obstaja, je bil poslani povezava za ponovni nastavitev.';

  @override
  String get genericBack => 'Vračanje';

  @override
  String get genericCancel => 'Odpoved';

  @override
  String get genericClear => 'ČREN';

  @override
  String get genericClose => 'Bližje';

  @override
  String get genericConfirm => 'Potrdite';

  @override
  String get genericEdit => 'Spremembe';

  @override
  String get genericError => 'Nekaj se je zgodilo narobe.';

  @override
  String get genericLoading => 'Nosijo...';

  @override
  String get genericNext => 'Naslednji';

  @override
  String get genericOk => 'V redu.';

  @override
  String get genericRetry => 'Ponovno poskusite.';

  @override
  String get genericSuccess => 'Uspeh';

  @override
  String homeBusLabel(Object busId) {
    return 'Avtobus:';
  }

  @override
  String get homeDispatchBlocked => 'Izplata je bila blokirana';

  @override
  String get homeDispatchBlockedTitle => 'Izplata je bila blokirana';

  @override
  String get homeErrorNoRoutesPreTrip => 'Za opravljanje pre-trajpa ni na voljo poti.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ni se začel potovanje na strežniku: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Živjo, V0__';
  }

  @override
  String get homeLogout => 'Izstop';

  @override
  String get homeMenuAppInfo => 'Informacije o aplikacijah';

  @override
  String get homeMenuDrill => 'Vrtje';

  @override
  String get homeMenuDriverDetails => 'Podrobnosti o voznikovih';

  @override
  String get homeMenuLanguage => 'Jezik';

  @override
  String get homeMenuPreTrip => 'Prepredelni pregled';

  @override
  String get homeNoRoutes => 'Ni razpoložljivih poti';

  @override
  String get homeReviewVerifyPreTrip => 'Pregled in preverjanje predpotovanja';

  @override
  String get homeSearchHint => 'Potni trgi';

  @override
  String get homeStart => 'Začnite.';

  @override
  String get homeTitle => 'Domov';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vozilo je trenutno izstopljeno.';

  @override
  String get homeVehicleReady => 'Vozilo je pripravljeno in preverjeno za varno delovanje.';

  @override
  String get languageTitle => 'Jezik';

  @override
  String get loginButton => 'Vstop';

  @override
  String get loginEmailOrPhoneLabel => 'E-poštna ali telefonska številka';

  @override
  String get loginErrorEnterPassword => 'Vnesite geslo.';

  @override
  String get loginErrorEnterUsername => 'Vnesite uporabniško ime';

  @override
  String get loginErrorFailed => 'Vstop je neuspešen.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Vnesite veljavno e-poštno sporočilo ali telefonsko številko.';

  @override
  String get loginForgotPassword => 'Si pozabil geslo?';

  @override
  String get loginPasswordLabel => 'Podlaga';

  @override
  String get mapChildrenTooltip => 'Otroci in skrbniki';

  @override
  String get mapConfirmMessage => 'Res hočeš zaključiti potovanje?';

  @override
  String get mapConfirmTitle => 'Potrdite';

  @override
  String get mapCurrentPosition => 'Trenutna položaj';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'Če se stalno ne spreminja lokacija, preverite na internetu.';

  @override
  String get mapReconnectTitle => 'Sledovalnik';

  @override
  String get mapStop => 'Nehaj.';

  @override
  String get mapStopping => '-Zastavljam...';

  @override
  String get mapStopsTooltip => 'Zaustavi';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Obnova pred več letami';
  }

  @override
  String get mapWaitingGps => 'Čakal sem na GPS...';

  @override
  String get mapYes => '-Ja, res.';

  @override
  String get splashDriverApp => 'Aplikacija za voznik';

  @override
  String get stopsActionUndo => 'Odprava';

  @override
  String get stopsCancelledSuccess => 'Uspešno preklicano';

  @override
  String get stopsDefaultLabel => 'Nehaj.';

  @override
  String get stopsGenericError => 'Nekaj se je zgodilo narobe.';

  @override
  String get stopsStatusComplete => 'popolna';

  @override
  String get stopsStatusDone => 'opravljeno';

  @override
  String stopsSubmitCount(Object count) {
    return 'Predložitve ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Uspešno predložena';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Izbrani _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______';
  }

  @override
  String get stopsTypeDrop => 'Odvrzi';

  @override
  String get stopsTypePick => 'Izberite';

  @override
  String stopsUndoCount(Object count) {
    return 'Izključitev ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Odstranitev/odlaganje';

  @override
  String get tripConfirmCancel => 'Odpoved';

  @override
  String get tripConfirmOk => 'V redu.';

  @override
  String get tripConfirmTitle => 'Sledovalnik';

  @override
  String get tripErrorLocationRequired => 'Za začetek potovanja je potrebno dovoljenje za lokacijo.';

  @override
  String get homeMenuPostCrashReporting => 'Poročanje po nesreči';

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
    return 'Vprašanje je:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Lokacija iskanja (npr. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Izberite lokacijo na zemljevidu';

  @override
  String get crashLocationPickerTooltip => 'Potrdite lokacijo';

  @override
  String get incidentDashboardDescription => 'Izberite ukrep za nadaljevanje upravljanja incidentov ali oglejte prejšnje poročila.';

  @override
  String get incidentDashboardHeadline => 'Poročanje o dogodkih po nesreči';

  @override
  String get incidentDashboardLogNew => 'Log Novi nesreč';

  @override
  String get incidentDashboardLogNewSubtitle => 'Začeti novo poročilo o nesreči korak za korakom';

  @override
  String get incidentDashboardTitle => 'Incident po nesreči';

  @override
  String get incidentDashboardViewHistory => 'Ogled zgodovine';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Oglejte si prejšnje poročila o nesreči in stanje';

  @override
  String get incidentDetailsAdminLetter => 'Pismo upravitelja';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Odračun preskusov alkohola (2 urni limit)';

  @override
  String get incidentDetailsBranchId => 'Identifikacija podružnice';

  @override
  String get incidentDetailsBusPlate => 'Plaka za dovoljenje za avtobus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citacijski učinek: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Voznikovi navedeni izpis';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinate: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '-V0__ kopiran na ploščo!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopirajte na ploščo';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datum in čas: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Poročilo DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Poročilo državnega ministrstva za zunanje zadeve (na fakulteto)';

  @override
  String get incidentDetailsDriverNotes => 'Opombe voznika:';

  @override
  String get incidentDetailsDriverUserId => 'ID uporabnika voznika';

  @override
  String get incidentDetailsDrugCountdown => 'Odračun preskusov na zdravila DOT (8 urni limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Doživela smrt';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Poškodbe, ki zahtevajo zdravniško zdravljenje';

  @override
  String get incidentDetailsLawEnforcement => 'Agencija za izvrševanje prava';

  @override
  String get incidentDetailsLoadFailed => 'Ni prenesel podrobnosti.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokacija:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Priloga v medijih';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Ne, ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ni priloženih fotografij ali video.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Med nesrečo na krovu niso bili znani študenti.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generira poročila o obvestilih in pošlje predloge pisem okrožnim nadzornikom ali upravam.';

  @override
  String get incidentDetailsNotificationsTitle => 'Obvestila o prenosu';

  @override
  String get incidentDetailsOfficer => 'Podrobnosti o uradniku';

  @override
  String get incidentDetailsPoliceReport => 'Številka policijskega poročila';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Prednapolnjeno pošiljko:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Pravni temelj:';

  @override
  String get incidentDetailsRouteId => 'Identifikacija poti';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Obvestilo upravnika šole';

  @override
  String get incidentDetailsStatusPending => 'Čakajo';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Podrobnosti:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Poškodovanec';

  @override
  String get incidentDetailsStudentNoInjury => 'Brez poškodb';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Težkost:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Prevoz do:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Študenti na krovu ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NEDOBANJE POTREBNJA po nesreči';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Podrobnosti dogodka';

  @override
  String get incidentDetailsVehicleTowed => 'Vozilo vlečeno';

  @override
  String get incidentDetailsYes => '-Ja.';

  @override
  String get incidentHistoryEmpty => 'Za ta vozilo ni registriranih zapisov incidentov.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ne morem najti dnevnika: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Čas: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NISE potrebno';

  @override
  String get incidentHistoryTestingRequired => 'VZREDEN';

  @override
  String get incidentHistoryTitle => 'Registr dogodkov po nesreči';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Dodatna slika';

  @override
  String get incidentIntakeBadgeNumberError => 'Zahtevane';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Številka značke *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Številka avtobusa: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografija prizorišča';

  @override
  String get incidentIntakeCitationSubtitle => 'Je voznik šolskega avtobusa dobil navedbo za prometno kršitev?';

  @override
  String get incidentIntakeCitationTitle => 'So navedeni?';

  @override
  String get incidentIntakeDateTimeLabel => 'Datum in čas nesreče *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NEBEDNO testiranje';

  @override
  String get incidentIntakeDotTestingRequired => 'NEDOŽENO testiranje';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Voznik:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Vnesite dodatne opombe glede trčenja...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Opombe o nesrečah z voznikom';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Prevoz potnikov na poti: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Priložite dokaze (fotografije) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ali je prišlo do smrtnih žrtev zaradi nesreče?';

  @override
  String get incidentIntakeFatalityTitle => 'Se je zgodilo smrt?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordinate *';

  @override
  String get incidentIntakeHistoryTooltip => 'Ogled zgodovine';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Ali je kdo prej prej imel telesno poškodbo, ki je zahtevala takojšnjo zdravniško pomoč?';

  @override
  String get incidentIntakeInjuriesTitle => 'Po poškodbah, ki zahtevajo zdravniško zdravljenje?';

  @override
  String get incidentIntakeInjuryNotesError => 'Za poškodovane študente so obvezni zapisi o poškodbah.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Opombe o poškodbah / podrobnosti (pooblaščeno) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Težko poškodbo *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Prosim, vpisite se v policijsko agencijo.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agencija za izvrševanje prava (npr. državna potna patrula) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Poročilo policije in ureditve';

  @override
  String get incidentIntakeLocationDescError => 'Prosimo, vnesite opis lokacije';

  @override
  String get incidentIntakeLocationDescLabel => 'Opis lokacije (npr. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Zdravstveno ustanovo, ki je bilo prepeljeno';

  @override
  String get incidentIntakeNoMatchingStudents => 'Brez primerljivih študentov.';

  @override
  String get incidentIntakeNoStudentsFound => 'Študentov ni bilo.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Brez študentov na krovu, pritisnite NEXT.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Za to pot ni bilo študentov.';

  @override
  String get incidentIntakeOfficerNameError => 'Vnesite ime uradnika.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ime policista *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Prosim, vnesite policijsko številko poročila.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policistični številka *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Pot:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informacije o poti in voznikovi';

  @override
  String get incidentIntakeSearchInjuredHint => 'Preiskajte poškodovano otroka...';

  @override
  String get incidentIntakeSearchStudentHint => 'Iskanje študent...';

  @override
  String get incidentIntakeSelectAll => 'Izberite vse študente';

  @override
  String get incidentIntakeSelectOnMap => 'VELJEN na zemljevidu';

  @override
  String get incidentIntakeSeverityFatal => 'Smrtna';

  @override
  String get incidentIntakeSeverityMinor => 'Mladoletni';

  @override
  String get incidentIntakeSeverityModerate => 'Zmerno';

  @override
  String get incidentIntakeSeveritySevere => 'Težko';

  @override
  String get incidentIntakeSeverityTitle => 'Precenljive resnosti nesreče';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'VZNOSTI';

  @override
  String get incidentIntakeTitle => 'Vnos po nesreči';

  @override
  String get incidentIntakeTowedSubtitle => 'Ali je bilo vozilo poškodovano zaradi poškodb, ki je zahtevala, da ga vlečejo s prizorišča?';

  @override
  String get incidentIntakeTowedTitle => 'Vozilo vleče?';

  @override
  String get incidentIntakeWasInjured => 'Je bil poškodovan?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Avtobus:';
  }

  @override
  String get dvirPreTripClose => 'BOSKRAV';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Opombe voznika / opombe (na izbiro)';

  @override
  String get dvirPreTripNoComments => 'Ni bilo dodanih pripomb.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razlog:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Pot:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Podpis je uspešno zajel.';

  @override
  String get dvirPreTripSigMissing => 'Podpis manjka.';

  @override
  String get dvirPreTripSignDefectWarning => 'Podpisujte, da preverite popravilo prejšnjih napak.';

  @override
  String get dvirPreTripStepSignOff => 'Podpis';

  @override
  String get dvirPreTripStepSubmit => 'Predlagati';

  @override
  String get dvirPreTripStepVerify => 'Preveri';

  @override
  String get dvirPreTripTapNext => 'Prosim, kliknite NEXT, da nadaljujete.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vozilo je izstopilo iz službe.';

  @override
  String get dvirPreTripVehicleReady => 'Vozilo je pripravljeno za službo.';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Preverjen status popravil:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Preverite, ali so bile vse prijavljene napake popravljene, če preverite polje poleg vsakega napake.';

  @override
  String get dvirPreTripYourComments => 'Vaše pripombe:';

  @override
  String get countryPickerNoCountries => 'Država ni bila ugotovljena';

  @override
  String get countryPickerSearchHint => 'Iskanje po imenu države, šifri ali številki...';

  @override
  String get countryPickerTitle => 'Izberite državo';

  @override
  String get mapDefaultStop => 'Nehaj.';

  @override
  String get mapEndLocation => 'Končno lokacijo';

  @override
  String get mapStartLocation => 'Začetni položaj';

  @override
  String get stopsNoChangesToUndo => 'Ni sprememb, ki bi jih lahko odvrnili.';

  @override
  String get stopsNoStopsAvailable => 'Nobenih ustavitev ni.';
}
