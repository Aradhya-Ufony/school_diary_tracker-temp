import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appInfoBuild => 'বিল্ড নম্বর';

  @override
  String get appInfoDevice => 'ডিভাইস মডেল';

  @override
  String get appInfoOS => 'ওএস সংস্করণ';

  @override
  String get appInfoPackage => 'প্যাকেজ';

  @override
  String get appInfoTitle => 'অ্যাপ তথ্য';

  @override
  String get appInfoVersion => 'অ্যাপ সংস্করণ';

  @override
  String get appTitleSchoolDiary => 'এসডি ট্র্যাকার';

  @override
  String get childrenActionGuardians => 'অভিভাবকগণ';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name এর জন্য অনুমোদিত অভিভাবকগণ';
  }

  @override
  String get childrenNoGuardians => 'এই শিশুর জন্য কোনো অনুমোদিত অভিভাবক ফাইল করা নেই।';

  @override
  String get childrenStatusDropped => 'ছেড়ে দেওয়া হয়েছে';

  @override
  String get childrenStatusPending => 'মুলতবি';

  @override
  String get childrenStatusPicked => 'নেওয়া হয়েছে';

  @override
  String childrenTitle(Object routeName) {
    return 'শিশু — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'অনুপস্থিত / বাসে নেই ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'বাস: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'সরানো হয়েছে';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'সরানো হয়েছে: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'কোনো অনুপস্থিত ছাত্র নেই।';

  @override
  String get drillChecklistNoStudentsOnBus => 'বাসে কোনো ছাত্র চিহ্নিত করা হয়নি।';

  @override
  String get drillChecklistNotOnBus => 'বাসে নেই';

  @override
  String get drillChecklistOnBusNotEvacuated => 'বাসে আছে — সরানো হয়নি';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'বাসে আছে ($count)';
  }

  @override
  String get drillChecklistProceed => 'প্রমাণ সংগ্রহে এগিয়ে যান';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'রুট (লাইভ): $routeName';
  }

  @override
  String get drillChecklistTitle => 'উচ্ছেদ মহড়া চেকলিস্ট';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count জন হিসাববিহীন ছাত্র অবশিষ্ট!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'আপনি কি এই মহড়া লগ জমা দিতে নিশ্চিত? এই কাজটি পূর্বাবস্থায় ফেরানো যাবে না।';

  @override
  String get drillEvidenceConfirmSubmission => 'মহড়া জমা নিশ্চিত করুন';

  @override
  String get drillEvidenceDriverNotesHint => 'মহড়া সম্পাদন, ছাত্র আচরণ, ব্যবহৃত প্রস্থান পথ এবং পর্যবেক্ষণ করা যেকোনো ব্যতিক্রম বর্ণনা করুন...';

  @override
  String get drillEvidenceDriverNotesLabel => 'ড্রাইভারের নোট (সর্বনিম্ন ১০ অক্ষর):';

  @override
  String get drillEvidenceFailed => 'জমা দিতে ব্যর্থ';

  @override
  String get drillEvidenceMandatoryWarning => 'মহড়া জমা দেওয়ার জন্য কমপক্ষে ১টি ছবি বা ভিডিও প্রমাণ বাধ্যতামূলক।';

  @override
  String get drillEvidenceRecordVideo => 'ভিডিও রেকর্ড করুন';

  @override
  String get drillEvidenceRetrySubmission => 'পুনরায় জমা দিন';

  @override
  String get drillEvidenceReturnToDashboard => 'ড্যাশবোর্ডে ফিরে যান';

  @override
  String get drillEvidenceSubmitButton => 'মহড়া লগ জমা দিন';

  @override
  String get drillEvidenceSubmitting => 'মহড়া লগ জমা দেওয়া হচ্ছে...';

  @override
  String get drillEvidenceSuccess => 'জমা সফল!';

  @override
  String get drillEvidenceSuccessMessage => 'উচ্ছেদ মহড়া লগ সফলভাবে আপলোড করা হয়েছে এবং অনুমোদনের অপেক্ষায় রয়েছে।';

  @override
  String get drillEvidenceTakePhoto => 'ছবি তুলুন';

  @override
  String get drillEvidenceTitle => 'বাধ্যতামূলক মহড়া প্রমাণ';

  @override
  String get drillEvidenceUploading => 'প্রমাণ এবং চেকলিস্ট ডেটা আপলোড করা হচ্ছে';

  @override
  String drillRosterBus(Object busNumber) {
    return 'বাস: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'মহড়া: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'উপস্থিতি চিহ্নিত করুন';

  @override
  String get drillRosterNoStudents => 'এই রুটে কোনো ছাত্র নিবন্ধিত নেই।';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'উপস্থিত: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'মহড়া চেকলিস্টে এগিয়ে যান';

  @override
  String drillRosterRoute(Object routeName) {
    return 'রুট: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'আসন: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'সব নির্বাচন করুন';

  @override
  String get drillSummaryAdminNotesTitle => 'প্রশাসকের নোট';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'অনুমোদিত হয়েছে: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'অনুমোদিত হয়েছে';

  @override
  String get drillSummaryBackToDrills => 'মহড়ায় ফিরে যান';

  @override
  String get drillSummaryBusNumber => 'বাস নম্বর';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'পরিচালনা করেছেন: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'মহড়ার বিবরণ';

  @override
  String get drillSummaryDriverNotesTitle => 'ড্রাইভারের নোট';

  @override
  String get drillSummaryDuration => 'সময়কাল';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes মিনিট $seconds সেকেন্ড';
  }

  @override
  String get drillSummaryEndTime => 'শেষ সময়';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'সরানো হয়েছে: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return '$time এ সরানো হয়েছে';
  }

  @override
  String get drillSummaryEvidenceTitle => 'প্রমাণ মিডিয়া সংযুক্তি';

  @override
  String get drillSummaryGps => 'জিপিএস স্থানাঙ্ক';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'অক্ষাংশ: $lat, দ্রাঘিমাংশ: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'আইডি #$id এর জন্য মহড়ার সারাংশ লোড করতে ব্যর্থ হয়েছে।\n$error';
  }

  @override
  String get drillSummaryNoData => 'কোনো মহড়ার ডেটা পাওয়া যায়নি।';

  @override
  String get drillSummaryNotOnBus => 'বাসে নেই';

  @override
  String get drillSummaryOnBusNotEvacuated => 'বাসে আছে - সরানো হয়নি';

  @override
  String get drillSummaryPhotoEvidence => 'ছবি প্রমাণ';

  @override
  String get drillSummaryRouteId => 'রুট আইডি';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'আসন: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'শুরুর সময়';

  @override
  String get drillSummaryStatus => 'স্থিতি';

  @override
  String get drillSummaryStudentLogTitle => 'ছাত্র উচ্ছেদ লগ';

  @override
  String drillSummaryTitle(Object id) {
    return 'মহড়ার সারাংশ (#$id)';
  }

  @override
  String get drillSummaryType => 'মহড়ার প্রকার';

  @override
  String get drillSummaryVideoEvidence => 'ভিডিও প্রমাণ';

  @override
  String drillTypeBus(Object busNumber) {
    return 'বাস $busNumber';
  }

  @override
  String get drillTypeClassification => 'মহড়ার শ্রেণীবিভাগ নির্বাচন করুন:';

  @override
  String get drillTypeCustomHint => 'কাস্টম উচ্ছেদ মহড়ার প্রকার লিখুন...';

  @override
  String get drillTypeInvalidState => 'অবৈধ যানবাহন বা রুটের অবস্থা।';

  @override
  String get drillTypeNameBusFire => 'বাসে আগুন';

  @override
  String get drillTypeNameDangerZone => 'বিপজ্জনক এলাকা';

  @override
  String get drillTypeNameDriverIncapacitation => 'ড্রাইভারের অক্ষমতা';

  @override
  String get drillTypeNameEquipmentOrientation => 'সরঞ্জাম অভিযোজন';

  @override
  String get drillTypeNameFrontDoor => 'সামনের দরজা';

  @override
  String get drillTypeNameOthers => 'অন্যান্য';

  @override
  String get drillTypeNameRearDoor => 'পেছনের দরজা';

  @override
  String get drillTypeNameSideOrRoof => 'পাশ বা ছাদ';

  @override
  String get drillTypeNameSplit => 'বিভক্ত';

  @override
  String get drillTypeNoRouteSelected => 'কোনো রুট নির্বাচন করা হয়নি';

  @override
  String get drillTypePreparation => 'মহড়ার প্রস্তুতি';

  @override
  String get drillTypeProceed => 'ছাত্র তালিকায় এগিয়ে যান';

  @override
  String drillTypeRoute(Object routeName) {
    return 'রুট: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'রুট নির্বাচন করুন:';

  @override
  String get drillTypeSpecifyCustom => 'মহড়ার প্রকারের বিবরণ উল্লেখ করুন:';

  @override
  String get drillTypeTitle => 'মহড়ার প্রকার নির্বাচন করুন';

  @override
  String get drillTypeWarning => 'মহড়া শুরু করার আগে গাড়ি নিরাপদে পার্ক করা নিশ্চিত করুন।';

  @override
  String get drillsAssignedVehicle => 'নির্ধারিত যানবাহন';

  @override
  String get drillsChecking => 'পরীক্ষা করা হচ্ছে...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'মহড়া #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'কোনো বাস নির্ধারিত নেই';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'বাস $busNumber এর জন্য কোনো মহড়া রেকর্ড করা হয়নি';
  }

  @override
  String get drillsNoRoutesAvailable => 'মহড়া শুরু করার জন্য কোনো রুট উপলব্ধ নেই।';

  @override
  String get drillsShowSummary => 'সারাংশ দেখান';

  @override
  String get drillsStartDrill => 'মহড়া শুরু করুন';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'পরিচালিত: $date\nস্থিতি: $status';
  }

  @override
  String get drillsTitle => 'উচ্ছেদ মহড়া';

  @override
  String get drillsVehicleOutOfService => 'যানবাহন পরিষেবার বাইরে';

  @override
  String get drillsVehicleOutOfServiceMessage => 'এই যানবাহনটি বর্তমানে পরিষেবার বাইরে রয়েছে এবং মহড়ার জন্য ব্যবহার করা যাবে না।';

  @override
  String get driverDetailsCdlClassLabel => 'সিডিএল শ্রেণী';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ড্রাইভিং লাইসেন্স';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'নাম: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'লাইসেন্স: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'যাত্রী';

  @override
  String get driverDetailsEndorsementSchoolBus => 'স্কুল বাস';

  @override
  String get driverDetailsEndorsementsTitle => 'ধারণকৃত অনুমোদন';

  @override
  String get driverDetailsExpiryDateLabel => 'মেয়াদ উত্তীর্ণের তারিখ';

  @override
  String get driverDetailsHolderSignature => 'ধারকের স্বাক্ষর';

  @override
  String driverDetailsId(Object driverId) {
    return 'আইডি: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'ইস্যু তারিখ';

  @override
  String get driverDetailsLicenseDocTitle => 'লাইসেন্স ডকুমেন্ট';

  @override
  String get driverDetailsLicenseNoLabel => 'লাইসেন্স নং';

  @override
  String get driverDetailsLicenseTitle => 'লাইসেন্সের বিবরণ';

  @override
  String get driverDetailsLicenseTypeLabel => 'লাইসেন্সের প্রকার';

  @override
  String get driverDetailsOfficialSeal => 'অফিসিয়াল সিল';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'শ্রেণী: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'জন্ম তারিখ: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'অনুমোদন: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'মেয়াদ: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'লাইসেন্স নং: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'পুরো নাম: $name';
  }

  @override
  String get driverDetailsTapToView => 'ডিএল ডকুমেন্ট দেখতে ট্যাপ করুন';

  @override
  String get driverDetailsTitle => 'ড্রাইভারের বিবরণ';

  @override
  String get dvirCategoryBusSafetySystems => 'বাস-নির্দিষ্ট নিরাপত্তা ব্যবস্থা';

  @override
  String get dvirCategoryCouplingDevices => 'কাপলিং ডিভাইস';

  @override
  String get dvirCategoryEmergencyEquipment => 'জরুরী সরঞ্জাম';

  @override
  String get dvirCategoryHorn => 'হর্ন';

  @override
  String get dvirCategoryLightingReflectors => 'আলোর ডিভাইস এবং প্রতিফলক';

  @override
  String get dvirCategoryMirrors => 'পেছনের দৃশ্য দেখার আয়না';

  @override
  String get dvirCategoryParkingBrake => 'পার্কিং ব্রেক';

  @override
  String get dvirCategoryPassengerSeating => 'যাত্রী আসন এবং সংযম';

  @override
  String get dvirCategoryServiceBrakes => 'সার্ভিস ব্রেক';

  @override
  String get dvirCategorySteeringMechanism => 'স্টিয়ারিং মেকানিজম';

  @override
  String get dvirCategoryTires => 'টায়ার';

  @override
  String get dvirCategoryWheelsRims => 'চাকা এবং রিম';

  @override
  String get dvirCategoryWipers => 'উইন্ডশিল্ড ওয়াইপার';

  @override
  String get dvirPostTripCapturePhoto => 'ত্রুটির ছবি তুলুন';

  @override
  String get dvirPostTripComplianceTitle => 'কমপ্লায়েন্স সার্টিফিকেশন';

  @override
  String get dvirPostTripDefectButton => 'ত্রুটি';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'ছবি ছাড়া ত্রুটি রিপোর্ট করা হচ্ছে';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'সতর্কতা: আপনি নিরাপত্তা অঞ্চলের ($zones) একটি ত্রুটি ছবি সংযুক্ত না করে রিপোর্ট করছেন। আপনি কি তবুও জমা দিতে চান?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'পরিদর্শন: বাস $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'নিরাপত্তা উদ্বেগের বিবরণ লিখুন...';

  @override
  String get dvirPostTripNotesLabel => 'নোট (ত্রুটির ক্ষেত্রে বাধ্যতামূলক) এবং ছবি';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'নিরাপত্তা উদ্বেগের বিবরণ লিখতে ত্রুটি নির্বাচন করুন...';

  @override
  String get dvirPostTripOdometerHeader => 'বর্তমান ওডোমিটার রিডিং';

  @override
  String get dvirPostTripOdometerInstructions => 'বাসের ইনস্ট্রুমেন্ট প্যানেলে দেখানো মাইলেজ রিডিং ঠিক যেমন আছে তেমন লিখুন:';

  @override
  String get dvirPostTripOdometerLabel => 'ওডোমিটার (মাইল)';

  @override
  String get dvirPostTripOdometerTitle => 'যানবাহন চালনার সময় মেট্রিক';

  @override
  String get dvirPostTripOdometerWarning => 'এগিয়ে যাওয়ার আগে ওডোমিটার রিডিং লিখুন।';

  @override
  String get dvirPostTripPassButton => 'পাস';

  @override
  String get dvirPostTripPhotoAttached => 'ছবি সফলভাবে সংযুক্ত করা হয়েছে।';

  @override
  String get dvirPostTripProgressLabel => 'পরিদর্শন অগ্রগতি';

  @override
  String get dvirPostTripSignatureCaptured => 'স্বাক্ষর ধারণ করা হয়েছে।';

  @override
  String get dvirPostTripSignatureCert => 'আমি প্রত্যয়ন করছি যে এই যানবাহন ওয়াকারাউন্ড চেকলিস্ট রিপোর্টটি FMCSA 396.11 প্রবিধান মেনে সম্পন্ন করা হয়েছে।';

  @override
  String get dvirPostTripSignatureTitle => 'ড্রাইভারের স্বাক্ষর যাচাইকরণ';

  @override
  String get dvirPostTripSubmitButton => 'পরিদর্শন জমা দিন';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR সফলভাবে জমা দেওয়া হয়েছে।';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'জোন $current মোট $total এর মধ্যে';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total জোন';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'আমি স্বীকার করছি যে আমি শেষ জমা দেওয়া ত্রুটি রিপোর্ট পর্যালোচনা করেছি এবং মেরামত (যদি থাকে) যাচাই করেছি এবং বলছি যে বাসটি পরিচালনার জন্য নিরাপদ।';

  @override
  String get dvirPreTripActiveMessage => 'এই যানবাহনটি সক্রিয় এবং এতে কোনো খোলা ত্রুটি নেই। এটি যাচাইকৃত এবং পরিচালনার জন্য নিরাপদ।';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'সক্রিয় রুট: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'মনোযোগ প্রয়োজন: পূর্ববর্তী দিনের ত্রুটি লগ করা হয়েছে';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'বাস নম্বর: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'যানবাহন ডিসপ্যাচ চেক';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'স্বাক্ষর করতে ব্যর্থ: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'কোনো পূর্ববর্তী ত্রুটি লগ করা হয়নি';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'এই যানবাহনটি পূর্ববর্তী পোস্ট-ট্রিপ শিফট পরিদর্শনে ত্রুটিমুক্ত রিপোর্ট করা হয়েছিল।';

  @override
  String get dvirPreTripNoRepairsNeeded => 'নিরাপদ পরিচালনার জন্য কোনো মেরামতের প্রয়োজন নেই।';

  @override
  String get dvirPreTripOutOfServiceMessage => 'এই যানবাহনটি মেরামত/রক্ষণাবেক্ষণের জন্য পরিষেবার বাইরে রয়েছে। ডিসপ্যাচের আগে দোকানের কর্মীদের দ্বারা নিরাপত্তা উদ্বেগগুলি সমাধান করতে হবে।';

  @override
  String get dvirPreTripOutofServiceButton => 'যানবাহন পরিষেবার বাইরে';

  @override
  String dvirPreTripReason(Object reason) {
    return 'কারণ: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (মেরামত করা হয়েছে)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'নতুন ত্রুটি রিপোর্ট করুন';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'মেরামতের সময় নতুন ত্রুটি রিপোর্ট করা অক্ষম করা হয়েছে।';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'স্থিতি: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'পরিবহন সাব-অ্যাডমিন রেজোলিউশন';

  @override
  String get dvirPreTripReturnToHomeButton => 'হোমে ফিরে যান';

  @override
  String get dvirPreTripSignOffTitle => 'ওয়াকারাউন্ডে এগিয়ে যাওয়ার জন্য সাইন-অফ করুন';

  @override
  String get dvirPreTripSignedSuccess => 'যাচাইকরণ সফলভাবে স্বাক্ষরিত হয়েছে। প্রি-ট্রিপ আনলক করা হয়েছে।';

  @override
  String get dvirPreTripSubmitVerificationButton => 'যাচাইকরণ জমা দিন';

  @override
  String get dvirPreTripTitle => 'প্রি-ট্রিপ যাচাইকরণ';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'যানবাহনের স্থিতি: $status';
  }

  @override
  String get dvirSigDrawTitle => 'স্বাক্ষর আঁকুন';

  @override
  String get dvirSigPreviewLabel => 'ধারণকৃত স্বাক্ষরের পূর্বরূপ:';

  @override
  String get dvirSigRedraw => 'পুনরায় আঁকুন';

  @override
  String get dvirSigSave => 'স্বাক্ষর সংরক্ষণ করুন';

  @override
  String get dvirSigTapToDraw => 'স্বাক্ষর আঁকতে ট্যাপ করুন (প্রয়োজন)';

  @override
  String get dvirSigWatermark => 'উল্লম্বভাবে স্বাক্ষর করুন (নিচ থেকে উপরে)';

  @override
  String get forgotPasswordCancel => 'বাতিল করুন';

  @override
  String get forgotPasswordEmailLabel => 'ইমেল';

  @override
  String get forgotPasswordInvalidEmail => 'একটি বৈধ ইমেল লিখুন';

  @override
  String get forgotPasswordSend => 'পাঠান';

  @override
  String get forgotPasswordSuccess => 'যদি সেই ইমেলটি বিদ্যমান থাকে, তাহলে একটি রিসেট লিঙ্ক পাঠানো হয়েছে।';

  @override
  String get genericBack => 'ফিরে যান';

  @override
  String get genericCancel => 'বাতিল করুন';

  @override
  String get genericClear => 'পরিষ্কার করুন';

  @override
  String get genericClose => 'বন্ধ করুন';

  @override
  String get genericConfirm => 'নিশ্চিত করুন';

  @override
  String get genericEdit => 'সম্পাদনা করুন';

  @override
  String get genericError => 'কিছু ভুল হয়েছে';

  @override
  String get genericLoading => 'লোড হচ্ছে...';

  @override
  String get genericNext => 'পরবর্তী';

  @override
  String get genericOk => 'ঠিক আছে';

  @override
  String get genericRetry => 'পুনরায় চেষ্টা করুন';

  @override
  String get genericSuccess => 'সফল';

  @override
  String homeBusLabel(Object busId) {
    return 'বাস: $busId';
  }

  @override
  String get homeDispatchBlocked => 'ডিসপ্যাচ ব্লক করা হয়েছে';

  @override
  String get homeDispatchBlockedTitle => 'ডিসপ্যাচ ব্লক করা হয়েছে';

  @override
  String get homeErrorNoRoutesPreTrip => 'প্রি-ট্রিপ করার জন্য কোনো রুট উপলব্ধ নেই।';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'সার্ভারে ট্রিপ শুরু করতে ব্যর্থ: $error';
  }

  @override
  String homeHi(Object name) {
    return 'হাই, $name';
  }

  @override
  String get homeLogout => 'লগআউট';

  @override
  String get homeMenuAppInfo => 'অ্যাপ তথ্য';

  @override
  String get homeMenuDrill => 'মহড়া';

  @override
  String get homeMenuDriverDetails => 'ড্রাইভারের বিবরণ';

  @override
  String get homeMenuLanguage => 'ভাষা';

  @override
  String get homeMenuPreTrip => 'প্রি-ট্রিপ পরিদর্শন';

  @override
  String get homeNoRoutes => 'কোনো রুট উপলব্ধ নেই';

  @override
  String get homeReviewVerifyPreTrip => 'প্রি-ট্রিপ পর্যালোচনা ও যাচাই করুন';

  @override
  String get homeSearchHint => 'রুট অনুসন্ধান করুন';

  @override
  String get homeStart => 'শুরু করুন';

  @override
  String get homeTitle => 'হোম';

  @override
  String get homeVehicleOutOfServiceDefault => 'যানবাহনটি বর্তমানে পরিষেবার বাইরে।';

  @override
  String get homeVehicleReady => 'যানবাহনটি নিরাপদ পরিচালনার জন্য প্রস্তুত এবং যাচাইকৃত।';

  @override
  String get languageTitle => 'ভাষা';

  @override
  String get loginButton => 'লগইন';

  @override
  String get loginEmailOrPhoneLabel => 'ইমেল বা ফোন নম্বর';

  @override
  String get loginErrorEnterPassword => 'দয়া করে পাসওয়ার্ড লিখুন';

  @override
  String get loginErrorEnterUsername => 'দয়া করে ব্যবহারকারীর নাম লিখুন';

  @override
  String get loginErrorFailed => 'লগইন ব্যর্থ হয়েছে। দয়া করে আবার চেষ্টা করুন।';

  @override
  String get loginErrorInvalidEmailOrPhone => 'একটি বৈধ ইমেল বা ফোন নম্বর লিখুন';

  @override
  String get loginForgotPassword => 'পাসওয়ার্ড ভুলে গেছেন?';

  @override
  String get loginPasswordLabel => 'পাসওয়ার্ড';

  @override
  String get mapChildrenTooltip => 'শিশু ও অভিভাবকগণ';

  @override
  String get mapConfirmMessage => 'আপনি কি সত্যিই ট্রিপ বন্ধ করতে চান?';

  @override
  String get mapConfirmTitle => 'নিশ্চিত করুন';

  @override
  String get mapCurrentPosition => 'বর্তমান অবস্থান';

  @override
  String get mapNo => 'না';

  @override
  String get mapReconnectMessage => 'অবস্থান আপডেট ঘন ঘন ব্যর্থ হচ্ছে, দয়া করে আপনার ইন্টারনেট পরীক্ষা করুন।';

  @override
  String get mapReconnectTitle => 'ট্র্যাকার';

  @override
  String get mapStop => 'থামুন';

  @override
  String get mapStopping => 'থামানো হচ্ছে...';

  @override
  String get mapStopsTooltip => 'স্টপ';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds সেকেন্ড আগে আপডেট করা হয়েছে';
  }

  @override
  String get mapWaitingGps => 'জিপিএস এর জন্য অপেক্ষা করা হচ্ছে...';

  @override
  String get mapYes => 'হ্যাঁ';

  @override
  String get splashDriverApp => 'ড্রাইভার অ্যাপ';

  @override
  String get stopsActionUndo => 'পূর্বাবস্থায় ফেরান';

  @override
  String get stopsCancelledSuccess => 'সফলভাবে বাতিল করা হয়েছে';

  @override
  String get stopsDefaultLabel => 'স্টপ';

  @override
  String get stopsGenericError => 'কিছু ভুল হয়েছে। দয়া করে আবার চেষ্টা করুন।';

  @override
  String get stopsStatusComplete => 'সম্পূর্ণ';

  @override
  String get stopsStatusDone => 'সম্পন্ন';

  @override
  String stopsSubmitCount(Object count) {
    return 'জমা দিন ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'সফলভাবে জমা দেওয়া হয়েছে';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected নির্বাচিত · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'ছেড়ে দিন';

  @override
  String get stopsTypePick => 'নিন';

  @override
  String stopsUndoCount(Object count) {
    return 'পূর্বাবস্থায় ফেরান ($count)';
  }

  @override
  String get stopsUndoTooltip => 'পিক/ড্রপ পূর্বাবস্থায় ফেরান';

  @override
  String get tripConfirmCancel => 'বাতিল করুন';

  @override
  String get tripConfirmOk => 'ঠিক আছে';

  @override
  String get tripConfirmTitle => 'ট্র্যাকার';

  @override
  String get tripErrorLocationRequired => 'একটি ট্রিপ শুরু করার জন্য অবস্থানের অনুমতি প্রয়োজন।';

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
