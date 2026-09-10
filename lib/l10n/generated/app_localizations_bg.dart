import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appInfoBuild => 'Създаване на номер';

  @override
  String get appInfoDevice => 'Модел на устройството';

  @override
  String get appInfoOS => 'Изход на операционната система';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'Инфо от приложението';

  @override
  String get appInfoVersion => 'Версия на приложението';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Стражи';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Оторизирани опеки за $name';
  }

  @override
  String get childrenNoGuardians => 'Няма опекуни за това дете.';

  @override
  String get childrenStatusDropped => 'Изпуснато';

  @override
  String get childrenStatusPending => 'Очаква се';

  @override
  String get childrenStatusPicked => 'Избрано';

  @override
  String childrenTitle(Object routeName) {
    return 'Деца  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Отсутна / Не на автобус ($count)';
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
  String get drillChecklistNoAbsentStudents => 'Няма отсъстващи ученици.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Няма ученици, които са били маркирани в автобуса.';

  @override
  String get drillChecklistNotOnBus => 'Не на автобус';

  @override
  String get drillChecklistOnBusNotEvacuated => 'В автобуса  Не евакуирана';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'В БУС ($count)';
  }

  @override
  String get drillChecklistProceed => 'Процесът за улавяне на доказателствата';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Път (Пиво): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Евакуационен тренировъчен списък';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Неразкритият студент остава!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Сигурен ли си, че искаш да изпратиш този дневник?';

  @override
  String get drillEvidenceConfirmSubmission => 'Потвърдете подаването на тренировките';

  @override
  String get drillEvidenceDriverNotesHint => 'Опишете изпълнението на тренировките, поведението на учениците, използваните изходни пътища и всички забелязани изключения...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Записки за водача (минимум 10 знака):';

  @override
  String get drillEvidenceFailed => 'Не успях да представя';

  @override
  String get drillEvidenceMandatoryWarning => 'За представяне на тренировки е задължително да се представят поне 1 снимка или видео доказателство.';

  @override
  String get drillEvidenceRecordVideo => 'Записване на видео';

  @override
  String get drillEvidenceRetrySubmission => 'СЪВЕДНИЕ на пенсия';

  @override
  String get drillEvidenceReturnToDashboard => 'Връщай се към таблото';

  @override
  String get drillEvidenceSubmitButton => 'СУБМИТ ДРИЛЛ ЛОГ';

  @override
  String get drillEvidenceSubmitting => 'Предавам дневникът за изкуства...';

  @override
  String get drillEvidenceSuccess => 'Подаване успешно!';

  @override
  String get drillEvidenceSuccessMessage => 'Евакуационният дневник е успешно заложен и е в очакване на одобрение.';

  @override
  String get drillEvidenceTakePhoto => 'Снимка';

  @override
  String get drillEvidenceTitle => 'Обязателни доказателства за изтръгване';

  @override
  String get drillEvidenceUploading => 'Залагане на доказателства и данни от контролните списъци';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Въздух:';
  }

  @override
  String get drillRosterMarkAttendance => 'присъствието на Марко';

  @override
  String get drillRosterNoStudents => 'Няма студенти регистрирани по този маршрут.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Присъствие: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Процесът за проверка';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Път:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Седалка:';
  }

  @override
  String get drillRosterSelectAll => 'Изберете всички';

  @override
  String get drillSummaryAdminNotesTitle => 'Административни бележки';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Одобрено на:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Одобрено от';

  @override
  String get drillSummaryBackToDrills => 'Връщаме се към \"Бърли\"';

  @override
  String get drillSummaryBusNumber => 'Автобус номер';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Водени от: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Подробности за изкуването';

  @override
  String get drillSummaryDriverNotesTitle => 'Записки за шофьорите';

  @override
  String get drillSummaryDuration => 'Продължителност';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds секунда';
  }

  @override
  String get drillSummaryEndTime => 'Времето на края';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Евакуирани: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Евакуирани';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Доказателства за прикрепленията към медиите';

  @override
  String get drillSummaryGps => 'Координати на GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Лат: В0__, Лнг: В1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не успях да заредим резюме за изкуването за идентификационен номер #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Не са открити данни от тренировките.';

  @override
  String get drillSummaryNotOnBus => 'Не и на автобуса.';

  @override
  String get drillSummaryOnBusNotEvacuated => 'В автобуса - НЕ Евакуирана';

  @override
  String get drillSummaryPhotoEvidence => 'Фото доказателства';

  @override
  String get drillSummaryRouteId => 'Идентификатор на маршрута';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Седалка:';
  }

  @override
  String get drillSummaryStartTime => 'Време за начало';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Евакуационен дневник на учениците';

  @override
  String drillSummaryTitle(Object id) {
    return 'Резюме на тренировките (#$id)';
  }

  @override
  String get drillSummaryType => 'Тип на бурилото';

  @override
  String get drillSummaryVideoEvidence => 'Видео доказателства';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Автобус';
  }

  @override
  String get drillTypeClassification => 'Изберете класификация на бурилите:';

  @override
  String get drillTypeCustomHint => 'Влезте в типа на евакуационния тренировъч...';

  @override
  String get drillTypeInvalidState => 'Невалидно състояние на превозното средство или маршрута.';

  @override
  String get drillTypeNameBusFire => 'Пожар в автобуса';

  @override
  String get drillTypeNameDangerZone => 'Зоната на опасност';

  @override
  String get drillTypeNameDriverIncapacitation => 'Неспособност на водача';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ориентация на оборудването';

  @override
  String get drillTypeNameFrontDoor => 'Входната врата';

  @override
  String get drillTypeNameOthers => 'Други';

  @override
  String get drillTypeNameRearDoor => 'Задната врата';

  @override
  String get drillTypeNameSideOrRoof => 'Странна или покрив';

  @override
  String get drillTypeNameSplit => 'Разделение';

  @override
  String get drillTypeNoRouteSelected => 'Не е избран маршрут';

  @override
  String get drillTypePreparation => 'Препрепарат за изтръгване';

  @override
  String get drillTypeProceed => 'Процес на студентски списък';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Път:';
  }

  @override
  String get drillTypeSelectRoute => 'Изберете маршрут:';

  @override
  String get drillTypeSpecifyCustom => 'Описание на типа на бурилото:';

  @override
  String get drillTypeTitle => 'Изберете тип бури';

  @override
  String get drillTypeWarning => 'Уверете се, че превозното средство е паркирано безопасно преди да започне изпълнението.';

  @override
  String get drillsAssignedVehicle => 'Назначано превозно средство';

  @override
  String get drillsChecking => 'Проверявам...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Изпратка #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Няма автобус';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Няма записване на тренировки за автобус $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Няма маршрути за започване на тренировка.';

  @override
  String get drillsShowSummary => 'Преглед на съкращение';

  @override
  String get drillsStartDrill => 'Започнете да тренирате';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Проведено: $date Статус: $status';
  }

  @override
  String get drillsTitle => 'Евакуационни тренировки';

  @override
  String get drillsVehicleOutOfService => 'Автомобилът е изчезнал';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Този автомобил в момента не е в експлоатация и не може да се използва за тренировки.';

  @override
  String get driverDetailsCdlClassLabel => 'Клас CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ДРИВИЦЕНТ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ИМЕ:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'В.И.О.:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Пътник';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Училищен автобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Подкрепителни документи';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата на изтичане на срока';

  @override
  String get driverDetailsHolderSignature => 'Подпис на притежателя';

  @override
  String driverDetailsId(Object driverId) {
    return 'ИД: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата на издаване';

  @override
  String get driverDetailsLicenseDocTitle => 'Документ за лиценз';

  @override
  String get driverDetailsLicenseNoLabel => 'Лицензия No';

  @override
  String get driverDetailsLicenseTitle => 'Разрешение за лиценз';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тип на лиценз';

  @override
  String get driverDetailsOfficialSeal => 'Официален печат';

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
    return 'ВОДВОР:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'ЛН:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'ФН: $name';
  }

  @override
  String get driverDetailsTapToView => 'Натиснете, за да видите DL документ';

  @override
  String get driverDetailsTitle => 'Подробности за шофьора';

  @override
  String get dvirCategoryBusSafetySystems => 'Системи за безопасност за автобусите';

  @override
  String get dvirCategoryCouplingDevices => 'Сцепление на устройства';

  @override
  String get dvirCategoryEmergencyEquipment => 'Спешно оборудване';

  @override
  String get dvirCategoryHorn => 'Рог';

  @override
  String get dvirCategoryLightingReflectors => 'Осветляващи устройства и рефлектори';

  @override
  String get dvirCategoryMirrors => 'Огледала за задната видимост';

  @override
  String get dvirCategoryParkingBrake => 'Паркинг спирачка';

  @override
  String get dvirCategoryPassengerSeating => 'Седалки и ограничения за пътници';

  @override
  String get dvirCategoryServiceBrakes => 'Спречни за обслужване';

  @override
  String get dvirCategorySteeringMechanism => 'Механизъм за управление';

  @override
  String get dvirCategoryTires => 'Тръсти';

  @override
  String get dvirCategoryWheelsRims => 'Колеса и ремни';

  @override
  String get dvirCategoryWipers => 'Стригатели за прожектори';

  @override
  String get dvirPostTripCapturePhoto => 'Снимка с дефект на картерата';

  @override
  String get dvirPostTripComplianceTitle => 'СТРЕБИТЕЛНО СОБЪДНИЕ';

  @override
  String get dvirPostTripDefectButton => 'Дефект';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Записване на дефект без снимка';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Предупреждение: Вие съобщавате за дефект в зоните за безопасност ($zones) без да добавите снимка.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Инспекция: Автобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Введете подробности за опасенията за безопасност...';

  @override
  String get dvirPostTripNotesLabel => 'Забележки (ОДВЕТИЯ НА ДЕФКЕТ) и СЛУПКА';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Изберете DEFECT, за да въведете детайлите за безопасността...';

  @override
  String get dvirPostTripOdometerHeader => 'Текущ Odometer четене';

  @override
  String get dvirPostTripOdometerInstructions => 'Введете четенето на километража точно както е показано на панела на инструментите на автобуса:';

  @override
  String get dvirPostTripOdometerLabel => 'Одометър (мили)';

  @override
  String get dvirPostTripOdometerTitle => 'МЕТРИКИ СТОРНОТО ДРЕБИТЕ';

  @override
  String get dvirPostTripOdometerWarning => 'Моля, въведете четенето на километъра преди да продължите.';

  @override
  String get dvirPostTripPassButton => 'Пропуск';

  @override
  String get dvirPostTripPhotoAttached => 'Снимка прикрепена успешно.';

  @override
  String get dvirPostTripProgressLabel => 'Прогрес на инспекцията';

  @override
  String get dvirPostTripSignatureCaptured => 'Подписът е заснеман.';

  @override
  String get dvirPostTripSignatureCert => 'Уверявам, че този доклад за контролен списък на превозни средства е завършен в съответствие с FMCSA 396.11 регламенти.';

  @override
  String get dvirPostTripSignatureTitle => 'Проверка на подписите на водача';

  @override
  String get dvirPostTripSubmitButton => 'Предоставяне на инспекция';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR е представен успешно.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ЗОНА $current НА $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Зони на В1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Признавам, че съм прегледал последния доклад за дефекти, който е бил изпратен, и потвърдих ремонтите (ако има такива) и заявих, че автобусът е безопасен за работа.';

  @override
  String get dvirPreTripActiveMessage => 'Това превозно средство е активно и няма открити дефекти.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Активен маршрут: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ОБЩЕДНО ПРЕБИРАНИЕ: Недостатъци от предходния ден';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Автобус номер: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Проверка на разпространението на превозни средства';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не успях да подпиша:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Не са регистрирани предварителни дефекти';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Този автомобил е бил докладван за чист при предишната инспекция след пътуването.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Не се нуждаят от ремонт за безопасна работа.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Това превозно средство е изчезнало за ремонт/услуга.';

  @override
  String get dvirPreTripOutofServiceButton => 'ПРЕДВЕДНИЕ ВЕХИКЛИ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ПРЕПРЕДИ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Докладване на нови дефекти';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Заявлението за нови дефекти е изключено по време на ремонт.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Резолюция на длъжностното лице по транспорта';

  @override
  String get dvirPreTripReturnToHomeButton => 'Връщайте се у дома';

  @override
  String get dvirPreTripSignOffTitle => 'Подпис за разходка';

  @override
  String get dvirPreTripSignedSuccess => 'Проверката е успешно подписана.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Предоставяне на проверка';

  @override
  String get dvirPreTripTitle => 'Проверка преди пътуване';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус на превозното средство: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Нарисуване на подпис';

  @override
  String get dvirSigPreviewLabel => 'Преглед на записа:';

  @override
  String get dvirSigRedraw => 'РЕДРАУ';

  @override
  String get dvirSigSave => 'СКРЕДАЙ подпис';

  @override
  String get dvirSigTapToDraw => 'ТАП за изтегляне на подпис (ИЗТРАНИ)';

  @override
  String get dvirSigWatermark => 'Подписва се вертикално (отдолу до горе)';

  @override
  String get forgotPasswordCancel => 'Отмени';

  @override
  String get forgotPasswordEmailLabel => 'Поща';

  @override
  String get forgotPasswordInvalidEmail => 'Моля, въведете валиден имейл.';

  @override
  String get forgotPasswordSend => 'Изпрати';

  @override
  String get forgotPasswordSuccess => 'Ако имейлът съществува, е изпратен линк за рестартиране.';

  @override
  String get genericBack => 'Връщайте се.';

  @override
  String get genericCancel => 'Отмени';

  @override
  String get genericClear => 'ПРЕЯЗНО';

  @override
  String get genericClose => 'Близо';

  @override
  String get genericConfirm => 'Потвърди';

  @override
  String get genericEdit => 'Редактиране';

  @override
  String get genericError => 'Нещо се обърка.';

  @override
  String get genericLoading => 'Зарязване...';

  @override
  String get genericNext => 'Следваща';

  @override
  String get genericOk => 'Добре, добре.';

  @override
  String get genericRetry => 'Опитайте отново.';

  @override
  String get genericSuccess => 'Успех';

  @override
  String homeBusLabel(Object busId) {
    return 'Автобус:';
  }

  @override
  String get homeDispatchBlocked => 'Изпращане блокирано';

  @override
  String get homeDispatchBlockedTitle => 'Изпращане блокирано';

  @override
  String get homeErrorNoRoutesPreTrip => 'Няма маршрути за преминаване.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не успях да стартирам пътуването на сървъра: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Здравей, В0';
  }

  @override
  String get homeLogout => 'Изход от мрежата';

  @override
  String get homeMenuAppInfo => 'Инфо от приложението';

  @override
  String get homeMenuDrill => 'Изпращане';

  @override
  String get homeMenuDriverDetails => 'Подробности за шофьора';

  @override
  String get homeMenuLanguage => 'Език';

  @override
  String get homeMenuPreTrip => 'Инспекция преди пътуване';

  @override
  String get homeNoRoutes => 'Няма маршрути';

  @override
  String get homeReviewVerifyPreTrip => 'Преглед и проверка преди пътуване';

  @override
  String get homeSearchHint => 'Пътища за търсене';

  @override
  String get homeStart => 'Започнете';

  @override
  String get homeTitle => 'Домът';

  @override
  String get homeVehicleOutOfServiceDefault => 'Превозът е в момента OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Превозът е готов и проверен за безопасна експлоатация.';

  @override
  String get languageTitle => 'Език';

  @override
  String get loginButton => 'Вход';

  @override
  String get loginEmailOrPhoneLabel => 'Е-мейл или телефонен номер';

  @override
  String get loginErrorEnterPassword => 'Моля въведете парола';

  @override
  String get loginErrorEnterUsername => 'Моля въведете потребителското име';

  @override
  String get loginErrorFailed => 'Провали се входа, опитайте отново.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Моля, въведете валиден имейл или телефонен номер';

  @override
  String get loginForgotPassword => 'Забрави ли паролата?';

  @override
  String get loginPasswordLabel => 'Парола';

  @override
  String get mapChildrenTooltip => 'Деца и попечители';

  @override
  String get mapConfirmMessage => 'Наистина ли искаш да приключиш пътуването?';

  @override
  String get mapConfirmTitle => 'Потвърди';

  @override
  String get mapCurrentPosition => 'Днес се намира';

  @override
  String get mapNo => 'Не, не.';

  @override
  String get mapReconnectMessage => 'Обновление на местоположението често не се получава, моля проверете интернет.';

  @override
  String get mapReconnectTitle => 'Трекър';

  @override
  String get mapStop => 'Спрете!';

  @override
  String get mapStopping => 'Спрете...';

  @override
  String get mapStopsTooltip => 'Стъпване';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Актуализиран преди 5 години';
  }

  @override
  String get mapWaitingGps => 'Чакам GPS...';

  @override
  String get mapYes => 'Да, да.';

  @override
  String get splashDriverApp => 'Приложение за шофьори';

  @override
  String get stopsActionUndo => 'Отменено';

  @override
  String get stopsCancelledSuccess => 'Успешно отменено';

  @override
  String get stopsDefaultLabel => 'Спрете!';

  @override
  String get stopsGenericError => 'Нещо се обърка, моля те, опитай отново.';

  @override
  String get stopsStatusComplete => 'пълно';

  @override
  String get stopsStatusDone => 'свършено';

  @override
  String stopsSubmitCount(Object count) {
    return 'Предоставяне ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Подадено успешно';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected избрани · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Пусни ме.';

  @override
  String get stopsTypePick => 'Изберете';

  @override
  String stopsUndoCount(Object count) {
    return 'Изключено ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Неизползване на подбор/отпуск';

  @override
  String get tripConfirmCancel => 'Отмени';

  @override
  String get tripConfirmOk => 'Добре, добре.';

  @override
  String get tripConfirmTitle => 'Трекър';

  @override
  String get tripErrorLocationRequired => 'За да започнете пътуването, е необходимо разрешение за местоположение.';

  @override
  String get homeMenuPostCrashReporting => 'Известие след катастрофата';

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
    return 'Лат: В0__, Лнг: В1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Место на търсене (напр. Market St)';

  @override
  String get crashLocationPickerTitle => 'Изберете местоположение на картата';

  @override
  String get crashLocationPickerTooltip => 'Потвърди местоположението';

  @override
  String get incidentDashboardDescription => 'Изберете действие, за да продължите с управлението на инцидентите или да видите минали доклади.';

  @override
  String get incidentDashboardHeadline => 'Докладване на инциденти след катастрофата';

  @override
  String get incidentDashboardLogNew => 'Регистрация Нови катастрофи';

  @override
  String get incidentDashboardLogNewSubtitle => 'Започнете нов доклад за катастрофата стъпка по стъпка';

  @override
  String get incidentDashboardTitle => 'Случай след катастрофата';

  @override
  String get incidentDashboardViewHistory => 'Виж историята';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Прегледайте предишни доклади за катастрофи и състояние';

  @override
  String get incidentDetailsAdminLetter => 'Административен лист';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Алкохол тест обратен брой (2 часа)';

  @override
  String get incidentDetailsBranchId => 'Идентификатор на клона';

  @override
  String get incidentDetailsBusPlate => 'Платка за лиценз за автобус';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Въздействие на цитатите: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Издадено цитатно писмо на водача';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Координати: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- В0... копирана на клипборд!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Копирай на клипборд';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата и час: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Доклад на ДОЕ';

  @override
  String get incidentDetailsDoeReportTitle => 'Доклад на ДОЕ на държавата (необязателен)';

  @override
  String get incidentDetailsDriverNotes => 'Забележки за водача:';

  @override
  String get incidentDetailsDriverUserId => 'ИД на потребителя на водача';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (Ограничение за 8 часа)';

  @override
  String get incidentDetailsFatalityOccurred => 'Случило се смъртно събитие';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Ранения, които изискват медицинско лечение';

  @override
  String get incidentDetailsLawEnforcement => 'Агенция за правоприлагане';

  @override
  String get incidentDetailsLoadFailed => 'Не успях да заредим детайли.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Местоположение:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Привързани към медиите';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsNo => 'Не, не';

  @override
  String get incidentDetailsNoMediaAttachments => 'Няма снимки или видеоклипове.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Никой не е бил маркиран на борда по време на инцидента.';

  @override
  String get incidentDetailsNotificationsDesc => 'Създаване на доклади за уведомления и изпращане на образец писма до районните надзорници или администрацията.';

  @override
  String get incidentDetailsNotificationsTitle => 'Известия за предаване';

  @override
  String get incidentDetailsOfficer => 'Детайли за служителя';

  @override
  String get incidentDetailsPoliceReport => 'Полицейски доклад номер';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Предварително попълване на писменото предаване:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Наредни основания:';

  @override
  String get incidentDetailsRouteId => 'Идентификатор на маршрута';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Известие за администрацията на училището';

  @override
  String get incidentDetailsStatusPending => 'Очаква се';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Подробности:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Ранен';

  @override
  String get incidentDetailsStudentNoInjury => 'Без нараняване';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Тежест:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Превоз към:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Студентите на борда ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Не се изисква тестове след катастрофата';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsTitle => 'Детайли за инцидента';

  @override
  String get incidentDetailsVehicleTowed => 'Превоз, претеглен';

  @override
  String get incidentDetailsYes => 'Да, да.';

  @override
  String get incidentHistoryEmpty => 'Няма регистрирани регистри за инциденти.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не успях да извлека дневниците: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Времето: Автобус: V1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не е необходимо';

  @override
  String get incidentHistoryTestingRequired => 'ОТВЕРЖДЕН';

  @override
  String get incidentHistoryTitle => 'Регистър за инциденти след катастрофата';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Добавете още една снимка';

  @override
  String get incidentIntakeBadgeNumberError => 'Необходимо';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Номер на значката *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Автобус номер: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Заснемете сцената на инцидента';

  @override
  String get incidentIntakeCitationSubtitle => 'Издадена ли е цитация за движение за нарушение на правилата на движението на училищния автобус?';

  @override
  String get incidentIntakeCitationTitle => 'Издадено ли е цитат?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата и час на катастрофата *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Не е необходимо да се извършват тестове';

  @override
  String get incidentIntakeDotTestingRequired => 'Необходимо е да се извършват тестове';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Водач:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Введете допълнителни бележки относно сблъсъка...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Забележки за инцидента с шофьора';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не успели да зареди пътници по маршрута: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Приложете доказателства (фото) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Има ли смъртни случаи в резултат на катастрофата?';

  @override
  String get incidentIntakeFatalityTitle => 'Случило ли се е смъртно събитие?';

  @override
  String get incidentIntakeGpsLabel => 'GPS координати *';

  @override
  String get incidentIntakeHistoryTooltip => 'Виж историята';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Има ли някой, който е получил телесна травма, която е изисквала незабавна медицинска помощ извън мястото на инцидента?';

  @override
  String get incidentIntakeInjuriesTitle => 'Наранени, които изискват медицинско лечение?';

  @override
  String get incidentIntakeInjuryNotesError => 'За ранени ученици е задължително да се записват бележките за нараняванията.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Забележки за наранявания / подробности (обвързващи се) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Тежест на нараняванията *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Моля, влязте в правоприлагащото управление.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Агенция за правоприлагане (напр. Държавна автопатрулна служба) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Изследване на правоприлагащите органи и полицейски доклад';

  @override
  String get incidentIntakeLocationDescError => 'Моля, въведете описание на местоположението.';

  @override
  String get incidentIntakeLocationDescLabel => 'Описание на местоположението (напр. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медицински съоръжение, превозено до';

  @override
  String get incidentIntakeNoMatchingStudents => 'Няма съвместими ученици.';

  @override
  String get incidentIntakeNoStudentsFound => 'Няма ученици.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Моля натиснете NEXT, за да продължите.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Няма ученици записани за този маршрут.';

  @override
  String get incidentIntakeOfficerNameError => 'Моля, въведете името на офицера.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Името на офицера *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Моля, въведете номера на полицейския доклад.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Полицейски доклад номер *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Път:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Информация за маршрута и шофьора';

  @override
  String get incidentIntakeSearchInjuredHint => 'Търсете ранено дете...';

  @override
  String get incidentIntakeSearchStudentHint => 'Търсете студент...';

  @override
  String get incidentIntakeSelectAll => 'Изберете всички ученици';

  @override
  String get incidentIntakeSelectOnMap => 'Избор на картата';

  @override
  String get incidentIntakeSeverityFatal => 'Смертни';

  @override
  String get incidentIntakeSeverityMinor => 'Непълнолетни';

  @override
  String get incidentIntakeSeverityModerate => 'Сместни';

  @override
  String get incidentIntakeSeveritySevere => 'Остра';

  @override
  String get incidentIntakeSeverityTitle => 'Вариабели на тежестта на катастрофата';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ИД: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Доклад';

  @override
  String get incidentIntakeTitle => 'Прием на храна след катастрофа';

  @override
  String get incidentIntakeTowedSubtitle => 'Има ли някакво превозно средство, което е било повредено, което е трябвало да бъде изтеглено от мястото на инцидента?';

  @override
  String get incidentIntakeTowedTitle => 'Превозът на буксира?';

  @override
  String get incidentIntakeWasInjured => 'Наранен ли е?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get dvirPreTripClose => 'СЪВЕЗНА';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Коментари на водача / бележки (необязателно)';

  @override
  String get dvirPreTripNoComments => 'Не се добавят коментари.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Път:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Подписът е успешно заснеман.';

  @override
  String get dvirPreTripSigMissing => 'Липсва подпис.';

  @override
  String get dvirPreTripSignDefectWarning => 'Моля, подпишете за потвърждение на поправянето на предишни дефекти.';

  @override
  String get dvirPreTripStepSignOff => 'Подпис';

  @override
  String get dvirPreTripStepSubmit => 'Предаване';

  @override
  String get dvirPreTripStepVerify => 'Проверка';

  @override
  String get dvirPreTripTapNext => 'Моля, натиснете NEXT, за да продължите.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Колата е изчезнала.';

  @override
  String get dvirPreTripVehicleReady => 'Автомобилът е готов за работа.';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Проверен статус на ремонт:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Моля, проверете дали всички докладвани дефекти са били поправени, като проверите полето до всеки дефект.';

  @override
  String get dvirPreTripYourComments => 'Вашите коментари:';

  @override
  String get countryPickerNoCountries => 'Никакви държави не са открити';

  @override
  String get countryPickerSearchHint => 'Търсене по име на страната, код или номер...';

  @override
  String get countryPickerTitle => 'Изберете държава';

  @override
  String get mapDefaultStop => 'Спрете!';

  @override
  String get mapEndLocation => 'Крайно място';

  @override
  String get mapStartLocation => 'Постанови се местоположение';

  @override
  String get stopsNoChangesToUndo => 'Няма промени, които да се отменят.';

  @override
  String get stopsNoStopsAvailable => 'Няма спирки.';

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
