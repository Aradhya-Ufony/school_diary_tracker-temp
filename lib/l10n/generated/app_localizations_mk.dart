import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appInfoBuild => 'Согради број';

  @override
  String get appInfoDevice => 'Модел на уредот';

  @override
  String get appInfoOS => 'Верзија на ОС';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'Информации за апликацијата';

  @override
  String get appInfoVersion => 'Верзија на апликацијата';

  @override
  String get appTitleSchoolDiary => 'SD трајкер';

  @override
  String get childrenActionGuardians => 'Пазители';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Оторизирани огледали за $name';
  }

  @override
  String get childrenNoGuardians => 'Нема овластени огледали во досието за ова дете.';

  @override
  String get childrenStatusDropped => 'Излезе';

  @override
  String get childrenStatusPending => 'Во чекање';

  @override
  String get childrenStatusPicked => 'Избрано';

  @override
  String childrenTitle(Object routeName) {
    return 'Деца  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'АБСЕНТ / НЕ на автобусот ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get drillChecklistEvacuated => 'Евакуирани';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Евакуирани: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Нема студенти кои не присуствуваат.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Нема ученици означени во автобусот.';

  @override
  String get drillChecklistNotOnBus => 'Не на автобус';

  @override
  String get drillChecklistOnBusNotEvacuated => 'На автобусот  Не евакуирана';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'На ВАЖ ($count)';
  }

  @override
  String get drillChecklistProceed => 'Процесот за да се фатат докази';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Маршрут (Пиво): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Евакуациски вежби контролна листа';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Непознати студенти остануваат!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Сигурен ли си дека сакаш да го подадеш овој дневник?';

  @override
  String get drillEvidenceConfirmSubmission => 'Потврдете го податокот на вежбите';

  @override
  String get drillEvidenceDriverNotesHint => 'Опишете го извршувањето на вежбите, однесувањето на учениците, излезните патишта кои се користат, и сите забележени исклучоци...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Ноти за возачот (минимум 10 знаци):';

  @override
  String get drillEvidenceFailed => 'Не успеало да се поднесе';

  @override
  String get drillEvidenceMandatoryWarning => 'Најмалку еден фото или видео доказ е задолжително за да се подаде вежба.';

  @override
  String get drillEvidenceRecordVideo => 'Запишете видео';

  @override
  String get drillEvidenceRetrySubmission => 'ПРЕДДРЕВИЈА';

  @override
  String get drillEvidenceReturnToDashboard => 'Вратете се на таблата';

  @override
  String get drillEvidenceSubmitButton => 'СУБМИТ ДРИЛЛ ЛОГ';

  @override
  String get drillEvidenceSubmitting => 'Поставување на дрил регистар...';

  @override
  String get drillEvidenceSuccess => 'Подложноста успешна!';

  @override
  String get drillEvidenceSuccessMessage => 'Евакуацијата е успешно објавена и се чека одобрение.';

  @override
  String get drillEvidenceTakePhoto => 'Снимите фотографија';

  @override
  String get drillEvidenceTitle => 'Осилни докази за вежбање';

  @override
  String get drillEvidenceUploading => 'Клучување на докази и податоци од контролната листа';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Вор:';
  }

  @override
  String get drillRosterMarkAttendance => 'Присутството на Марко';

  @override
  String get drillRosterNoStudents => 'Нема регистрирани студенти на оваа ruta.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Присутство: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Процесот за да се провери листата';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Седалка:';
  }

  @override
  String get drillRosterSelectAll => 'Изберете Сите';

  @override
  String get drillSummaryAdminNotesTitle => 'Ноти за администратор';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Одобрени на:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Одобрено во';

  @override
  String get drillSummaryBackToDrills => 'Вратете се на вежби';

  @override
  String get drillSummaryBusNumber => 'Број на автобусот';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Водени од: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Детали за вежбање';

  @override
  String get drillSummaryDriverNotesTitle => 'Ноти за возачот';

  @override
  String get drillSummaryDuration => 'Продолжителност';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes мин $seconds секунда';
  }

  @override
  String get drillSummaryEndTime => 'Времето на крајот';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Евакуирани: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Евакуирана';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Доказателски медиумски прилог';

  @override
  String get drillSummaryGps => 'Координати за GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Лат: $lat, Лнг: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не успеа да го зареди резюмето на вежба за ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Нема податоци за вежбањето.';

  @override
  String get drillSummaryNotOnBus => 'Не во автобусот';

  @override
  String get drillSummaryOnBusNotEvacuated => 'На автобусот - Не евакуирана';

  @override
  String get drillSummaryPhotoEvidence => 'Фотографски докази';

  @override
  String get drillSummaryRouteId => 'Идентификација на патот';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Седалка:';
  }

  @override
  String get drillSummaryStartTime => 'Време за почеток';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Евакуација на учениците';

  @override
  String drillSummaryTitle(Object id) {
    return 'Резултат од вежбите (#$id)';
  }

  @override
  String get drillSummaryType => 'Тип на вежбање';

  @override
  String get drillSummaryVideoEvidence => 'Видео доказ';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Автобус';
  }

  @override
  String get drillTypeClassification => 'Изберете класификација на вежбањето:';

  @override
  String get drillTypeCustomHint => 'Внесете тип на евакуација на евакуација...';

  @override
  String get drillTypeInvalidState => 'Неважни состојби на возилото или на патот.';

  @override
  String get drillTypeNameBusFire => 'Пожар во автобусот';

  @override
  String get drillTypeNameDangerZone => 'Зоната на опасност';

  @override
  String get drillTypeNameDriverIncapacitation => 'Неспособност на возачот';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ориентација на опремата';

  @override
  String get drillTypeNameFrontDoor => 'Предната врата';

  @override
  String get drillTypeNameOthers => 'Други';

  @override
  String get drillTypeNameRearDoor => 'Задна врата';

  @override
  String get drillTypeNameSideOrRoof => 'Страна или покрив';

  @override
  String get drillTypeNameSplit => 'Разделување';

  @override
  String get drillTypeNoRouteSelected => 'Нема избрана ruta';

  @override
  String get drillTypePreparation => 'ПРЕПРЕПРАЦИЈА за вежбање';

  @override
  String get drillTypeProceed => 'Процес на студентски список';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get drillTypeSelectRoute => 'Изберете маршрут:';

  @override
  String get drillTypeSpecifyCustom => 'Посочете го описот на типот на вежбање:';

  @override
  String get drillTypeTitle => 'Изберете тип на бурирање';

  @override
  String get drillTypeWarning => 'Обезбедете се дека возилото е безбедно паркирано пред да започне извршувањето.';

  @override
  String get drillsAssignedVehicle => 'Превозно средство кое е доделено';

  @override
  String get drillsChecking => 'Проверете...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Врачка #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Нема автобус кој ќе биде доделен';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Нема воведувања за автобус $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Нема маршрути за започнување на вежба.';

  @override
  String get drillsShowSummary => 'Покажете резюме';

  @override
  String get drillsStartDrill => 'Започнете со вежбање';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Водени: $date Статус: $status';
  }

  @override
  String get drillsTitle => 'Евакуациски вежби';

  @override
  String get drillsVehicleOutOfService => 'Возобновено возило';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Овој автомобил во моментов е исклучен од употреба и не може да се користи за вежби.';

  @override
  String get driverDetailsCdlClassLabel => 'Клас CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ЛИЦЕНЦИЈА за возење';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ИМ: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ЛИК:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Пасажир';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Школен автобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Поддржувања одржани';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата на истекување';

  @override
  String get driverDetailsHolderSignature => 'Подпис на титулар';

  @override
  String driverDetailsId(Object driverId) {
    return 'ИД: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата на издавање';

  @override
  String get driverDetailsLicenseDocTitle => 'Документ за лиценца';

  @override
  String get driverDetailsLicenseNoLabel => 'Лицензија не';

  @override
  String get driverDetailsLicenseTitle => 'Детали за лиценцата';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тип на лиценца';

  @override
  String get driverDetailsOfficialSeal => 'ОФИЦИЈАЛНА ПЕЧА';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Клас:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'ДОБ:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'СТРАНИЕ:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'ЛН: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'ФН: $name';
  }

  @override
  String get driverDetailsTapToView => 'Натискајте за да го видите DL документот';

  @override
  String get driverDetailsTitle => 'Деталите за возачот';

  @override
  String get dvirCategoryBusSafetySystems => 'Системи за безбедност за автобусите';

  @override
  String get dvirCategoryCouplingDevices => 'Уреди за спојување';

  @override
  String get dvirCategoryEmergencyEquipment => 'Евакуативно опрема';

  @override
  String get dvirCategoryHorn => 'Рог';

  @override
  String get dvirCategoryLightingReflectors => 'Уреди за осветлување и рефлектори';

  @override
  String get dvirCategoryMirrors => 'Огледала за задна визија';

  @override
  String get dvirCategoryParkingBrake => 'Паркинг преварување';

  @override
  String get dvirCategoryPassengerSeating => 'Седење и ограничувања за патници';

  @override
  String get dvirCategoryServiceBrakes => 'Преки на сервисот';

  @override
  String get dvirCategorySteeringMechanism => 'Механизам за управување';

  @override
  String get dvirCategoryTires => 'Текни';

  @override
  String get dvirCategoryWheelsRims => 'Колесни и ремни';

  @override
  String get dvirCategoryWipers => 'Упивачи за ветрови';

  @override
  String get dvirPostTripCapturePhoto => 'СВЕТИ на дефект на каптурата';

  @override
  String get dvirPostTripComplianceTitle => 'СТРЕФНАЦИЈА за исполнување';

  @override
  String get dvirPostTripDefectButton => 'Дефект';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Да се пријави дефект без фотографија';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Предупредување: Вие пријавувате дефект во безбедносните зони ($zones) без да прикажете фотографија.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Инспекција: Автобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Внесете детали за безбедноста...';

  @override
  String get dvirPostTripNotesLabel => 'Забележки (ОВЗВОРО за дефект) и Фото';

  @override
  String get dvirPostTripNotesPassedHint => 'Изберете DEFECT за да ги внесете деталите за безбедноста...';

  @override
  String get dvirPostTripOdometerHeader => 'Тековна читање на одометар';

  @override
  String get dvirPostTripOdometerInstructions => 'Внесете ја прочистување на километарскиот проток токму како што е прикажано на панелот на инструменти на автобусот:';

  @override
  String get dvirPostTripOdometerLabel => 'Одометар (мили)';

  @override
  String get dvirPostTripOdometerTitle => 'Возењето на возилото';

  @override
  String get dvirPostTripOdometerWarning => 'Ве молиме, влезете го читањето на одометрот пред да продолжите.';

  @override
  String get dvirPostTripPassButton => 'ПОС';

  @override
  String get dvirPostTripPhotoAttached => 'Фотографија успешно приклучена.';

  @override
  String get dvirPostTripProgressLabel => 'Прогрес на инспекцијата';

  @override
  String get dvirPostTripSignatureCaptured => 'Подпис зафатена.';

  @override
  String get dvirPostTripSignatureCert => 'Учествувам дека овој извештај за контролна листа за возило е завршен во согласност со FMCSA 396.11 правила.';

  @override
  String get dvirPostTripSignatureTitle => 'Проверка на потписот на возачот';

  @override
  String get dvirPostTripSubmitButton => 'Предавање на инспекција';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR успешно се поднесла.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ЗОНА $current од $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Зони на В1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Признавам дека го прегледав последниот пријавен извештај за дефект и ги проверував поправките (ако има) и ја наведам дека автобусот е безбеден за работа.';

  @override
  String get dvirPreTripActiveMessage => 'Овој автомобил е активен и нема отворени дефекти.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Активен пат: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ОБВОРНО СТАНЕ: Дефекти од претходниот ден';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Број на автобусот: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Проверка на возилата';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не успеа да го потпише:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Не се регистрирани претходно неисправности';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Овој автомобил бил пријавен чист во претходната инспекција по сметата по патувањето.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Нема потреба од поправки за безбедно работење.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Овој автомобил е исклучен од употреба за поправка/удржување.';

  @override
  String get dvirPreTripOutofServiceButton => 'Возора од употреба';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ПРЕПРЕПРЕДИ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Доклад за нови дефекти';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Сообќањето на нови дефекти е оневозможено за време на поправките.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Резолуција на пот-администрацијата за транспорт';

  @override
  String get dvirPreTripReturnToHomeButton => 'Вратете се дома';

  @override
  String get dvirPreTripSignOffTitle => 'Подпис за да се оди во пешачка.';

  @override
  String get dvirPreTripSignedSuccess => 'Проверка е успешно потпишана.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Предадена проверка';

  @override
  String get dvirPreTripTitle => 'Проверка пред патување';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус на возилото: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Нацртајте потпис';

  @override
  String get dvirSigPreviewLabel => 'Преглед на потписот заснемен:';

  @override
  String get dvirSigRedraw => 'РЕДРАУ';

  @override
  String get dvirSigSave => 'ССПАЗАВАЈЕ подпис';

  @override
  String get dvirSigTapToDraw => 'ТЕП за да се повлече потписот (ИЗТАНДИ)';

  @override
  String get dvirSigWatermark => 'Подпишете го вертикално (од довот до горе)';

  @override
  String get forgotPasswordCancel => 'Отсекајте';

  @override
  String get forgotPasswordEmailLabel => 'Електронна пошта';

  @override
  String get forgotPasswordInvalidEmail => 'Ве молиме внесете валиден имејл';

  @override
  String get forgotPasswordSend => 'Пораќај';

  @override
  String get forgotPasswordSuccess => 'Ако е-поштата постои, е испратена линк за рестартација.';

  @override
  String get genericBack => 'ВКРЕД';

  @override
  String get genericCancel => 'Отсекајте';

  @override
  String get genericClear => 'СЕЧИ';

  @override
  String get genericClose => 'Блиску';

  @override
  String get genericConfirm => 'Потврдете го тоа.';

  @override
  String get genericEdit => 'Редактирање';

  @override
  String get genericError => 'Нешто не е во ред.';

  @override
  String get genericLoading => 'Преносување...';

  @override
  String get genericNext => 'Следна статија';

  @override
  String get genericOk => 'Во ред.';

  @override
  String get genericRetry => 'Пробајте повторно';

  @override
  String get genericSuccess => 'Успех';

  @override
  String homeBusLabel(Object busId) {
    return 'Автобус:';
  }

  @override
  String get homeDispatchBlocked => 'Известување блокирано';

  @override
  String get homeDispatchBlockedTitle => 'Известување блокирано';

  @override
  String get homeErrorNoRoutesPreTrip => 'Нема достапни маршрути за пре- патување.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не успеа да го стартира патувањето на серверот: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Здраво, Вио.';
  }

  @override
  String get homeLogout => 'Излаз';

  @override
  String get homeMenuAppInfo => 'Информации за апликацијата';

  @override
  String get homeMenuDrill => 'Врачка';

  @override
  String get homeMenuDriverDetails => 'Деталите за возачот';

  @override
  String get homeMenuLanguage => 'Јазичка';

  @override
  String get homeMenuPreTrip => 'Инспекција пред патување';

  @override
  String get homeNoRoutes => 'Нема достапни маршрути';

  @override
  String get homeReviewVerifyPreTrip => 'Преглед и проверка пред патување';

  @override
  String get homeSearchHint => 'Маршрути за пребарување';

  @override
  String get homeStart => 'Започнете';

  @override
  String get homeTitle => 'Домот';

  @override
  String get homeVehicleOutOfServiceDefault => 'Возењето на возилото е исклучено од сервисот.';

  @override
  String get homeVehicleReady => 'Возобновувањето на возилото е подготвено и проверено за безбедно работење.';

  @override
  String get languageTitle => 'Јазичка';

  @override
  String get loginButton => 'Вклучување';

  @override
  String get loginEmailOrPhoneLabel => 'Е-пошта или телефонски број';

  @override
  String get loginErrorEnterPassword => 'Ве молиме внесете лозинка';

  @override
  String get loginErrorEnterUsername => 'Ве молиме внесете име на корисникот';

  @override
  String get loginErrorFailed => 'Пробовав повторно.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Ве молиме внесете валиден имејл или телефонски број';

  @override
  String get loginForgotPassword => 'Заборави го лозинката?';

  @override
  String get loginPasswordLabel => 'Пасош';

  @override
  String get mapChildrenTooltip => 'Децата и огледачите';

  @override
  String get mapConfirmMessage => 'Навистина сакаш да го затвориш патувањето?';

  @override
  String get mapConfirmTitle => 'Потврдете го тоа.';

  @override
  String get mapCurrentPosition => 'Актуална положба';

  @override
  String get mapNo => 'Не, не.';

  @override
  String get mapReconnectMessage => 'Објавување на локацијата често не успева, ве молиме проверете ја вашата интернет.';

  @override
  String get mapReconnectTitle => 'Следувач';

  @override
  String get mapStop => 'Престани!';

  @override
  String get mapStopping => 'Спрете...';

  @override
  String get mapStopsTooltip => 'Спрема';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Ажурирано пред 5 години';
  }

  @override
  String get mapWaitingGps => 'Чекајќи GPS...';

  @override
  String get mapYes => 'Да, тоа е.';

  @override
  String get splashDriverApp => 'Апликација за возач';

  @override
  String get stopsActionUndo => 'Не е во ред';

  @override
  String get stopsCancelledSuccess => 'Успешно отменено';

  @override
  String get stopsDefaultLabel => 'Престани!';

  @override
  String get stopsGenericError => 'Нешто не е во ред, пробај повторно.';

  @override
  String get stopsStatusComplete => 'комплетна';

  @override
  String get stopsStatusDone => 'завршено';

  @override
  String stopsSubmitCount(Object count) {
    return 'Поставување ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Подадена успешно';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected избрани · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Спуштај';

  @override
  String get stopsTypePick => 'Изберете';

  @override
  String stopsUndoCount(Object count) {
    return 'Недовршена ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Неотделно избир/патување';

  @override
  String get tripConfirmCancel => 'Отсекајте';

  @override
  String get tripConfirmOk => 'Во ред.';

  @override
  String get tripConfirmTitle => 'Следувач';

  @override
  String get tripErrorLocationRequired => 'За да започнете патување, е потребно дозвола за местоположба.';

  @override
  String get homeMenuPostCrashReporting => 'Известување по несреќата';

  @override
  String homeVehicleReason(Object reason) {
    return 'Причина:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Статус:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Лат: $lat, Лнг: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Локација на пребарување (на пример, улица Маркет)';

  @override
  String get crashLocationPickerTitle => 'Изберете локација на мапата';

  @override
  String get crashLocationPickerTooltip => 'Потврдете место';

  @override
  String get incidentDashboardDescription => 'Изберете акција за да продолжите со управување со инциденти или да ги видите претходните извештаи.';

  @override
  String get incidentDashboardHeadline => 'Сообќање за инциденти по несреќата';

  @override
  String get incidentDashboardLogNew => 'Регистрација Нов Крах';

  @override
  String get incidentDashboardLogNewSubtitle => 'Почнете со нов извештај за несреќата чекор по чекор';

  @override
  String get incidentDashboardTitle => 'Случај по несреќата';

  @override
  String get incidentDashboardViewHistory => 'Погледнете Историја';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Прогледување на претходните извештаи за несреќа и статус';

  @override
  String get incidentDetailsAdminLetter => 'Писмо на администраторот';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Проверка на алкохолот (ограничување од 2 часа)';

  @override
  String get incidentDetailsBranchId => 'Идентификација на подружјата';

  @override
  String get incidentDetailsBusPlate => 'Плата за возачка дозвола за автобуси';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Влијание на цитирањето: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Издадено цитат на возачот';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Координатите: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title копирана на клипборд!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Копирање на клипборд';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата и време: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Доклад на ДОЕ';

  @override
  String get incidentDetailsDoeReportTitle => 'Доклад на државното ДОЕ (опционален)';

  @override
  String get incidentDetailsDriverNotes => 'Ноти на возачот:';

  @override
  String get incidentDetailsDriverUserId => 'ИД на корисникот на возачот';

  @override
  String get incidentDetailsDrugCountdown => 'Дот тест за дрога (ограничување од 8 часа)';

  @override
  String get incidentDetailsFatalityOccurred => 'Случило се смртност';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Жртви кои бараат медицинско лекување';

  @override
  String get incidentDetailsLawEnforcement => 'Агенција за спроведување на законот';

  @override
  String get incidentDetailsLoadFailed => 'Не успеа да ги зареди деталите.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Место: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Приврзани до медиумите';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsNo => 'Не, не';

  @override
  String get incidentDetailsNoMediaAttachments => 'Нема фотографии или видеа.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Никој ученик не бил означен на бордот за време на инцидентот.';

  @override
  String get incidentDetailsNotificationsDesc => 'Генерарајте известувачки извештаи и испратете шаблони писма до окружните надгледувачи или администрација.';

  @override
  String get incidentDetailsNotificationsTitle => 'Нотификации за пренос';

  @override
  String get incidentDetailsOfficer => 'Детали за службеникот';

  @override
  String get incidentDetailsPoliceReport => 'Број на полицискиот извештај';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Презаполни препраќачки писмо:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Регулаторна основа:';

  @override
  String get incidentDetailsRouteId => 'Идентификација на патот';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Нотификација на администрацијата на училиштето';

  @override
  String get incidentDetailsStatusPending => 'Во чекање';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Деталите:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Поранети';

  @override
  String get incidentDetailsStudentNoInjury => 'Нема повреда';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Тежкост:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Превоз до: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Студентите на бордот ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Не е потребно тестирање по несреќата';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsTitle => 'Детали за инцидентот';

  @override
  String get incidentDetailsVehicleTowed => 'Возење на возилото';

  @override
  String get incidentDetailsYes => 'Да, да.';

  @override
  String get incidentHistoryEmpty => 'Нема регистрирани регистри за инциденти за овој автомобил.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не успеа да ги извлече дневниците: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Времето: Автобус: V1__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не е потребно';

  @override
  String get incidentHistoryTestingRequired => 'ОТВЕТИ';

  @override
  String get incidentHistoryTitle => 'Регистар за инциденти по несреќата';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Додадете уште една слика';

  @override
  String get incidentIntakeBadgeNumberError => 'Потребно';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Број на значката *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Број на автобусот: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Зафаќајте ја сцените на инцидентот';

  @override
  String get incidentIntakeCitationSubtitle => 'Дали е издадена пријава за сообраќајно прекршување на возачот на училишниот автобус?';

  @override
  String get incidentIntakeCitationTitle => 'Издадени ли цитати?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата и време на несреќата *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Не е потребно тестирање';

  @override
  String get incidentIntakeDotTestingRequired => 'ТЕСТИНГИрање потребно';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Возец:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Внесете дополнителни белешки во врска со судирната...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Ноти за инциденти со возачот';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не успеа да ги зареди патници на маршрутот: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Приклучете докази (Фото) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Дали се случиле смртни случаи како резултат на несреќата?';

  @override
  String get incidentIntakeFatalityTitle => 'Дали се случило смртно?';

  @override
  String get incidentIntakeGpsLabel => 'GPS координати *';

  @override
  String get incidentIntakeHistoryTooltip => 'Погледнете Историја';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Дали некој човек е повреден и е потребен од неотложна медицинска помош надвор од местото на несреќата?';

  @override
  String get incidentIntakeInjuriesTitle => 'Дали повредите бараат медицинска помош?';

  @override
  String get incidentIntakeInjuryNotesError => 'За повредени студенти е задолжително да ги запишат нараните.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Забележки за повреда / Детални податоци (обврзани) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Тежест на повредата *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Ве молам влезете во полициската служба.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Агенција за спроведување на законот (на пример, Државна патрула за патишта) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Правно спроведување и полициски извештај';

  @override
  String get incidentIntakeLocationDescError => 'Ве молиме внесете опис на локацијата';

  @override
  String get incidentIntakeLocationDescLabel => 'Описание на локацијата (на пример, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медицински објект пренесен во';

  @override
  String get incidentIntakeNoMatchingStudents => 'Нема соодветни студенти.';

  @override
  String get incidentIntakeNoStudentsFound => 'Нема ученици пронајдени.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Не смееме да ги имаме учениците.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Нема студенти регистрирани за оваа ruta.';

  @override
  String get incidentIntakeOfficerNameError => 'Ве молам внесете име на службеникот.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Име на службеникот *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Ве молам внесете број на полицискиот извештај.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Полициски број на пријава *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Информација за маршрутот и возачот';

  @override
  String get incidentIntakeSearchInjuredHint => 'Тргнете го раненото дете...';

  @override
  String get incidentIntakeSearchStudentHint => 'Студент за пребарување...';

  @override
  String get incidentIntakeSelectAll => 'Изберете ги сите ученици';

  @override
  String get incidentIntakeSelectOnMap => 'Избор на мапата';

  @override
  String get incidentIntakeSeverityFatal => 'Фатален';

  @override
  String get incidentIntakeSeverityMinor => 'Недостиг од малогодишна возраст';

  @override
  String get incidentIntakeSeverityModerate => 'Умерено';

  @override
  String get incidentIntakeSeveritySevere => 'Сериозни';

  @override
  String get incidentIntakeSeverityTitle => 'Варијабилни на тежеста на несреќата';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ИД: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Доклад';

  @override
  String get incidentIntakeTitle => 'Приема на храна по несреќата';

  @override
  String get incidentIntakeTowedSubtitle => 'Дали било возило оштетено со цел да биде повлечено од местото на несреќата?';

  @override
  String get incidentIntakeTowedTitle => 'Возење на возилото?';

  @override
  String get incidentIntakeWasInjured => 'Дали е повреден?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get dvirPreTripClose => 'БИДНО';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Коментари на возачот / примероци (неопционално)';

  @override
  String get dvirPreTripNoComments => 'Нема коментари.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Подпис успешно зафатена.';

  @override
  String get dvirPreTripSigMissing => 'Не е потпишан.';

  @override
  String get dvirPreTripSignDefectWarning => 'Ве молам потпишете за потврда на поправка на претходните дефекти.';

  @override
  String get dvirPreTripStepSignOff => 'Подпис';

  @override
  String get dvirPreTripStepSubmit => 'Поставување';

  @override
  String get dvirPreTripStepVerify => 'Проверка';

  @override
  String get dvirPreTripTapNext => 'Ве молам, кликнете на NEXT за да продолжите.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Возорот е исклучен.';

  @override
  String get dvirPreTripVehicleReady => 'Возорот е подготвен за работа';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Проверен статус на поправка:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Ве молиме проверете дали сите пријавени дефекти се поправени со означување на кутијата до секој дефект.';

  @override
  String get dvirPreTripYourComments => 'Вашите коментари:';

  @override
  String get countryPickerNoCountries => 'Нема пронајдени земји';

  @override
  String get countryPickerSearchHint => 'Трсене по име на земјата, код, или број...';

  @override
  String get countryPickerTitle => 'Изберете земја';

  @override
  String get mapDefaultStop => 'Престани!';

  @override
  String get mapEndLocation => 'Крајно местоположение';

  @override
  String get mapStartLocation => 'Почне место';

  @override
  String get stopsNoChangesToUndo => 'Нема промени кои можат да се повратят.';

  @override
  String get stopsNoStopsAvailable => 'Нема остатоци.';
}
