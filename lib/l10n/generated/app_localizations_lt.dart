import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appInfoBuild => 'Įstatyti numerį';

  @override
  String get appInfoDevice => 'Įrankio modelis';

  @override
  String get appInfoOS => 'OS versija';

  @override
  String get appInfoPackage => 'Paketas';

  @override
  String get appInfoTitle => 'Informacija apie programas';

  @override
  String get appInfoVersion => 'Programos versija';

  @override
  String get appTitleSchoolDiary => 'SD sekimo aparatas';

  @override
  String get childrenActionGuardians => 'Saugytojai';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Įgalioti priežiūros pareigūnai';
  }

  @override
  String get childrenNoGuardians => 'Nėra įgalioti globėjai, kurie būtų šio vaiko.';

  @override
  String get childrenStatusDropped => 'Išleistas';

  @override
  String get childrenStatusPending => 'Laukiama';

  @override
  String get childrenStatusPicked => 'Pasirinktas';

  @override
  String childrenTitle(Object routeName) {
    return 'Vaikai  __ V0__';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'NESESESENTI / NES BUSE ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobusas:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuoti';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuacija: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Nėra studentų, kurie nebuvo.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Nėra studentų, pažymėtų autobuse.';

  @override
  String get drillChecklistNotOnBus => 'Nėra autobusoje';

  @override
  String get drillChecklistOnBusNotEvacuated => 'BUSE  NESEKVUATĖ';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'BUSE ($count)';
  }

  @override
  String get drillChecklistProceed => 'Įrodymo užėmimas';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Kelionė (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuacijos treniruotės patikrinimo sąrašas';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Nėra nė vieno studentų!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ar tikrai norite pateikti šį egzaminų žurnalis?';

  @override
  String get drillEvidenceConfirmSubmission => 'Įsteigti išvaržymo pateikimą';

  @override
  String get drillEvidenceDriverNotesHint => 'Aprašykite egzekucijos vykdymą, studentų elgesį, išėjimo kelius ir visus pastebimus išimtis...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Vairuotojo pažymėjimai (minimalus 10 simbolių):';

  @override
  String get drillEvidenceFailed => 'Nė vienas pareiškimas nesėkmingai pateiktas';

  @override
  String get drillEvidenceMandatoryWarning => 'Atliekant egzaminą būtina pateikti bent vieną nuotrauką ar vaizdo įrašo įrodymą.';

  @override
  String get drillEvidenceRecordVideo => 'Įregistruokite vaizdo įrašą';

  @override
  String get drillEvidenceRetrySubmission => 'RETRIOS SENDIMAS';

  @override
  String get drillEvidenceReturnToDashboard => 'Grįžti į žibintą';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Pateikiu egzaminų įrašą...';

  @override
  String get drillEvidenceSuccess => 'Pasikvietimas sėkmingai!';

  @override
  String get drillEvidenceSuccessMessage => 'Evakuacijos egzaminų žurnalis buvo sėkmingai įkeltas ir laukia patvirtinimo.';

  @override
  String get drillEvidenceTakePhoto => 'Fotografuokite';

  @override
  String get drillEvidenceTitle => 'Privalomas egzaminas';

  @override
  String get drillEvidenceUploading => 'Įrašyti įrodymus ir patikrinimo sąrašo duomenis';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobusas:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Žodžiu:';
  }

  @override
  String get drillRosterMarkAttendance => 'Įtarimas';

  @override
  String get drillRosterNoStudents => 'Nėra studentų, užsiregistruotų šiuo maršrutu.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Atvykimas: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Įvairą patikrinti';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Kelionė:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Sėdis:';
  }

  @override
  String get drillRosterSelectAll => 'Pasirinkite visus';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin įrašai';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Įprastai:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Įprastai';

  @override
  String get drillSummaryBackToDrills => 'Grįžkime prie \"Dryl\"';

  @override
  String get drillSummaryBusNumber => 'Autobuso numeris';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Dirbėjas:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Išsiskaldymas';

  @override
  String get drillSummaryDriverNotesTitle => 'Vairuotojo pažymėjimai';

  @override
  String get drillSummaryDuration => 'Laikas';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sek';
  }

  @override
  String get drillSummaryEndTime => 'Baigiamojo laiko';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuacija: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuacija';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Įrodymai, pridedami prie žiniasklaidos';

  @override
  String get drillSummaryGps => 'GPS koordinatai';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'L.V.';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nė vienas iš šių metodų nebuvo pateiktas.';
  }

  @override
  String get drillSummaryNoData => 'Nėra jokių ištrynimo duomenų.';

  @override
  String get drillSummaryNotOnBus => 'Ne autobuse';

  @override
  String get drillSummaryOnBusNotEvacuated => 'BUSSyje - NEEvacuoti';

  @override
  String get drillSummaryPhotoEvidence => 'Fotografijos įrodymai';

  @override
  String get drillSummaryRouteId => 'Kelio identifikacija';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Sėdis:';
  }

  @override
  String get drillSummaryStartTime => 'Pradėti laikas';

  @override
  String get drillSummaryStatus => 'Statusas';

  @override
  String get drillSummaryStudentLogTitle => 'Studentų evakuocijos žurnalis';

  @override
  String drillSummaryTitle(Object id) {
    return 'Ištrūkio santrauka (#$id)';
  }

  @override
  String get drillSummaryType => 'Iškėlimo tipas';

  @override
  String get drillSummaryVideoEvidence => 'Video įrodymai';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobusas';
  }

  @override
  String get drillTypeClassification => 'Pasirinkite varžybų klasifikaciją:';

  @override
  String get drillTypeCustomHint => 'Įveskite specialių evakuovimo drill tipo...';

  @override
  String get drillTypeInvalidState => 'Neįgali transporto priemonės ar maršruto būklė.';

  @override
  String get drillTypeNameBusFire => 'Autobuso gaisras';

  @override
  String get drillTypeNameDangerZone => 'Nelabai pavojinga zona';

  @override
  String get drillTypeNameDriverIncapacitation => 'Vairuotojo negalios';

  @override
  String get drillTypeNameEquipmentOrientation => 'Įrenginių orientavimas';

  @override
  String get drillTypeNameFrontDoor => 'Pirmoji durys';

  @override
  String get drillTypeNameOthers => 'Kiti';

  @override
  String get drillTypeNameRearDoor => 'Užpakalpos durys';

  @override
  String get drillTypeNameSideOrRoof => 'Šoninė arba stogas';

  @override
  String get drillTypeNameSplit => 'Išskirtas';

  @override
  String get drillTypeNoRouteSelected => 'Nėra pasirinkto kelio';

  @override
  String get drillTypePreparation => 'REMAS';

  @override
  String get drillTypeProceed => 'Į studentų sąrašą';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Kelionė:';
  }

  @override
  String get drillTypeSelectRoute => 'Pasirink maršrutą:';

  @override
  String get drillTypeSpecifyCustom => 'Paskutinis išvaržymo tipo aprašymas:';

  @override
  String get drillTypeTitle => 'Pasirinkite išvaržymo tipą';

  @override
  String get drillTypeWarning => 'Įsitikinkite, kad transporto priemonė yra saugiai pastatyta prieš pradedant įvykdyti įvykdymą.';

  @override
  String get drillsAssignedVehicle => 'Paskirtinis transporto priemonė';

  @override
  String get drillsChecking => '- Pasvarstoju...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Ištrūkiai #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Busų nėra';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Busuo vežimo įrašų nėra $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nėra maršrutų, kurie galėtų pradėti varžymą.';

  @override
  String get drillsShowSummary => 'Paskaitos santrauka';

  @override
  String get drillsStartDrill => 'Pradėkite ištrinti';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Veiktas: __ V0__ Status: __ V1__';
  }

  @override
  String get drillsTitle => 'Evakuacijos treniruotės';

  @override
  String get drillsVehicleOutOfService => 'Vairuočių eksploatavimas';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Šis transporto priemonė šiuo metu nėra eksploatuojama ir negali būti naudojama treniruošiams.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL klasė';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Vairuotojo pažymėjimas';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NAMAS:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Keleivio';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Mokyklos autobusas';

  @override
  String get driverDetailsEndorsementsTitle => 'Paslaugų priėmimas';

  @override
  String get driverDetailsExpiryDateLabel => 'Paskutinis terminas';

  @override
  String get driverDetailsHolderSignature => 'PRIŠTINKAS';

  @override
  String driverDetailsId(Object driverId) {
    return 'Žmogaus teisių apsaugos';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Išdavimo data';

  @override
  String get driverDetailsLicenseDocTitle => 'Licencijos dokumentas';

  @override
  String get driverDetailsLicenseNoLabel => 'Licencijos Nr.';

  @override
  String get driverDetailsLicenseTitle => 'Licencijos duomenys';

  @override
  String get driverDetailsLicenseTypeLabel => 'Licencijos tipas';

  @override
  String get driverDetailsOfficialSeal => 'Oficiali ženklas';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Klase:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Įtraukos:';
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
  String get driverDetailsTapToView => 'Paspauskite , kad pamatytumėte DL dokumentą';

  @override
  String get driverDetailsTitle => 'Vairuotojo duomenys';

  @override
  String get dvirCategoryBusSafetySystems => 'Autobuso saugos sistemos';

  @override
  String get dvirCategoryCouplingDevices => 'Susijungimo prietaisai';

  @override
  String get dvirCategoryEmergencyEquipment => 'Nagios įranga';

  @override
  String get dvirCategoryHorn => 'Rūkas';

  @override
  String get dvirCategoryLightingReflectors => 'Apšvietimo prietaisai ir reflektoriai';

  @override
  String get dvirCategoryMirrors => 'Paskutinio regėjimo veidrodžiai';

  @override
  String get dvirCategoryParkingBrake => 'Parking Brake';

  @override
  String get dvirCategoryPassengerSeating => 'Keleivių sėdynės ir apribojimai';

  @override
  String get dvirCategoryServiceBrakes => 'Paslaugų stabdžiai';

  @override
  String get dvirCategorySteeringMechanism => 'Valdymo mechanizmas';

  @override
  String get dvirCategoryTires => 'Pėdiniai';

  @override
  String get dvirCategoryWheelsRims => 'Rūgiai ir rimai';

  @override
  String get dvirCategoryWipers => 'Širmo skydžių išvalykliai';

  @override
  String get dvirPostTripCapturePhoto => 'PAVAROS DAVIDAS PAVARAS';

  @override
  String get dvirPostTripComplianceTitle => 'SUKIOS SUKIOS ATTIKIMAS';

  @override
  String get dvirPostTripDefectButton => 'DEFEKTAS';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Apie klaidą pranešti be nuotraukos';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Įstatymas: Jūs pranešate apie saugos zonų defektą ($zones) be nuotraukos. Ar tikrai norite pateikti?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekcija: autobusas $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Įveskite informaciją apie saugumo problemą...';

  @override
  String get dvirPostTripNotesLabel => 'NORAS (PASTAVYKĖS dėl defektų) ir FOTOS';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Pasirinkite \"DEFECT\" įvesti saugos problemų duomenis...';

  @override
  String get dvirPostTripOdometerHeader => 'Bendras odometro skaitymas';

  @override
  String get dvirPostTripOdometerInstructions => 'Įveskite kilometro skaičių, kaip nurodyta autobuso prietaiso panele:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometeris (miles)';

  @override
  String get dvirPostTripOdometerTitle => 'Vairuočių bėgimo laikas';

  @override
  String get dvirPostTripOdometerWarning => 'Prieš pradedant, įveskite kilometrometro skaitymo duomenis.';

  @override
  String get dvirPostTripPassButton => 'Pasėdis';

  @override
  String get dvirPostTripPhotoAttached => 'Fotografija sėkmingai pritvirtinta.';

  @override
  String get dvirPostTripProgressLabel => 'Inspekcijos pažanga';

  @override
  String get dvirPostTripSignatureCaptured => 'Pažymėdas užfiksuotas.';

  @override
  String get dvirPostTripSignatureCert => 'Įstatysiu, kad šis transporto priemonės apvažiavimo patikrinimo sąrašas buvo baigtas pagal FMCSA 396.11 taisykles.';

  @override
  String get dvirPostTripSignatureTitle => 'Vairuotojo parašo tikrinimas';

  @override
  String get dvirPostTripSubmitButton => 'Nustatymas';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR buvo pateiktas sėkmingai.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONAS $current NESV1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Žemių ir teritorijų';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Pripažįstu, kad peržiūrėjau paskutinę pateiktą klaidų ataskaitą ir patikrinu taisymus (jei yra) ir patvirtinau, kad autobusas yra saugus eksploatuoti.';

  @override
  String get dvirPreTripActiveMessage => 'Šis transporto priemonė yra aktyvi ir neturi atvirų defektų.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktyvus maršrutas: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATSIKLAMAS: ankstesnių dienų defektų užfiksuotas';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Autobuso numeris: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'NORGAS:';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nė vienas pasirašė:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nėra įrašytų ankstesnių trūkumų';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ši transporto priemonė buvo pranešta apie švarią ankstesniame po kelionės darbo posėdžio patikrinime.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nereikia remonto, kad būtų saugiai veikiama.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Šis transporto priemonė yra užstrigta remonto ir priežiūros tikslais.';

  @override
  String get dvirPreTripOutofServiceButton => 'NESVARDYTI VIAUGINĖ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Priežastis:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (PASPINKAS)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'NESESKARKYTI NESKARKYTI';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Atnaujinimo metu negali pranešti apie naujus defektus.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statusas:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transporto vadovo RADĖ';

  @override
  String get dvirPreTripReturnToHomeButton => 'Grįžti namo';

  @override
  String get dvirPreTripSignOffTitle => 'Įvairių ženklų į vaikščiojimą';

  @override
  String get dvirPreTripSignedSuccess => 'Įstojimas patvirtintas sėkmingai.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ĮSKRIŠTOS PRIEBDIMOS';

  @override
  String get dvirPreTripTitle => 'Išankstinis patikrinimas';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Vairuo statusas: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Paženkite pasirašymą';

  @override
  String get dvirSigPreviewLabel => 'Įtrauktas parašas:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'SAVEDAMAS PRIEKS';

  @override
  String get dvirSigTapToDraw => 'Įdiegimas, kad būtų galima ištrinti pasirašymą (NORKOMAS)';

  @override
  String get dvirSigWatermark => 'Įrašykite vertikaliai (nuo apačios iki viršaus)';

  @override
  String get forgotPasswordCancel => 'Atšaukti';

  @override
  String get forgotPasswordEmailLabel => 'Pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto pašto';

  @override
  String get forgotPasswordInvalidEmail => 'Įveskite galiojančią el. pašto paštą';

  @override
  String get forgotPasswordSend => 'Siųskite';

  @override
  String get forgotPasswordSuccess => 'Jei šis el. paštas yra, buvo išsiųstas atsisakymo nuorodos.';

  @override
  String get genericBack => 'Atvykimas';

  @override
  String get genericCancel => 'Atšaukti';

  @override
  String get genericClear => 'GRAVAS';

  @override
  String get genericClose => 'Užsičiaupti';

  @override
  String get genericConfirm => 'Įsteigimas';

  @override
  String get genericEdit => 'Paskilaus';

  @override
  String get genericError => 'Kažkas nutiko blogai.';

  @override
  String get genericLoading => 'Įkrovimas...';

  @override
  String get genericNext => 'Kiltas';

  @override
  String get genericOk => 'Gerai.';

  @override
  String get genericRetry => 'Paskambinkite';

  @override
  String get genericSuccess => 'Išvykimas';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobusas:';
  }

  @override
  String get homeDispatchBlocked => 'Išdavimo užblokuotas';

  @override
  String get homeDispatchBlockedTitle => 'Išdavimo užblokuotas';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nėra maršrutų, skirtų vykdyti \"Pre-Trip\".';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nė vienas serveriui nepavyko pradėti:';
  }

  @override
  String homeHi(Object name) {
    return 'Sveiki, V0__';
  }

  @override
  String get homeLogout => 'Įrašymas';

  @override
  String get homeMenuAppInfo => 'Informacija apie programas';

  @override
  String get homeMenuDrill => 'Ištrūkiai';

  @override
  String get homeMenuDriverDetails => 'Vairuotojo duomenys';

  @override
  String get homeMenuLanguage => 'Kalba';

  @override
  String get homeMenuPreTrip => 'Išankstinis patikrinimas';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Nėra maršrutų';

  @override
  String get homeReviewVerifyPreTrip => 'Peržiūrėkite ir patikrinkite kelionės pradžią';

  @override
  String get homeSearchHint => 'Ieškos maršrutos';

  @override
  String get homeStart => 'Pradėkite';

  @override
  String get homeTitle => 'Namie';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vairuočių eksploatacija šiuo metu yra uždaryta.';

  @override
  String get homeVehicleReady => 'Vairuočiai paruošti ir patikrinti saugiai veikti.';

  @override
  String get languageTitle => 'Kalba';

  @override
  String get loginButton => 'Įskyrus';

  @override
  String get loginEmailOrPhoneLabel => 'Pašto pašto ar telefono numeris';

  @override
  String get loginErrorEnterPassword => 'Prašome įvesti slaptažodį';

  @override
  String get loginErrorEnterUsername => 'Prašome įvesti naudotojo vardą';

  @override
  String get loginErrorFailed => 'Įėjimas nesulaužęs, bandyk dar kartą.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Įveskite galiojančią elektroninę pašto paštą arba telefono numerį';

  @override
  String get loginForgotPassword => 'Pamiršote slaptažodį?';

  @override
  String get loginPasswordLabel => 'Šifra';

  @override
  String get mapChildrenTooltip => 'Vaikai ir globėjai';

  @override
  String get mapConfirmMessage => 'Ar tikrai nori užbaigti kelionę?';

  @override
  String get mapConfirmTitle => 'Įsteigimas';

  @override
  String get mapCurrentPosition => 'Dabartinė padėtis';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'Dažnai nesugebėjant atnaujinti vietos, patikrinkite savo internetą.';

  @override
  String get mapReconnectTitle => 'Paslauginėtojas';

  @override
  String get mapStop => 'Nustok.';

  @override
  String get mapStopping => 'Sustojant...';

  @override
  String get mapStopsTooltip => 'Sustojimas';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Paskutinė informacija';
  }

  @override
  String get mapWaitingGps => 'Laukiu GPS...';

  @override
  String get mapYes => 'Taip.';

  @override
  String get splashDriverApp => 'Vairuotojo programa';

  @override
  String get stopsActionUndo => 'Išbraukti';

  @override
  String get stopsCancelledSuccess => 'Išbrauktas sėkmingai';

  @override
  String get stopsDefaultLabel => 'Nustok.';

  @override
  String get stopsGenericError => 'Kažkas nukrito. Paklausykit dar kartą.';

  @override
  String get stopsStatusComplete => 'iš viso';

  @override
  String get stopsStatusDone => 'atliktas';

  @override
  String stopsSubmitCount(Object count) {
    return 'Pateikimas ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sėkmingai pateiktas';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Išrinktas _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______ _______';
  }

  @override
  String get stopsTypeDrop => 'Padėk.';

  @override
  String get stopsTypePick => 'Pasirink';

  @override
  String stopsUndoCount(Object count) {
    return 'Ištraukimas ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Nepakartotas atranka';

  @override
  String get tripConfirmCancel => 'Atšaukti';

  @override
  String get tripConfirmOk => 'Gerai.';

  @override
  String get tripConfirmTitle => 'Paslauginėtojas';

  @override
  String get tripErrorLocationRequired => 'Reikia leidimo į vietą, kad pradėtumėte kelionę.';

  @override
  String get homeMenuPostCrashReporting => 'Paskutinio įvykio pranešimas';

  @override
  String homeVehicleReason(Object reason) {
    return 'Priežastis:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statusas:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'L.V.';
  }

  @override
  String get crashLocationPickerSearchHint => 'Ieškos vieta (pvz., Rinkos gatvė)';

  @override
  String get crashLocationPickerTitle => 'Pasirinkite vietą žemėlapyje';

  @override
  String get crashLocationPickerTooltip => 'Įstatymas';

  @override
  String get incidentDashboardDescription => 'Pasirinkite veiksmus, kuriais siekiama toliau valdyti incidentus arba peržiūrėti ankstesnius pranešimus.';

  @override
  String get incidentDashboardHeadline => 'Paskutinio įvykio pranešimas';

  @override
  String get incidentDashboardLogNew => 'Naujasis \" Crash \" įrašas';

  @override
  String get incidentDashboardLogNewSubtitle => 'Pradėti naują žingsnio po žingsnio įvykio ataskaitą';

  @override
  String get incidentDashboardTitle => 'Po avarijos įvykis';

  @override
  String get incidentDashboardViewHistory => 'Žiūrėkite istoriją';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Žiūrėti ankstesnius avarijų pranešimus ir būklę';

  @override
  String get incidentDetailsAdminLetter => 'Adminų laiškas';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkoholio bandymo atsiskaitymas (2 valandų riba)';

  @override
  String get incidentDetailsBranchId => 'Filialo identifikacija';

  @override
  String get incidentDetailsBusPlate => 'Autobuso leidimo plokštė';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citacijos poveikis: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Vairuotojui išduotas citavimas';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinatai: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title kopiruota į spindulių plokštę!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopiruokite į įrašą';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data ir laikas:';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE ataskaita';

  @override
  String get incidentDetailsDoeReportTitle => 'Valstybės DOE ataskaita (nepriimtinė)';

  @override
  String get incidentDetailsDriverNotes => 'Vairuotojo pažymėjimai:';

  @override
  String get incidentDetailsDriverUserId => 'Vairuotojo naudotojo ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT vaistų testų atšaukimo (8 valandų riba)';

  @override
  String get incidentDetailsFatalityOccurred => 'Nustojo mirtinas įvykis';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Nykyktis #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Sunkiai, kuriems reikia gydyti';

  @override
  String get incidentDetailsLawEnforcement => 'Teisės vykdymo užtikrinimo agentūra';

  @override
  String get incidentDetailsLoadFailed => 'Nesugebėsiu įkrauti detalių.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Įgyvendinimo vieta:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Žiniųjų žiniasklaidos priedai';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statusas:';
  }

  @override
  String get incidentDetailsNo => 'Ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nėra nuotraukų ar vaizdo įrašų.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nėra jokių studentų, kurie būtų pažymėti laive.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generuoja pranešimų ataskaitas ir siunčia šablonus laiškus rajono priežiūros institucijoms ar administracijai.';

  @override
  String get incidentDetailsNotificationsTitle => 'Perdavimo pranešimai';

  @override
  String get incidentDetailsOfficer => 'Įstatymo pareigūnas';

  @override
  String get incidentDetailsPoliceReport => 'Policijos pranešimo numeris';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Iš anksto užpildytas perdavimo laiškas:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Reglamentacinis pagrindas:';

  @override
  String get incidentDetailsRouteId => 'Kelio identifikacija';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Mokyklos administratoriaus pranešimas';

  @override
  String get incidentDetailsStatusPending => 'Laukiama';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Išsamesnis:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Sukojimas';

  @override
  String get incidentDetailsStudentNoInjury => 'Nėra sužalojimų';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Sunkumas:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Pervežimas į:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studentai Laivyje ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'NEKONOMINAS NEKONOMINAS TESTINGAS';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statusas:';
  }

  @override
  String get incidentDetailsTitle => 'Įvairių duomenys';

  @override
  String get incidentDetailsVehicleTowed => 'Vairuočių, ištrauktų';

  @override
  String get incidentDetailsYes => 'Taip.';

  @override
  String get incidentHistoryEmpty => 'Nėra incidentų įrašų apie šį transporto priemonę.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Nesugebėjo atsiimti įrašų: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Laikas: V0 bus: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Nykyktis #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'NESKRIEBTINAS';

  @override
  String get incidentHistoryTestingRequired => 'Nustatytas';

  @override
  String get incidentHistoryTitle => 'Įsikrėtusio įvykio registras';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Įdėkite dar vieną nuotrauką';

  @override
  String get incidentIntakeBadgeNumberError => 'Reikalingas';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Ženklo numeris *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Autobuso numeris: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Įtraukite įvykio vietą';

  @override
  String get incidentIntakeCitationSubtitle => 'Ar mokyklinio autobuso vairuotojui buvo išduotas judantis eismo pažeidimo įvedimas?';

  @override
  String get incidentIntakeCitationTitle => 'Ar išleistas citatas?';

  @override
  String get incidentIntakeDateTimeLabel => '\" Crash \" Datas ir laikas *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'NEBESKARTAUJAMAS bandymas';

  @override
  String get incidentIntakeDotTestingRequired => 'NESKARBANTI bandymai';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Vairuotojas:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Įrašykite papildomus pastabas dėl susidūrimo...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Vairuotojo įvykio įrašai';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Nė vienas maršruto keleivio nepakrauso: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Prijungkite įrodymus (fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ar dėl to atsitiko mirtingi žmonės?';

  @override
  String get incidentIntakeFatalityTitle => 'Ar įvyko mirtingumas?';

  @override
  String get incidentIntakeGpsLabel => 'GPS koordinatai *';

  @override
  String get incidentIntakeHistoryTooltip => 'Žiūrėkite istoriją';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Ar kažkas buvo sužeistas ir iš vietos ištrūkė nedelsiant gydyti?';

  @override
  String get incidentIntakeInjuriesTitle => 'Ar reikia gydyti sužeistas?';

  @override
  String get incidentIntakeInjuryNotesError => 'Žaidimų užsikrėtusiems studentams privalomi pranešimai apie sužalojimą';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Žalos įrašai / duomenys (privalomi) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Skaudimo sunkumas *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Prašome įvesti teisėsaugos agentūrą.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Teisės vykdymo užtikrinimo agentūra (pvz., Valstybės greitkelių patruliavimas) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Teisės vykdymo užtikrinimo ir policijos ataskaita';

  @override
  String get incidentIntakeLocationDescError => 'Įveskite vietos aprašymą';

  @override
  String get incidentIntakeLocationDescLabel => 'Vietovės aprašymas (pvz., Market St ir 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Į medicinos įstaigą';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nėra atitinkamų studentų.';

  @override
  String get incidentIntakeNoStudentsFound => 'Nėra jokių studentų.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nėra mokinių, prašome paspausti \"NEXT\".';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nėra studentų, užregistruotų šiam maršrutu.';

  @override
  String get incidentIntakeOfficerNameError => 'Prašome įvesti pareigūno vardą.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Pareigūnų vardas *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Prašome nurodyti policijos pranešimo numerį.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Policijos pranešimo numeris *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Kelionė:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Kelio ir vairuotojo informacija';

  @override
  String get incidentIntakeSearchInjuredHint => 'Ieškokite sužeistą vaiką...';

  @override
  String get incidentIntakeSearchStudentHint => 'Ieškokite studentą...';

  @override
  String get incidentIntakeSelectAll => 'Pasirinkite visus mokinius';

  @override
  String get incidentIntakeSelectOnMap => 'RADINAS žemėlapyje';

  @override
  String get incidentIntakeSeverityFatal => 'Nykstinis';

  @override
  String get incidentIntakeSeverityMinor => 'Mažesnis';

  @override
  String get incidentIntakeSeverityModerate => 'Apimančios';

  @override
  String get incidentIntakeSeveritySevere => 'Sunkiai';

  @override
  String get incidentIntakeSeverityTitle => 'Stūkio sunkumo kintamieji';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Žmogaus teisių apsaugos';
  }

  @override
  String get incidentIntakeSubmitButton => 'REPORTAS';

  @override
  String get incidentIntakeTitle => 'Įskaičiuojama po avarijos';

  @override
  String get incidentIntakeTowedSubtitle => 'Ar kažkoks automobilis buvo sugadintas, todėl jį reikia nuvesti iš įvykio vietos?';

  @override
  String get incidentIntakeTowedTitle => 'Vairuotė nuvažiuota?';

  @override
  String get incidentIntakeWasInjured => 'Ar buvo sužeistas?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobusas:';
  }

  @override
  String get dvirPreTripClose => 'NESKRIEBI';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Vairuotojo pastabos / pastabos (Nuogaliojamas)';

  @override
  String get dvirPreTripNoComments => 'Nėra jokių pastabų.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Priežastis:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Kelionė:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Pasirašymas sėkmingai užfiksuotas.';

  @override
  String get dvirPreTripSigMissing => 'Nėra pasirašymo.';

  @override
  String get dvirPreTripSignDefectWarning => 'Prašome pasirašyti, kad patvirtintumėte ankstesnių defektų taisymą.';

  @override
  String get dvirPreTripStepSignOff => 'Pasiraša';

  @override
  String get dvirPreTripStepSubmit => 'Paskelbti';

  @override
  String get dvirPreTripStepVerify => 'Įvertinkite';

  @override
  String get dvirPreTripTapNext => 'Paskelbėkite \"Next\".';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vairuočių eksploatacija uždaryta';

  @override
  String get dvirPreTripVehicleReady => 'Vairuoklis paruoštas tarnybai';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Įtikrinta remonto būklė:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Įžvelkite, ar visi pranešimai apie defektus buvo ištaisyti, pažymėdami laukelį šalia kiekvieno defekto.';

  @override
  String get dvirPreTripYourComments => 'Jūsų pastabos:';

  @override
  String get countryPickerNoCountries => 'Nėra rastų šalių';

  @override
  String get countryPickerSearchHint => 'Paieška pagal šalies vardą, kodą ar skambučio kodą...';

  @override
  String get countryPickerTitle => 'Pasirinkta šalis';

  @override
  String get mapDefaultStop => 'Nustok.';

  @override
  String get mapEndLocation => 'Baigiamoji vieta';

  @override
  String get mapStartLocation => 'Pradėti vieta';

  @override
  String get stopsNoChangesToUndo => 'Nėra jokių pakeitimų, kuriuos galima atšaukti.';

  @override
  String get stopsNoStopsAvailable => 'Nėra jokių sustabdymo.';

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
