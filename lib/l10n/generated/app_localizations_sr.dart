import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appInfoBuild => 'Поградите број';

  @override
  String get appInfoDevice => 'Модел уређаја';

  @override
  String get appInfoOS => 'Верзија ОС-а';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'Информације о апликацијама';

  @override
  String get appInfoVersion => 'Верзија апликације';

  @override
  String get appTitleSchoolDiary => 'СД тракери';

  @override
  String get childrenActionGuardians => 'Охранитељи';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Овластени опекуни за $name';
  }

  @override
  String get childrenNoGuardians => 'Нема овлашћених опеката у досилу за ово дете.';

  @override
  String get childrenStatusDropped => 'Спуштено';

  @override
  String get childrenStatusPending => 'У чекању';

  @override
  String get childrenStatusPicked => 'Избрана';

  @override
  String childrenTitle(Object routeName) {
    return 'Деца  __ В0__';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'АБСЕНТ / НЕ У БУСУ (__В0__)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get drillChecklistEvacuated => 'Евакуисани';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Евакуисана: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Нема одсутних ученика.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Није било ученика на автобусу.';

  @override
  String get drillChecklistNotOnBus => 'Не на аутобусу';

  @override
  String get drillChecklistOnBusNotEvacuated => 'У аутобусу  Не евакуирано';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'На ВАЗ (__В0__)';
  }

  @override
  String get drillChecklistProceed => 'Процес да се ухвати доказ';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Маршрут (Пиво): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Евакуационе вежбе';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Непојављени студент остаје!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Да ли сте сигурни да желите да пошаљете овај дневник?';

  @override
  String get drillEvidenceConfirmSubmission => 'Потврди подавање вежби';

  @override
  String get drillEvidenceDriverNotesHint => 'Опишите извршење вежби, понашање ученика, излазне стазе које су користиле, и било које изузеће које су примећена...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Примете возача (не мање од 10 знакова):';

  @override
  String get drillEvidenceFailed => 'Не успео';

  @override
  String get drillEvidenceMandatoryWarning => 'За испоруку вежби је обавезно подати најмање један фотографијски или видео доказ.';

  @override
  String get drillEvidenceRecordVideo => 'Запишите видео';

  @override
  String get drillEvidenceRetrySubmission => 'СВЕДИВА ПРЕДВОД';

  @override
  String get drillEvidenceReturnToDashboard => 'Врати се на дашборд';

  @override
  String get drillEvidenceSubmitButton => 'СУБМИТ ДРИЛЛ ЛОГ';

  @override
  String get drillEvidenceSubmitting => 'Подавање дневног листа вежбања...';

  @override
  String get drillEvidenceSuccess => 'Поступљење је успешно!';

  @override
  String get drillEvidenceSuccessMessage => 'Евакуационе вежбе су успешно преузете и чекају одобрење.';

  @override
  String get drillEvidenceTakePhoto => 'Снимите фотографију';

  @override
  String get drillEvidenceTitle => 'Обузда за вежбање';

  @override
  String get drillEvidenceUploading => 'Уношење доказа и података о контролној листи';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'В0__';
  }

  @override
  String get drillRosterMarkAttendance => 'Присуство Марка';

  @override
  String get drillRosterNoStudents => 'Ниједан студент није регистровао на овој рути.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Присутни: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Процес за пробивање листа';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Путовање:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Сед:';
  }

  @override
  String get drillRosterSelectAll => 'Изаберите све';

  @override
  String get drillSummaryAdminNotesTitle => 'Административни приметки';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Одобрио се на:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Одобљено на';

  @override
  String get drillSummaryBackToDrills => 'Обратно на Буре';

  @override
  String get drillSummaryBusNumber => 'Број аутобуса';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Воде: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Детаљи пробивања';

  @override
  String get drillSummaryDriverNotesTitle => 'Ноте за возаче';

  @override
  String get drillSummaryDuration => 'Продолжителност';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '__В0__ мин __В1__ сек';
  }

  @override
  String get drillSummaryEndTime => 'Време краја';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Евакуисана: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Евакуисана';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Доказани медијски прикљуци';

  @override
  String get drillSummaryGps => 'Координате GPS-а';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Лати: __В0__, Лнг: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не успео да загруци сумирање вежба за идентификацију #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Нису пронађени подаци о вежбању.';

  @override
  String get drillSummaryNotOnBus => 'Не у аутобусу';

  @override
  String get drillSummaryOnBusNotEvacuated => 'У аутобусу - НЕ Евакуирано';

  @override
  String get drillSummaryPhotoEvidence => 'Фото доказа';

  @override
  String get drillSummaryRouteId => 'Идентификација пута';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Сед:';
  }

  @override
  String get drillSummaryStartTime => 'Време почетка';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Евакуациони дневник ученика';

  @override
  String drillSummaryTitle(Object id) {
    return 'Резултат вежби (#$id)';
  }

  @override
  String get drillSummaryType => 'Тип бушења';

  @override
  String get drillSummaryVideoEvidence => 'Видео доказа';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Автобус';
  }

  @override
  String get drillTypeClassification => 'Изаберете класификацију бура:';

  @override
  String get drillTypeCustomHint => 'Уведите тип евакуационе вежбе...';

  @override
  String get drillTypeInvalidState => 'Неважни стање возила или трасе.';

  @override
  String get drillTypeNameBusFire => 'Пожар у аутобусу';

  @override
  String get drillTypeNameDangerZone => 'Зона опасности';

  @override
  String get drillTypeNameDriverIncapacitation => 'Неспособност возача';

  @override
  String get drillTypeNameEquipmentOrientation => 'Ориентација опреме';

  @override
  String get drillTypeNameFrontDoor => 'Предне врата';

  @override
  String get drillTypeNameOthers => 'Други';

  @override
  String get drillTypeNameRearDoor => 'Задна врата';

  @override
  String get drillTypeNameSideOrRoof => 'Бона или кров';

  @override
  String get drillTypeNameSplit => 'Раздељено';

  @override
  String get drillTypeNoRouteSelected => 'Није изабран пут';

  @override
  String get drillTypePreparation => 'ПРЕПРАЦИЈА за вежбање';

  @override
  String get drillTypeProceed => 'Процес у студентском списку';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Путовање:';
  }

  @override
  String get drillTypeSelectRoute => 'Изаберете пут:';

  @override
  String get drillTypeSpecifyCustom => 'Уписати опис типа бушења:';

  @override
  String get drillTypeTitle => 'Изаберете тип бушења';

  @override
  String get drillTypeWarning => 'Уверите се да је возило сигурно парковано пре почетка извршења.';

  @override
  String get drillsAssignedVehicle => 'Превозно возило које је додељено';

  @override
  String get drillsChecking => 'Проверавајући...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Убој #__В0__ - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Није додељен аутобус';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Нема записаних вежби за аутобус $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Нема путовање на располагању.';

  @override
  String get drillsShowSummary => 'Показање резюмје';

  @override
  String get drillsStartDrill => 'Почни вежбање';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Проведено: $date Статус: $status';
  }

  @override
  String get drillsTitle => 'Евакуационе вежбе';

  @override
  String get drillsVehicleOutOfService => 'Превоз је искључен';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Овај возило је тренутно извољено из употребе и не може се користити за вежбе.';

  @override
  String get driverDetailsCdlClassLabel => 'Клас ЦДЛ';

  @override
  String get driverDetailsDrivingLicenseLabel => 'СВИЗНА ДРЕВИЦ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ИМ:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'Улазница:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Плаузник';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Школни аутобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Поддршка одржана';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата истека времена';

  @override
  String get driverDetailsHolderSignature => 'УСПРАВИТЕЛИЦИ ПОДВИТЕ';

  @override
  String driverDetailsId(Object driverId) {
    return 'ИД: __В0__';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата издања';

  @override
  String get driverDetailsLicenseDocTitle => 'Документ лиценце';

  @override
  String get driverDetailsLicenseNoLabel => 'Лиценза број';

  @override
  String get driverDetailsLicenseTitle => 'Детаљи о лиценци';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тип лиценце';

  @override
  String get driverDetailsOfficialSeal => 'ОФЦИЈАЛНА ПРЕЗНА';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'КЛАС:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'Доб:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'СТРАНИЦА:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'ИСП: __В0__';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'ЛН: __В0__';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'ФН: __В0__';
  }

  @override
  String get driverDetailsTapToView => 'Натицајте да бисте прегледали ДЛ документ';

  @override
  String get driverDetailsTitle => 'Детаљи возача';

  @override
  String get dvirCategoryBusSafetySystems => 'Схема безбедности за аутобусе';

  @override
  String get dvirCategoryCouplingDevices => 'Уреди за спој';

  @override
  String get dvirCategoryEmergencyEquipment => 'Слободна опрема';

  @override
  String get dvirCategoryHorn => 'Рог';

  @override
  String get dvirCategoryLightingReflectors => 'Уреди за осветљење и рефлектори';

  @override
  String get dvirCategoryMirrors => 'Огледала за задње угледе';

  @override
  String get dvirCategoryParkingBrake => 'Паркинг превара';

  @override
  String get dvirCategoryPassengerSeating => 'Преседнице и ограничења за путнике';

  @override
  String get dvirCategoryServiceBrakes => 'Услужни превари';

  @override
  String get dvirCategorySteeringMechanism => 'Механизам управљања';

  @override
  String get dvirCategoryTires => 'Тексти';

  @override
  String get dvirCategoryWheelsRims => 'Коле и реми';

  @override
  String get dvirCategoryWipers => 'Упирање ветрог стакла';

  @override
  String get dvirPostTripCapturePhoto => 'СЛУЧА СЛУЧА СЛУЧА';

  @override
  String get dvirPostTripComplianceTitle => 'СТРЕДНИЦИ ПРЕДСЛУБИТЕ';

  @override
  String get dvirPostTripDefectButton => 'Дефект';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Појављивање дефекта без фотографије';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Препатити: пријављујете дефект у зонама безбедности ($zones) без прикључавања фотографије.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Инспекција: Автобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Уведите детаље о безбедносној проблеме...';

  @override
  String get dvirPostTripNotesLabel => 'НОТИЦИ (ОВРЕЖЕНИЈА О ДО ДЕФЕКТ) И СЛУК';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Изаберите Дефект да бисте увели детаље о безбедносној проблеме...';

  @override
  String get dvirPostTripOdometerHeader => 'Теренутно читање одомимера';

  @override
  String get dvirPostTripOdometerInstructions => 'Уведите проводну промјену тачно као што је приказано на панелу инструмента аутобуса:';

  @override
  String get dvirPostTripOdometerLabel => 'Одометр (миле)';

  @override
  String get dvirPostTripOdometerTitle => 'МЕТРИКИЦА БУХИЦИЈНОГ времена';

  @override
  String get dvirPostTripOdometerWarning => 'Пре него што наставите, унесете прочување одмера.';

  @override
  String get dvirPostTripPassButton => 'ПАСС';

  @override
  String get dvirPostTripPhotoAttached => 'Фотографија успешно прикључена.';

  @override
  String get dvirPostTripProgressLabel => 'Прогрес инспекције';

  @override
  String get dvirPostTripSignatureCaptured => 'Подпис је запечатљен.';

  @override
  String get dvirPostTripSignatureCert => 'Увежу да је овај извештај о контролном списку возила завршен у складу са FMCSA 396.11 правилама.';

  @override
  String get dvirPostTripSignatureTitle => 'Проверка потписи возача';

  @override
  String get dvirPostTripSubmitButton => 'СПРЕДИВИТЕ НЕПИЦЕЦИЈА';

  @override
  String get dvirPostTripSubmitSuccess => 'ЕДВИР је успешно поднесен.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ЗОНА __В0__ ОД _В1__';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Зони ___ / _V1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Признајем да сам прегледао последњи подани извештај о дефекту и проверио поправке (ако постоје) и изјавио да је аутобус безбедан за рад.';

  @override
  String get dvirPreTripActiveMessage => 'Овај возило је Активно и нема откритих дефекта.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Активни пут: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ОБРАЖНО БОГУ: Дефекти из претходног дана';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Број аутобуса: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'ЧЕК ПРЕДВЕДИТЕВИЦИЈНА СТРАНИЦА';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не успео да потпише:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Није било претходног дефекта забележено';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Овај возило је пријављено чисто у претходној инспекцији по постројској смењи.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Није потребна поправка за сигурно функционисање.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Овај возило је извозено из употребе за поправку/удржбу.';

  @override
  String get dvirPreTripOutofServiceButton => 'ВЕХИКЛУС СО БЕЗ УСТРЕБИТЕ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ПОДВЕРЕН)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'СТРЕДИТЕ НОВИЕ дефекты';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Појављање нових дефекта је онемогућено током поправке.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Резолуција потадминистратора транспорта';

  @override
  String get dvirPreTripReturnToHomeButton => 'Врати се кући';

  @override
  String get dvirPreTripSignOffTitle => 'СЕГАЗАДИЈА Да се крећемо';

  @override
  String get dvirPreTripSignedSuccess => 'Проверка је успешно потписана.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'СТРАНИЦА ВЕРИФИКЦИЈА';

  @override
  String get dvirPreTripTitle => 'Проверка пре путовања';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус возила: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Нацртајте потпису';

  @override
  String get dvirSigPreviewLabel => 'Преглед снимана потписи:';

  @override
  String get dvirSigRedraw => 'РЕДРАУ';

  @override
  String get dvirSigSave => 'ССПРЕДИТЕ подпис';

  @override
  String get dvirSigTapToDraw => 'ТАП С ПРЕДИЗАЦИЈА (ИЗТАНИ)';

  @override
  String get dvirSigWatermark => 'Знак вертикално (од дна до врха)';

  @override
  String get forgotPasswordCancel => 'Отклањање';

  @override
  String get forgotPasswordEmailLabel => 'Пошаљивање по електронској пошти';

  @override
  String get forgotPasswordInvalidEmail => 'Уведите валидан е-пошта';

  @override
  String get forgotPasswordSend => 'Пошаљи';

  @override
  String get forgotPasswordSuccess => 'Ако тај имејл постоји, послана је повезаност за ресетовање.';

  @override
  String get genericBack => 'Вратити се';

  @override
  String get genericCancel => 'Отклањање';

  @override
  String get genericClear => 'ПРЕЧИВО';

  @override
  String get genericClose => 'У близини';

  @override
  String get genericConfirm => 'Потврди';

  @override
  String get genericEdit => 'Редактирање';

  @override
  String get genericError => 'Нешто је пошло неисправно.';

  @override
  String get genericLoading => 'Натоварвање...';

  @override
  String get genericNext => 'Следећи';

  @override
  String get genericOk => '- ОК, добро.';

  @override
  String get genericRetry => 'Поново покушај';

  @override
  String get genericSuccess => 'Успех';

  @override
  String homeBusLabel(Object busId) {
    return 'Автобус:';
  }

  @override
  String get homeDispatchBlocked => 'Продај је блокиран';

  @override
  String get homeDispatchBlockedTitle => 'Продај је блокиран';

  @override
  String get homeErrorNoRoutesPreTrip => 'Нема на располагању рута за пре- патување.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не успео да почне путовање на серверу: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Здраво, В0__';
  }

  @override
  String get homeLogout => 'Улазак';

  @override
  String get homeMenuAppInfo => 'Информације о апликацијама';

  @override
  String get homeMenuDrill => 'Убој';

  @override
  String get homeMenuDriverDetails => 'Детаљи возача';

  @override
  String get homeMenuLanguage => 'Језик';

  @override
  String get homeMenuPreTrip => 'Инспекција пре путовања';

  @override
  String get homeNoRoutes => 'Нема доступних рута';

  @override
  String get homeReviewVerifyPreTrip => 'Преглед и потврда пре путовања';

  @override
  String get homeSearchHint => 'Трагедије трагерија';

  @override
  String get homeStart => 'Почни';

  @override
  String get homeTitle => 'Дом';

  @override
  String get homeVehicleOutOfServiceDefault => 'Превоз је тренутно OUT_OF_SERVICE.';

  @override
  String get homeVehicleReady => 'Превоз је спреман и проверен за сигурно управљање.';

  @override
  String get languageTitle => 'Језик';

  @override
  String get loginButton => 'Улаз';

  @override
  String get loginEmailOrPhoneLabel => 'Пошта или телефонски број';

  @override
  String get loginErrorEnterPassword => 'Уведите лозинку';

  @override
  String get loginErrorEnterUsername => 'Уведите корисничко име';

  @override
  String get loginErrorFailed => 'Логин је проваљен.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Уведите валидан имејл или телефонски број';

  @override
  String get loginForgotPassword => 'Заборавио си лозинку?';

  @override
  String get loginPasswordLabel => 'Промет';

  @override
  String get mapChildrenTooltip => 'Деца и огледали';

  @override
  String get mapConfirmMessage => 'Да ли заиста желиш да затвориш пут?';

  @override
  String get mapConfirmTitle => 'Потврди';

  @override
  String get mapCurrentPosition => 'Теренута положај';

  @override
  String get mapNo => 'Не, не.';

  @override
  String get mapReconnectMessage => 'Уобичајено не успева да се ажурише локација, проверите интернето.';

  @override
  String get mapReconnectTitle => 'Тракер';

  @override
  String get mapStop => 'Спрети.';

  @override
  String get mapStopping => 'Спрети...';

  @override
  String get mapStopsTooltip => 'Ствара';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Обнађен пре 5 година';
  }

  @override
  String get mapWaitingGps => 'Чекајући GPS...';

  @override
  String get mapYes => 'Да, да.';

  @override
  String get splashDriverApp => 'Апликација возача';

  @override
  String get stopsActionUndo => 'Увођење';

  @override
  String get stopsCancelledSuccess => 'Успешно укинуто';

  @override
  String get stopsDefaultLabel => 'Спрети.';

  @override
  String get stopsGenericError => 'Нешто није у реду, покушајте поново.';

  @override
  String get stopsStatusComplete => 'потпуна';

  @override
  String get stopsStatusDone => 'завршено';

  @override
  String stopsSubmitCount(Object count) {
    return 'Подај ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Успешно подано';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '___В0__ изабран _______ ___В1__/__В2__ __В3__';
  }

  @override
  String get stopsTypeDrop => 'Спуни';

  @override
  String get stopsTypePick => 'Изаберите';

  @override
  String stopsUndoCount(Object count) {
    return 'Укренути ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Успоривање избора/одласка';

  @override
  String get tripConfirmCancel => 'Отклањање';

  @override
  String get tripConfirmOk => 'У реду.';

  @override
  String get tripConfirmTitle => 'Тракер';

  @override
  String get tripErrorLocationRequired => 'Дозвол за локацију је потребан да се започне путовање.';

  @override
  String get homeMenuPostCrashReporting => 'Извештај о несрећи';

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
    return 'Лати: __В0__, Лнг: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Локација претраге (на пример, улица Маркет)';

  @override
  String get crashLocationPickerTitle => 'Изаберете локацију на мапи';

  @override
  String get crashLocationPickerTooltip => 'Потврди локацију';

  @override
  String get incidentDashboardDescription => 'Изаберете акцију да бисте наставили са управљањем инцидентима или прегледали претходне извештаје.';

  @override
  String get incidentDashboardHeadline => 'Извештај о инцидентима након катастрофе';

  @override
  String get incidentDashboardLogNew => 'Регистрација Новог краша';

  @override
  String get incidentDashboardLogNewSubtitle => 'Почне нови извештај о несрећи корак корак корак корак';

  @override
  String get incidentDashboardTitle => 'Инцидент након катастрофе';

  @override
  String get incidentDashboardViewHistory => 'Погледајте историју';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Прочитајте претходне извештаје о несрећама и статус';

  @override
  String get incidentDetailsAdminLetter => 'Административно писмо';

  @override
  String get incidentDetailsAlcoholCountdown => 'Дот тест алкохола (ограничење 2 сата)';

  @override
  String get incidentDetailsBranchId => 'ИД подружје';

  @override
  String get incidentDetailsBusPlate => 'Платка воза за аутобусе';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Уложење цитације: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Цитата издана возачу';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Координате: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title копирана на клипборд!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Копирање на клипбоард';

  @override
  String get incidentDetailsCrashCitationInfo => 'Краш и цитације Инфо';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата и време: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Доклад ДОЕ';

  @override
  String get incidentDetailsDoeReportTitle => 'Извештај државног ДОЕ (по избор)';

  @override
  String get incidentDetailsDriverNotes => 'Примете возача:';

  @override
  String get incidentDetailsDriverUserId => 'ИД корисника возача';

  @override
  String get incidentDetailsDrugCountdown => 'Дот тест за дрогу (осемчасни лимит)';

  @override
  String get incidentDetailsFatalityOccurred => 'Настанао је смртност';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Инцидент #__В0__';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Увреде које захтевају медицинско лечење';

  @override
  String get incidentDetailsLawEnforcement => 'Агенција за спровођење закона';

  @override
  String get incidentDetailsLoadFailed => 'Не успео да погрупи детаље.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Место: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Привршћања медија';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsNo => 'Не, не';

  @override
  String get incidentDetailsNoMediaAttachments => 'Нема фотографија или видео снимка.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Ниједан ученик није био означен на броду током инцидента.';

  @override
  String get incidentDetailsNotificationsDesc => 'Генеравати извештаје о обавештењима и послати образеће писма оквирној надгледи или управи.';

  @override
  String get incidentDetailsNotificationsTitle => 'Уведомљења о преносу';

  @override
  String get incidentDetailsOfficer => 'Детаљи о службенику';

  @override
  String get incidentDetailsPoliceReport => 'Број полицијског извештаја';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Препопулациони препратни лист:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Регулаторна основа:';

  @override
  String get incidentDetailsRouteId => 'Идентификација пута';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Повести администратора школе';

  @override
  String get incidentDetailsStatusPending => 'У чекању';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Детаљи: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Поранени';

  @override
  String get incidentDetailsStudentNoInjury => 'Нема повреда';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Тежаст:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Превоз на: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Студенти на броду ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Неопходно је тестирање по несрећи';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsTitle => 'Детаљи о инциденту';

  @override
  String get incidentDetailsVehicleTowed => 'Превозно возило повлачено';

  @override
  String get incidentDetailsYes => 'Да, да.';

  @override
  String get incidentHistoryEmpty => 'Нема регистрованих регистара инцидената за овај возило.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не успео да се пронађе дневник: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Време: _V0__ Автобус: _V1__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Инцидент #__В0__';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не захтева';

  @override
  String get incidentHistoryTestingRequired => 'ОТВЕРЖЕНИ';

  @override
  String get incidentHistoryTitle => 'Регистар инцидента након катастрофе';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Додајте још једну фотографију';

  @override
  String get incidentIntakeBadgeNumberError => 'Потребно';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Број значева *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Број аутобуса: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Снимка с снимањем инцидента';

  @override
  String get incidentIntakeCitationSubtitle => 'Да ли је возачу школског аутобуса издано пријава за кршење закона о движењу?';

  @override
  String get incidentIntakeCitationTitle => 'Издао ли је цитат?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата и време катастрофе *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Не захтева се тестирање';

  @override
  String get incidentIntakeDotTestingRequired => 'ТЕСТИНГ НАПОЖЛОВАН';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Водач:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Унесете додатне белешке о сукоби...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Примете инцидента са возачем';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не успели да погруже путнике: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Прикључите доказе (Фото) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Да ли су се десиле смртне случајеве услед овог несреће?';

  @override
  String get incidentIntakeFatalityTitle => 'Да ли се догодило смртност?';

  @override
  String get incidentIntakeGpsLabel => 'GPS координате *';

  @override
  String get incidentIntakeHistoryTooltip => 'Погледајте историју';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Да ли је било неког повређеног тела који је потребан немедљив медицински третман изван места?';

  @override
  String get incidentIntakeInjuriesTitle => 'Да ли су повреде које захтевају медицинско лечење?';

  @override
  String get incidentIntakeInjuryNotesError => 'За повређене студенте обавезни су листи о повредама';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Примете о повредима / детаље (обласно) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Тежаст повреде *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Уведите правоохранителну агенцију.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Агенција за спровођење закона (на пример, Државна аутопутничка патрула) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Учинка закона и полицијски извештај';

  @override
  String get incidentIntakeLocationDescError => 'Уведите описа локације';

  @override
  String get incidentIntakeLocationDescLabel => 'Опис локације (на пример, Маркет Ст & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медицинска установа преведена у';

  @override
  String get incidentIntakeNoMatchingStudents => 'Нема одговарајућих ученика.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ниједан ученик није пронађен.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Нема ученика на броду.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Није било студената који је записао за ову руту.';

  @override
  String get incidentIntakeOfficerNameError => 'Уведите име официра.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Име официра *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Уведите полицијски број пријаве.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Полицијски број извештаја *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Путовање:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Информације о путу и возачу';

  @override
  String get incidentIntakeSearchInjuredHint => 'Протражи рањено дете...';

  @override
  String get incidentIntakeSearchStudentHint => 'Прошући студенте...';

  @override
  String get incidentIntakeSelectAll => 'Изаберите све ученике';

  @override
  String get incidentIntakeSelectOnMap => 'ОБИРЕНИ на мапу';

  @override
  String get incidentIntakeSeverityFatal => 'Фатални';

  @override
  String get incidentIntakeSeverityMinor => 'Неповршене';

  @override
  String get incidentIntakeSeverityModerate => 'Умерани';

  @override
  String get incidentIntakeSeveritySevere => 'Струдни';

  @override
  String get incidentIntakeSeverityTitle => 'Променљиве тежести несреће';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ИД: __В0__';
  }

  @override
  String get incidentIntakeSubmitButton => 'СТРАНИЈА СТАТА';

  @override
  String get incidentIntakeTitle => 'Употреба у живот након несреће';

  @override
  String get incidentIntakeTowedSubtitle => 'Да ли је било неког возила оштећеног што је требало да се извуче са места?';

  @override
  String get incidentIntakeTowedTitle => 'Превозно возило?';

  @override
  String get incidentIntakeWasInjured => 'Да ли је повређен?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Автобус:';
  }

  @override
  String get dvirPreTripClose => 'СЛИБОД';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Коментари возача / примете (по избор)';

  @override
  String get dvirPreTripNoComments => 'Није додано коментаре.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Причина:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Путовање:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Подпис је успешно заимтаван.';

  @override
  String get dvirPreTripSigMissing => 'Не постоји потпис.';

  @override
  String get dvirPreTripSignDefectWarning => 'Молимо вас да потсетите поправку претходних дефекта.';

  @override
  String get dvirPreTripStepSignOff => 'Подписање';

  @override
  String get dvirPreTripStepSubmit => 'Поручити';

  @override
  String get dvirPreTripStepVerify => 'Проверите';

  @override
  String get dvirPreTripTapNext => 'Молим вас, кликните на НЕКСТ да бисте наставили.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Превоз је извођен из употребе';

  @override
  String get dvirPreTripVehicleReady => 'Превоз је спреман за службу';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Проверено стање поправке:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Проверите да су све пријављене дефекте поправљене ознаком оквира поред сваког дефекта.';

  @override
  String get dvirPreTripYourComments => 'Ваше коментаре:';

  @override
  String get countryPickerNoCountries => 'Нису пронађене земље';

  @override
  String get countryPickerSearchHint => 'Протрага по имену земље, коду или бројку...';

  @override
  String get countryPickerTitle => 'Изаберете земљу';

  @override
  String get mapDefaultStop => 'Спрети.';

  @override
  String get mapEndLocation => 'Крајно место';

  @override
  String get mapStartLocation => 'Почне место';

  @override
  String get stopsNoChangesToUndo => 'Нема промена које могу да се повуку.';

  @override
  String get stopsNoStopsAvailable => 'Нема заустављања.';

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
