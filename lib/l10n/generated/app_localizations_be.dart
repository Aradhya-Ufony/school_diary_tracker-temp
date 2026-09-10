import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appInfoBuild => 'Падрыхтоўка нумар';

  @override
  String get appInfoDevice => 'Мадэль прылады';

  @override
  String get appInfoOS => 'Версія OS';

  @override
  String get appInfoPackage => 'Пакет';

  @override
  String get appInfoTitle => 'Інфармацыя аб прыкладанні';

  @override
  String get appInfoVersion => 'Версія прыкладання';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Ахоўнікі';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Удаслыя апекуны для $name';
  }

  @override
  String get childrenNoGuardians => 'Ніякіх аўтарызаваных апекунаў у дакуменце для гэтага дзіцяці.';

  @override
  String get childrenStatusDropped => 'Выкінуты';

  @override
  String get childrenStatusPending => 'Чакаючы';

  @override
  String get childrenStatusPicked => 'Выбраны';

  @override
  String childrenTitle(Object routeName) {
    return 'Дзеці  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'НЕ / НЕ на аўтобусе ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Аўтобус:';
  }

  @override
  String get drillChecklistEvacuated => 'Эвакуяваны';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Эвакуяваны: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Няма адсутнічаючых студэнтаў.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Ніякіх студэнтаў не адзначана ў аўтобусе.';

  @override
  String get drillChecklistNotOnBus => 'Не ў аўтобусе';

  @override
  String get drillChecklistOnBusNotEvacuated => 'У аўтобусе  Не эвакуяваны';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'На аўтобусе ($count)';
  }

  @override
  String get drillChecklistProceed => 'ПРАЦЕЎ НА ДАКРЕДНІЦЕ';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Маршрут (Прыжы): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Праверка эвакуацыйных праверкі';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Непазнаныя Студэнты((с) Застаецца!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Ці ўпэўнены, што вы хочаце падаць гэты часопіс праверкі?';

  @override
  String get drillEvidenceConfirmSubmission => 'Пацвердзіце праверку';

  @override
  String get drillEvidenceDriverNotesHint => 'Апішыце выкананне практыкавання, паводзіны студэнтаў, выкарыстаны шляхі выхаду, і любыя выключэнні, якія назіраюцца...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Запісы кіроўцы (мінімум 10 знакаў):';

  @override
  String get drillEvidenceFailed => 'Падача не атрымалася';

  @override
  String get drillEvidenceMandatoryWarning => 'Па крайняй меры 1 фота- або відэа-доказальнік абавязкова падаць праверку.';

  @override
  String get drillEvidenceRecordVideo => 'Запіс відэа';

  @override
  String get drillEvidenceRetrySubmission => 'Перадача пенсіі';

  @override
  String get drillEvidenceReturnToDashboard => 'Вяртанне да дашборда';

  @override
  String get drillEvidenceSubmitButton => 'Сумбіт дрыль лаг';

  @override
  String get drillEvidenceSubmitting => 'Падклад праверкі часопіса...';

  @override
  String get drillEvidenceSuccess => 'Падпарадкаванне паспяхова!';

  @override
  String get drillEvidenceSuccessMessage => 'Лік эвакуацыі быў паспяхова загружаны і чакае зацверджання.';

  @override
  String get drillEvidenceTakePhoto => 'Здымайце фота';

  @override
  String get drillEvidenceTitle => 'Абсалютныя даказальнікі праверкі';

  @override
  String get drillEvidenceUploading => 'Загрузка дадзеных аб доказах і спісе праверкі';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Аўтобус:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Дрыль: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Наведванне Марка';

  @override
  String get drillRosterNoStudents => 'Ніякіх студэнтаў не зарэгістравана на гэтым маршруце.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Перадчас: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'Працэдура для праверкі';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Сядзенне:';
  }

  @override
  String get drillRosterSelectAll => 'Выберыце Усе';

  @override
  String get drillSummaryAdminNotesTitle => 'Запісы адміністрацыі';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Зацверджаны на: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Ацэньванне ў';

  @override
  String get drillSummaryBackToDrills => 'Вяртаемся да практыкаванняў';

  @override
  String get drillSummaryBusNumber => 'Номер аўтобуса';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Удзельнік: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Падрабязнасць праверкі';

  @override
  String get drillSummaryDriverNotesTitle => 'Запісы кіроўцы';

  @override
  String get drillSummaryDuration => 'Працягласць';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes м $seconds сек';
  }

  @override
  String get drillSummaryEndTime => 'Час канца';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Эвакуяваны: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Эвакуяваны $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Даказальнік СМІ';

  @override
  String get drillSummaryGps => 'GPS каардынаты';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Не ўдалося загрузіць рэзюмэ буравання для ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Ніякіх дадзеных праверкі не знайшлі.';

  @override
  String get drillSummaryNotOnBus => 'Не ў аўтобусе';

  @override
  String get drillSummaryOnBusNotEvacuated => 'У аўтобусе - не эвакуяваны';

  @override
  String get drillSummaryPhotoEvidence => 'Фатаграфічныя доказы';

  @override
  String get drillSummaryRouteId => 'Ідэнтыфікатар маршруту';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Сядзенне:';
  }

  @override
  String get drillSummaryStartTime => 'Час пачатку';

  @override
  String get drillSummaryStatus => 'Статус';

  @override
  String get drillSummaryStudentLogTitle => 'Лік эвакуацыі студэнтаў';

  @override
  String drillSummaryTitle(Object id) {
    return 'Сумвішча праверкі (#$id)';
  }

  @override
  String get drillSummaryType => 'Тып буравання';

  @override
  String get drillSummaryVideoEvidence => 'Відыё-доказы';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Аўтобус $busNumber';
  }

  @override
  String get drillTypeClassification => 'Выберыце класіфікацыю буральнікаў:';

  @override
  String get drillTypeCustomHint => 'Увядзіце звычайны эвакуацыйны тып вучэнняў...';

  @override
  String get drillTypeInvalidState => 'Непапраўны стан транспартнага сродку або маршруту.';

  @override
  String get drillTypeNameBusFire => 'Пажар аўтобуса';

  @override
  String get drillTypeNameDangerZone => 'Зона небяспекі';

  @override
  String get drillTypeNameDriverIncapacitation => 'Недастатковасць кіроўцы';

  @override
  String get drillTypeNameEquipmentOrientation => 'Арыентацыя абсталявання';

  @override
  String get drillTypeNameFrontDoor => 'Перад дзверы';

  @override
  String get drillTypeNameOthers => 'Іншыя';

  @override
  String get drillTypeNameRearDoor => 'Заднія дзверы';

  @override
  String get drillTypeNameSideOrRoof => 'Бабі або дах';

  @override
  String get drillTypeNameSplit => 'Падзяліцца';

  @override
  String get drillTypeNoRouteSelected => 'Не выбраны маршрут';

  @override
  String get drillTypePreparation => 'ПРЕПРЕПРАЦЫЯ';

  @override
  String get drillTypeProceed => 'Працэдура для студэнцкай спісу';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Выберыце маршрут:';

  @override
  String get drillTypeSpecifyCustom => 'Падкрэсліць апісанне тыпу буральніка:';

  @override
  String get drillTypeTitle => 'Выберыце тып буравання';

  @override
  String get drillTypeWarning => 'Пераканайцеся, што аўтамабіль прыпаркаваны бяспечна перад пачаткам выканання.';

  @override
  String get drillsAssignedVehicle => 'Падпісанае аўтамабіль';

  @override
  String get drillsChecking => 'Праверка ...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Вулкан #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Ніякіх аўтобусаў не прызначаны';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Ніякіх вучэнняў не зафіксавана для аўтобуса $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Няма маршрутаў, каб пачаць праверку.';

  @override
  String get drillsShowSummary => 'Паказаць рэзюмэ';

  @override
  String get drillsStartDrill => 'Пачніце праверку';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Праведзена: $date Статус: $status';
  }

  @override
  String get drillsTitle => 'Эвакуацыйныя практыкаванні';

  @override
  String get drillsVehicleOutOfService => 'Аўтамабіль выключаны';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Гэты аўтамабіль у цяперашні час не ў эксплуатацыі і не можа быць выкарыстаны для праверкі.';

  @override
  String get driverDetailsCdlClassLabel => 'Клас CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ЛІЦЕНЦІЯ ДРЕВІЦА';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Назва:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ЛІК: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Пасажыр';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Школьны аўтобус';

  @override
  String get driverDetailsEndorsementsTitle => 'Зацвярджэнні';

  @override
  String get driverDetailsExpiryDateLabel => 'Дата заканчэння тэрміну';

  @override
  String get driverDetailsHolderSignature => 'Падпісанне ўладальніка';

  @override
  String driverDetailsId(Object driverId) {
    return 'ІД: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Дата выпуску';

  @override
  String get driverDetailsLicenseDocTitle => 'Дакумент ліцэнзіі';

  @override
  String get driverDetailsLicenseNoLabel => 'Ліцэнзія No';

  @override
  String get driverDetailsLicenseTitle => 'Падрабязнасці ліцэнзіі';

  @override
  String get driverDetailsLicenseTypeLabel => 'Тып ліцэнзіі';

  @override
  String get driverDetailsOfficialSeal => 'Афіцыйны пячатак';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'КЛАСС:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'ДОБ: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ПАРАЖ:';
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
    return 'ФН: __В0__';
  }

  @override
  String get driverDetailsTapToView => 'Націсніце , каб праглядзець DL дакумент';

  @override
  String get driverDetailsTitle => 'Падрабязнасць кіроўцы';

  @override
  String get dvirCategoryBusSafetySystems => 'Сістэмы бяспекі для аўтобусаў';

  @override
  String get dvirCategoryCouplingDevices => 'Прылады злучэння';

  @override
  String get dvirCategoryEmergencyEquipment => 'Аперацыйнае абсталяванне';

  @override
  String get dvirCategoryHorn => 'Рон';

  @override
  String get dvirCategoryLightingReflectors => 'Агністыя прылады і адлюстравальнікі';

  @override
  String get dvirCategoryMirrors => 'Зіркі з заднім бачаннем';

  @override
  String get dvirCategoryParkingBrake => 'Паркоўка перавароты';

  @override
  String get dvirCategoryPassengerSeating => 'Пасадкі пасажыраў і абмежаванні';

  @override
  String get dvirCategoryServiceBrakes => 'Паслугавыя тармазы';

  @override
  String get dvirCategorySteeringMechanism => 'Механізм кіравання';

  @override
  String get dvirCategoryTires => 'Падпрыемствы';

  @override
  String get dvirCategoryWheelsRims => 'Колы і рымы';

  @override
  String get dvirCategoryWipers => 'Сціральнікі ветранага шкла';

  @override
  String get dvirPostTripCapturePhoto => 'СФОТО СВІДНАЯ СВІДНАЯ СВІДНАЯ';

  @override
  String get dvirPostTripComplianceTitle => 'СВІДАЦІФАЦІЯ СОГЛАСТВА';

  @override
  String get dvirPostTripDefectButton => 'Справа ў тым, што';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Паведамленне пра дэфект без фатаграфіі';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Папярэджанне: Вы паведамляеце пра недахоп у зонах бяспекі ($zones) без далучэння фатаграфіі.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Інспекцыя: аўтобус $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Уведайце дэталі бяспекі...';

  @override
  String get dvirPostTripNotesLabel => 'Запісы (паказанне аб дэфекце) & Фота';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Выберыце DEFECT, каб увайсці падрабязнасці бяспекі...';

  @override
  String get dvirPostTripOdometerHeader => 'Цяперашнія Odometer чытанне';

  @override
  String get dvirPostTripOdometerInstructions => 'Уведайце прамяненне кіламетража менавіта так, як паказана на панэлі інструментаў аўтобуса:';

  @override
  String get dvirPostTripOdometerLabel => 'Адометры (Мілі)';

  @override
  String get dvirPostTripOdometerTitle => 'МЕТРІК ДАГАВІЛНАГАГА ЧАСТУ';

  @override
  String get dvirPostTripOdometerWarning => 'Калі ласка, пачытайце дадатковы далік дарогавых дадзеных перад пачаткам.';

  @override
  String get dvirPostTripPassButton => 'Пераход';

  @override
  String get dvirPostTripPhotoAttached => 'Фота далучана паспяхова.';

  @override
  String get dvirPostTripProgressLabel => 'Прагрэс інспекцыі';

  @override
  String get dvirPostTripSignatureCaptured => 'Падпісанне захавана.';

  @override
  String get dvirPostTripSignatureCert => 'Я зацвярджаю, што гэты справаздача пра перамяшчэнне аўтамабіляў была завершана ў адпаведнасці з FMCSA 396.11 правілаў.';

  @override
  String get dvirPostTripSignatureTitle => 'Праверка подпісу кіроўцы';

  @override
  String get dvirPostTripSubmitButton => 'Перадасць інспекцыі';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR паспяхова пададзены.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Зона $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Зон В0__ / В1__';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Я прызнаю, што я прагледзеў апошні пададзены справаздачу аб збоі і праверыў рамонт (калі ёсць) і заявіў, што аўтобус бяспечны для эксплуатацыі.';

  @override
  String get dvirPreTripActiveMessage => 'Гэты аўтамабіль з\'яўляецца актыўным і не мае адкрытых дэфектаў.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Актыўны шлях: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ПРЕДВІДНАЯ ПРЕДВІДНАЯ ПРЕДВІДНАЯ ПРЕДВІДНАЯ ПРЕДВІДНАЯ ПРЕДВІДНАЯ ДАВІДНАЯ ДАВІДНАЯ';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Номер аўтобуса: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Перагляд ДАВІХЛІКНАГАГА ДАВІХЛІКНАГА';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Не падпісалі: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Ніякіх папярэдніх дэфектаў не зафіксавана';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Гэты аўтамабіль быў паведамлены пра чыстую ў папярэдняй інспекцыі пасля паездкі.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Ніякіх рамонтаў не патрабуецца для бяспечнай працы.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Гэты аўтамабіль выключаны з эксплуатацыі для рамонту / абслугоўвання.';

  @override
  String get dvirPreTripOutofServiceButton => 'УВЕХІЛЬНЫЯ ПАЗВЕДЫ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Прычына:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ПРАВІДНА)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ЗАВЕРНАВАЕНЕ НЕЯВЫЯ дэфекты';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Паведамленне аб новых дэфектах адключаецца падчас рамонту.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Перавозкі пад-адміністрацыя Рэзалюцыя';

  @override
  String get dvirPreTripReturnToHomeButton => 'Вяртацца дадому';

  @override
  String get dvirPreTripSignOffTitle => 'Спіс для праходжання на шпацыр';

  @override
  String get dvirPreTripSignedSuccess => 'Праверка падпісана паспяхова.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'Пераверка прадстаўлення';

  @override
  String get dvirPreTripTitle => 'Праверка да падарожжа';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Статус аўтамабіля: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Падпішыце';

  @override
  String get dvirSigPreviewLabel => 'Падпісанне папярэдняга папярэдняга:';

  @override
  String get dvirSigRedraw => 'РЕДРАУ';

  @override
  String get dvirSigSave => 'Забаўляць подпіс';

  @override
  String get dvirSigTapToDraw => 'ТАП для падпіскі (пажадана)';

  @override
  String get dvirSigWatermark => 'Падпішыце вертыкальна (зніз да зверху)';

  @override
  String get forgotPasswordCancel => 'Адмяніць';

  @override
  String get forgotPasswordEmailLabel => 'Паштовая пошты';

  @override
  String get forgotPasswordInvalidEmail => 'Калі ласка, увядзіце сапраўдную электронную пошту';

  @override
  String get forgotPasswordSend => 'Пашляць';

  @override
  String get forgotPasswordSuccess => 'Калі гэты электронны ліст існуе, спасылка на рэстаўрацыю была адпраўлена.';

  @override
  String get genericBack => 'Пераход';

  @override
  String get genericCancel => 'Адмяніць';

  @override
  String get genericClear => 'Ясна';

  @override
  String get genericClose => 'Блізка';

  @override
  String get genericConfirm => 'Пацвердзіць';

  @override
  String get genericEdit => 'Рэдагаваць';

  @override
  String get genericError => 'Што-то пайшло не так.';

  @override
  String get genericLoading => 'Загрузка...';

  @override
  String get genericNext => 'ПРЕДНА';

  @override
  String get genericOk => 'Добра.';

  @override
  String get genericRetry => 'Перапрабуйце';

  @override
  String get genericSuccess => 'Поспех';

  @override
  String homeBusLabel(Object busId) {
    return 'Аўтобус:';
  }

  @override
  String get homeDispatchBlocked => 'Запынена адпраўка';

  @override
  String get homeDispatchBlockedTitle => 'Запынена адпраўка';

  @override
  String get homeErrorNoRoutesPreTrip => 'Няма маршрутаў, даступных для правядзення Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Не атрымалася запусціць паход на сервер: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Прывітанне, V0__';
  }

  @override
  String get homeLogout => 'Выхад з правайдэра';

  @override
  String get homeMenuAppInfo => 'Інфармацыя аб прыкладанні';

  @override
  String get homeMenuDrill => 'Буральнік';

  @override
  String get homeMenuDriverDetails => 'Падрабязнасць кіроўцы';

  @override
  String get homeMenuLanguage => 'Мова';

  @override
  String get homeMenuPreTrip => 'Падчас падарожжа';

  @override
  String get homeNoRoutes => 'Няма маршрутаў';

  @override
  String get homeReviewVerifyPreTrip => 'Праверка і праверка да падарожжа';

  @override
  String get homeSearchHint => 'Маршруты пошуку';

  @override
  String get homeStart => 'Пачніце';

  @override
  String get homeTitle => 'Дом';

  @override
  String get homeVehicleOutOfServiceDefault => 'Аўтамабіль у цяперашні час не працуе.';

  @override
  String get homeVehicleReady => 'Аўтамабіль гатовы і праверыны для бяспечнай эксплуатацыі.';

  @override
  String get languageTitle => 'Мова';

  @override
  String get loginButton => 'Падключэнне';

  @override
  String get loginEmailOrPhoneLabel => 'Паштовы паведамленне або нумар тэлефона';

  @override
  String get loginErrorEnterPassword => 'Калі ласка, увядзіце пароль';

  @override
  String get loginErrorEnterUsername => 'Калі ласка, увядзіце імя карыстальніка';

  @override
  String get loginErrorFailed => 'Заўход не атрымаўся.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Калі ласка, увядзіце сапраўдны электронны ліст або нумар тэлефона';

  @override
  String get loginForgotPassword => 'Забыў пароль?';

  @override
  String get loginPasswordLabel => 'Пароль';

  @override
  String get mapChildrenTooltip => 'Дзеці & апекуны';

  @override
  String get mapConfirmMessage => 'Ці сапраўды вы хочаце завяршыць падарожжа?';

  @override
  String get mapConfirmTitle => 'Пацвердзіць';

  @override
  String get mapCurrentPosition => 'Цяперашні стан';

  @override
  String get mapNo => 'Не, не.';

  @override
  String get mapReconnectMessage => 'Падрабязнасць месцазнаходжання няздольна часта, праверце ў інтэрнэце.';

  @override
  String get mapReconnectTitle => 'Трэнер';

  @override
  String get mapStop => 'Спыніцеся';

  @override
  String get mapStopping => 'Спыніць ...';

  @override
  String get mapStopsTooltip => 'Спыніцца';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Абноўлены ${seconds}s таму';
  }

  @override
  String get mapWaitingGps => 'Чакаючы GPS...';

  @override
  String get mapYes => 'Так, так.';

  @override
  String get splashDriverApp => 'App кіроўцы';

  @override
  String get stopsActionUndo => 'Знішчана';

  @override
  String get stopsCancelledSuccess => 'Удалося адмяніць';

  @override
  String get stopsDefaultLabel => 'Спыніцеся';

  @override
  String get stopsGenericError => 'Нешта пайшло не так.';

  @override
  String get stopsStatusComplete => 'поўная';

  @override
  String get stopsStatusDone => 'рабіла';

  @override
  String stopsSubmitCount(Object count) {
    return 'Падклад ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Паспяхова пададзены';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected выбраны · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Падарваць';

  @override
  String get stopsTypePick => 'Выберыце';

  @override
  String stopsUndoCount(Object count) {
    return 'Знішчаць ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Зніжэнне выбар / адпуск';

  @override
  String get tripConfirmCancel => 'Адмяніць';

  @override
  String get tripConfirmOk => 'Добра.';

  @override
  String get tripConfirmTitle => 'Трэнер';

  @override
  String get tripErrorLocationRequired => 'Для пачатку падарожжа патрабуецца дазвол на месцазнаходжанне.';

  @override
  String get homeMenuPostCrashReporting => 'Пасля аварыі справаздачы';

  @override
  String homeVehicleReason(Object reason) {
    return 'Прычына:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Статус:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lng: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Месца пошуку (напрыклад, Market St)';

  @override
  String get crashLocationPickerTitle => 'Выберыце месцазнаходжанне на карце';

  @override
  String get crashLocationPickerTooltip => 'Пацвердзіце месцазнаходжанне';

  @override
  String get incidentDashboardDescription => 'Выберыце дзеянне для працэдуры кіравання інцыдэнтамі або праглядзіце мінулыя справаздачы.';

  @override
  String get incidentDashboardHeadline => 'Пасля аварыі паведамленне аб інцыдэнтах';

  @override
  String get incidentDashboardLogNew => 'Запіс Новы краш';

  @override
  String get incidentDashboardLogNewSubtitle => 'Пачынаць новы крок за крокам справаздачу аб аварыі';

  @override
  String get incidentDashboardTitle => 'Пасля аварыі інцыдэнт';

  @override
  String get incidentDashboardViewHistory => 'Глядзіце гісторыю';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Паглядзіце папярэднія паведамленні аб аварыі і стан';

  @override
  String get incidentDetailsAdminLetter => 'Адміністратар ліст';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Пералік тэсту алкаголю (2 гадзіны ліміт)';

  @override
  String get incidentDetailsBranchId => 'Ідэнтыфікатар філіяла';

  @override
  String get incidentDetailsBusPlate => 'Падпісанне аўтобуса';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Уплыў цытацыі: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Паведамленне кіроўцу';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Каардынаты: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title скапіяваны на клейб-борду!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Копія на Кліпборд';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Інфармацыя';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Дата і час: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Даклад DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Даклад ДУЭ дзяржавы (паваротны)';

  @override
  String get incidentDetailsDriverNotes => 'Заўвага кіроўцы:';

  @override
  String get incidentDetailsDriverUserId => 'Пазнака карыстальніка кіроўцы';

  @override
  String get incidentDetailsDrugCountdown => 'Пералік тэстаў на наркотыкі DOT (ліміт 8 гадзін)';

  @override
  String get incidentDetailsFatalityOccurred => 'Здарылася смерць';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Інцыдэнт #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Параненыя, якія патрабуюць медыцынскага лячэння';

  @override
  String get incidentDetailsLawEnforcement => 'Арганізацыя праваахоўных органаў';

  @override
  String get incidentDetailsLoadFailed => 'Не ўдалося загрузіць дэталі.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Месца: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Звязкі ў СМІ';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsNo => 'Не';

  @override
  String get incidentDetailsNoMediaAttachments => 'Ніякіх фота і відэа не прымаюцца.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Падчас інцыдэнту ніводнага студэнта на борце не было.';

  @override
  String get incidentDetailsNotificationsDesc => 'Падпісаць паведамленні аб паведамленні і адпраўляць шаблонавыя лісты ў раённыя наглядчыкі або адміністрацыю.';

  @override
  String get incidentDetailsNotificationsTitle => 'Паведамленні аб перадачы';

  @override
  String get incidentDetailsOfficer => 'Падрабязнасць афіцэра';

  @override
  String get incidentDetailsPoliceReport => 'Паліцэйскі нумар паведамлення';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Папярэдне запаўненыя перадачы ліста:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Рэгуляцыйная база:';

  @override
  String get incidentDetailsRouteId => 'Ідэнтыфікатар маршруту';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Паведамленне адміністрацыі школы';

  @override
  String get incidentDetailsStatusPending => 'Чакаючы';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Падрабязнасць: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Параненыя';

  @override
  String get incidentDetailsStudentNoInjury => 'Ніякіх траўмаў';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Цяжкасць:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Перавозіцца да: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Студэнты На борце ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Неабходная тэставанне пасля аварыі';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Статус:';
  }

  @override
  String get incidentDetailsTitle => 'Падрабязнасць аб інцыдэнце';

  @override
  String get incidentDetailsVehicleTowed => 'Аўтамабіль, які цягнуўся';

  @override
  String get incidentDetailsYes => 'Так';

  @override
  String get incidentHistoryEmpty => 'Ніякіх запісаў выпадкаў не было зарэгістравана для гэтага аўтамабіля.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Не атрымалася здабыць часопісы: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Час: В0__ Аўтобус: В1__ Тэсты: В2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Інцыдэнт #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Не патрабуецца';

  @override
  String get incidentHistoryTestingRequired => 'Патрабаваная';

  @override
  String get incidentHistoryTitle => 'Пасля аварыі рэгістр інцыдэнтаў';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Дадаць яшчэ адзін фотаздымк';

  @override
  String get incidentIntakeBadgeNumberError => 'Патрабаваная';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Номер значка *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Номер аўтобуса: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Здымаць фота з месца здарэння';

  @override
  String get incidentIntakeCitationSubtitle => 'Ці быў выдадзены рух на парушэнне права на дарогу школьным кіроўцу аўтобуса?';

  @override
  String get incidentIntakeCitationTitle => 'Ці выпушчаны цытаты?';

  @override
  String get incidentIntakeDateTimeLabel => 'Дата і час аварыі *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'ТЭСТЫ НЕ Патрэбныя';

  @override
  String get incidentIntakeDotTestingRequired => 'Тэставанне неабходна';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Кіроўца:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Уведайце якія-небудзь дадатковыя запісы ў дачыненні да сутыкнення...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Запісы аб выпадках з кіроўцам';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Не ўдалося загрузіць пасажыраў маршруту: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Дадаць даведку (фота) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Ці адбыліся нейкія смерці ў выніку гэтай аварыі?';

  @override
  String get incidentIntakeFatalityTitle => 'Ці адбылося смерць?';

  @override
  String get incidentIntakeGpsLabel => 'GPS каардынаты *';

  @override
  String get incidentIntakeHistoryTooltip => 'Глядзіце гісторыю';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Ці быў у чалавека цялесны пашкоджанне, якое патрабуе неадкладнага медыцынскага лячэння па-за месца здарэння?';

  @override
  String get incidentIntakeInjuriesTitle => 'Параненыя, якія патрабуюць медыцынскага лячэння?';

  @override
  String get incidentIntakeInjuryNotesError => 'Запісы па траўмах абавязковыя для траўманых студэнтаў';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Запісы па траўме / дэталі (павяточныя) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Цяжкасць траўмы *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Калі ласка, увайдзіце ў праваахоўнае ведамства';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Арганізацыя праваахоўных органаў (напрыклад, Дзяржаўная патрульная служба) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Выкананне закона & паліцэйскі справаздача';

  @override
  String get incidentIntakeLocationDescError => 'Калі ласка, увядзіце апісанне месцазнаходжання';

  @override
  String get incidentIntakeLocationDescLabel => 'Апісанне месцазнаходжання (напрыклад, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Медыцынскае аб\'ект перавезены ў';

  @override
  String get incidentIntakeNoMatchingStudents => 'Няма адпаведных студэнтаў.';

  @override
  String get incidentIntakeNoStudentsFound => 'Ніякіх студэнтаў не знайшлі.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Ніякіх студэнтаў на борце.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Ніякіх студэнтаў не запісалі на гэты маршрут.';

  @override
  String get incidentIntakeOfficerNameError => 'Калі ласка, увядзіце імя афіцэра';

  @override
  String get incidentIntakeOfficerNameLabel => 'Назва афіцэра *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Калі ласка, увядзіце нумар паліцэйскага справаздачы.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Паліцэйскі нумар справаздачы *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Інфармацыя пра маршрут і кіроўца';

  @override
  String get incidentIntakeSearchInjuredHint => 'Пошук паранены дзіця...';

  @override
  String get incidentIntakeSearchStudentHint => 'Пошук студэнта...';

  @override
  String get incidentIntakeSelectAll => 'Выберыце ўсіх вучняў';

  @override
  String get incidentIntakeSelectOnMap => 'Выбар на мапе';

  @override
  String get incidentIntakeSeverityFatal => 'Смяротнае';

  @override
  String get incidentIntakeSeverityMinor => 'Непаўналетні';

  @override
  String get incidentIntakeSeverityModerate => 'Умераны';

  @override
  String get incidentIntakeSeveritySevere => 'Сур\'ёзныя';

  @override
  String get incidentIntakeSeverityTitle => 'Варыятыўнасць цяжкасці аварыі';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ІД: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'СПАЦАВА';

  @override
  String get incidentIntakeTitle => 'Пасля аварыі прыём';

  @override
  String get incidentIntakeTowedSubtitle => 'Ці атрымаў які-небудзь аўтамабіль пашкоджанне, якое патрабуе яго цягнуць з месца здарэння?';

  @override
  String get incidentIntakeTowedTitle => 'Аўтамабіль выцягнуты?';

  @override
  String get incidentIntakeWasInjured => 'Быў паранены?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Аўтобус:';
  }

  @override
  String get dvirPreTripClose => 'Блізка';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Каментары кіроўцы / Заўткі (Вайтворы)';

  @override
  String get dvirPreTripNoComments => 'Ніякіх каментарый не дададзены.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Прычына:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Маршрут: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Подпіс паспяхова захаваны.';

  @override
  String get dvirPreTripSigMissing => 'Падпісанне не хапае.';

  @override
  String get dvirPreTripSignDefectWarning => 'Калі ласка, падпішыце, каб праверыць рамонт папярэдніх дэфектаў.';

  @override
  String get dvirPreTripStepSignOff => 'Падпісанне';

  @override
  String get dvirPreTripStepSubmit => 'Падклад';

  @override
  String get dvirPreTripStepVerify => 'Праверка';

  @override
  String get dvirPreTripTapNext => 'Калі ласка, націсніце NEXT, каб працягнуць.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Аўтамабіль выключаны з службы';

  @override
  String get dvirPreTripVehicleReady => 'Аўтамабіль гатовы да службы';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Праверены стан рамонту:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Калі ласка, пераканайцеся, што ўсе паведамленыя дэфекты былі выпраўленыя, праверце скрынку побач з кожным дэфектам.';

  @override
  String get dvirPreTripYourComments => 'Вашы заўвагі:';

  @override
  String get countryPickerNoCountries => 'Ніякіх краін не знайшлі';

  @override
  String get countryPickerSearchHint => 'Пошук па назве краіны, кодзе, або код дыялогу...';

  @override
  String get countryPickerTitle => 'Выберыце краіну';

  @override
  String get mapDefaultStop => 'Спыніцеся';

  @override
  String get mapEndLocation => 'Канчатковае месцазнаходжанне';

  @override
  String get mapStartLocation => 'Пачатак месцазнаходжанне';

  @override
  String get stopsNoChangesToUndo => 'Ніякіх змяненняў не можна адмяніць.';

  @override
  String get stopsNoStopsAvailable => 'Няма спыніц.';

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
