import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appInfoBuild => 'Construiţi numărul';

  @override
  String get appInfoDevice => 'Model de dispozitiv';

  @override
  String get appInfoOS => 'Versiunea OS';

  @override
  String get appInfoPackage => 'Pașel';

  @override
  String get appInfoTitle => 'Informaţii despre aplicaţii';

  @override
  String get appInfoVersion => 'Versiunea aplicației';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Gărzi';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Părinți autorizați pentru $name';
  }

  @override
  String get childrenNoGuardians => 'Nu există tutori autorizaţi în dosarul acestui copil.';

  @override
  String get childrenStatusDropped => 'A scăpat';

  @override
  String get childrenStatusPending => 'Aşteptare';

  @override
  String get childrenStatusPicked => 'Alegerea';

  @override
  String childrenTitle(Object routeName) {
    return 'Copiii  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absența / NU în autobuz ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobuz:';
  }

  @override
  String get drillChecklistEvacuated => 'Evadate';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuate: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Niciun student absent.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Niciun elev nu a fost marcat în autobuz.';

  @override
  String get drillChecklistNotOnBus => 'Nu în autobuz';

  @override
  String get drillChecklistOnBusNotEvacuated => 'În autobuz  Nu evacuat';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'În autobuz ($count)';
  }

  @override
  String get drillChecklistProceed => 'Procesul de a captura dovezile';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Căruţă (în direct): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verificare a exerciţiilor de evacuare';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Studentul necunoscut rămâne!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Eşti sigur că vrei să-ţi aduci jurnalul de exerciţii?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmă prezentarea exerciţiului';

  @override
  String get drillEvidenceDriverNotesHint => 'Descrie execuţia exerciţiului, comportamentul studenţilor, căile de ieşire utilizate şi orice excepţii observate...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notă de conducere (minimum 10 caractere):';

  @override
  String get drillEvidenceFailed => 'S-a înșelat prezentarea';

  @override
  String get drillEvidenceMandatoryWarning => 'Pentru a depune exercițiul este obligatoriu cel puțin o dovadă foto sau video.';

  @override
  String get drillEvidenceRecordVideo => 'Înregistrarea video';

  @override
  String get drillEvidenceRetrySubmission => 'SUNDEMNARIE';

  @override
  String get drillEvidenceReturnToDashboard => 'RETURN la tablă de bord';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Introduce logul de exerciţii...';

  @override
  String get drillEvidenceSuccess => 'Submisia a avut succes!';

  @override
  String get drillEvidenceSuccessMessage => 'Logul de evacuare a fost încărcat cu succes şi este în aşteptare de aprobare.';

  @override
  String get drillEvidenceTakePhoto => 'Ia o fotografie';

  @override
  String get drillEvidenceTitle => 'Dovezi obligatorii privind exercițiile';

  @override
  String get drillEvidenceUploading => 'Uploading of evidence and checklist data';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobuz:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- În regulă.';
  }

  @override
  String get drillRosterMarkAttendance => 'Prezenţa de la Marcu';

  @override
  String get drillRosterNoStudents => 'Nu sunt înregistraţi studenţi pe această rută.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Prezența: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Procesul de a verifica lista';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Către:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Scaun:';
  }

  @override
  String get drillRosterSelectAll => 'Selectaţi toate';

  @override
  String get drillSummaryAdminNotesTitle => 'Notă de administrare';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Aplicat la: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Aplicat la';

  @override
  String get drillSummaryBackToDrills => 'Înapoi la exerciţii';

  @override
  String get drillSummaryBusNumber => 'Numărul autobuzului';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Condus de: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalii despre exerciții';

  @override
  String get drillSummaryDriverNotesTitle => 'Notă de conducere';

  @override
  String get drillSummaryDuration => 'Durată';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Timpul sfârşitului';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuate: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evadat';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Attachamente de la mijloacele de informare';

  @override
  String get drillSummaryGps => 'Coordonatele GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'În cazul în care nu există o soluţie,';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Nu am încărcat rezumatul exerciţiului pentru ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Nu s-au găsit date despre exerciţii.';

  @override
  String get drillSummaryNotOnBus => 'Nu în autobuz';

  @override
  String get drillSummaryOnBusNotEvacuated => 'În autobuz - NIE EVACUAT';

  @override
  String get drillSummaryPhotoEvidence => 'Dovezi din fotografie';

  @override
  String get drillSummaryRouteId => 'Identificarea traseului';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Scaun:';
  }

  @override
  String get drillSummaryStartTime => 'Timp de început';

  @override
  String get drillSummaryStatus => 'Statutul';

  @override
  String get drillSummaryStudentLogTitle => 'Registorul de evacuare al studenţilor';

  @override
  String drillSummaryTitle(Object id) {
    return 'Rezumatul exercițiului de foraj (#$id)';
  }

  @override
  String get drillSummaryType => 'Tip de foraj';

  @override
  String get drillSummaryVideoEvidence => 'Dovezi video';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobuzul';
  }

  @override
  String get drillTypeClassification => 'Alegeți clasificarea exercițiului de foraj:';

  @override
  String get drillTypeCustomHint => 'Intră în tipul de exerciţii de evacuare personalizată...';

  @override
  String get drillTypeInvalidState => 'Statul vehiculului sau al traseului invalid.';

  @override
  String get drillTypeNameBusFire => 'Focul de autobuz';

  @override
  String get drillTypeNameDangerZone => 'Zona de pericol';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacitate a șoferului';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientarea echipamentelor';

  @override
  String get drillTypeNameFrontDoor => 'Uşa din faţă';

  @override
  String get drillTypeNameOthers => 'Alte';

  @override
  String get drillTypeNameRearDoor => 'Uşa din spate';

  @override
  String get drillTypeNameSideOrRoof => 'Părţi sau acoperiş';

  @override
  String get drillTypeNameSplit => 'Împărţire';

  @override
  String get drillTypeNoRouteSelected => 'Nu a fost ales nici un drum';

  @override
  String get drillTypePreparation => 'Preparaţie pentru exerciţii de exerciţiu';

  @override
  String get drillTypeProceed => 'PROCEDUNA DE A ROSTA STUDENTULUI';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Către:';
  }

  @override
  String get drillTypeSelectRoute => 'Selectaţi ruta:';

  @override
  String get drillTypeSpecifyCustom => 'Specificați descrierea tipului de foraj:';

  @override
  String get drillTypeTitle => 'Selectaţi tipul de foraj';

  @override
  String get drillTypeWarning => 'Asigură-te că vehiculul este parcat în siguranță înainte de a începe executarea.';

  @override
  String get drillsAssignedVehicle => 'Vehicul alocat';

  @override
  String get drillsChecking => 'Verificarea...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Forarea #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nu au fost atribuite autobuze';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Nu au fost înregistrate exerciții pentru autobuz $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Nu există rute disponibile pentru a începe un exerciţiu.';

  @override
  String get drillsShowSummary => 'Rezultatele';

  @override
  String get drillsStartDrill => 'Începe să exersezi';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Condus: $date Statutul: $status';
  }

  @override
  String get drillsTitle => 'Exerciţii de evacuare';

  @override
  String get drillsVehicleOutOfService => 'Vehiculul nu mai funcţionează';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Acest vehicul este în prezent în afara serviciului și nu poate fi utilizat pentru exerciții.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'CURANŢĂ de conducere';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Numele:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Pasagerul';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobusul şcolar';

  @override
  String get driverDetailsEndorsementsTitle => 'Apărarea a fost acordată';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de expirare';

  @override
  String get driverDetailsHolderSignature => 'TITULULUL DE TITUL';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificarea: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de publicare';

  @override
  String get driverDetailsLicenseDocTitle => 'Documentul de licență';

  @override
  String get driverDetailsLicenseNoLabel => 'Numărul de licență';

  @override
  String get driverDetailsLicenseTitle => 'Detalii privind licenţa';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tip de licență';

  @override
  String get driverDetailsOfficialSeal => 'SEALUL OFFICIAL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASA:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'Începerea activității';
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
  String get driverDetailsTapToView => 'Apelați pentru a vedea documentul DL';

  @override
  String get driverDetailsTitle => 'Detalii despre conducător';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemele de siguranță specifice autobuzelor';

  @override
  String get dvirCategoryCouplingDevices => 'Aparate de cuplare';

  @override
  String get dvirCategoryEmergencyEquipment => 'Echipamente de urgenţă';

  @override
  String get dvirCategoryHorn => 'Corn';

  @override
  String get dvirCategoryLightingReflectors => 'Dispozitive de iluminat și reflectoare';

  @override
  String get dvirCategoryMirrors => 'Oglinzile cu viziune retrovizorie';

  @override
  String get dvirCategoryParkingBrake => 'Frână de parcare';

  @override
  String get dvirCategoryPassengerSeating => 'Siturile și restricțiile pentru pasageri';

  @override
  String get dvirCategoryServiceBrakes => 'Frâne de serviciu';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismul de direcţie';

  @override
  String get dvirCategoryTires => 'Anvelopele';

  @override
  String get dvirCategoryWheelsRims => 'Roți și rimi';

  @override
  String get dvirCategoryWipers => 'Ștergătorii de parbriz';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOLĂ DEfect de captura';

  @override
  String get dvirPostTripComplianceTitle => 'Certificarea de conformitate';

  @override
  String get dvirPostTripDefectButton => 'Defect';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Raportarea defectului fără fotografie';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Avertisment: raportați un defect în zonele de siguranță ($zones) fără a atașa o fotografie. Sunteți sigur că doriți să depuneți oricum?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspecţie: Autobuz $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Intră în detaliu preocuparea de siguranţă...';

  @override
  String get dvirPostTripNotesLabel => 'NOTES (MANDATORIE DE DEFECT) și FOTO';

  @override
  String get dvirPostTripNotesPassedHint => 'Selectați DEFECT pentru a introduce detalii despre problemele de siguranță...';

  @override
  String get dvirPostTripOdometerHeader => 'Citirea curentă a odometru';

  @override
  String get dvirPostTripOdometerInstructions => 'Introduceți o citire a kilometrajelor exact așa cum este indicată pe panoul de instrumente al autobuzelor:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometer (milie)';

  @override
  String get dvirPostTripOdometerTitle => 'Vehiculul funcţionează';

  @override
  String get dvirPostTripOdometerWarning => 'Vă rugăm să introduceți o citire a kilometrului înainte de a continua.';

  @override
  String get dvirPostTripPassButton => 'PASS';

  @override
  String get dvirPostTripPhotoAttached => 'Fotografia atașată cu succes.';

  @override
  String get dvirPostTripProgressLabel => 'Progresul inspecţiei';

  @override
  String get dvirPostTripSignatureCaptured => 'Semnătura capturată.';

  @override
  String get dvirPostTripSignatureCert => 'Certific că acest raport de verificare a vagonului a fost completat în conformitate cu reglementările FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificarea semnăturii conducătorului';

  @override
  String get dvirPostTripSubmitButton => 'Instrucțiuni de inspecție';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR a fost prezentat cu succes.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zone de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistemului de control al sistem';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Recunosc că am revizuit ultimul raport defect depus și verificat reparațiile (și dacă există) și declar că autobuzul este sigur pentru funcționare.';

  @override
  String get dvirPreTripActiveMessage => 'Acest vehicul este activ și nu are defecte deschise.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Către o direcţie activă: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENŢIE REQUISATE: Defecturi din ziua anterioară';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numărul autobuzului: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Verificarea de expediere a vehiculelor';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Nu a semnat: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nu s-au înregistrat defecte anterioare';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Acest vehicul a fost raportat curat în inspecția anterioară post-turn.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Nu sunt necesare reparaţii pentru o funcţionare sigură.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Acest vehicul este în stare de ieșire din serviciu pentru reparații/entrare.';

  @override
  String get dvirPreTripOutofServiceButton => 'Vehículoul închis';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Motiv:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (reparat)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Raportare NOI DEFECTuri';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Raportarea de noi defecte este dezactivată în timpul reparațiilor.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statut:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RECOLUZIunea SUB-ADMINI în domeniul transportului';

  @override
  String get dvirPreTripReturnToHomeButton => 'RETURNĂ LA DOMNĂ';

  @override
  String get dvirPreTripSignOffTitle => 'Semnarea de a merge spre plimbare';

  @override
  String get dvirPreTripSignedSuccess => 'Verificarea a fost semnată cu succes.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Verificarea prezentării';

  @override
  String get dvirPreTripTitle => 'Verificarea înainte de călătorie';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statutul vehiculului: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Desenează semnătura';

  @override
  String get dvirSigPreviewLabel => 'Previzualizarea semnăturii capturate:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Salvă semnătura';

  @override
  String get dvirSigTapToDraw => 'TAP pentru a trage semnătura (required)';

  @override
  String get dvirSigWatermark => 'Semn vertical (de jos la sus)';

  @override
  String get forgotPasswordCancel => 'Anularea';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Vă rugăm să introduceți un e-mail valabil';

  @override
  String get forgotPasswordSend => 'Trimite';

  @override
  String get forgotPasswordSuccess => 'Dacă e-mailul există, un link de reset a fost trimis.';

  @override
  String get genericBack => 'Întoarceţi-vă !';

  @override
  String get genericCancel => 'Anularea';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => 'Închiderea';

  @override
  String get genericConfirm => 'Confirmă';

  @override
  String get genericEdit => 'Editarea';

  @override
  String get genericError => 'Ceva a mers prost.';

  @override
  String get genericLoading => 'Încărcare...';

  @override
  String get genericNext => 'Următorul';

  @override
  String get genericOk => 'Bine, bine.';

  @override
  String get genericRetry => 'Încercaţi din nou.';

  @override
  String get genericSuccess => 'Succesul';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobuz:';
  }

  @override
  String get homeDispatchBlocked => 'Îmbunătăţirea transportului';

  @override
  String get homeDispatchBlockedTitle => 'Îmbunătăţirea transportului';

  @override
  String get homeErrorNoRoutesPreTrip => 'Nu există rute disponibile pentru pre-trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Nu a reuşit să pornească pe server: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Bună, V0__';
  }

  @override
  String get homeLogout => 'Înregistrare';

  @override
  String get homeMenuAppInfo => 'Informaţii despre aplicaţii';

  @override
  String get homeMenuDrill => 'Forare';

  @override
  String get homeMenuDriverDetails => 'Detalii despre conducător';

  @override
  String get homeMenuLanguage => 'Limba';

  @override
  String get homeMenuPreTrip => 'Inspecţie înainte de călătorie';

  @override
  String get homeNoRoutes => 'Nu există rute disponibile';

  @override
  String get homeReviewVerifyPreTrip => 'Revizui şi verifica pre-voyage';

  @override
  String get homeSearchHint => 'Războiuri de căutare';

  @override
  String get homeStart => 'Începeţi';

  @override
  String get homeTitle => 'Acasă';

  @override
  String get homeVehicleOutOfServiceDefault => 'Vehiculul este în prezent OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Vehiculul este pregătit și verificat pentru o funcționare sigură.';

  @override
  String get languageTitle => 'Limba';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'Numărul de e-mail sau de telefon';

  @override
  String get loginErrorEnterPassword => 'Vă rugăm să introduceți parola';

  @override
  String get loginErrorEnterUsername => 'Vă rugăm să introduceți numele de utilizator';

  @override
  String get loginErrorFailed => 'Login-ul eșuat. Te rog, încearcă din nou.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Vă rugăm să introduceți un e-mail sau un număr de telefon valabil';

  @override
  String get loginForgotPassword => 'Ai uitat parola?';

  @override
  String get loginPasswordLabel => 'Parola';

  @override
  String get mapChildrenTooltip => 'Copiii & tutori';

  @override
  String get mapConfirmMessage => 'Chiar vrei să închizi călătoria?';

  @override
  String get mapConfirmTitle => 'Confirmă';

  @override
  String get mapCurrentPosition => 'Poziția actuală';

  @override
  String get mapNo => 'Nu , nu .';

  @override
  String get mapReconnectMessage => 'Actualizarea locației nu este de frecvent, vă rugăm să verificați internetul.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Opreşte-te !';

  @override
  String get mapStopping => 'Opresc...';

  @override
  String get mapStopsTooltip => 'Opresc';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Actualizate acum 5 ani';
  }

  @override
  String get mapWaitingGps => 'Aşteptând GPS...';

  @override
  String get mapYes => 'Da, da.';

  @override
  String get splashDriverApp => 'Aplicaţia de conducător';

  @override
  String get stopsActionUndo => 'Nu se poate face';

  @override
  String get stopsCancelledSuccess => 'Anulat cu succes';

  @override
  String get stopsDefaultLabel => 'Opreşte-te !';

  @override
  String get stopsGenericError => 'Ceva a mers prost. Te rog, încearcă din nou.';

  @override
  String get stopsStatusComplete => 'complet';

  @override
  String get stopsStatusDone => 'făcut';

  @override
  String stopsSubmitCount(Object count) {
    return 'Întocmirea ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'S-a prezentat cu succes';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected selectat · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => '- Daţi jos !';

  @override
  String get stopsTypePick => 'Alegeţi';

  @override
  String stopsUndoCount(Object count) {
    return 'Îndepărtare ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Îndepărtarea/depărtarea';

  @override
  String get tripConfirmCancel => 'Anularea';

  @override
  String get tripConfirmOk => 'Bine, bine.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'Este necesară autorizaţia de localizare pentru a începe o călătorie.';

  @override
  String get homeMenuPostCrashReporting => 'Raportarea după accident';

  @override
  String homeVehicleReason(Object reason) {
    return 'Motiv:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statut:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'În cazul în care nu există o soluţie,';
  }

  @override
  String get crashLocationPickerSearchHint => 'Locul de căutare (de exemplu, Market St.)';

  @override
  String get crashLocationPickerTitle => 'Selectaţi locaţia pe hartă';

  @override
  String get crashLocationPickerTooltip => 'Confirmă locaţia';

  @override
  String get incidentDashboardDescription => 'Selectați o acțiune pentru a continua cu gestionarea incidentelor sau vizualiza rapoartele anterioare.';

  @override
  String get incidentDashboardHeadline => 'Raportarea incidentelor de după accident';

  @override
  String get incidentDashboardLogNew => 'Log Nou Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniţiaţi un nou raport de accident pas cu pas';

  @override
  String get incidentDashboardTitle => 'Incidentul după accident';

  @override
  String get incidentDashboardViewHistory => 'Vezi istorie';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Vezi rapoartele de accidentare anterioare și starea lor';

  @override
  String get incidentDetailsAdminLetter => 'Scrisoare de administrare';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Numărarea înapoi a testului de alcool (2 ore limită)';

  @override
  String get incidentDetailsBranchId => 'Numărul de filialie';

  @override
  String get incidentDetailsBusPlate => 'Tablă de permis de autobuz';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impactul citării: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citatul al şoferului';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordonatele: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copiat la clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copiează la clop';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data și ora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Raportul DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Raportul DOE de stat (opțional)';

  @override
  String get incidentDetailsDriverNotes => 'Notă de conducător:';

  @override
  String get incidentDetailsDriverUserId => 'ID-ul de utilizator al șoferului';

  @override
  String get incidentDetailsDrugCountdown => 'Numărarea înapoiă a testelor de droguri DOT (8 ore limită)';

  @override
  String get incidentDetailsFatalityOccurred => 'S-a produs o fatală';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Răni care necesită tratament medical';

  @override
  String get incidentDetailsLawEnforcement => 'Agenția de aplicare a legii';

  @override
  String get incidentDetailsLoadFailed => 'Nu am încărcat detalii.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Locul: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Atașamente media';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statut:';
  }

  @override
  String get incidentDetailsNo => 'Nu';

  @override
  String get incidentDetailsNoMediaAttachments => 'Nu sunt fotografii sau videoclipuri atașate.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Niciun student nu a fost marcat la bord în timpul incidentului.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generarea de rapoarte de notificare și expedierea de scrisori cu șablonuri către supraveghetorii districtuali sau administrația.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificări de transmitere';

  @override
  String get incidentDetailsOfficer => 'Detalii cu privire la ofiţeri';

  @override
  String get incidentDetailsPoliceReport => 'Numărul de raport poliţian';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Scrisoare de transmitere pre-populată:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Baza de reglementare:';

  @override
  String get incidentDetailsRouteId => 'Identificarea traseului';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificarea administratorului școlii';

  @override
  String get incidentDetailsStatusPending => 'Aşteptare';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalii: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Rănit';

  @override
  String get incidentDetailsStudentNoInjury => 'Nu au fost răniţi.';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravitate:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transportat la: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Studenţi la bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'TESTarea post-crash este necesară';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statut:';
  }

  @override
  String get incidentDetailsTitle => 'Detalii despre incident';

  @override
  String get incidentDetailsVehicleTowed => 'Vehicul remorcat';

  @override
  String get incidentDetailsYes => 'Da, nu.';

  @override
  String get incidentHistoryEmpty => 'Nu au fost înregistrate înregistrări ale incidentelor pentru acest vehicul.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Eșecul de a recupera logurile: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Ora: 0 autobuz: 0 testare: 0 testare: 0 testare';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Nu este necesar';

  @override
  String get incidentHistoryTestingRequired => 'Required';

  @override
  String get incidentHistoryTitle => 'Registrul de incidente după accident';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Adaugă o altă fotografie';

  @override
  String get incidentIntakeBadgeNumberError => 'Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numărul insignei *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numărul autobuzului: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Fotografia de la scena incidentului';

  @override
  String get incidentIntakeCitationSubtitle => 'A fost eliberat un contract de circulaţie pentru încălcarea legii pentru şoferul autobuzului şcolar?';

  @override
  String get incidentIntakeCitationTitle => 'Citatul a fost emis?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data şi ora de prăbuşire *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'N- este necesară testarea';

  @override
  String get incidentIntakeDotTestingRequired => 'CERIBUITĂ DE TESTARE';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Şoferul:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Intră în orice note suplimentare cu privire la coliziune...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notă privind accidentul cu șoferul';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Pasageri care nu au încărcat ruta: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Ataşă dovezile (foto) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Au avut loc vreo decese ca urmare a acestui accident?';

  @override
  String get incidentIntakeFatalityTitle => 'S-a întâmplat o moarte?';

  @override
  String get incidentIntakeGpsLabel => 'Coordonatele GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Vezi istorie';

  @override
  String get incidentIntakeInjuriesSubtitle => 'A fost cineva rănit în corp care a necesitat tratament medical imediat în afara locului?';

  @override
  String get incidentIntakeInjuriesTitle => 'Răni care necesită tratament medical?';

  @override
  String get incidentIntakeInjuryNotesError => 'Notă de leziuni este obligatorie pentru elevii răniţi';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notă/detalii privind leziunile (obligatoriu) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravitatea leziunilor *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Vă rog să intraţi în agenţia de aplicare a legii .';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agenția de aplicare a legii (de exemplu, Patrulul de autostradă de stat) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Raportul poliţiei şi al forţelor de aplicare a legii';

  @override
  String get incidentIntakeLocationDescError => 'Vă rugăm să introduceți descrierea locatiei';

  @override
  String get incidentIntakeLocationDescLabel => 'Descriere a locației (de exemplu, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Facilitatea medicală transportată în';

  @override
  String get incidentIntakeNoMatchingStudents => 'Nu sunt studenţi potriviţi.';

  @override
  String get incidentIntakeNoStudentsFound => 'Niciun elev nu a fost găsit.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Nu sunt studenţi la bord.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Niciun student nu a fost înregistrat pentru această rută.';

  @override
  String get incidentIntakeOfficerNameError => 'Vă rugăm să introduceţi numele ofiţerului';

  @override
  String get incidentIntakeOfficerNameLabel => 'Numele ofiţerului *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Vă rugăm să introduceţi numărul de raport poliţiştilor.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numărul de raport poliţian *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Către:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informații despre traseu și șofer';

  @override
  String get incidentIntakeSearchInjuredHint => 'Căutarea copilului rănit...';

  @override
  String get incidentIntakeSearchStudentHint => 'Cercetare student...';

  @override
  String get incidentIntakeSelectAll => 'Alegeţi toţi studenţii';

  @override
  String get incidentIntakeSelectOnMap => 'SELECTĂ pe hartă';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Cea mai mică';

  @override
  String get incidentIntakeSeverityModerate => 'Moderat';

  @override
  String get incidentIntakeSeveritySevere => 'Severoare';

  @override
  String get incidentIntakeSeverityTitle => 'Variabile de gravitate a accidentului';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificarea: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'RAPORT SUBMIS';

  @override
  String get incidentIntakeTitle => 'Admisia după accident';

  @override
  String get incidentIntakeTowedSubtitle => 'A fost vreun vehicul afectat de o defecţiune care a necesitat remorcare?';

  @override
  String get incidentIntakeTowedTitle => 'Vehiculul tras?';

  @override
  String get incidentIntakeWasInjured => 'A fost rănit?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobuz:';
  }

  @override
  String get dvirPreTripClose => 'ÎNCHIUIT';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentarii / Notă ale șoferului (opțional)';

  @override
  String get dvirPreTripNoComments => 'Nu au fost adăugate comentarii.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Motiv:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Către:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Semnătura a fost capturată cu succes.';

  @override
  String get dvirPreTripSigMissing => 'Fără semnătură.';

  @override
  String get dvirPreTripSignDefectWarning => 'Vă rugăm să semnaţi pentru a verifica reparaţia defectelor anterioare.';

  @override
  String get dvirPreTripStepSignOff => 'Semnătură';

  @override
  String get dvirPreTripStepSubmit => 'Sîntem';

  @override
  String get dvirPreTripStepVerify => 'Verificarea';

  @override
  String get dvirPreTripTapNext => 'Vă rugăm să apăsaţi pe NEXT pentru a continua.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vehiculul e în afara serviciului';

  @override
  String get dvirPreTripVehicleReady => 'Vehiculul este gata de serviciu';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statutul verificat al reparării:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verificați dacă toate defectele raportate au fost reparate prin a verifica caseta de lângă fiecare defecțiune.';

  @override
  String get dvirPreTripYourComments => 'Comentariile tale:';

  @override
  String get countryPickerNoCountries => 'Niciun stat nu a fost găsit';

  @override
  String get countryPickerSearchHint => 'Căutarea după nume de ţară, cod sau cod de număr...';

  @override
  String get countryPickerTitle => 'Selectaţi ţara';

  @override
  String get mapDefaultStop => 'Opreşte-te !';

  @override
  String get mapEndLocation => 'Localizarea finală';

  @override
  String get mapStartLocation => 'Localizarea de pornire';

  @override
  String get stopsNoChangesToUndo => 'Nu există modificări disponibile pentru a anula.';

  @override
  String get stopsNoStopsAvailable => 'Nu există opriri disponibile.';
}
