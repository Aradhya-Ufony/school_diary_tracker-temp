import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appInfoBuild => 'رقم الإصدار';

  @override
  String get appInfoDevice => 'طراز الجهاز';

  @override
  String get appInfoOS => 'إصدار نظام التشغيل';

  @override
  String get appInfoPackage => 'الحزمة';

  @override
  String get appInfoTitle => 'معلومات التطبيق';

  @override
  String get appInfoVersion => 'إصدار التطبيق';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'أولياء الأمور';

  @override
  String childrenGuardiansFor(Object name) {
    return 'أولياء الأمور المصرح لهم بـ $name';
  }

  @override
  String get childrenNoGuardians => 'لا يوجد أولياء أمور مصرح لهم مسجلون لهذا الطفل.';

  @override
  String get childrenStatusDropped => 'تم التوصيل';

  @override
  String get childrenStatusPending => 'قيد الانتظار';

  @override
  String get childrenStatusPicked => 'تم الاستلام';

  @override
  String childrenTitle(Object routeName) {
    return 'الأطفال — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'غائب / ليس على الحافلة ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'الحافلة: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'تم الإخلاء';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'تم الإخلاء: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'لا يوجد طلاب غائبون.';

  @override
  String get drillChecklistNoStudentsOnBus => 'لا يوجد طلاب مسجلون على الحافلة.';

  @override
  String get drillChecklistNotOnBus => 'ليس على الحافلة';

  @override
  String get drillChecklistOnBusNotEvacuated => 'على الحافلة — لم يتم إخلاؤه';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'على الحافلة ($count)';
  }

  @override
  String get drillChecklistProceed => 'الانتقال إلى التقاط الأدلة';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'المسار (مباشر): $routeName';
  }

  @override
  String get drillChecklistTitle => 'قائمة التحقق من تمرين الإخلاء';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'متبقي $count طالب/طلاب غير مُحصّلين!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'هل أنت متأكد من رغبتك في إرسال سجل التمرين؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get drillEvidenceConfirmSubmission => 'تأكيد إرسال التمرين';

  @override
  String get drillEvidenceDriverNotesHint => 'صف كيفية تنفيذ التمرين، وسلوك الطلاب، ومسارات الخروج المستخدمة، وأي استثناءات تمت ملاحظتها...';

  @override
  String get drillEvidenceDriverNotesLabel => 'ملاحظات السائق (10 أحرف كحد أدنى):';

  @override
  String get drillEvidenceFailed => 'فشل الإرسال';

  @override
  String get drillEvidenceMandatoryWarning => 'يجب إرفاق صورة أو مقطع فيديو واحد على الأقل لإرسال التمرين.';

  @override
  String get drillEvidenceRecordVideo => 'تسجيل فيديو';

  @override
  String get drillEvidenceRetrySubmission => 'إعادة محاولة الإرسال';

  @override
  String get drillEvidenceReturnToDashboard => 'العودة إلى لوحة التحكم';

  @override
  String get drillEvidenceSubmitButton => 'إرسال سجل التمرين';

  @override
  String get drillEvidenceSubmitting => 'جارٍ إرسال سجل التمرين...';

  @override
  String get drillEvidenceSuccess => 'تم الإرسال بنجاح!';

  @override
  String get drillEvidenceSuccessMessage => 'تم رفع سجل تمرين الإخلاء بنجاح وهو بانتظار الموافقة.';

  @override
  String get drillEvidenceTakePhoto => 'التقاط صورة';

  @override
  String get drillEvidenceTitle => 'أدلة التمرين الإلزامية';

  @override
  String get drillEvidenceUploading => 'جارٍ رفع الأدلة وبيانات قائمة التحقق';

  @override
  String drillRosterBus(Object busNumber) {
    return 'الحافلة: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'التمرين: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'تسجيل الحضور';

  @override
  String get drillRosterNoStudents => 'لا يوجد طلاب مسجلون على هذا المسار.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'الحاضرون: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'الانتقال إلى قائمة تحقق التمرين';

  @override
  String drillRosterRoute(Object routeName) {
    return 'المسار: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'المقعد: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'تحديد الكل';

  @override
  String get drillSummaryAdminNotesTitle => 'ملاحظات المسؤول';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'تمت الموافقة في: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'تمت الموافقة في';

  @override
  String get drillSummaryBackToDrills => 'العودة إلى التمارين';

  @override
  String get drillSummaryBusNumber => 'رقم الحافلة';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'تم التنفيذ بواسطة: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'تفاصيل التمرين';

  @override
  String get drillSummaryDriverNotesTitle => 'ملاحظات السائق';

  @override
  String get drillSummaryDuration => 'المدة';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes دقيقة $seconds ثانية';
  }

  @override
  String get drillSummaryEndTime => 'وقت الانتهاء';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'تم الإخلاء: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'تم الإخلاء في $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'مرفقات أدلة التمرين';

  @override
  String get drillSummaryGps => 'إحداثيات GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'خط العرض: $lat، خط الطول: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'فشل تحميل ملخص التمرين للمعرّف #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'لم يتم العثور على بيانات للتمرين.';

  @override
  String get drillSummaryNotOnBus => 'ليس على الحافلة';

  @override
  String get drillSummaryOnBusNotEvacuated => 'على الحافلة - لم يتم إخلاؤه';

  @override
  String get drillSummaryPhotoEvidence => 'دليل مصور';

  @override
  String get drillSummaryRouteId => 'معرّف المسار';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'المقعد: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'وقت البدء';

  @override
  String get drillSummaryStatus => 'الحالة';

  @override
  String get drillSummaryStudentLogTitle => 'سجل إخلاء الطلاب';

  @override
  String drillSummaryTitle(Object id) {
    return 'ملخص التمرين (#$id)';
  }

  @override
  String get drillSummaryType => 'نوع التمرين';

  @override
  String get drillSummaryVideoEvidence => 'دليل فيديو';

  @override
  String drillTypeBus(Object busNumber) {
    return 'الحافلة $busNumber';
  }

  @override
  String get drillTypeClassification => 'اختر تصنيف التمرين:';

  @override
  String get drillTypeCustomHint => 'أدخل نوع تمرين الإخلاء المخصص...';

  @override
  String get drillTypeInvalidState => 'حالة المركبة أو المسار غير صالحة.';

  @override
  String get drillTypeNameBusFire => 'حريق في الحافلة';

  @override
  String get drillTypeNameDangerZone => 'منطقة الخطر';

  @override
  String get drillTypeNameDriverIncapacitation => 'عجز السائق';

  @override
  String get drillTypeNameEquipmentOrientation => 'التعريف بالمعدات';

  @override
  String get drillTypeNameFrontDoor => 'الباب الأمامي';

  @override
  String get drillTypeNameOthers => 'أخرى';

  @override
  String get drillTypeNameRearDoor => 'الباب الخلفي';

  @override
  String get drillTypeNameSideOrRoof => 'الجانب أو السقف';

  @override
  String get drillTypeNameSplit => 'منقسم';

  @override
  String get drillTypeNoRouteSelected => 'لم يتم اختيار مسار';

  @override
  String get drillTypePreparation => 'إعداد التمرين';

  @override
  String get drillTypeProceed => 'الانتقال إلى قائمة الطلاب';

  @override
  String drillTypeRoute(Object routeName) {
    return 'المسار: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'اختر المسار:';

  @override
  String get drillTypeSpecifyCustom => 'حدد وصف نوع التمرين:';

  @override
  String get drillTypeTitle => 'اختيار نوع التمرين';

  @override
  String get drillTypeWarning => 'تأكد من إيقاف المركبة بأمان قبل بدء التنفيذ.';

  @override
  String get drillsAssignedVehicle => 'المركبة المخصصة';

  @override
  String get drillsChecking => 'جارٍ التحقق...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'التمرين #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'لا توجد حافلة مخصصة';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'لم يتم تسجيل أي تمارين للحافلة $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'لا توجد مسارات متاحة لبدء تمرين.';

  @override
  String get drillsShowSummary => 'عرض الملخص';

  @override
  String get drillsStartDrill => 'بدء التمرين';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'تم التنفيذ: $date\nالحالة: $status';
  }

  @override
  String get drillsTitle => 'تمارين الإخلاء';

  @override
  String get drillsVehicleOutOfService => 'المركبة خارج الخدمة';

  @override
  String get drillsVehicleOutOfServiceMessage => 'هذه المركبة خارج الخدمة حاليًا ولا يمكن استخدامها للتمارين.';

  @override
  String get driverDetailsCdlClassLabel => 'فئة رخصة القيادة التجارية';

  @override
  String get driverDetailsDrivingLicenseLabel => 'رخصة القيادة';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'الاسم: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'رقم الرخصة: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'نقل الركاب';

  @override
  String get driverDetailsEndorsementSchoolBus => 'حافلة مدرسية';

  @override
  String get driverDetailsEndorsementsTitle => 'التصاريح المعتمدة';

  @override
  String get driverDetailsExpiryDateLabel => 'تاريخ انتهاء الصلاحية';

  @override
  String get driverDetailsHolderSignature => 'توقيع حامل الرخصة';

  @override
  String driverDetailsId(Object driverId) {
    return 'المعرّف: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'تاريخ الإصدار';

  @override
  String get driverDetailsLicenseDocTitle => 'وثيقة رخصة القيادة';

  @override
  String get driverDetailsLicenseNoLabel => 'رقم الرخصة';

  @override
  String get driverDetailsLicenseTitle => 'تفاصيل رخصة القيادة';

  @override
  String get driverDetailsLicenseTypeLabel => 'نوع الرخصة';

  @override
  String get driverDetailsOfficialSeal => 'الختم الرسمي';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'الفئة: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'تاريخ الميلاد: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'التصاريح: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'تاريخ الانتهاء: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'رقم الرخصة: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'الاسم الأول: $name';
  }

  @override
  String get driverDetailsTapToView => 'اضغط لعرض وثيقة رخصة القيادة';

  @override
  String get driverDetailsTitle => 'تفاصيل السائق';

  @override
  String get dvirCategoryBusSafetySystems => 'أنظمة سلامة الحافلة';

  @override
  String get dvirCategoryCouplingDevices => 'أجهزة الاقتران';

  @override
  String get dvirCategoryEmergencyEquipment => 'معدات الطوارئ';

  @override
  String get dvirCategoryHorn => 'البوق';

  @override
  String get dvirCategoryLightingReflectors => 'أجهزة الإضاءة والعاكسات';

  @override
  String get dvirCategoryMirrors => 'مرايا الرؤية الخلفية';

  @override
  String get dvirCategoryParkingBrake => 'فرامل التوقف';

  @override
  String get dvirCategoryPassengerSeating => 'مقاعد الركاب وأنظمة التقييد';

  @override
  String get dvirCategoryServiceBrakes => 'فرامل الخدمة';

  @override
  String get dvirCategorySteeringMechanism => 'آلية التوجيه';

  @override
  String get dvirCategoryTires => 'الإطارات';

  @override
  String get dvirCategoryWheelsRims => 'العجلات والجنوط';

  @override
  String get dvirCategoryWipers => 'ماسحات الزجاج الأمامي';

  @override
  String get dvirPostTripCapturePhoto => 'التقاط صورة للعيب';

  @override
  String get dvirPostTripComplianceTitle => 'شهادة الامتثال';

  @override
  String get dvirPostTripDefectButton => 'عيب';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'الإبلاغ عن عيب بدون صورة';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'تحذير: أنت تقوم بالإبلاغ عن عيب في مناطق السلامة ($zones) دون إرفاق صورة. هل أنت متأكد من رغبتك في المتابعة؟';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'الفحص: الحافلة $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'أدخل تفاصيل مشكلة السلامة...';

  @override
  String get dvirPostTripNotesLabel => 'ملاحظات (إلزامية عند وجود عيب) وصورة';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'اختر عيب لإدخال تفاصيل مشكلة السلامة...';

  @override
  String get dvirPostTripOdometerHeader => 'قراءة عداد المسافة الحالية';

  @override
  String get dvirPostTripOdometerInstructions => 'أدخل قراءة المسافة تمامًا كما تظهر على لوحة عدادات الحافلة:';

  @override
  String get dvirPostTripOdometerLabel => 'عداد المسافة (ميل)';

  @override
  String get dvirPostTripOdometerTitle => 'مقياس وقت تشغيل المركبة';

  @override
  String get dvirPostTripOdometerWarning => 'يرجى إدخال قراءة عداد المسافة قبل المتابعة.';

  @override
  String get dvirPostTripPassButton => 'اجتياز';

  @override
  String get dvirPostTripPhotoAttached => 'تم إرفاق الصورة بنجاح.';

  @override
  String get dvirPostTripProgressLabel => 'تقدم الفحص';

  @override
  String get dvirPostTripSignatureCaptured => 'تم التقاط التوقيع.';

  @override
  String get dvirPostTripSignatureCert => 'أقر بأن تقرير قائمة فحص المركبة هذا قد تم إكماله وفقًا لمتطلبات لوائح FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'التحقق من توقيع السائق';

  @override
  String get dvirPostTripSubmitButton => 'إرسال الفحص';

  @override
  String get dvirPostTripSubmitSuccess => 'تم إرسال eDVIR بنجاح.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'المنطقة $current من $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total مناطق';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'أقر بأنني راجعت تقرير العيوب الأخير الذي تم إرساله وتحققت من الإصلاحات (إن وجدت)، وأؤكد أن الحافلة آمنة للتشغيل.';

  @override
  String get dvirPreTripActiveMessage => 'هذه المركبة نشطة ولا توجد بها عيوب مفتوحة. تم التحقق منها وهي آمنة للتشغيل.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'المسار النشط: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'يلزم الانتباه: تم تسجيل عيوب في اليوم السابق';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'رقم الحافلة: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'فحص جاهزية المركبة للتشغيل';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'فشل التوقيع: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'لم يتم تسجيل عيوب سابقة';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'تم الإبلاغ عن أن المركبة سليمة في فحص ما بعد الرحلة السابق.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'لا توجد إصلاحات مطلوبة للتشغيل الآمن.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'المركبة خارج الخدمة بسبب الإصلاحات/الصيانة. يجب معالجة مخاوف السلامة من قبل موظفي الصيانة قبل إرسالها للتشغيل.';

  @override
  String get dvirPreTripOutofServiceButton => 'المركبة خارج الخدمة';

  @override
  String dvirPreTripReason(Object reason) {
    return 'السبب: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (تم الإصلاح)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'الإبلاغ عن عيوب جديدة';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'تم تعطيل الإبلاغ عن عيوب جديدة أثناء الإصلاحات.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'الحالة: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'معالجة مسؤول النقل الفرعي';

  @override
  String get dvirPreTripReturnToHomeButton => 'العودة إلى الصفحة الرئيسية';

  @override
  String get dvirPreTripSignOffTitle => 'التوقيع للموافقة على المتابعة إلى الفحص الخارجي';

  @override
  String get dvirPreTripSignedSuccess => 'تم التحقق والتوقيع بنجاح. تم فتح الفحص قبل الرحلة.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'إرسال التحقق';

  @override
  String get dvirPreTripTitle => 'التحقق قبل الرحلة';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'حالة المركبة: $status';
  }

  @override
  String get dvirSigDrawTitle => 'رسم التوقيع';

  @override
  String get dvirSigPreviewLabel => 'معاينة التوقيع الملتقط:';

  @override
  String get dvirSigRedraw => 'إعادة الرسم';

  @override
  String get dvirSigSave => 'حفظ التوقيع';

  @override
  String get dvirSigTapToDraw => 'اضغط لرسم التوقيع (مطلوب)';

  @override
  String get dvirSigWatermark => 'وقّع بشكل عمودي (من الأسفل إلى الأعلى)';

  @override
  String get forgotPasswordCancel => 'إلغاء';

  @override
  String get forgotPasswordEmailLabel => 'البريد الإلكتروني';

  @override
  String get forgotPasswordInvalidEmail => 'يرجى إدخال بريد إلكتروني صالح';

  @override
  String get forgotPasswordSend => 'إرسال';

  @override
  String get forgotPasswordSuccess => 'إذا كان البريد الإلكتروني مسجلاً، فسيتم إرسال رابط لإعادة تعيين كلمة المرور.';

  @override
  String get genericBack => 'رجوع';

  @override
  String get genericCancel => 'إلغاء';

  @override
  String get genericClear => 'مسح';

  @override
  String get genericClose => 'إغلاق';

  @override
  String get genericConfirm => 'تأكيد';

  @override
  String get genericEdit => 'تعديل';

  @override
  String get genericError => 'حدث خطأ ما';

  @override
  String get genericLoading => 'جارٍ التحميل...';

  @override
  String get genericNext => 'التالي';

  @override
  String get genericOk => 'موافق';

  @override
  String get genericRetry => 'إعادة المحاولة';

  @override
  String get genericSuccess => 'نجاح';

  @override
  String homeBusLabel(Object busId) {
    return 'الحافلة: $busId';
  }

  @override
  String get homeDispatchBlocked => 'تم حظر التشغيل';

  @override
  String get homeDispatchBlockedTitle => 'تم حظر التشغيل';

  @override
  String get homeErrorNoRoutesPreTrip => 'لا توجد مسارات متاحة لإجراء الفحص قبل الرحلة.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'فشل بدء الرحلة على الخادم: $error';
  }

  @override
  String homeHi(Object name) {
    return 'مرحبًا، $name';
  }

  @override
  String get homeLogout => 'تسجيل الخروج';

  @override
  String get homeMenuAppInfo => 'معلومات التطبيق';

  @override
  String get homeMenuDrill => 'التمرين';

  @override
  String get homeMenuDriverDetails => 'تفاصيل السائق';

  @override
  String get homeMenuLanguage => 'اللغة';

  @override
  String get homeMenuPreTrip => 'الفحص قبل الرحلة';

  @override
  String get homeNoRoutes => 'لا توجد مسارات متاحة';

  @override
  String get homeReviewVerifyPreTrip => 'مراجعة والتحقق من الفحص قبل الرحلة';

  @override
  String get homeSearchHint => 'البحث عن المسارات';

  @override
  String get homeStart => 'بدء';

  @override
  String get homeTitle => 'الرئيسية';

  @override
  String get homeVehicleOutOfServiceDefault => 'المركبة خارج الخدمة حاليًا.';

  @override
  String get homeVehicleReady => 'المركبة جاهزة وتم التحقق من سلامتها للتشغيل.';

  @override
  String get languageTitle => 'اللغة';

  @override
  String get loginButton => 'تسجيل الدخول';

  @override
  String get loginEmailOrPhoneLabel => 'البريد الإلكتروني أو رقم الهاتف';

  @override
  String get loginErrorEnterPassword => 'يرجى إدخال كلمة المرور';

  @override
  String get loginErrorEnterUsername => 'يرجى إدخال اسم المستخدم';

  @override
  String get loginErrorFailed => 'فشل تسجيل الدخول. يرجى المحاولة مرة أخرى.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'يرجى إدخال بريد إلكتروني أو رقم هاتف صالح';

  @override
  String get loginForgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get loginPasswordLabel => 'كلمة المرور';

  @override
  String get mapChildrenTooltip => 'الأطفال وأولياء الأمور';

  @override
  String get mapConfirmMessage => 'هل تريد بالفعل إغلاق الرحلة؟';

  @override
  String get mapConfirmTitle => 'تأكيد';

  @override
  String get mapCurrentPosition => 'الموقع الحالي';

  @override
  String get mapNo => 'لا';

  @override
  String get mapReconnectMessage => 'فشل تحديث الموقع بشكل متكرر، يرجى التحقق من اتصالك بالإنترنت.';

  @override
  String get mapReconnectTitle => 'التتبع';

  @override
  String get mapStop => 'إيقاف';

  @override
  String get mapStopping => 'جارٍ الإيقاف...';

  @override
  String get mapStopsTooltip => 'المحطات';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'تم التحديث منذ $seconds ثانية';
  }

  @override
  String get mapWaitingGps => 'في انتظار GPS...';

  @override
  String get mapYes => 'نعم';

  @override
  String get splashDriverApp => 'تطبيق السائق';

  @override
  String get stopsActionUndo => 'تراجع';

  @override
  String get stopsCancelledSuccess => 'تم الإلغاء بنجاح';

  @override
  String get stopsDefaultLabel => 'محطة';

  @override
  String get stopsGenericError => 'حدث خطأ ما. يرجى المحاولة مرة أخرى.';

  @override
  String get stopsStatusComplete => 'مكتمل';

  @override
  String get stopsStatusDone => 'تم';

  @override
  String stopsSubmitCount(Object count) {
    return 'إرسال ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'تم الإرسال بنجاح';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected محدد · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'إنزال';

  @override
  String get stopsTypePick => 'استلام';

  @override
  String stopsUndoCount(Object count) {
    return 'تراجع ($count)';
  }

  @override
  String get stopsUndoTooltip => 'التراجع عن الاستلام/الإنزال';

  @override
  String get tripConfirmCancel => 'إلغاء';

  @override
  String get tripConfirmOk => 'موافق';

  @override
  String get tripConfirmTitle => 'التتبع';

  @override
  String get tripErrorLocationRequired => 'يلزم السماح بالوصول إلى الموقع لبدء الرحلة.';

  @override
  String get homeMenuPostCrashReporting => 'Post-Crash Report';

  @override
  String homeVehicleReason(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: $lat, Lang: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Search Location (e.g. Market St.)';

  @override
  String get crashLocationPickerTitle => 'Select Location on Map';

  @override
  String get crashLocationPickerTooltip => 'Confirm location';

  @override
  String get incidentDashboardDescription => 'Select an action to proceed with incident management or view past reports.';

  @override
  String get incidentDashboardHeadline => 'Post-Crash Incident Reporting';

  @override
  String get incidentDashboardLogNew => 'Log new crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Initiate a new step by step crash report';

  @override
  String get incidentDashboardTitle => 'Post-Crash Incident';

  @override
  String get incidentDashboardViewHistory => 'View History';

  @override
  String get incidentDashboardViewHistorySubtitle => 'View previous crash reports and status';

  @override
  String get incidentDetailsAdminLetter => 'Admin Letter';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Alcohol Test Countdown (2-hour limit)';

  @override
  String get incidentDetailsBranchId => 'Branch ID';

  @override
  String get incidentDetailsBusPlate => 'Bus License Number';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Citation Impact: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citation issued to driver';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordinates: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copied to clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copy to the clipboard';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Date & Time: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE Report';

  @override
  String get incidentDetailsDoeReportTitle => 'State DOE report (optional)';

  @override
  String get incidentDetailsDriverNotes => 'Driver\'s Notes:';

  @override
  String get incidentDetailsDriverUserId => 'Driver user ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT Drug Test Countdown (8-hour limit)';

  @override
  String get incidentDetailsFatalityOccurred => 'Fatality Occurred';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Injuries Requiring Medical Treatment';

  @override
  String get incidentDetailsLawEnforcement => 'Law enforcement agency';

  @override
  String get incidentDetailsLoadFailed => 'Failed to load details.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Location: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Media attachments';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsNo => 'No';

  @override
  String get incidentDetailsNoMediaAttachments => 'No photos or videos attached.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'No students were marked onboard during the incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Generate notification reports and send templated letters to district supervisors or administration.';

  @override
  String get incidentDetailsNotificationsTitle => 'Transmittal Notifications';

  @override
  String get incidentDetailsOfficer => 'Officer\'s Details';

  @override
  String get incidentDetailsPoliceReport => 'Police Report Number';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Pre-populated transmission letter:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Regulatory Basis:';

  @override
  String get incidentDetailsRouteId => 'Route ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'School Admin Notification';

  @override
  String get incidentDetailsStatusPending => 'Pending';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Details: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Injured';

  @override
  String get incidentDetailsStudentNoInjury => 'No Injury';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Severity: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transported to: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Students Onboard ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT post-crash testing required';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get incidentDetailsTitle => 'Incident Details';

  @override
  String get incidentDetailsVehicleTowed => 'Vehicle towed';

  @override
  String get incidentDetailsYes => 'Yes';

  @override
  String get incidentHistoryEmpty => 'No incident logs registered for this vehicle.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Failed to retrieve logs: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Time: $time Bus: $busNumber Testing: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Not required';

  @override
  String get incidentHistoryTestingRequired => 'Required';

  @override
  String get incidentHistoryTitle => 'Post-Crash Incident Registry';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Add Another Photo';

  @override
  String get incidentIntakeBadgeNumberError => 'Required';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Badge number*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Bus number: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capture Incident Scene Photo';

  @override
  String get incidentIntakeCitationSubtitle => 'Was a moving traffic violation citation issued to the school bus driver?';

  @override
  String get incidentIntakeCitationTitle => 'Citation Issued?';

  @override
  String get incidentIntakeDateTimeLabel => 'Crash Date & Time*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT Testing NOT required';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT Testing required';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Driver: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Enter any additional notes regarding the collision...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Driver Incident Notes';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Failed to load route passengers: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Attach Evidence (Photos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Did any fatalities occur as a result of this crash?';

  @override
  String get incidentIntakeFatalityTitle => 'Fatality Occurred?';

  @override
  String get incidentIntakeGpsLabel => 'GPS Coordinates*';

  @override
  String get incidentIntakeHistoryTooltip => 'View history';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Did any person get a physical injury requiring immediate medical treatment away from the scene?';

  @override
  String get incidentIntakeInjuriesTitle => 'Injuries Requiring Medical Treatment?';

  @override
  String get incidentIntakeInjuryNotesError => 'Injury notes are mandatory for injured students';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Injury notes / details (mandatory) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Injury Severity *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Please enter law enforcement agency';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Law enforcement agency (e.g. State Highway Patrol)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Law enforcement and police report';

  @override
  String get incidentIntakeLocationDescError => 'Please enter location description';

  @override
  String get incidentIntakeLocationDescLabel => 'Location Description (e.g. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Medical facility transported to';

  @override
  String get incidentIntakeNoMatchingStudents => 'No matching students.';

  @override
  String get incidentIntakeNoStudentsFound => 'No students found.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'No students on board, please press NEXT to continue.';

  @override
  String get incidentIntakeNoStudentsRoute => 'No students registered for this route.';

  @override
  String get incidentIntakeOfficerNameError => 'Please enter the officer\'s name.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Officer name*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Please enter the police report number';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Police report number *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Route and driver information';

  @override
  String get incidentIntakeSearchInjuredHint => 'Search injured child...';

  @override
  String get incidentIntakeSearchStudentHint => 'Search student...';

  @override
  String get incidentIntakeSelectAll => 'Select all students';

  @override
  String get incidentIntakeSelectOnMap => 'Select on Map';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Minor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderate';

  @override
  String get incidentIntakeSeveritySevere => 'Severe';

  @override
  String get incidentIntakeSeverityTitle => 'Crash Severity Variables';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Submit Report';

  @override
  String get incidentIntakeTitle => 'Post-Crash Incident Intake';

  @override
  String get incidentIntakeTowedSubtitle => 'Did any vehicle receive disabling damage requiring it to be towed from the scene?';

  @override
  String get incidentIntakeTowedTitle => 'Vehicle towed?';

  @override
  String get incidentIntakeWasInjured => 'Was Injured?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Close up';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Driver comments / notes (optional)';

  @override
  String get dvirPreTripNoComments => 'No comments added.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Reason: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Route: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signature successfully captured.';

  @override
  String get dvirPreTripSigMissing => 'Signature is missing.';

  @override
  String get dvirPreTripSignDefectWarning => 'Please sign to verify repair of previous defects.';

  @override
  String get dvirPreTripStepSignOff => 'Sign off';

  @override
  String get dvirPreTripStepSubmit => 'Submit';

  @override
  String get dvirPreTripStepVerify => 'Verify';

  @override
  String get dvirPreTripTapNext => 'Please tap NEXT to proceed.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Vehicle is out of service';

  @override
  String get dvirPreTripVehicleReady => 'Vehicle is ready for service';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Verified Repair Status:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Please verify that all reported defects have been repaired by checking the box next to each defect.';

  @override
  String get dvirPreTripYourComments => 'Your comments:';

  @override
  String get countryPickerNoCountries => 'No countries found';

  @override
  String get countryPickerSearchHint => 'Search by country name, code, or dial code...';

  @override
  String get countryPickerTitle => 'Select country';

  @override
  String get mapDefaultStop => 'Stop';

  @override
  String get mapEndLocation => 'End location';

  @override
  String get mapStartLocation => 'Start location';

  @override
  String get stopsNoChangesToUndo => 'No changes available to undo.';

  @override
  String get stopsNoStopsAvailable => 'No stops available.';

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
