import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appInfoBuild => 'Створення числа';

  @override
  String get appInfoDevice => 'Модель пристрою';

  @override
  String get appInfoOS => 'Версія ОС';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'Інформація про додаток';

  @override
  String get appInfoVersion => 'Версія додатку';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Захоронці';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Авторизовані опікуни для $name';
  }

  @override
  String get childrenNoGuardians => 'Немає уповноважених опікунів у справі цього дитини.';

  @override
  String get childrenStatusDropped => 'Випав';

  @override
  String get childrenStatusPending => 'Очікується';

  @override
  String get childrenStatusPicked => 'Вибрано';

  @override
  String childrenTitle(Object routeName) {
    return 'Діти  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'НЕВІДНО / НЕ В БУСІ ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get drillChecklistEvacuated => 'Евакуовані';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Евакуовані: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Немає відсутніх студентів.';

  @override
  String get drillChecklistNoStudentsOnBus => 'У автобусі не було ні одного учня.';

  @override
  String get drillChecklistNotOnBus => 'Не на автобусі';

  @override
  String get drillChecklistOnBusNotEvacuated => 'В автобусі  Не евакуйовані';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'В БУС ($count)';
  }

  @override
  String get drillChecklistProceed => 'Процес для захоплення доказів';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Маршрут (Піво): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Перелік евакуаційних виправ';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Незнайомний студент(s) залишився!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ви впевнені, що хочете подати цей журнал?';

  @override
  String get drillEvidenceConfirmSubmission => 'Поверніть подачу вборових';

  @override
  String get drillEvidenceDriverNotesHint => 'Опишіть виконання навчання, поведінку студентів, використовувані шляхи виходу і будь-які винятки, які спостерігаються...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Зазнаки керівника (мінімум 10 символів):';

  @override
  String get drillEvidenceFailed => 'Недахоплення подачі';

  @override
  String get drillEvidenceMandatoryWarning => 'При подачі вив\'язаний щонайменше один фото- або відеодовід.';

  @override
  String get drillEvidenceRecordVideo => 'Запишіть відео';

  @override
  String get drillEvidenceRetrySubmission => 'ЗВОГАВОДНІ ПРЕДВОД';

  @override
  String get drillEvidenceReturnToDashboard => 'ВКРЕДУЩЕ КОГДА';

  @override
  String get drillEvidenceSubmitButton => 'СУБМИТ ДРИЛЛ ЛОГ';

  @override
  String get drillEvidenceSubmitting => 'Задаю журналу про буття...';

  @override
  String get drillEvidenceSuccess => 'Поступка успішна!';

  @override
  String get drillEvidenceSuccessMessage => 'Евакуаційний журнал був успішно завантажений і чекає на затвердження.';

  @override
  String get drillEvidenceTakePhoto => 'Зібрати фото';

  @override
  String get drillEvidenceTitle => 'Примусові докази про буття';

  @override
  String get drillEvidenceUploading => 'Завантаження доказів і даних перевірного списку';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Виконання:';
  }

  @override
  String get drillRosterMarkAttendance => 'Відсутність Марка';

  @override
  String get drillRosterNoStudents => 'На цьому маршруті не зареєстровано студентів.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'На даний момент: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Процес розв\'язування перевірки';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Седіння:';
  }

  @override
  String get drillRosterSelectAll => 'Виберіть всі';

  @override
  String get drillSummaryAdminNotesTitle => 'Записки адміністратора';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Прийдено на: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Захвалена на';

  @override
  String get drillSummaryBackToDrills => 'Повернутися до буття';

  @override
  String get drillSummaryBusNumber => 'Номер автобусу';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Водіє: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Деталі буровок';

  @override
  String get drillSummaryDriverNotesTitle => 'Записки керівника';

  @override
  String get drillSummaryDuration => 'Тривалість';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes м $seconds сек';
  }

  @override
  String get drillSummaryEndTime => 'Час кінця';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Евакуовані: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Евакуовані';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Доказальні засоби масової інформації';

  @override
  String get drillSummaryGps => 'Координати GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Лат: $lat, Лнг: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не вдалося завантажити резюме бурової системи для ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ніяких даних про бурову не знайдено.';

  @override
  String get drillSummaryNotOnBus => 'Не в автобусі';

  @override
  String get drillSummaryOnBusNotEvacuated => 'В БУС - НЕ Евакуйована';

  @override
  String get drillSummaryPhotoEvidence => 'Фотодоказальні дані';

  @override
  String get drillSummaryRouteId => 'Ідентифікатор маршруту';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Седіння:';
  }

  @override
  String get drillSummaryStartTime => 'Час початку';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Евакуаційний журнал студентів';

  @override
  String drillSummaryTitle(Object id) {
    return 'Сумки буровок (#$id)';
  }

  @override
  String get drillSummaryType => 'Тип буровок';

  @override
  String get drillSummaryVideoEvidence => 'Відеодоказальні докази';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Автобус $busNumber';
  }

  @override
  String get drillTypeClassification => 'Виберіть класифікацію буровок:';

  @override
  String get drillTypeCustomHint => 'Введіть спеціальний тип евакуаційної бутку...';

  @override
  String get drillTypeInvalidState => 'Недійсне стан транспортного засобу або маршруту.';

  @override
  String get drillTypeNameBusFire => 'Пожар в автобусі';

  @override
  String get drillTypeNameDangerZone => 'Зону небезпеки';

  @override
  String get drillTypeNameDriverIncapacitation => 'Нездатність керівника';

  @override
  String get drillTypeNameEquipmentOrientation => 'Орієнтація обладнання';

  @override
  String get drillTypeNameFrontDoor => 'Передні двері';

  @override
  String get drillTypeNameOthers => 'Інші';

  @override
  String get drillTypeNameRearDoor => 'Задні двері';

  @override
  String get drillTypeNameSideOrRoof => 'Побочні або дахні';

  @override
  String get drillTypeNameSplit => 'Розділення';

  @override
  String get drillTypeNoRouteSelected => 'Не вибраний маршрут';

  @override
  String get drillTypePreparation => 'ПРЕПРЕПРАЦІЯ ДРІЛ';

  @override
  String get drillTypeProceed => 'Процес на списку студентів';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get drillTypeSelectRoute => 'Виберіть маршрут:';

  @override
  String get drillTypeSpecifyCustom => 'Указати опис типу буровок:';

  @override
  String get drillTypeTitle => 'Виберіть тип бурови';

  @override
  String get drillTypeWarning => 'Переконайтеся, що транспортно средство безпечно парковано перед початком виконання.';

  @override
  String get drillsAssignedVehicle => 'Назначений транспортний засіб';

  @override
  String get drillsChecking => 'Проверяю...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Виконання #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Нікого автобусу не призначено';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ніяких навчання не зареєстровано для автобусу $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Немає маршрутів для початку навчання.';

  @override
  String get drillsShowSummary => 'Показаний підсумок';

  @override
  String get drillsStartDrill => 'Почнете вибудову';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Проведено: $date Статус: $status';
  }

  @override
  String get drillsTitle => 'Евакуаційні навчання';

  @override
  String get drillsVehicleOutOfService => 'Автомобіль виведен з експлуатації';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Цей автомобіль в даний час не використовується і не може використовуватися для навчання.';

  @override
  String get driverDetailsCdlClassLabel => 'Клас CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ЛІЦЕНЦІЯ ДРЕВІЦІЯ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Назва:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ЛІК: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Пасажир';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Школьний автобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Захвалення';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата закінчення терміну дії';

  @override
  String get driverDetailsHolderSignature => 'Підпис власника';

  @override
  String driverDetailsId(Object driverId) {
    return 'ІД: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата випуску';

  @override
  String get driverDetailsLicenseDocTitle => 'Документ з ліцензією';

  @override
  String get driverDetailsLicenseNoLabel => 'Ліцензія No';

  @override
  String get driverDetailsLicenseTitle => 'Деталі ліцензії';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тип ліцензії';

  @override
  String get driverDetailsOfficialSeal => 'Офіційний печат';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Клас: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Доб.: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ВІДУЩІ:';
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
    return 'FN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Натисніть , щоб побачити документ DL';

  @override
  String get driverDetailsTitle => 'Деталі про водія';

  @override
  String get dvirCategoryBusSafetySystems => 'Системи безпеки для автобусів';

  @override
  String get dvirCategoryCouplingDevices => 'Прилади з\'єднання';

  @override
  String get dvirCategoryEmergencyEquipment => 'Авирування для аварийних ситуацій';

  @override
  String get dvirCategoryHorn => 'Рог';

  @override
  String get dvirCategoryLightingReflectors => 'Прилади освітлення та відбивачі';

  @override
  String get dvirCategoryMirrors => 'Зірки з заднього зору';

  @override
  String get dvirCategoryParkingBrake => 'Паркований тормоз';

  @override
  String get dvirCategoryPassengerSeating => 'Сидіння пасажирів і обмеження';

  @override
  String get dvirCategoryServiceBrakes => 'Увільнення';

  @override
  String get dvirCategorySteeringMechanism => 'Механізм керування';

  @override
  String get dvirCategoryTires => 'Шини';

  @override
  String get dvirCategoryWheelsRims => 'Колеса і рими';

  @override
  String get dvirCategoryWipers => 'Вищилки з вітрового стекла';

  @override
  String get dvirPostTripCapturePhoto => 'Фото з дефектом у захопленні';

  @override
  String get dvirPostTripComplianceTitle => 'СТРЕФАННОЕ СТРЕФАННО';

  @override
  String get dvirPostTripDefectButton => 'Дефект';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Зазначати прорив без фотографії';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Попередження: Ви повідомляєте про дефект у зонах безпеки ($zones) без приєднання фотографії.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Інспекція: Автобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Введіть деталі про питання безпеки...';

  @override
  String get dvirPostTripNotesLabel => 'Зауваження (ОДВІДНІЦЯ НА ПОДВІДНІ) і СЛУЧНІ';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Виберіть DEFECT, щоб ввести деталі проблем безпеки...';

  @override
  String get dvirPostTripOdometerHeader => 'Поточне читання одометра';

  @override
  String get dvirPostTripOdometerInstructions => 'Введіть пропис проїзду, який відображається на панелі інструментів автобусу:';

  @override
  String get dvirPostTripOdometerLabel => 'Одометр (міль)';

  @override
  String get dvirPostTripOdometerTitle => 'МЕТРІК ВІХЛОГОВО';

  @override
  String get dvirPostTripOdometerWarning => 'До початку роботи введіть провідний відлік.';

  @override
  String get dvirPostTripPassButton => 'ПАСС';

  @override
  String get dvirPostTripPhotoAttached => 'Фото з успіхом приєднано.';

  @override
  String get dvirPostTripProgressLabel => 'Прогрес інспекції';

  @override
  String get dvirPostTripSignatureCaptured => 'Підпис захоплений.';

  @override
  String get dvirPostTripSignatureCert => 'Я підтверджую, що цей доповідь про перевірку перехідного перегляду автомобіля завершена відповідно до правил FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Перевірка підпису керівника';

  @override
  String get dvirPostTripSubmitButton => 'ОТВЕРЖДЕННА НАЦПЕКЦІЯ';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR подано успішно.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ЗОНА $current З $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Зони V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Признаю, що я переглянув останній поданий звіт про дефект і перевірив ремонт (якщо є) і заявив, що автобус безпечний для експлуатації.';

  @override
  String get dvirPreTripActiveMessage => 'Цей автомобіль є активним і не має відкритих дефектів.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Активний маршрут: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ОТВЕРЖДЕННО СОБОЖНО: ПРЕДНІЙ ДНЯ НАДВІДНИ';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Номер автобусу: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'ЧЕК ДІСПАТХОВНОГО ПОДВЕДУ';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не підписана: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Не зафіксовано попередніх недоліків';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ця машина була повідомлена про чистоту на попередній інспекції після поїздки.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Не потрібно ремонтувати для безпечної роботи.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ця машина вишла з експлуатації для ремонту/підтримання.';

  @override
  String get dvirPreTripOutofServiceButton => 'ВЕХІКЛІЗНА ЗВІДНА';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ПРАВНЕН)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'Звіт про нові дефекти';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'За повідомленням про нові дефекти під час ремонту не можна.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'ПРОБЛЕДНІ ПРЕДВІДНІ ПРЕДВІДНІ ПРЕДВІДНІ';

  @override
  String get dvirPreTripReturnToHomeButton => 'ВВІДУ додому';

  @override
  String get dvirPreTripSignOffTitle => 'Підписка на прогулянку';

  @override
  String get dvirPreTripSignedSuccess => 'Перевірка підписана успішно.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'СОБЕРЖЕННА ВЕРІФІКА';

  @override
  String get dvirPreTripTitle => 'Переддорожна перевірка';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус автомобіля: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Здебільшого, підпись';

  @override
  String get dvirSigPreviewLabel => 'Вигляд підпису:';

  @override
  String get dvirSigRedraw => 'РЕДРАУ';

  @override
  String get dvirSigSave => 'Збережіть підпис';

  @override
  String get dvirSigTapToDraw => 'ЗНАМАВАЩЕ ПРЕДВІДЕНИЕ (ЗАЖЛАННО)';

  @override
  String get dvirSigWatermark => 'Підпишіть вертикально (здолу до зверху)';

  @override
  String get forgotPasswordCancel => 'Відкласти';

  @override
  String get forgotPasswordEmailLabel => 'Пошівка';

  @override
  String get forgotPasswordInvalidEmail => 'Будь ласка, введіть дійсний електронний лист';

  @override
  String get forgotPasswordSend => 'Посилайте';

  @override
  String get forgotPasswordSuccess => 'Якщо ця електронна пошта існує, відправлений посилання рештабу.';

  @override
  String get genericBack => 'Зверніться';

  @override
  String get genericCancel => 'Відкласти';

  @override
  String get genericClear => 'Зрозуміло';

  @override
  String get genericClose => 'Близько';

  @override
  String get genericConfirm => 'Підтвердження';

  @override
  String get genericEdit => 'Редагуйте';

  @override
  String get genericError => 'Щось погано вийшло.';

  @override
  String get genericLoading => 'Завантаження...';

  @override
  String get genericNext => 'ПРІДНІ';

  @override
  String get genericOk => 'Добре.';

  @override
  String get genericRetry => 'Попробуйте знову';

  @override
  String get genericSuccess => 'Успіх';

  @override
  String homeBusLabel(Object busId) {
    return 'Автобус:';
  }

  @override
  String get homeDispatchBlocked => 'Заблоковано відправлення';

  @override
  String get homeDispatchBlockedTitle => 'Заблоковано відправлення';

  @override
  String get homeErrorNoRoutesPreTrip => 'Немає маршрутів для проведення Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не вдалося запустити експлуатацію сервера: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Привіт, В0__';
  }

  @override
  String get homeLogout => 'Виведення';

  @override
  String get homeMenuAppInfo => 'Інформація про додаток';

  @override
  String get homeMenuDrill => 'Викоплення';

  @override
  String get homeMenuDriverDetails => 'Деталі про водія';

  @override
  String get homeMenuLanguage => 'Мова';

  @override
  String get homeMenuPreTrip => 'Переддорожна інспекція';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Немає маршрутів';

  @override
  String get homeReviewVerifyPreTrip => 'Переглянути і перевірити перед поїздкою';

  @override
  String get homeSearchHint => 'Маршрути пошуку';

  @override
  String get homeStart => 'Почнете';

  @override
  String get homeTitle => 'Додому';

  @override
  String get homeVehicleOutOfServiceDefault => 'У даний час транспортне средство виведено з служби.';

  @override
  String get homeVehicleReady => 'Колектив готовий і перевірен для безпечної експлуатації.';

  @override
  String get languageTitle => 'Мова';

  @override
  String get loginButton => 'Вхід';

  @override
  String get loginEmailOrPhoneLabel => 'Пошівник або номер телефону';

  @override
  String get loginErrorEnterPassword => 'Будь ласка , введіть пароль';

  @override
  String get loginErrorEnterUsername => 'Будь ласка, введіть ім\'я користувача';

  @override
  String get loginErrorFailed => 'Завхід не вдався, спробуйте ще раз.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Будь ласка, введіть дійсний електронний лист або номер телефону';

  @override
  String get loginForgotPassword => 'Забудьте пароль?';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get mapChildrenTooltip => 'Діти & опікуни';

  @override
  String get mapConfirmMessage => 'Ти дійсно хочеш завершити поїздку?';

  @override
  String get mapConfirmTitle => 'Підтвердження';

  @override
  String get mapCurrentPosition => 'Позиція';

  @override
  String get mapNo => 'Ні, не.';

  @override
  String get mapReconnectMessage => 'Обновлення місця часто не працює, будь ласка, перевіряйте інтернет.';

  @override
  String get mapReconnectTitle => 'Трекер';

  @override
  String get mapStop => 'Стій.';

  @override
  String get mapStopping => 'Спинка...';

  @override
  String get mapStopsTooltip => 'Станції';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Обновлено ${seconds}s ago';
  }

  @override
  String get mapWaitingGps => 'Чакаючи GPS...';

  @override
  String get mapYes => 'Так, це правда.';

  @override
  String get splashDriverApp => 'Прикладання для водія';

  @override
  String get stopsActionUndo => 'Знікла';

  @override
  String get stopsCancelledSuccess => 'Успішно скасовано';

  @override
  String get stopsDefaultLabel => 'Стій.';

  @override
  String get stopsGenericError => 'Щось погано пошло. Пробуйте знову.';

  @override
  String get stopsStatusComplete => 'повний';

  @override
  String get stopsStatusDone => 'виконано';

  @override
  String stopsSubmitCount(Object count) {
    return 'Подачу ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Подано успішно';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Вибрано $selected · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Відпустити';

  @override
  String get stopsTypePick => 'Вибирайте';

  @override
  String stopsUndoCount(Object count) {
    return 'Знімаючі ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Невідкладене відбір/відкладення';

  @override
  String get tripConfirmCancel => 'Відкласти';

  @override
  String get tripConfirmOk => 'Добре.';

  @override
  String get tripConfirmTitle => 'Трекер';

  @override
  String get tripErrorLocationRequired => 'Для початку поїздки потрібно отримати дозволу на місце розташування.';

  @override
  String get homeMenuPostCrashReporting => 'Посля аварії звітування';

  @override
  String homeVehicleReason(Object reason) {
    return 'Причина:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Лат: $lat, Лнг: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Місце пошуку (наприклад, Market St)';

  @override
  String get crashLocationPickerTitle => 'Виберіть місце на карті';

  @override
  String get crashLocationPickerTooltip => 'Повірте місцезнаходження';

  @override
  String get incidentDashboardDescription => 'Виберіть дії для проведення управління інцидентами або перегляньте попередні звіти.';

  @override
  String get incidentDashboardHeadline => 'Посля аварії - повідомлення про події';

  @override
  String get incidentDashboardLogNew => 'Запис Новий краш';

  @override
  String get incidentDashboardLogNewSubtitle => 'Починати новий крок за кроком звіту про аварії';

  @override
  String get incidentDashboardTitle => 'Інцидент після аварії';

  @override
  String get incidentDashboardViewHistory => 'Погляньте історію';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Погляньте попередні повідомлення про аварії та стан';

  @override
  String get incidentDetailsAdminLetter => 'Письмо Адміністратора';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT П\'яний тест (перелік 2 годин)';

  @override
  String get incidentDetailsBranchId => 'ІД філії';

  @override
  String get incidentDetailsBusPlate => 'Платка з ліцензією на автобус';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Цитація Вплив: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Цитата, видана водію';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Координати: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title скопіюється на клеймо!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Копіюйте на кліпборд';

  @override
  String get incidentDetailsCrashCitationInfo => 'Інфо Crash & Citation';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата і час: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Доклад DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Доклад державної служби з питань економічної безпеки (незавхідний)';

  @override
  String get incidentDetailsDriverNotes => 'Зауваження про водія:';

  @override
  String get incidentDetailsDriverUserId => 'ID користувача водія';

  @override
  String get incidentDetailsDrugCountdown => 'DOT тест на наркотики (ліміт 8 годин)';

  @override
  String get incidentDetailsFatalityOccurred => 'З\'явився смертельний випадок';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Інцидент #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Поранення, що вимагають медичного лікування';

  @override
  String get incidentDetailsLawEnforcement => 'Правоохоронне агентство';

  @override
  String get incidentDetailsLoadFailed => 'Не змогли завантажити деталі.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Місце: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Приєднання до медіа';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get incidentDetailsNo => 'Ні';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ніяких фотографій або відео.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'На борту не було жодного учня.';

  @override
  String get incidentDetailsNotificationsDesc => 'Виготовляти повідомлення та відправляти шаблоні листів на районних надзорів або адміністрації.';

  @override
  String get incidentDetailsNotificationsTitle => 'Заповіді про передачу';

  @override
  String get incidentDetailsOfficer => 'Деталі офіцера';

  @override
  String get incidentDetailsPoliceReport => 'Номер поліцейської звіти';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Передпоповнені переведення листа:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Регуляторна основа:';

  @override
  String get incidentDetailsRouteId => 'Ідентифікатор маршруту';

  @override
  String get incidentDetailsSchoolAdminTitle => 'За повідомленням адміністратора школи';

  @override
  String get incidentDetailsStatusPending => 'Очікується';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Деталі: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Поранений';

  @override
  String get incidentDetailsStudentNoInjury => 'Ніяких травм';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Стрижність:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Перевезені до: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Студенти на борту ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Не потрібно проводити тест після аварії';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус: $status';
  }

  @override
  String get incidentDetailsTitle => 'Деталі інциденту';

  @override
  String get incidentDetailsVehicleTowed => 'Перевезені транспортні засоби';

  @override
  String get incidentDetailsYes => 'Так';

  @override
  String get incidentHistoryEmpty => 'Ніяких реєстрів інцидентів у цьому транспортному засобі.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не вдалося відновити журнали: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Час: В0__ Автобус: В1__ Тестування: В2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Інцидент #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не вимагається';

  @override
  String get incidentHistoryTestingRequired => 'ЗАЖАННО';

  @override
  String get incidentHistoryTitle => 'Реестр інцидентів після аварії';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Додайте ще одну фотографію';

  @override
  String get incidentIntakeBadgeNumberError => 'Необхідний';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Номер значок *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Номер автобусу: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Зловуй сцену події';

  @override
  String get incidentIntakeCitationSubtitle => 'Чи був випущений переміжний виклик на порушення правил дорожнього руху шоферу шкільного автобусу?';

  @override
  String get incidentIntakeCitationTitle => 'Видав цитату?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата і час аварії *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Не потрібно тестування';

  @override
  String get incidentIntakeDotTestingRequired => 'Необхідна тестування';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Водій:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Задайте будь-які додаткові записки щодо зіткнення...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Записки про інцидент з водієм';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не вгрузив пасажирів маршруту: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Додаток (фото) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Чи були в результаті аварії загиблих?';

  @override
  String get incidentIntakeFatalityTitle => 'Чи сталося смертність?';

  @override
  String get incidentIntakeGpsLabel => 'Координати GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Погляньте історію';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Чи хтось постраждав, і неодмінно потрібно було прийти до медичної допомоги?';

  @override
  String get incidentIntakeInjuriesTitle => 'Поранення, що потребують медичного лікування?';

  @override
  String get incidentIntakeInjuryNotesError => 'Забиті студенти повинні мати записки про травму';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Зауваження про травму / Деталі (Заможні) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Сур\'яність травми *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Будь ласка, зайдіть в правоохоронну службу';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Правоохоронна служба (наприклад, Державна патрульна служба) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Правоохоронні служби та поліція';

  @override
  String get incidentIntakeLocationDescError => 'Будь ласка, введіть опис місця';

  @override
  String get incidentIntakeLocationDescLabel => 'Описание місцезнаходження (наприклад, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медичний центр, який був перевезен до';

  @override
  String get incidentIntakeNoMatchingStudents => 'Немає відповідних студентів.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ніяких студентів не знайдено.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'На борту немає студентів.';

  @override
  String get incidentIntakeNoStudentsRoute => 'На цей маршрут не записано жодного учня.';

  @override
  String get incidentIntakeOfficerNameError => 'Будь ласка, введіть ім\'я офіцера';

  @override
  String get incidentIntakeOfficerNameLabel => 'Назва офіцера *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Будь ласка, введіть номер поліцейської звіти';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Номер поліцейської звіти *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Інформація про маршрут і водій';

  @override
  String get incidentIntakeSearchInjuredHint => 'Пошукуйте пораненого дитини...';

  @override
  String get incidentIntakeSearchStudentHint => 'Пошукуйте студента...';

  @override
  String get incidentIntakeSelectAll => 'Виберіть всіх учнів';

  @override
  String get incidentIntakeSelectOnMap => 'ОБРАЖЕННА на карті';

  @override
  String get incidentIntakeSeverityFatal => 'Смертний';

  @override
  String get incidentIntakeSeverityMinor => 'Нерідкісні';

  @override
  String get incidentIntakeSeverityModerate => 'Умірна';

  @override
  String get incidentIntakeSeveritySevere => 'Стрижне';

  @override
  String get incidentIntakeSeverityTitle => 'Переміжні тяжіння аварії';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ІД: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'СОТРАНИЦА';

  @override
  String get incidentIntakeTitle => 'Посля аварії - вживання';

  @override
  String get incidentIntakeTowedSubtitle => 'Чи був якийсь автомобіль, який отримав пошкодження, що змусило його витягнути з місця події?';

  @override
  String get incidentIntakeTowedTitle => 'Автомобіль витягнутий?';

  @override
  String get incidentIntakeWasInjured => 'Він був поранений?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get dvirPreTripClose => 'СТРАНУЙ';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Коментарів керівника / записів (подібна)';

  @override
  String get dvirPreTripNoComments => 'Не додалося жодних коментарів.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Маршрут:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Підпис успішно захоплений.';

  @override
  String get dvirPreTripSigMissing => 'Підпис відсутній.';

  @override
  String get dvirPreTripSignDefectWarning => 'Будь ласка, підпишіть, щоб перевірити ремонт попередніх дефектів.';

  @override
  String get dvirPreTripStepSignOff => 'Підпис';

  @override
  String get dvirPreTripStepSubmit => 'Подавати';

  @override
  String get dvirPreTripStepVerify => 'Перевірка';

  @override
  String get dvirPreTripTapNext => 'Націсніть наступне, щоб продовжити.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Автомобіль виключений';

  @override
  String get dvirPreTripVehicleReady => 'Автомобіль готовий до служби';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Перевірений стан ремонту:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Будь ласка, перевіріть, чи всі повідомлені помилки виправлені, перевірте поле поруч з кожним помилковим.';

  @override
  String get dvirPreTripYourComments => 'Ваші коментарі:';

  @override
  String get countryPickerNoCountries => 'Ніяких країн не знайдено';

  @override
  String get countryPickerSearchHint => 'Пошук за назвою країни, кодом або кодом номерного номера...';

  @override
  String get countryPickerTitle => 'Виберіть країну';

  @override
  String get mapDefaultStop => 'Стій.';

  @override
  String get mapEndLocation => 'Останнє місцезнаходження';

  @override
  String get mapStartLocation => 'Починаємо місце розташування';

  @override
  String get stopsNoChangesToUndo => 'Немає змін, які можна було б відновити.';

  @override
  String get stopsNoStopsAvailable => 'Немає жодних зупинок.';

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
