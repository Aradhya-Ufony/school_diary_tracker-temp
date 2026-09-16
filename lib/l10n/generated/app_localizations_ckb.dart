import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Central Kurdish (`ckb`).
class AppLocalizationsCkb extends AppLocalizations {
  AppLocalizationsCkb([String locale = 'ckb']) : super(locale);

  @override
  String get appInfoBuild => 'ژمارەی دروستکردن';

  @override
  String get appInfoDevice => 'مۆدێلی ئامێر';

  @override
  String get appInfoOS => 'وەشانی سیستەمی کارپێکردن';

  @override
  String get appInfoPackage => 'پاکێج';

  @override
  String get appInfoTitle => 'زانیاری ئەپ';

  @override
  String get appInfoVersion => 'وەشانی ئەپ';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'سەرپەرشتیاران';

  @override
  String childrenGuardiansFor(Object name) {
    return 'سەرپەرشتیارانی ڕێگەپێدراو بۆ $name';
  }

  @override
  String get childrenNoGuardians => 'هیچ سەرپەرشتیارێکی ڕێگەپێدراو بۆ ئەم منداڵە تۆمار نەکراوە.';

  @override
  String get childrenStatusDropped => 'دابەزێنرا';

  @override
  String get childrenStatusPending => 'چاوەڕوانکراو';

  @override
  String get childrenStatusPicked => 'هەڵگیرایەوە';

  @override
  String childrenTitle(Object routeName) {
    return 'منداڵان — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ئامادەنەبوو / لە پاسدا نییە ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'پاس: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'چۆڵکرا';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'چۆڵکرا: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'هیچ خوێندکارێکی ئامادەنەبوو نییە.';

  @override
  String get drillChecklistNoStudentsOnBus => 'هیچ خوێندکارێک لە پاسدا دیاری نەکراوە.';

  @override
  String get drillChecklistNotOnBus => 'لە پاسدا نییە';

  @override
  String get drillChecklistOnBusNotEvacuated => 'لە پاسدایە — چۆڵ نەکراوە';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'لە پاسدایە ($count)';
  }

  @override
  String get drillChecklistProceed => 'بەردەوام بە بۆ تۆمارکردنی بەڵگە';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'هێڵ (ڕاستەوخۆ): $routeName';
  }

  @override
  String get drillChecklistTitle => 'لیستی پشکنینی ڕاهێنانی چۆڵکردن';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count خوێندکاری نەژمێردراو ماوە!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'دڵنیایت کە دەتەوێت ئەم تۆماری ڕاهێنانە بنێریت؟ ئەم کردارە ناتوانرێت هەڵبوەشێنرێتەوە.';

  @override
  String get drillEvidenceConfirmSubmission => 'پشتڕاستکردنەوەی ناردنی ڕاهێنان';

  @override
  String get drillEvidenceDriverNotesHint => 'جێبەجێکردنی ڕاهێنانەکە، ڕەفتاری خوێندکاران، ڕێڕەوەکانی دەرچوونی بەکارهاتوو، و هەر حاڵەتێکی نائاسایی تێبینیکراو وەسف بکە...';

  @override
  String get drillEvidenceDriverNotesLabel => 'تێبینیەکانی شۆفێر (لانی کەم 10 پیت):';

  @override
  String get drillEvidenceFailed => 'ناردن سەرکەوتوو نەبوو';

  @override
  String get drillEvidenceMandatoryWarning => 'لانی کەم 1 وێنە یان ڤیدیۆی بەڵگەدار پێویستە بۆ ناردنی ڕاهێنان.';

  @override
  String get drillEvidenceRecordVideo => 'ڤیدیۆ تۆمار بکە';

  @override
  String get drillEvidenceRetrySubmission => 'دووبارە ناردنەوە';

  @override
  String get drillEvidenceReturnToDashboard => 'گەڕانەوە بۆ لاپەڕەی سەرەکی';

  @override
  String get drillEvidenceSubmitButton => 'تۆماری ڕاهێنان بنێرە';

  @override
  String get drillEvidenceSubmitting => 'تۆماری ڕاهێنان دەنێردرێت...';

  @override
  String get drillEvidenceSuccess => 'ناردن سەرکەوتوو بوو!';

  @override
  String get drillEvidenceSuccessMessage => 'تۆماری ڕاهێنانی چۆڵکردن بە سەرکەوتوویی بارکرا و چاوەڕوانی پەسەندکردنە.';

  @override
  String get drillEvidenceTakePhoto => 'وێنە بگرە';

  @override
  String get drillEvidenceTitle => 'بەڵگەی ڕاهێنانی ناچاری';

  @override
  String get drillEvidenceUploading => 'بارکردنی بەڵگە و داتای لیستی پشکنین';

  @override
  String drillRosterBus(Object busNumber) {
    return 'پاس: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'ڕاهێنان: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'ئامادەبوون دیاری بکە';

  @override
  String get drillRosterNoStudents => 'هیچ خوێندکارێک لەسەر ئەم هێڵە تۆمار نەکراوە.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'ئامادە: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'بەردەوام بە بۆ لیستی پشکنینی ڕاهێنان';

  @override
  String drillRosterRoute(Object routeName) {
    return 'هێڵ: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'کورسی: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'هەمووی دیاری بکە';

  @override
  String get drillSummaryAdminNotesTitle => 'تێبینیەکانی بەڕێوەبەر';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'لە کاتژمێر: $date پەسەندکرا';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'لە کاتژمێر پەسەندکرا';

  @override
  String get drillSummaryBackToDrills => 'گەڕانەوە بۆ ڕاهێنانەکان';

  @override
  String get drillSummaryBusNumber => 'ژمارەی پاس';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'ئەنجامدرا لەلایەن: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'وردەکارییەکانی ڕاهێنان';

  @override
  String get drillSummaryDriverNotesTitle => 'تێبینیەکانی شۆفێر';

  @override
  String get drillSummaryDuration => 'ماوە';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes خولەک $seconds چرکە';
  }

  @override
  String get drillSummaryEndTime => 'کاتی کۆتایی';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'چۆڵکرا: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'لە کاتژمێر $time چۆڵکرا';
  }

  @override
  String get drillSummaryEvidenceTitle => 'هاوپێچەکانی میدیای بەڵگە';

  @override
  String get drillSummaryGps => 'پۆتانەکانی GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'پانی: $lat, درێژی: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'بارکردنی پوختەی ڕاهێنان بۆ ID #$id سەرکەوتوو نەبوو.\n$error';
  }

  @override
  String get drillSummaryNoData => 'هیچ داتایەکی ڕاهێنان نەدۆزرایەوە.';

  @override
  String get drillSummaryNotOnBus => 'لە پاسدا نییە';

  @override
  String get drillSummaryOnBusNotEvacuated => 'لە پاسدایە - چۆڵ نەکراوە';

  @override
  String get drillSummaryPhotoEvidence => 'بەڵگەی وێنەیی';

  @override
  String get drillSummaryRouteId => 'IDی هێڵ';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'کورسی: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'کاتی دەستپێک';

  @override
  String get drillSummaryStatus => 'دۆخ';

  @override
  String get drillSummaryStudentLogTitle => 'تۆماری چۆڵکردنی خوێندکار';

  @override
  String drillSummaryTitle(Object id) {
    return 'پوختەی ڕاهێنان (#$id)';
  }

  @override
  String get drillSummaryType => 'جۆری ڕاهێنان';

  @override
  String get drillSummaryVideoEvidence => 'بەڵگەی ڤیدیۆیی';

  @override
  String drillTypeBus(Object busNumber) {
    return 'پاس $busNumber';
  }

  @override
  String get drillTypeClassification => 'پۆلێنکردنی ڕاهێنانەکە هەڵبژێرە:';

  @override
  String get drillTypeCustomHint => 'جۆری ڕاهێنانی چۆڵکردنی تایبەت بنووسە...';

  @override
  String get drillTypeInvalidState => 'باری نادروستی ئۆتۆمبێل یان هێڵ.';

  @override
  String get drillTypeNameBusFire => 'ئاگری پاس';

  @override
  String get drillTypeNameDangerZone => 'ناوچەی مەترسیدار';

  @override
  String get drillTypeNameDriverIncapacitation => 'لەکارکەوتنی شۆفێر';

  @override
  String get drillTypeNameEquipmentOrientation => 'ئاراستەی ئامێر';

  @override
  String get drillTypeNameFrontDoor => 'دەرگای پێشەوە';

  @override
  String get drillTypeNameOthers => 'ئەوانی تر';

  @override
  String get drillTypeNameRearDoor => 'دەرگای دواوە';

  @override
  String get drillTypeNameSideOrRoof => 'لا یان سەربان';

  @override
  String get drillTypeNameSplit => 'دابەشکردن';

  @override
  String get drillTypeNoRouteSelected => 'هیچ هێڵێک دیاری نەکراوە';

  @override
  String get drillTypePreparation => 'ئامادەکاری ڕاهێنان';

  @override
  String get drillTypeProceed => 'بەردەوام بە بۆ لیستی خوێندکاران';

  @override
  String drillTypeRoute(Object routeName) {
    return 'هێڵ: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'هێڵ هەڵبژێرە:';

  @override
  String get drillTypeSpecifyCustom => 'وەسفی جۆری ڕاهێنان دیاری بکە:';

  @override
  String get drillTypeTitle => 'جۆری ڕاهێنان هەڵبژێرە';

  @override
  String get drillTypeWarning => 'دڵنیا بە لەوەی ئۆتۆمبێلەکە بە سەلامەتی وەستاوە پێش دەستپێکردنی جێبەجێکردن.';

  @override
  String get drillsAssignedVehicle => 'ئۆتۆمبێلی تەرخانکراو';

  @override
  String get drillsChecking => 'پشکنین دەکرێت...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'ڕاهێنان #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'هیچ پاسێک تەرخان نەکراوە';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'هیچ ڕاهێنانێک بۆ پاسی $busNumber تۆمار نەکراوە';
  }

  @override
  String get drillsNoRoutesAvailable => 'هیچ هێڵێک بەردەست نییە بۆ دەستپێکردنی ڕاهێنان.';

  @override
  String get drillsShowSummary => 'پوختە نیشان بدە';

  @override
  String get drillsStartDrill => 'دەستپێکردنی ڕاهێنان';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'ئەنجامدرا: $date\nدۆخ: $status';
  }

  @override
  String get drillsTitle => 'ڕاهێنانەکانی چۆڵکردن';

  @override
  String get drillsVehicleOutOfService => 'ئۆتۆمبێل لە خزمەتگوزاریدا نییە';

  @override
  String get drillsVehicleOutOfServiceMessage => 'ئەم ئۆتۆمبێلە لە ئێستادا لە خزمەتگوزاریدا نییە و ناتوانرێت بۆ ڕاهێنان بەکاربهێنرێت.';

  @override
  String get driverDetailsCdlClassLabel => 'پۆلی CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'مۆڵەتی شۆفێری';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ناوی: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'مۆڵەت: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'سەرنشین';

  @override
  String get driverDetailsEndorsementSchoolBus => 'پاسی قوتابخانە';

  @override
  String get driverDetailsEndorsementsTitle => 'پشتڕاستکراوەکان';

  @override
  String get driverDetailsExpiryDateLabel => 'بەرواری بەسەرچوون';

  @override
  String get driverDetailsHolderSignature => 'واژۆی خاوەن';

  @override
  String driverDetailsId(Object driverId) {
    return 'ناسنامە: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'بەرواری دەرچوون';

  @override
  String get driverDetailsLicenseDocTitle => 'بەڵگەنامەی مۆڵەت';

  @override
  String get driverDetailsLicenseNoLabel => 'ژمارەی مۆڵەت';

  @override
  String get driverDetailsLicenseTitle => 'وردەکارییەکانی مۆڵەت';

  @override
  String get driverDetailsLicenseTypeLabel => 'جۆری مۆڵەت';

  @override
  String get driverDetailsOfficialSeal => 'مۆری فەرمی';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'پۆل: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'بەرواری لەدایکبوون: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'پشتڕاستکردنەوە: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'بەسەرچوون: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'ژ.مۆڵەت: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'ن.تەواو: $name';
  }

  @override
  String get driverDetailsTapToView => 'دەست لێبدە بۆ بینینی بەڵگەنامەی مۆڵەتی شۆفێری';

  @override
  String get driverDetailsTitle => 'وردەکارییەکانی شۆفێر';

  @override
  String get dvirCategoryBusSafetySystems => 'سیستەمەکانی سەلامەتی تایبەت بە پاس';

  @override
  String get dvirCategoryCouplingDevices => 'ئامێرەکانی بەستنەوە';

  @override
  String get dvirCategoryEmergencyEquipment => 'کەرەستەی فریاگوزاری';

  @override
  String get dvirCategoryHorn => 'هۆڕن';

  @override
  String get dvirCategoryLightingReflectors => 'ئامێرەکانی ڕووناککردنەوە و ڕەنگدانەوە';

  @override
  String get dvirCategoryMirrors => 'ئاوێنەکانی بینینی دواوە';

  @override
  String get dvirCategoryParkingBrake => 'برێکی وەستان';

  @override
  String get dvirCategoryPassengerSeating => 'کورسی و قایشی سەلامەتی سەرنشینان';

  @override
  String get dvirCategoryServiceBrakes => 'برێکەکانی خزمەتگوزاری';

  @override
  String get dvirCategorySteeringMechanism => 'میکانیزمی فەرمان';

  @override
  String get dvirCategoryTires => 'تایەکان';

  @override
  String get dvirCategoryWheelsRims => 'تایە و ڕیمەکان';

  @override
  String get dvirCategoryWipers => 'وایپەرەکانی جام';

  @override
  String get dvirPostTripCapturePhoto => 'وێنەی کێشە بگرە';

  @override
  String get dvirPostTripComplianceTitle => 'بڕوانامەی پابەندبوون';

  @override
  String get dvirPostTripDefectButton => 'کێشە';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'ڕاپۆرتکردنی کێشە بەبێ وێنە';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'ئاگاداری: تۆ کێشەیەک لەسەر ناوچەکانی سەلامەتی ($zones) ڕاپۆرت دەکەیت بەبێ هاوپێچکردنی وێنەیەک. دڵنیایت کە دەتەوێت هەر بینێریت؟';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'پشکنین: پاس $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'وردەکارییەکانی نیگەرانی سەلامەتی بنووسە...';

  @override
  String get dvirPostTripNotesLabel => 'تێبینیەکان (ناچارییە لە کاتی کێشەدا) و وێنە';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'کێشە هەڵبژێرە بۆ نووسینی وردەکارییەکانی نیگەرانی سەلامەتی...';

  @override
  String get dvirPostTripOdometerHeader => 'خوێندنەوەی ئێستای ئۆدۆمیتەر';

  @override
  String get dvirPostTripOdometerInstructions => 'خوێندنەوەی مایلیجەکە بە تەواوی بنووسە وەک ئەوەی لەسەر پانێڵی ئامێری پاسەکەدا دیارە:';

  @override
  String get dvirPostTripOdometerLabel => 'ئۆدۆمیتەر (مایل)';

  @override
  String get dvirPostTripOdometerTitle => 'پێوەرەکانی کاتی کارکردنی ئۆتۆمبێل';

  @override
  String get dvirPostTripOdometerWarning => 'تکایە خوێندنەوەی ئۆدۆمیتەر بنووسە پێش بەردەوامبوون.';

  @override
  String get dvirPostTripPassButton => 'تێپەڕاندن';

  @override
  String get dvirPostTripPhotoAttached => 'وێنە بە سەرکەوتوویی هاوپێچ کرا.';

  @override
  String get dvirPostTripProgressLabel => 'پێشکەوتنی پشکنین';

  @override
  String get dvirPostTripSignatureCaptured => 'واژۆ تۆمارکرا.';

  @override
  String get dvirPostTripSignatureCert => 'من پشتڕاست دەکەمەوە کە ئەم ڕاپۆرتی لیستی پشکنینی ئۆتۆمبێل بەپێی ڕێساکانی FMCSA 396.11 تەواو کراوە.';

  @override
  String get dvirPostTripSignatureTitle => 'پشتڕاستکردنەوەی واژۆی شۆفێر';

  @override
  String get dvirPostTripSubmitButton => 'پشکنین بنێرە';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR بە سەرکەوتوویی نێردرا.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ناوچەی $current لە $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ناوچە';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'من دان بەوەدا دەنێم کە ڕاپۆرتی کێشەی کۆتایی نێردراوم پێداچوونەوەی بۆ کردووە و چاککردنەوەکانم (ئەگەر هەبوون) پشتڕاست کردووەتەوە و ڕایدەگەیەنم کە پاسەکە بۆ کارکردن سەلامەتە.';

  @override
  String get dvirPreTripActiveMessage => 'ئەم ئۆتۆمبێلە چالاکە و هیچ کێشەیەکی کراوەی نییە. پشتڕاستکراوە و بۆ کارکردن سەلامەتە.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'هێڵی چالاک: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'سەرنج پێویستە: کێشەکانی ڕۆژی پێشوو تۆمارکراون';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'ژمارەی پاس: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'پشکنینی ناردنی ئۆتۆمبێل';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'واژۆکردن سەرکەوتوو نەبوو: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'هیچ کێشەیەکی پێشوو تۆمار نەکراوە';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'ئەم ئۆتۆمبێلە لە پشکنینی گۆڕانکاری دوای گەشتی پێشوودا بە پاک ڕاپۆرت کراوە.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'هیچ چاککردنەوەیەک پێویست نییە بۆ کارکردنی سەلامەت.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'ئەم ئۆتۆمبێلە لە خزمەتگوزاریدا نییە بۆ چاککردنەوە/پاراستن. نیگەرانییەکانی سەلامەتی دەبێت لەلایەن کارمەندانی وۆرکشۆپەوە چارەسەر بکرێن پێش ناردن.';

  @override
  String get dvirPreTripOutofServiceButton => 'ئۆتۆمبێل لە خزمەتگوزاریدا نییە';

  @override
  String dvirPreTripReason(Object reason) {
    return 'هۆکار: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (چاککرایەوە)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ڕاپۆرتکردنی کێشەی نوێ';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'ڕاپۆرتکردنی کێشەی نوێ لە کاتی چاککردنەوەدا ناچالاکە.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'دۆخ: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'بڕیاری بەڕێوەبەری لاوەکی گواستنەوە';

  @override
  String get dvirPreTripReturnToHomeButton => 'گەڕانەوە بۆ ماڵەوە';

  @override
  String get dvirPreTripSignOffTitle => 'واژۆکردن بۆ بەردەوامبوون بۆ پشکنینی دەوروبەر';

  @override
  String get dvirPreTripSignedSuccess => 'پشتڕاستکردنەوە بە سەرکەوتوویی واژۆ کرا. پێش گەشت کرایەوە.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'پشتڕاستکردنەوە بنێرە';

  @override
  String get dvirPreTripTitle => 'پشتڕاستکردنەوەی پێش گەشت';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'دۆخی ئۆتۆمبێل: $status';
  }

  @override
  String get dvirSigDrawTitle => 'واژۆ بکێشە';

  @override
  String get dvirSigPreviewLabel => 'پێشبینینی واژۆی تۆمارکراو:';

  @override
  String get dvirSigRedraw => 'دووبارە کێشانەوە';

  @override
  String get dvirSigSave => 'واژۆ پاشەکەوت بکە';

  @override
  String get dvirSigTapToDraw => 'دەست لێبدە بۆ کێشانی واژۆ (پێویستە)';

  @override
  String get dvirSigWatermark => 'بە شێوەی ستوونی واژۆ بکە (لە خوارەوە بۆ سەرەوە)';

  @override
  String get forgotPasswordCancel => 'هەڵوەشاندنەوە';

  @override
  String get forgotPasswordEmailLabel => 'ئیمەیڵ';

  @override
  String get forgotPasswordInvalidEmail => 'تکایە ئیمەیڵێکی دروست بنووسە';

  @override
  String get forgotPasswordSend => 'ناردن';

  @override
  String get forgotPasswordSuccess => 'ئەگەر ئەو ئیمەیڵە هەبێت، لینکی دووبارە ڕێکخستنەوە نێردراوە.';

  @override
  String get genericBack => 'گەڕانەوە';

  @override
  String get genericCancel => 'هەڵوەشاندنەوە';

  @override
  String get genericClear => 'پاککردنەوە';

  @override
  String get genericClose => 'داخستن';

  @override
  String get genericConfirm => 'پشتڕاستکردنەوە';

  @override
  String get genericEdit => 'دەستکاریکردن';

  @override
  String get genericError => 'شتێک هەڵە بوو';

  @override
  String get genericLoading => 'بارکردن...';

  @override
  String get genericNext => 'داهاتوو';

  @override
  String get genericOk => 'باشە';

  @override
  String get genericRetry => 'دووبارە هەوڵ بدەوە';

  @override
  String get genericSuccess => 'سەرکەوتن';

  @override
  String homeBusLabel(Object busId) {
    return 'پاس: $busId';
  }

  @override
  String get homeDispatchBlocked => 'ناردن بلۆک کراوە';

  @override
  String get homeDispatchBlockedTitle => 'ناردن بلۆک کراوە';

  @override
  String get homeErrorNoRoutesPreTrip => 'هیچ هێڵێک بەردەست نییە بۆ ئەنجامدانی پێش گەشت.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'دەستپێکردنی گەشت لەسەر سێرڤەر سەرکەوتوو نەبوو: $error';
  }

  @override
  String homeHi(Object name) {
    return 'سڵاو، $name';
  }

  @override
  String get homeLogout => 'چوونەدەرەوە';

  @override
  String get homeMenuAppInfo => 'زانیاری ئەپ';

  @override
  String get homeMenuDrill => 'ڕاهێنان';

  @override
  String get homeMenuDriverDetails => 'وردەکارییەکانی شۆفێر';

  @override
  String get homeMenuLanguage => 'زمان';

  @override
  String get homeMenuPreTrip => 'پشکنینی پێش گەشت';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'هیچ هێڵێک بەردەست نییە';

  @override
  String get homeReviewVerifyPreTrip => 'پێداچوونەوە و پشتڕاستکردنەوەی پێش گەشت';

  @override
  String get homeSearchHint => 'گەڕان بەدوای هێڵەکاندا';

  @override
  String get homeStart => 'دەستپێکردن';

  @override
  String get homeTitle => 'ماڵەوە';

  @override
  String get homeVehicleOutOfServiceDefault => 'ئۆتۆمبێل لە ئێستادا لە خزمەتگوزاریدا نییە.';

  @override
  String get homeVehicleReady => 'ئۆتۆمبێل ئامادەیە و پشتڕاستکراوە بۆ کارکردنی سەلامەت.';

  @override
  String get languageTitle => 'زمان';

  @override
  String get loginButton => 'چوونەژوورەوە';

  @override
  String get loginEmailOrPhoneLabel => 'ئیمەیڵ یان ژمارەی مۆبایل';

  @override
  String get loginErrorEnterPassword => 'تکایە وشەی نهێنی بنووسە';

  @override
  String get loginErrorEnterUsername => 'تکایە ناوی بەکارهێنەر بنووسە';

  @override
  String get loginErrorFailed => 'چوونەژوورەوە سەرکەوتوو نەبوو. تکایە دووبارە هەوڵ بدەوە.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'تکایە ئیمەیڵ یان ژمارەی مۆبایلێکی دروست بنووسە';

  @override
  String get loginForgotPassword => 'وشەی نهێنی بیرچووە؟';

  @override
  String get loginPasswordLabel => 'وشەی نهێنی';

  @override
  String get mapChildrenTooltip => 'منداڵان و سەرپەرشتیاران';

  @override
  String get mapConfirmMessage => 'ئایا بەڕاستی دەتەوێت گەشتەکە دابخەیت؟';

  @override
  String get mapConfirmTitle => 'پشتڕاستکردنەوە';

  @override
  String get mapCurrentPosition => 'شوێنی ئێستا';

  @override
  String get mapNo => 'نەخێر';

  @override
  String get mapReconnectMessage => 'نوێکردنەوەی شوێن بە بەردەوامی سەرکەوتوو نابێت، تکایە ئینتەرنێتەکەت بپشکنە.';

  @override
  String get mapReconnectTitle => 'شوێنپێهەڵگر';

  @override
  String get mapStop => 'ڕاگرتن';

  @override
  String get mapStopping => 'ڕادەگیرێت...';

  @override
  String get mapStopsTooltip => 'وێستگەکان';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds چرکە لەمەوبەر نوێکرایەوە';
  }

  @override
  String get mapWaitingGps => 'چاوەڕوانی GPS...';

  @override
  String get mapYes => 'بەڵێ';

  @override
  String get splashDriverApp => 'ئەپی شۆفێر';

  @override
  String get stopsActionUndo => 'پاشگەزبوونەوە';

  @override
  String get stopsCancelledSuccess => 'بە سەرکەوتوویی هەڵوەشێنرایەوە';

  @override
  String get stopsDefaultLabel => 'وێستگە';

  @override
  String get stopsGenericError => 'شتێک هەڵە بوو. تکایە دووبارە هەوڵ بدەوە.';

  @override
  String get stopsStatusComplete => 'تەواو';

  @override
  String get stopsStatusDone => 'ئەنجامدرا';

  @override
  String stopsSubmitCount(Object count) {
    return 'ناردن ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'بە سەرکەوتوویی نێردرا';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected هەڵبژێردرا · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'دابەزاندن';

  @override
  String get stopsTypePick => 'هەڵگرتنەوە';

  @override
  String stopsUndoCount(Object count) {
    return 'پاشگەزبوونەوە ($count)';
  }

  @override
  String get stopsUndoTooltip => 'پاشگەزبوونەوە لە هەڵگرتنەوە/دابەزاندن';

  @override
  String get tripConfirmCancel => 'هەڵوەشاندنەوە';

  @override
  String get tripConfirmOk => 'باشە';

  @override
  String get tripConfirmTitle => 'شوێنپێهەڵگر';

  @override
  String get tripErrorLocationRequired => 'مۆڵەتی شوێن پێویستە بۆ دەستپێکردنی گەشتێک.';

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
