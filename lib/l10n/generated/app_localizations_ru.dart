import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appInfoBuild => 'Номер сборки';

  @override
  String get appInfoDevice => 'Модель устройства';

  @override
  String get appInfoOS => 'Версия ОС';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'О приложении';

  @override
  String get appInfoVersion => 'Версия приложения';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Опекуны';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Уполномоченные опекуны для $name';
  }

  @override
  String get childrenNoGuardians => 'Для этого ребенка нет зарегистрированных уполномоченных опекунов.';

  @override
  String get childrenStatusDropped => 'Высажен';

  @override
  String get childrenStatusPending => 'В ожидании';

  @override
  String get childrenStatusPicked => 'Подобран';

  @override
  String childrenTitle(Object routeName) {
    return 'Дети - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ОТСУТСТВУЕТ / НЕТ В АВТОБУСЕ ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Автобус: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Эвакуирован';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Эвакуировано: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Нет отсутствующих учеников.';

  @override
  String get drillChecklistNoStudentsOnBus => 'В автобусе не отмечено учеников.';

  @override
  String get drillChecklistNotOnBus => 'НЕТ В АВТОБУСЕ';

  @override
  String get drillChecklistOnBusNotEvacuated => 'В АВТОБУСЕ - НЕ ЭВАКУИРОВАН';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'В АВТОБУСЕ ($count)';
  }

  @override
  String get drillChecklistProceed => 'ПЕРЕЙТИ К ФИКСАЦИИ ДОКАЗАТЕЛЬСТВ';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Маршрут (в реальном времени): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Контрольный список учебной эвакуации';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Осталось неучтенных учеников: $count!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Вы уверены, что хотите отправить этот журнал? Это действие нельзя отменить.';

  @override
  String get drillEvidenceConfirmSubmission => 'Подтвердить отправку';

  @override
  String get drillEvidenceDriverNotesHint => 'Опишите ход эвакуации, поведение учеников, использованные пути выхода и любые замеченные исключения...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Заметки водителя (Минимум 10 символов):';

  @override
  String get drillEvidenceFailed => 'Ошибка отправки';

  @override
  String get drillEvidenceMandatoryWarning => 'Для отправки необходимо прикрепить как минимум 1 фото- или видеодоказательство.';

  @override
  String get drillEvidenceRecordVideo => 'Записать видео';

  @override
  String get drillEvidenceRetrySubmission => 'ПОВТОРИТЬ ОТПРАВКУ';

  @override
  String get drillEvidenceReturnToDashboard => 'ВЕРНУТЬСЯ НА ПАНЕЛЬ';

  @override
  String get drillEvidenceSubmitButton => 'ОТПРАВИТЬ ЖУРНАЛ ЭВАКУАЦИИ';

  @override
  String get drillEvidenceSubmitting => 'Отправка журнала...';

  @override
  String get drillEvidenceSuccess => 'Успешно отправлено!';

  @override
  String get drillEvidenceSuccessMessage => 'Журнал учебной эвакуации успешно загружен и ожидает утверждения администратором.';

  @override
  String get drillEvidenceTakePhoto => 'Сделать фото';

  @override
  String get drillEvidenceTitle => 'Обязательные доказательства эвакуации';

  @override
  String get drillEvidenceUploading => 'Загрузка доказательств и данных контрольного списка';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Автобус: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Тренировка: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Отметить присутствующих';

  @override
  String get drillRosterNoStudents => 'На этом маршруте нет зарегистрированных учеников.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Присутствуют: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'ПЕРЕЙТИ К КОНТРОЛЬНОМУ СПИСКУ';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Место: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Выбрать все';

  @override
  String get drillSummaryAdminNotesTitle => 'Заметки администратора';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Утверждено: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Утверждено';

  @override
  String get drillSummaryBackToDrills => 'Назад к тренировкам';

  @override
  String get drillSummaryBusNumber => 'Номер автобуса';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Проведено: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Детали тренировки';

  @override
  String get drillSummaryDriverNotesTitle => 'Заметки водителя';

  @override
  String get drillSummaryDuration => 'Длительность';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes мин $seconds сек';
  }

  @override
  String get drillSummaryEndTime => 'Время окончания';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Эвакуировано: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Эвакуирован в $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Медиафайлы с доказательствами';

  @override
  String get drillSummaryGps => 'GPS-координаты';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Шир: $lat, Дол: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не удалось загрузить сводку по тренировке для ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Данные тренировки не найдены.';

  @override
  String get drillSummaryNotOnBus => 'Нет в автобусе';

  @override
  String get drillSummaryOnBusNotEvacuated => 'В АВТОБУСЕ - НЕ ЭВАКУИРОВАН';

  @override
  String get drillSummaryPhotoEvidence => 'Фото доказательства';

  @override
  String get drillSummaryRouteId => 'ID маршрута';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Место: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Время начала';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Журнал эвакуации учеников';

  @override
  String drillSummaryTitle(Object id) {
    return 'Сводка тренировки (#$id)';
  }

  @override
  String get drillSummaryType => 'Тип тренировки';

  @override
  String get drillSummaryVideoEvidence => 'Видео доказательства';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Автобус $busNumber';
  }

  @override
  String get drillTypeClassification => 'Выберите классификацию тренировки:';

  @override
  String get drillTypeCustomHint => 'Введите пользовательский тип тренировки...';

  @override
  String get drillTypeInvalidState => 'Недопустимое состояние транспортного средства или маршрута.';

  @override
  String get drillTypeNameBusFire => 'Пожар в автобусе';

  @override
  String get drillTypeNameDangerZone => 'Опасная зона';

  @override
  String get drillTypeNameDriverIncapacitation => 'Недееспособность водителя';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ориентация по оборудованию';

  @override
  String get drillTypeNameFrontDoor => 'Передняя дверь';

  @override
  String get drillTypeNameOthers => 'Другое';

  @override
  String get drillTypeNameRearDoor => 'Задняя дверь';

  @override
  String get drillTypeNameSideOrRoof => 'Боковая дверь или крыша';

  @override
  String get drillTypeNameSplit => 'Разделенная';

  @override
  String get drillTypeNoRouteSelected => 'Маршрут не выбран';

  @override
  String get drillTypePreparation => 'ПОДГОТОВКА К ТРЕНИРОВКЕ';

  @override
  String get drillTypeProceed => 'ПЕРЕЙТИ К СПИСКУ УЧЕНИКОВ';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Выберите маршрут:';

  @override
  String get drillTypeSpecifyCustom => 'Укажите описание тренировки:';

  @override
  String get drillTypeTitle => 'Выберите тип тренировки';

  @override
  String get drillTypeWarning => 'Убедитесь, что транспортное средство безопасно припарковано, прежде чем начать.';

  @override
  String get drillsAssignedVehicle => 'Назначенное транспортное средство';

  @override
  String get drillsChecking => 'Проверка...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Тренировка #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Автобус не назначен';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Нет записанных тренировок для автобуса $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Нет доступных маршрутов для начала тренировки.';

  @override
  String get drillsShowSummary => 'Показать сводку';

  @override
  String get drillsStartDrill => 'Начать тренировку';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Проведено: $date\nСтатус: $status';
  }

  @override
  String get drillsTitle => 'Тренировки эвакуации';

  @override
  String get drillsVehicleOutOfService => 'Транспортное средство не обслуживается';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Это транспортное средство в настоящее время не обслуживается и не может быть использовано для тренировок.';

  @override
  String get driverDetailsCdlClassLabel => 'Класс CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ВОДИТЕЛЬСКИЕ ПРАВА';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ИМЯ: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ЛИЦ: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Пассажирские перевозки';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Школьный автобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Имеющиеся категории';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата окончания срока действия';

  @override
  String get driverDetailsHolderSignature => 'ПОДПИСЬ ВЛАДЕЛЬЦА';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата выдачи';

  @override
  String get driverDetailsLicenseDocTitle => 'Документ лицензии';

  @override
  String get driverDetailsLicenseNoLabel => '№ лицензии';

  @override
  String get driverDetailsLicenseTitle => 'Сведения о лицензии';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тип лицензии';

  @override
  String get driverDetailsOfficialSeal => 'ОФИЦИАЛЬНАЯ ПЕЧАТЬ';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'КЛАСС: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Д.Р.: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'КАТЕГОРИИ: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'ДЕЙСТВ ДО: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'НЛ: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'ИМЯ: $name';
  }

  @override
  String get driverDetailsTapToView => 'Нажмите, чтобы просмотреть документ ВУ';

  @override
  String get driverDetailsTitle => 'Данные водителя';

  @override
  String get dvirCategoryBusSafetySystems => 'Системы безопасности автобуса';

  @override
  String get dvirCategoryCouplingDevices => 'Сцепные устройства';

  @override
  String get dvirCategoryEmergencyEquipment => 'Аварийное оборудование';

  @override
  String get dvirCategoryHorn => 'Звуковой сигнал';

  @override
  String get dvirCategoryLightingReflectors => 'Световые приборы и отражатели';

  @override
  String get dvirCategoryMirrors => 'Зеркала заднего вида';

  @override
  String get dvirCategoryParkingBrake => 'Стояночный тормоз';

  @override
  String get dvirCategoryPassengerSeating => 'Пассажирские сиденья и ремни';

  @override
  String get dvirCategoryServiceBrakes => 'Рабочие тормоза';

  @override
  String get dvirCategorySteeringMechanism => 'Рулевой механизм';

  @override
  String get dvirCategoryTires => 'Шины';

  @override
  String get dvirCategoryWheelsRims => 'Колеса и ободья';

  @override
  String get dvirCategoryWipers => 'Стеклоочистители';

  @override
  String get dvirPostTripCapturePhoto => 'СДЕЛАТЬ ФОТО ДЕФЕКТА';

  @override
  String get dvirPostTripComplianceTitle => 'СЕРТИФИКАТ СООТВЕТСТВИЯ';

  @override
  String get dvirPostTripDefectButton => 'ДЕФЕКТ';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Сообщение о дефекте без фото';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Предупреждение: Вы сообщаете о дефекте в зонах безопасности ($zones) без прикрепления фото. Вы уверены, что хотите отправить в любом случае?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Осмотр: Автобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Введите подробности проблемы безопасности...';

  @override
  String get dvirPostTripNotesLabel => 'ЗАМЕТКИ (ОБЯЗАТЕЛЬНО ПРИ ДЕФЕКТЕ) И ФОТО';

  @override
  String get dvirPostTripNotesPassedHint => 'Выберите ДЕФЕКТ, чтобы ввести подробности проблемы безопасности...';

  @override
  String get dvirPostTripOdometerHeader => 'Текущие показания одометра';

  @override
  String get dvirPostTripOdometerInstructions => 'Введите показания пробега в точности так, как они отображаются на приборной панели автобуса:';

  @override
  String get dvirPostTripOdometerLabel => 'Одометр (Мили/Км)';

  @override
  String get dvirPostTripOdometerTitle => 'МЕТРИКА ВРЕМЕНИ РАБОТЫ АВТОМОБИЛЯ';

  @override
  String get dvirPostTripOdometerWarning => 'Пожалуйста, введите показания одометра перед тем как продолжить.';

  @override
  String get dvirPostTripPassButton => 'ПРОЙДЕНО';

  @override
  String get dvirPostTripPhotoAttached => 'Фото успешно прикреплено.';

  @override
  String get dvirPostTripProgressLabel => 'Прогресс осмотра';

  @override
  String get dvirPostTripSignatureCaptured => 'Подпись сохранена.';

  @override
  String get dvirPostTripSignatureCert => 'Я подтверждаю, что этот отчет об осмотре транспортного средства был заполнен в соответствии с правилами FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Проверка подписи водителя';

  @override
  String get dvirPostTripSubmitButton => 'ОТПРАВИТЬ ОТЧЕТ ОБ ОСМОТРЕ';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR успешно отправлен.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ЗОНА $current ИЗ $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Зон';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Я подтверждаю, что ознакомился с последним отправленным отчетом о дефектах и проверил ремонт (если таковой был), и заявляю, что автобус безопасен для эксплуатации.';

  @override
  String get dvirPreTripActiveMessage => 'Это транспортное средство Активно и не имеет открытых дефектов. Оно проверено и безопасно для эксплуатации.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Активный маршрут: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ТРЕБУЕТСЯ ВНИМАНИЕ: ЗАРЕГИСТРИРОВАНЫ ДЕФЕКТЫ С ПРОШЛОГО ДНЯ';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Номер автобуса: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'ПРОВЕРКА ГОТОВНОСТИ К ВЫЕЗДУ';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не удалось подписать: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Нет зарегистрированных предыдущих дефектов';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Это транспортное средство было признано исправным во время предыдущего послерейсового осмотра.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ремонт для безопасной эксплуатации не требуется.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Транспортное средство находится на Ремонте/Обслуживании. Проблемы с безопасностью должны быть решены персоналом мастерской до выезда.';

  @override
  String get dvirPreTripOutofServiceButton => 'ТРАНСПОРТНОЕ СРЕДСТВО НЕ ОБСЛУЖИВАЕТСЯ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Причина: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ОТРЕМОНТИРОВАНО)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'СООБЩИТЬ О НОВЫХ ДЕФЕКТАХ';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Сообщение о новых дефектах отключено во время ремонта.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'РЕШЕНИЕ ТРАНСПОРТНОГО СУБАДМИНИСТРАТОРА';

  @override
  String get dvirPreTripReturnToHomeButton => 'ВЕРНУТЬСЯ НА ГЛАВНУЮ';

  @override
  String get dvirPreTripSignOffTitle => 'ПОДПИШИТЕ ДЛЯ ПЕРЕХОДА К ОСМОТРУ';

  @override
  String get dvirPreTripSignedSuccess => 'Проверка успешно подписана. Предрейсовый осмотр разблокирован.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ОТПРАВИТЬ ПОДТВЕРЖДЕНИЕ';

  @override
  String get dvirPreTripTitle => 'Предрейсовая проверка';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус транспортного средства: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Поставьте подпись';

  @override
  String get dvirSigPreviewLabel => 'Предварительный просмотр сохраненной подписи:';

  @override
  String get dvirSigRedraw => 'ПЕРЕРИСОВАТЬ';

  @override
  String get dvirSigSave => 'СОХРАНИТЬ ПОДПИСЬ';

  @override
  String get dvirSigTapToDraw => 'НАЖМИТЕ, ЧТОБЫ ПОСТАВИТЬ ПОДПИСЬ (ОБЯЗАТЕЛЬНО)';

  @override
  String get dvirSigWatermark => 'Распишитесь вертикально (Снизу вверх)';

  @override
  String get forgotPasswordCancel => 'Отмена';

  @override
  String get forgotPasswordEmailLabel => 'Электронная почта';

  @override
  String get forgotPasswordInvalidEmail => 'Пожалуйста, введите действительный адрес';

  @override
  String get forgotPasswordSend => 'Отправить';

  @override
  String get forgotPasswordSuccess => 'Если этот адрес электронной почты существует, на него была отправлена ссылка для сброса.';

  @override
  String get genericBack => 'НАЗАД';

  @override
  String get genericCancel => 'Отмена';

  @override
  String get genericClear => 'ОЧИСТИТЬ';

  @override
  String get genericClose => 'Закрыть';

  @override
  String get genericConfirm => 'Подтвердить';

  @override
  String get genericEdit => 'Редактировать';

  @override
  String get genericError => 'Что-то пошло не так';

  @override
  String get genericLoading => 'Загрузка...';

  @override
  String get genericNext => 'ДАЛЕЕ';

  @override
  String get genericOk => 'Ок';

  @override
  String get genericRetry => 'Повторить';

  @override
  String get genericSuccess => 'Успешно';

  @override
  String homeBusLabel(Object busId) {
    return 'Автобус: $busId';
  }

  @override
  String get homeDispatchBlocked => 'Выезд заблокирован';

  @override
  String get homeDispatchBlockedTitle => 'Выезд заблокирован';

  @override
  String get homeErrorNoRoutesPreTrip => 'Нет доступных маршрутов для выполнения предрейсового осмотра.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не удалось начать поездку на сервере: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Привет, $name';
  }

  @override
  String get homeLogout => 'Выйти';

  @override
  String get homeMenuAppInfo => 'О приложении';

  @override
  String get homeMenuDrill => 'Тренировка';

  @override
  String get homeMenuDriverDetails => 'Данные водителя';

  @override
  String get homeMenuLanguage => 'Язык';

  @override
  String get homeMenuPreTrip => 'Предрейсовый осмотр';

  @override
  String get homeNoRoutes => 'Нет доступных маршрутов';

  @override
  String get homeReviewVerifyPreTrip => 'Проверить и подтвердить предрейсовый осмотр';

  @override
  String get homeSearchHint => 'Поиск маршрутов';

  @override
  String get homeStart => 'Старт';

  @override
  String get homeTitle => 'Главная';

  @override
  String get homeVehicleOutOfServiceDefault => 'Транспортное средство в настоящее время НЕ ОБСЛУЖИВАЕТСЯ.';

  @override
  String get homeVehicleReady => 'Транспортное средство готово и проверено для безопасной эксплуатации.';

  @override
  String get languageTitle => 'Язык';

  @override
  String get loginButton => 'Войти';

  @override
  String get loginEmailOrPhoneLabel => 'Эл. почта или номер телефона';

  @override
  String get loginErrorEnterPassword => 'Пожалуйста, введите пароль';

  @override
  String get loginErrorEnterUsername => 'Пожалуйста, введите имя пользователя';

  @override
  String get loginErrorFailed => 'Не удалось войти. Пожалуйста, попробуйте еще раз.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Пожалуйста, введите действительный адрес эл. почты или номер телефона';

  @override
  String get loginForgotPassword => 'Забыли пароль?';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get mapChildrenTooltip => 'Дети и опекуны';

  @override
  String get mapConfirmMessage => 'Вы действительно хотите завершить поездку?';

  @override
  String get mapConfirmTitle => 'Подтверждение';

  @override
  String get mapCurrentPosition => 'Текущая позиция';

  @override
  String get mapNo => 'Нет';

  @override
  String get mapReconnectMessage => 'Обновление местоположения часто прерывается. Пожалуйста, проверьте интернет.';

  @override
  String get mapReconnectTitle => 'Трекер';

  @override
  String get mapStop => 'Стоп';

  @override
  String get mapStopping => 'Остановка...';

  @override
  String get mapStopsTooltip => 'Остановки';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Обновлено $seconds с назад';
  }

  @override
  String get mapWaitingGps => 'Ожидание GPS...';

  @override
  String get mapYes => 'Да';

  @override
  String get splashDriverApp => 'Приложение водителя';

  @override
  String get stopsActionUndo => 'Отменить';

  @override
  String get stopsCancelledSuccess => 'Успешно отменено';

  @override
  String get stopsDefaultLabel => 'Остановка';

  @override
  String get stopsGenericError => 'Что-то пошло не так. Пожалуйста, попробуйте еще раз.';

  @override
  String get stopsStatusComplete => 'завершено';

  @override
  String get stopsStatusDone => 'готово';

  @override
  String stopsSubmitCount(Object count) {
    return 'Отправить ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Успешно отправлено';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected выбрано · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Высадка';

  @override
  String get stopsTypePick => 'Посадка';

  @override
  String stopsUndoCount(Object count) {
    return 'Отменить ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Отменить посадку/высадку';

  @override
  String get tripConfirmCancel => 'Отмена';

  @override
  String get tripConfirmOk => 'ОК';

  @override
  String get tripConfirmTitle => 'Трекер';

  @override
  String get tripErrorLocationRequired => 'Для начала поездки требуется разрешение на определение местоположения.';

  @override
  String get homeMenuPostCrashReporting => 'Отчет после ДТП';

  @override
  String homeVehicleReason(Object reason) {
    return 'Причина: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Шир: $lat, Дол: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Поиск местоположения (напр. ул. Ленина)';

  @override
  String get crashLocationPickerTitle => 'Выберите место на карте';

  @override
  String get crashLocationPickerTooltip => 'Подтвердить местоположение';

  @override
  String get incidentDashboardDescription => 'Выберите действие, чтобы продолжить управление инцидентом или просмотреть прошлые отчеты.';

  @override
  String get incidentDashboardHeadline => 'Отчетность об инцидентах после ДТП';

  @override
  String get incidentDashboardLogNew => 'Зарегистрировать новое ДТП';

  @override
  String get incidentDashboardLogNewSubtitle => 'Начать пошаговое заполнение отчета об аварии';

  @override
  String get incidentDashboardTitle => 'Инцидент после ДТП';

  @override
  String get incidentDashboardViewHistory => 'Просмотр истории';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Просмотр предыдущих отчетов об авариях и статусов';

  @override
  String get incidentDetailsAdminLetter => 'Письмо администратора';

  @override
  String get incidentDetailsAlcoholCountdown => 'Обратный отсчет теста DOT на алкоголь (лимит 2 часа)';

  @override
  String get incidentDetailsBranchId => 'ID филиала';

  @override
  String get incidentDetailsBusPlate => 'Номерной знак автобуса';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Влияние штрафа: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Штраф выписан водителю';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Координаты: Шир $lat, Дол $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title скопировано в буфер обмена!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Скопировать в буфер обмена';

  @override
  String get incidentDetailsCrashCitationInfo => 'Информация об аварии и штрафах';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата и время: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Отчет DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Отчет государственного DOE (необязательно)';

  @override
  String get incidentDetailsDriverNotes => 'Заметки водителя:';

  @override
  String get incidentDetailsDriverUserId => 'ID водителя';

  @override
  String get incidentDetailsDrugCountdown => 'Обратный отсчет теста DOT на наркотики (лимит 8 часов)';

  @override
  String get incidentDetailsFatalityOccurred => 'Произошел смертельный исход';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Травмы, требующие мед. помощи';

  @override
  String get incidentDetailsLawEnforcement => 'Правоохранительный орган';

  @override
  String get incidentDetailsLoadFailed => 'Не удалось загрузить подробности.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Местоположение: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Медиа вложения';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get incidentDetailsNo => 'Нет';

  @override
  String get incidentDetailsNoMediaAttachments => 'Фото или видео не прикреплены.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Во время инцидента ученики в автобусе не были отмечены.';

  @override
  String get incidentDetailsNotificationsDesc => 'Генерируйте отчеты об уведомлениях и отправляйте шаблонные письма руководителям округа или администрации.';

  @override
  String get incidentDetailsNotificationsTitle => 'Уведомления о передаче';

  @override
  String get incidentDetailsOfficer => 'Данные офицера';

  @override
  String get incidentDetailsPoliceReport => 'Номер полицейского отчета';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Предварительно заполненное письмо:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Нормативная база:';

  @override
  String get incidentDetailsRouteId => 'ID маршрута';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Уведомление администрации школы';

  @override
  String get incidentDetailsStatusPending => 'В ожидании';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Детали: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Травмирован';

  @override
  String get incidentDetailsStudentNoInjury => 'Нет травм';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Тяжесть: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Транспортирован в: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Ученики в автобусе ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Требуется тест DOT после ДТП';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get incidentDetailsTitle => 'Детали инцидента';

  @override
  String get incidentDetailsVehicleTowed => 'Транспортное средство отбуксировано';

  @override
  String get incidentDetailsYes => 'Да';

  @override
  String get incidentHistoryEmpty => 'Для этого транспортного средства нет журналов инцидентов.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не удалось получить журналы: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Время: $time Автобус: $busNumber Тест: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Инцидент #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не требуется';

  @override
  String get incidentHistoryTestingRequired => 'Требуется';

  @override
  String get incidentHistoryTitle => 'Реестр инцидентов после ДТП';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Добавить еще фото';

  @override
  String get incidentIntakeBadgeNumberError => 'Обязательно';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Номер жетона*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Номер автобуса: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Сделать фото места ДТП';

  @override
  String get incidentIntakeCitationSubtitle => 'Был ли выписан водителю школьного автобуса штраф за нарушение ПДД в движении?';

  @override
  String get incidentIntakeCitationTitle => 'Штраф выписан?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата и время аварии*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Тестирование DOT НЕ требуется';

  @override
  String get incidentIntakeDotTestingRequired => 'Тестирование DOT требуется';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Водитель: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Введите любые дополнительные заметки о столкновении...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Заметки водителя об инциденте';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не удалось загрузить пассажиров маршрута: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Прикрепить доказательства (Фото) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Произошли ли смертельные исходы в результате этой аварии?';

  @override
  String get incidentIntakeFatalityTitle => 'Произошел смертельный исход?';

  @override
  String get incidentIntakeGpsLabel => 'GPS-координаты*';

  @override
  String get incidentIntakeHistoryTooltip => 'Просмотр истории';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Получил ли кто-либо физическую травму, требующую немедленного медицинского лечения вне места происшествия?';

  @override
  String get incidentIntakeInjuriesTitle => 'Травмы, требующие мед. лечения?';

  @override
  String get incidentIntakeInjuryNotesError => 'Заметки о травме обязательны для травмированных учеников';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Заметки / детали о травме (обязательно) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Тяжесть травмы *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Пожалуйста, введите правоохранительный орган';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Правоохранительный орган (напр. Патруль штата)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Правоохранительные органы и полицейский отчет';

  @override
  String get incidentIntakeLocationDescError => 'Пожалуйста, введите описание местоположения';

  @override
  String get incidentIntakeLocationDescLabel => 'Описание места (напр. ул. Ленина и пр. Мира) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медицинское учреждение';

  @override
  String get incidentIntakeNoMatchingStudents => 'Нет совпадающих учеников.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ученики не найдены.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'В автобусе нет учеников, нажмите ДАЛЕЕ, чтобы продолжить.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Для этого маршрута нет зарегистрированных учеников.';

  @override
  String get incidentIntakeOfficerNameError => 'Пожалуйста, введите имя офицера.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Имя офицера*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Пожалуйста, введите номер полицейского отчета';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Номер полицейского отчета *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Информация о маршруте и водителе';

  @override
  String get incidentIntakeSearchInjuredHint => 'Поиск травмированного ребенка...';

  @override
  String get incidentIntakeSearchStudentHint => 'Поиск ученика...';

  @override
  String get incidentIntakeSelectAll => 'Выбрать всех учеников';

  @override
  String get incidentIntakeSelectOnMap => 'Выбрать на карте';

  @override
  String get incidentIntakeSeverityFatal => 'Смертельная';

  @override
  String get incidentIntakeSeverityMinor => 'Легкая';

  @override
  String get incidentIntakeSeverityModerate => 'Средняя';

  @override
  String get incidentIntakeSeveritySevere => 'Тяжелая';

  @override
  String get incidentIntakeSeverityTitle => 'Переменные тяжести аварии';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Отправить отчет';

  @override
  String get incidentIntakeTitle => 'Ввод данных об инциденте после ДТП';

  @override
  String get incidentIntakeTowedSubtitle => 'Получило ли какое-либо транспортное средство повреждения, из-за которых его пришлось отбуксировать с места происшествия?';

  @override
  String get incidentIntakeTowedTitle => 'Транспортное средство отбуксировано?';

  @override
  String get incidentIntakeWasInjured => 'Был травмирован?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Автобус: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Закрыть';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Комментарии / заметки водителя (необязательно)';

  @override
  String get dvirPreTripNoComments => 'Комментарии не добавлены.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Причина: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Подпись успешно сохранена.';

  @override
  String get dvirPreTripSigMissing => 'Отсутствует подпись.';

  @override
  String get dvirPreTripSignDefectWarning => 'Пожалуйста, подпишите для подтверждения устранения предыдущих дефектов.';

  @override
  String get dvirPreTripStepSignOff => 'Подпись';

  @override
  String get dvirPreTripStepSubmit => 'Отправить';

  @override
  String get dvirPreTripStepVerify => 'Подтвердить';

  @override
  String get dvirPreTripTapNext => 'Пожалуйста, нажмите ДАЛЕЕ, чтобы продолжить.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Транспортное средство не обслуживается';

  @override
  String get dvirPreTripVehicleReady => 'Транспортное средство готово к работе';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Статус подтвержденного ремонта:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Пожалуйста, подтвердите, что все заявленные дефекты были устранены, установив флажок рядом с каждым дефектом.';

  @override
  String get dvirPreTripYourComments => 'Ваши комментарии:';

  @override
  String get countryPickerNoCountries => 'Страны не найдены';

  @override
  String get countryPickerSearchHint => 'Поиск по названию страны, коду или коду набора...';

  @override
  String get countryPickerTitle => 'Выберите страну';

  @override
  String get mapDefaultStop => 'Остановка';

  @override
  String get mapEndLocation => 'Конечная точка';

  @override
  String get mapStartLocation => 'Начальная точка';

  @override
  String get stopsNoChangesToUndo => 'Нет доступных изменений для отмены.';

  @override
  String get stopsNoStopsAvailable => 'Нет доступных остановок.';
}
