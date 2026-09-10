import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class AppLocalizationsEo extends AppLocalizations {
  AppLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get appInfoBuild => 'Konstruu Numeron';

  @override
  String get appInfoDevice => 'Modelo de aparato';

  @override
  String get appInfoOS => 'Komputilo Versio';

  @override
  String get appInfoPackage => 'Paketo';

  @override
  String get appInfoTitle => 'La aplikaĵo Info';

  @override
  String get appInfoVersion => 'App Versio';

  @override
  String get appTitleSchoolDiary => 'SD-Sporilo';

  @override
  String get childrenActionGuardians => 'Gardistoj';

  @override
  String childrenGuardiansFor(Object name) {
    return 'La aŭtorizitaj gardistoj de $name';
  }

  @override
  String get childrenNoGuardians => 'Neniu aŭtorizita kuratoro registras tiun infanon.';

  @override
  String get childrenStatusDropped => 'Falis';

  @override
  String get childrenStatusPending => 'Atendo';

  @override
  String get childrenStatusPicked => 'Elektita';

  @override
  String childrenTitle(Object routeName) {
    return 'Infanoj  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absenteco / NE sur BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Aŭtobuso:';
  }

  @override
  String get drillChecklistEvacuated => 'Evakuita';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evakuita: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Neniu foraj studentoj.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Neniu studentoj estas markitaj en la buso.';

  @override
  String get drillChecklistNotOnBus => 'Ne en buso';

  @override
  String get drillChecklistOnBusNotEvacuated => 'En buso  NE Evakuita';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'En BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Procezo por kapti pruvojn';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Vojo (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Evakuado-truo-kontrollisto';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Ne konata studento restas!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ĉu vi certas, ke vi volas sendi ĉi tiun buŝan logon?';

  @override
  String get drillEvidenceConfirmSubmission => 'Konfirmu la submetadon de la truo';

  @override
  String get drillEvidenceDriverNotesHint => 'Deskribi la ekzekuton de la ekzerco, la konduton de la studentoj, la elirejojn uzitajn, kaj iujn ajn esceptojn observitajn...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Laŭdiro Notas (minimum 10 karakteroj):';

  @override
  String get drillEvidenceFailed => 'La submetado malsukcesis';

  @override
  String get drillEvidenceMandatoryWarning => 'Almenaŭ unu foto aŭ videoprovizaĵo estas deviga por submeti la truo.';

  @override
  String get drillEvidenceRecordVideo => 'Enregistrita video';

  @override
  String get drillEvidenceRetrySubmission => 'RETRIO-SENDO';

  @override
  String get drillEvidenceReturnToDashboard => 'Reiri al la tabulo';

  @override
  String get drillEvidenceSubmitButton => 'Submeti dril log';

  @override
  String get drillEvidenceSubmitting => 'Mi submetas la registron...';

  @override
  String get drillEvidenceSuccess => 'Submetiĝo Sukcesa!';

  @override
  String get drillEvidenceSuccessMessage => 'La evakuadaj ekzercregistroj estis sukcese alŝutitaj kaj estas atendataj aprobon.';

  @override
  String get drillEvidenceTakePhoto => 'Fotu';

  @override
  String get drillEvidenceTitle => 'La devigataj fornoj';

  @override
  String get drillEvidenceUploading => 'Alŝuti pruvojn kaj kontrollistigdatoj';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Aŭtobuso:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Forigo:';
  }

  @override
  String get drillRosterMarkAttendance => 'Marko ĉeestis';

  @override
  String get drillRosterNoStudents => 'Neniu studentoj estas registritaj sur tiu itinero.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prezenteco: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Procezo por trudi kontrolliston';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Vojo:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Seĝo:';
  }

  @override
  String get drillRosterSelectAll => 'Elektu ĉiujn';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Notes';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Aprobita ĉe:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aprobita ĉe';

  @override
  String get drillSummaryBackToDrills => 'Reiri al la fako';

  @override
  String get drillSummaryBusNumber => 'Bus Numero';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'La direktoro estas:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detaloj de la truo';

  @override
  String get drillSummaryDriverNotesTitle => 'La ŝoforo Notas';

  @override
  String get drillSummaryDuration => 'Durado';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'La tempo de la fino';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evakuita: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evakuita _______';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Evidentaj amaskomunikilaj ataĉoj';

  @override
  String get drillSummaryGps => 'GPS-Koordinatoj';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Ne povis ŝargi la rezumon de la truo por ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Neniu trulaj datumoj trovitaj.';

  @override
  String get drillSummaryNotOnBus => 'Ne en buso';

  @override
  String get drillSummaryOnBusNotEvacuated => 'En buso - Neniuj evakuoj';

  @override
  String get drillSummaryPhotoEvidence => 'Fotoj de la pruvoj';

  @override
  String get drillSummaryRouteId => 'Voja ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Seĝo:';
  }

  @override
  String get drillSummaryStartTime => 'Komencita tempo';

  @override
  String get drillSummaryStatus => 'Statuso';

  @override
  String get drillSummaryStudentLogTitle => 'Studento Evakuado Logo';

  @override
  String drillSummaryTitle(Object id) {
    return 'Forigo resumo (#$id)';
  }

  @override
  String get drillSummaryType => 'Forigo Tipo';

  @override
  String get drillSummaryVideoEvidence => 'Videoprovizaĵoj';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Elektu la kategorion de la truo:';

  @override
  String get drillTypeCustomHint => 'Enigu la tipon de speciala evakuado...';

  @override
  String get drillTypeInvalidState => 'Invalida veturilo aŭ itinera stato.';

  @override
  String get drillTypeNameBusFire => 'Bus fajro';

  @override
  String get drillTypeNameDangerZone => 'Zono de danĝero';

  @override
  String get drillTypeNameDriverIncapacitation => 'La aŭtisto ne kapablas';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientiĝo de ekipaĵo';

  @override
  String get drillTypeNameFrontDoor => 'Antaŭa pordo';

  @override
  String get drillTypeNameOthers => 'Aliaj';

  @override
  String get drillTypeNameRearDoor => 'Reĝa pordo';

  @override
  String get drillTypeNameSideOrRoof => 'Flanko aŭ tegmento';

  @override
  String get drillTypeNameSplit => 'Dividiĝante';

  @override
  String get drillTypeNoRouteSelected => 'Neniu vojo elektita';

  @override
  String get drillTypePreparation => 'Preparo por truo';

  @override
  String get drillTypeProceed => 'Procezo al studento-rolulo';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Vojo:';
  }

  @override
  String get drillTypeSelectRoute => 'Elektu itineron:';

  @override
  String get drillTypeSpecifyCustom => 'Specifi la tipon de la truo:';

  @override
  String get drillTypeTitle => 'Elektu la tipon de la truo';

  @override
  String get drillTypeWarning => 'Certigu ke la veturilo estas parkita sekure antaŭ la komenco de la ekzekuto.';

  @override
  String get drillsAssignedVehicle => 'Alkondukita veturilo';

  @override
  String get drillsChecking => 'Mi kontrolas...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Forigo #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Neniu buso asignita';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Neniu ekzercadoj registritaj por buso $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Neniu vojo disponeblas por komenci la truojn.';

  @override
  String get drillsShowSummary => 'Montru resumon';

  @override
  String get drillsStartDrill => 'Komencu la truojn';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Kondukita: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Evakuacioj';

  @override
  String get drillsVehicleOutOfService => 'Aŭtomobileco elservita';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Tiu veturilo estas nuntempe malfunkcia kaj ne povas esti uzata por ekzercoj.';

  @override
  String get driverDetailsCdlClassLabel => 'Klasa CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ŜOFEBLA permesilo';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nomo:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasaĝero';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Lerneja buso';

  @override
  String get driverDetailsEndorsementsTitle => 'Apogadoj tenis';

  @override
  String get driverDetailsExpiryDateLabel => 'La fino de la periodo';

  @override
  String get driverDetailsHolderSignature => 'DUTARO SIGNATURO';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identigo:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Datumo de eldono';

  @override
  String get driverDetailsLicenseDocTitle => 'Permesilo';

  @override
  String get driverDetailsLicenseNoLabel => 'Licenco Nr.';

  @override
  String get driverDetailsLicenseTitle => 'La licenca detalo';

  @override
  String get driverDetailsLicenseTypeLabel => 'La tipo de permesilo';

  @override
  String get driverDetailsOfficialSeal => 'Oficiala sigelo';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'KLASO:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDOUR:';
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
  String get driverDetailsTapToView => 'Altuŝu por vidi DL-dokumenton';

  @override
  String get driverDetailsTitle => 'Detaloj pri la ŝoforo';

  @override
  String get dvirCategoryBusSafetySystems => 'Bus-specifaj sekurec-sistemoj';

  @override
  String get dvirCategoryCouplingDevices => 'Kunligiloj';

  @override
  String get dvirCategoryEmergencyEquipment => 'Urĝa ekipaĵo';

  @override
  String get dvirCategoryHorn => 'Korno';

  @override
  String get dvirCategoryLightingReflectors => 'Lumaparatoj kaj reflektoroj';

  @override
  String get dvirCategoryMirrors => 'Rear-Vision Mirrors';

  @override
  String get dvirCategoryParkingBrake => 'Parkaj bremsoj';

  @override
  String get dvirCategoryPassengerSeating => 'Seĝo kaj limigoj por pasaĝeroj';

  @override
  String get dvirCategoryServiceBrakes => 'Servo Bremoj';

  @override
  String get dvirCategorySteeringMechanism => 'Direkta mekanismo';

  @override
  String get dvirCategoryTires => 'Pilotaj';

  @override
  String get dvirCategoryWheelsRims => 'Reloj kaj Rims';

  @override
  String get dvirCategoryWipers => 'Ventoŝirmiloj';

  @override
  String get dvirPostTripCapturePhoto => 'Foto de la malfunkcio de la kaptilo';

  @override
  String get dvirPostTripComplianceTitle => 'KONTROLO';

  @override
  String get dvirPostTripDefectButton => 'Malhelpo';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Raporto pri difekto sen foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Averto: Vi raportas difekton en sekurecaj zonoj ($zones) sen aldoni foton. Ĉu vi certas, ke vi volas sendi ĝin?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspekto: Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Enmetu detalojn pri la sekureca problemo...';

  @override
  String get dvirPostTripNotesLabel => 'NOTAĵoj (MANDATORIO SOUTH DEFECT) & FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Elektu DEFECT por eniri la detalojn pri la sekureco...';

  @override
  String get dvirPostTripOdometerHeader => 'Aktuala Odometer Legado';

  @override
  String get dvirPostTripOdometerInstructions => 'Enmetu la kilometraĵan legadon precize kiel montrite sur la buso instrumento panelo:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometro (Miloj)';

  @override
  String get dvirPostTripOdometerTitle => 'VEKTO RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Bonvolu enmeti la kilometran legadon antaŭ ol daŭrigi.';

  @override
  String get dvirPostTripPassButton => 'Pasas';

  @override
  String get dvirPostTripPhotoAttached => 'Foto sukcesis.';

  @override
  String get dvirPostTripProgressLabel => 'Progreso de la inspektado';

  @override
  String get dvirPostTripSignatureCaptured => 'Subskribo kaptita.';

  @override
  String get dvirPostTripSignatureCert => 'Mi atestas, ke ĉi tiu raporto pri la kontrolilisto de veturiloj estis kompletigita laŭ la reguloj de FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verigo de la subskribo de la ŝoforo';

  @override
  String get dvirPostTripSubmitButton => 'SENDITA inspektado';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR estis sendita sukcese.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONO $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zonoj de V0';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Mi konfesas, ke mi reviziis la lastan senditan difektan raporton kaj konfirmis la riparon (se ekzistis) kaj deklaras, ke la buso estas sekura por funkciado.';

  @override
  String get dvirPreTripActiveMessage => 'Tiu veturilo estas aktiva kaj ne havas malfermajn difektojn. Ĝi estas konfirmita kaj sekura por funkciado.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiva vojo: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENTA: Malhelpoj de la antaŭa tago';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Bus Numero: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VEKTO DE VEKTO';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Ne subskribita: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Neniu antaŭaj difektoj registritaj';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Tiu veturilo estis raportita pura en la antaŭa post-vojaĝanta ŝanca inspektado.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Neniu riparado necesa por sekura operacio.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Tiu veturilo estas elserĉita por riparoj/manĝigo. Sekurecaj zorgoj devas esti solvitaj de la laboristo antaŭ la sendado.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vehiklo elservis';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Rezulto:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (Ripariĝinta)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORT NUEJ difektoj';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Raporti novajn difektojn estas malŝaltita dum riparoj.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statuso:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Transporta sub-admin rezolucio';

  @override
  String get dvirPreTripReturnToHomeButton => 'Revenu hejmen';

  @override
  String get dvirPreTripSignOffTitle => 'Sign-OFF por iri promeni';

  @override
  String get dvirPreTripSignedSuccess => 'La konfirmo estis subskribita sukcese.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SENDITA VERIFIKO';

  @override
  String get dvirPreTripTitle => 'Antaŭ-vojaĝaj konfirmoj';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Ŝtato de veturilo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Desegnu subskribon';

  @override
  String get dvirSigPreviewLabel => 'La subskribaĵo:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Savu subskribon';

  @override
  String get dvirSigTapToDraw => 'TAP por desegni subskribon (REKORDO)';

  @override
  String get dvirSigWatermark => 'Subskribi Vertikal (Fonde ĝis Supre)';

  @override
  String get forgotPasswordCancel => 'Nu, nu, nu, nu, nu!';

  @override
  String get forgotPasswordEmailLabel => 'E-poŝto';

  @override
  String get forgotPasswordInvalidEmail => 'Bonvolu enmeti validan retpoŝton';

  @override
  String get forgotPasswordSend => 'Sendu';

  @override
  String get forgotPasswordSuccess => 'Se tiu retpoŝto ekzistas, reset-ligilo estis sendita.';

  @override
  String get genericBack => 'Reiri';

  @override
  String get genericCancel => 'Nu, nu, nu, nu, nu!';

  @override
  String get genericClear => 'Klare';

  @override
  String get genericClose => 'Proksima';

  @override
  String get genericConfirm => 'Konfirmu';

  @override
  String get genericEdit => 'Redakti';

  @override
  String get genericError => 'Io misiris.';

  @override
  String get genericLoading => '- Ŝarĝado...';

  @override
  String get genericNext => 'Sekva';

  @override
  String get genericOk => 'Bone, bone.';

  @override
  String get genericRetry => 'Provu denove';

  @override
  String get genericSuccess => 'Sukceso';

  @override
  String homeBusLabel(Object busId) {
    return 'Aŭtobuso:';
  }

  @override
  String get homeDispatchBlocked => 'La sendado estas blokita';

  @override
  String get homeDispatchBlockedTitle => 'La sendado estas blokita';

  @override
  String get homeErrorNoRoutesPreTrip => 'Neniu itinero disponeblas por plenumi Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Ne sukcesis komenci la vojaĝon sur la servilo: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Saluton, V0__';
  }

  @override
  String get homeLogout => 'Enirigo';

  @override
  String get homeMenuAppInfo => 'La aplikaĵo Info';

  @override
  String get homeMenuDrill => 'Forigo';

  @override
  String get homeMenuDriverDetails => 'Detaloj pri la ŝoforo';

  @override
  String get homeMenuLanguage => 'Lingvo';

  @override
  String get homeMenuPreTrip => 'Antaŭ-vojaĝinspekcio';

  @override
  String get homeNoRoutes => 'Neniu vojoj disponeblaj';

  @override
  String get homeReviewVerifyPreTrip => 'Revizi kaj konfirmi antaŭ la vojaĝo';

  @override
  String get homeSearchHint => 'Serĉaj itineroj';

  @override
  String get homeStart => 'Komenci';

  @override
  String get homeTitle => 'Hejmo';

  @override
  String get homeVehicleOutOfServiceDefault => 'La veturilo estas nuntempe elŝutebla.';

  @override
  String get homeVehicleReady => 'La veturilo estas preta kaj konfirmita por sekura funkciado.';

  @override
  String get languageTitle => 'Lingvo';

  @override
  String get loginButton => 'Enirigo';

  @override
  String get loginEmailOrPhoneLabel => 'Retpoŝto aŭ telefonnumero';

  @override
  String get loginErrorEnterPassword => 'Bonvolu enmeti pasvorton';

  @override
  String get loginErrorEnterUsername => 'Bonvolu enmeti uzantnomon';

  @override
  String get loginErrorFailed => 'Enirigo malsukcesis. Bonvolu provi denove.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Bonvolu enmeti validan retpoŝton aŭ telefonnumeron';

  @override
  String get loginForgotPassword => 'Ĉu vi forgesis la pasvorton?';

  @override
  String get loginPasswordLabel => 'Pasvorton';

  @override
  String get mapChildrenTooltip => 'Infanoj & gardistoj';

  @override
  String get mapConfirmMessage => 'Ĉu vi vere volas fini la vojaĝon?';

  @override
  String get mapConfirmTitle => 'Konfirmu';

  @override
  String get mapCurrentPosition => 'Aktuala pozicio';

  @override
  String get mapNo => 'Ne, ne.';

  @override
  String get mapReconnectMessage => 'La aktuala loko ofte ne funkcias, bonvolu kontroli vian interreton.';

  @override
  String get mapReconnectTitle => 'Sekvilo';

  @override
  String get mapStop => 'Ĉesu!';

  @override
  String get mapStopping => 'Ĉesu...';

  @override
  String get mapStopsTooltip => 'Ĉefaj';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Ĝisdatigita ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Atendante GPS...';

  @override
  String get mapYes => 'Jes, mi scias.';

  @override
  String get splashDriverApp => 'La programaro';

  @override
  String get stopsActionUndo => 'Malkonstruita';

  @override
  String get stopsCancelledSuccess => 'Sukcese nuligita';

  @override
  String get stopsDefaultLabel => 'Ĉesu!';

  @override
  String get stopsGenericError => 'Io misiris. Bonvolu provi denove.';

  @override
  String get stopsStatusComplete => 'kompleta';

  @override
  String get stopsStatusDone => 'farita';

  @override
  String stopsSubmitCount(Object count) {
    return 'Enmeti ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Sukcese submetita';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected selektita · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Faru ĝin';

  @override
  String get stopsTypePick => 'Elektu';

  @override
  String stopsUndoCount(Object count) {
    return 'Malfortigita ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Malŝparita elekto/dropo';

  @override
  String get tripConfirmCancel => 'Nu, nu, nu, nu, nu!';

  @override
  String get tripConfirmOk => 'Bone, bone.';

  @override
  String get tripConfirmTitle => 'Sekvilo';

  @override
  String get tripErrorLocationRequired => 'Por komenci vojaĝon necesas permeso pri loko.';

  @override
  String get homeMenuPostCrashReporting => 'Raporto post la kolapso';

  @override
  String homeVehicleReason(Object reason) {
    return 'Rezulto:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statuso:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Serĉloko (ekz. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Elektu lokon sur mapo';

  @override
  String get crashLocationPickerTooltip => 'Konfirmu lokon';

  @override
  String get incidentDashboardDescription => 'Elektu agon por daŭrigi kun la okazaĵadministrado aŭ rigardi pasintajn raportojn.';

  @override
  String get incidentDashboardHeadline => 'Raporto pri okazaĵoj post la akcidento';

  @override
  String get incidentDashboardLogNew => 'Novaj krizoj';

  @override
  String get incidentDashboardLogNewSubtitle => 'Komenci novan raportiĝon pri akcidento paŝon post paŝo';

  @override
  String get incidentDashboardTitle => 'Okazaĵo post la kraŝo';

  @override
  String get incidentDashboardViewHistory => 'Vidu Historion';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vidu antaŭajn akcidentojn kaj statusojn';

  @override
  String get incidentDetailsAdminLetter => 'Admin Letero';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alkohola testo Countdown (2-hora limo)';

  @override
  String get incidentDetailsBranchId => 'Filiaj identigiloj';

  @override
  String get incidentDetailsBusPlate => 'Autobusaj licencaj tabuloj';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citaĵo Efiko: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Cito al la ŝoforo';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Koordinatoj: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- ...V0__ kopiita al la ŝraŭbordo!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Kopio al la klapo';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Datumo kaj horo: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raporto de la Departemento pri Eŭropa Unio';

  @override
  String get incidentDetailsDoeReportTitle => 'Ŝtata DOE-Raporto (Propona)';

  @override
  String get incidentDetailsDriverNotes => 'La ŝoforo Notas:';

  @override
  String get incidentDetailsDriverUserId => 'La uzant-ID de la ŝoforo';

  @override
  String get incidentDetailsDrugCountdown => 'DOT-Drogaj testoj (Limito de 8 horoj)';

  @override
  String get incidentDetailsFatalityOccurred => 'Mortiga okazo';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Vundoj, kiuj bezonas kuraciston';

  @override
  String get incidentDetailsLawEnforcement => 'Laŭleĝa Agentejo';

  @override
  String get incidentDetailsLoadFailed => 'Ne povis enŝargi detalojn.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Lokigo: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Anektoj de amaskomunikiloj';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statuso:';
  }

  @override
  String get incidentDetailsNo => 'Ne';

  @override
  String get incidentDetailsNoMediaAttachments => 'Neniu foto aŭ video ligita.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Neniu studentoj estis markitaj sur la ŝipo dum la okazaĵo.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generu notifikajn raportojn kaj sendu ŝablonojn de leteroj al distriktaj inspektistoj aŭ administracio.';

  @override
  String get incidentDetailsNotificationsTitle => 'Laŭ la ordono de la registaro, la registaro ne rajtas sendi la mesaĝon.';

  @override
  String get incidentDetailsOfficer => 'La oficiro detaloj';

  @override
  String get incidentDetailsPoliceReport => 'La nombro de la polica raporto';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Antaŭ-popula transdona letero:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regula bazo:';

  @override
  String get incidentDetailsRouteId => 'Voja ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Sciigo de la lerneja administranto';

  @override
  String get incidentDetailsStatusPending => 'Atendo';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detaloj: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Vundita';

  @override
  String get incidentDetailsStudentNoInjury => 'Neniu vundo';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Graviteco:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transporti al:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studentoj Surŝipe ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Ne post-kraŝ-testo postulata';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statuso:';
  }

  @override
  String get incidentDetailsTitle => 'Detaloj pri la okazaĵo';

  @override
  String get incidentDetailsVehicleTowed => 'Veturilo tirita';

  @override
  String get incidentDetailsYes => 'Jes';

  @override
  String get incidentHistoryEmpty => 'Neniu registrita registrado pri la okazaĵoj de tiu veturilo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Ne sukcesis reakiri registrojn: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tempo: V0 _ Bus: V1 _ Testado: V2 _';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Ne postulata';

  @override
  String get incidentHistoryTestingRequired => 'Rezultoj';

  @override
  String get incidentHistoryTitle => 'Post-kraŝ-incidentregistro';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Aldonu alian foton';

  @override
  String get incidentIntakeBadgeNumberError => 'Rezultoj';

  @override
  String get incidentIntakeBadgeNumberLabel => 'La insigno numero *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bus Numero: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Foto de la okazaĵo';

  @override
  String get incidentIntakeCitationSubtitle => 'Ĉu movanta trafikmalobservo estis citita al la ŝoforo de la lerneja buso?';

  @override
  String get incidentIntakeCitationTitle => 'Ĉu citaĵo estas publikigita?';

  @override
  String get incidentIntakeDateTimeLabel => 'La dato kaj horo de la akcidento *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'TESTADO NE NE NEJREZITA';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT TESTING NEVOLUTA';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Ŝoforo:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Enmetu iujn ajn kromajn notojn pri la kolizio...';

  @override
  String get incidentIntakeDriverNotesTitle => 'La aŭtovojajn okazaĵojn';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Ne ŝarĝitaj pasaĝeroj de la itinero: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Alligu pruvojn (Fotoj) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ĉu okazis iu mortoj kiel rezulto de tiu akcidento?';

  @override
  String get incidentIntakeFatalityTitle => 'Ĉu okazis fataleco?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-Koordinatoj *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vidu Historion';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Ĉu iu ricevis korpan vundon, kiu bezonis urĝan kuracistan kuracadon for de la okazaĵo?';

  @override
  String get incidentIntakeInjuriesTitle => 'Ĉu vundoj, kiuj bezonas kuracadon?';

  @override
  String get incidentIntakeInjuryNotesError => 'La lezoj de la studentoj estas devigaj';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Injuro Notas / Detaloj (Plenuma) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Vundita graveco *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Bonvolu eniri la polican agendan agaron';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Laŭleĝa Agentejo (ekz. Ŝtata Aŭtovoja Patrolo) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'La leĝaj agadoj kaj polico';

  @override
  String get incidentIntakeLocationDescError => 'Bonvolu enmeti lokon priskribo';

  @override
  String get incidentIntakeLocationDescLabel => 'Lokala priskribo (ekz. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medicina instalaĵo transportita al';

  @override
  String get incidentIntakeNoMatchingStudents => 'Neniu ekvivalentaj studentoj.';

  @override
  String get incidentIntakeNoStudentsFound => 'Neniu studentoj estis trovitaj.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ne estas studentoj surŝipe. Bonvolu premadi NEXT por daŭrigi.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Neniu studentoj estas registritaj por tiu itinero.';

  @override
  String get incidentIntakeOfficerNameError => 'Bonvolu enmeti la oficiran nomon';

  @override
  String get incidentIntakeOfficerNameLabel => 'La oficiro nomo *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Bonvolu enmeti la polican raporton';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'La nombro de la polica raporto *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Vojo:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informoj pri vojo kaj ŝoforo';

  @override
  String get incidentIntakeSearchInjuredHint => 'Serĉu vunditan infanon...';

  @override
  String get incidentIntakeSearchStudentHint => 'Serĉu studentojn...';

  @override
  String get incidentIntakeSelectAll => 'Elektu ĉiujn studentojn';

  @override
  String get incidentIntakeSelectOnMap => 'SELECT sur mapo';

  @override
  String get incidentIntakeSeverityFatal => 'Fatala';

  @override
  String get incidentIntakeSeverityMinor => 'Malgranda';

  @override
  String get incidentIntakeSeverityModerate => 'Modera';

  @override
  String get incidentIntakeSeveritySevere => 'Malmola';

  @override
  String get incidentIntakeSeverityTitle => 'Variabloj pri la graveco de la akcidento';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identigo:';
  }

  @override
  String get incidentIntakeSubmitButton => 'SENDITA Raporto';

  @override
  String get incidentIntakeTitle => 'Post-kraŝa okazaĵo-konsumado';

  @override
  String get incidentIntakeTowedSubtitle => 'Ĉu iu veturilo ricevis difektan difekton devigante ĝin tirigi el la sceno?';

  @override
  String get incidentIntakeTowedTitle => 'Ĉu la veturilo estas tirita?';

  @override
  String get incidentIntakeWasInjured => 'Ĉu li estis vundita?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Aŭtobuso:';
  }

  @override
  String get dvirPreTripClose => 'ALVEKTU';

  @override
  String get dvirPreTripDriverCommentsLabel => 'La ŝoforo Komentoj / Notas (Pozonta)';

  @override
  String get dvirPreTripNoComments => 'Neniu komento aldonita.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Rezulto:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Vojo:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Subskribo sukcesis kapti.';

  @override
  String get dvirPreTripSigMissing => 'Mankas subskribo.';

  @override
  String get dvirPreTripSignDefectWarning => 'Bonvolu subskribi por konfirmi la riparon de antaŭaj difektoj.';

  @override
  String get dvirPreTripStepSignOff => 'Subskribo';

  @override
  String get dvirPreTripStepSubmit => 'Submeti';

  @override
  String get dvirPreTripStepVerify => 'Verigu';

  @override
  String get dvirPreTripTapNext => 'Bonvolu alklaki NEXT por daŭrigi.';

  @override
  String get dvirPreTripVehicleOutOfService => 'La veturilo estas elservita';

  @override
  String get dvirPreTripVehicleReady => 'La veturilo estas preta por servo';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Veriĝinta riparstatuso:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Bonvolu kontroli, ke ĉiuj raportitaj difektoj estas riparitaj, kaj atentu la skatolon apud ĉiu difekto.';

  @override
  String get dvirPreTripYourComments => 'Viaj Komentoj:';

  @override
  String get countryPickerNoCountries => 'Neniu lando trovita';

  @override
  String get countryPickerSearchHint => 'Serĉu laŭ lando, nomo, kodo, aŭ poŝtelefono...';

  @override
  String get countryPickerTitle => 'Elektu landon';

  @override
  String get mapDefaultStop => 'Ĉesu!';

  @override
  String get mapEndLocation => 'Finloko';

  @override
  String get mapStartLocation => 'Komenci loko';

  @override
  String get stopsNoChangesToUndo => 'Neniu ŝanĝo disponebla por malfari.';

  @override
  String get stopsNoStopsAvailable => 'Neniu haltejo disponebla.';

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
