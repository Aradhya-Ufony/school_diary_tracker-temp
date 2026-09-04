import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get appInfoBuild => 'የግንባታ ቁጥር';

  @override
  String get appInfoDevice => 'የመሳሪያ ሞዴል';

  @override
  String get appInfoOS => 'የስርዓተ ክወና ስሪት';

  @override
  String get appInfoPackage => 'ጥቅል';

  @override
  String get appInfoTitle => 'የመተግበሪያ መረጃ';

  @override
  String get appInfoVersion => 'የመተግበሪያ ስሪት';

  @override
  String get appTitleSchoolDiary => 'SD መከታተያ';

  @override
  String get childrenActionGuardians => 'አሳዳጊዎች';

  @override
  String childrenGuardiansFor(Object name) {
    return 'ለ $name የተፈቀደላቸው አሳዳጊዎች';
  }

  @override
  String get childrenNoGuardians => 'ለዚህ ልጅ የተመዘገቡ የተፈቀደላቸው አሳዳጊዎች የሉም።';

  @override
  String get childrenStatusDropped => 'ወርዷል';

  @override
  String get childrenStatusPending => 'በመጠባበቅ ላይ';

  @override
  String get childrenStatusPicked => 'ተወስዷል';

  @override
  String childrenTitle(Object routeName) {
    return 'ልጆች - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'የቀሩ / አውቶቡስ ላይ የሌሉ ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'አውቶቡስ: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'ለቀው የወጡ';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'ለቀው የወጡ: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'የቀሩ ተማሪዎች የሉም።';

  @override
  String get drillChecklistNoStudentsOnBus => 'አውቶቡስ ላይ የተመዘገቡ ተማሪዎች የሉም።';

  @override
  String get drillChecklistNotOnBus => 'አውቶቡስ ላይ የሉም';

  @override
  String get drillChecklistOnBusNotEvacuated => 'አውቶቡስ ላይ ያሉ — ለቀው ያልወጡ';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'አውቶቡስ ላይ ያሉ ($count)';
  }

  @override
  String get drillChecklistProceed => 'ወደ ማስረጃ መውሰጃ ይቀጥሉ';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'መስመር (የቀጥታ ስርጭት): $routeName';
  }

  @override
  String get drillChecklistTitle => 'የመልቀቂያ ልምምድ ማረጋገጫ ዝርዝር';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count ያልተቆጠሩ ተማሪ(ዎች) ቀርተዋል!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'እርግጠኛ ነዎት ይህንን የልምምድ መዝገብ ማስገባት ይፈልጋሉ? ይህ እርምጃ ሊቀለበስ አይችልም።';

  @override
  String get drillEvidenceConfirmSubmission => 'የልምምድ ማስገባትን ያረጋግጡ';

  @override
  String get drillEvidenceDriverNotesHint => 'የልምምድ አፈፃፀም፣ የተማሪዎች ባህሪ፣ ጥቅም ላይ የዋሉ መውጫ መንገዶች እና የታዩ ማናቸውም ልዩነቶችን ይግለጹ...';

  @override
  String get drillEvidenceDriverNotesLabel => 'የአሽከርካሪ ማስታወሻዎች (ቢያንስ 10 ፊደላት):';

  @override
  String get drillEvidenceFailed => 'ማስገባት አልተሳካም';

  @override
  String get drillEvidenceMandatoryWarning => 'ልምምዱን ለማስገባት ቢያንስ 1 የፎቶ ወይም የቪዲዮ ማስረጃ ግዴታ ነው።';

  @override
  String get drillEvidenceRecordVideo => 'ቪዲዮ ቅረጽ';

  @override
  String get drillEvidenceRetrySubmission => 'እንደገና ለማስገባት ይሞክሩ';

  @override
  String get drillEvidenceReturnToDashboard => 'ወደ ዳሽቦርድ ተመለስ';

  @override
  String get drillEvidenceSubmitButton => 'የልምምድ መዝገብ አስገባ';

  @override
  String get drillEvidenceSubmitting => 'የልምምድ መዝገብ በማስገባት ላይ...';

  @override
  String get drillEvidenceSuccess => 'ማስገባት ተሳክቷል!';

  @override
  String get drillEvidenceSuccessMessage => 'የመልቀቂያ ልምምድ መዝገቡ በተሳካ ሁኔታ ተጭኗል እና ማጽደቅን በመጠባበቅ ላይ ነው።';

  @override
  String get drillEvidenceTakePhoto => 'ፎቶ አንሳ';

  @override
  String get drillEvidenceTitle => 'የግዴታ የልምምድ ማስረጃ';

  @override
  String get drillEvidenceUploading => 'ማስረጃ እና የማረጋገጫ ዝርዝር መረጃ በመጫን ላይ';

  @override
  String drillRosterBus(Object busNumber) {
    return 'አውቶቡስ: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'ልምምድ: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'መገኘትን ይመዝግቡ';

  @override
  String get drillRosterNoStudents => 'በዚህ መስመር ላይ የተመዘገቡ ተማሪዎች የሉም።';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'የተገኙ: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'ወደ ልምምድ ማረጋገጫ ዝርዝር ይቀጥሉ';

  @override
  String drillRosterRoute(Object routeName) {
    return 'መስመር: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'ወንበር: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'ሁሉንም ምረጥ';

  @override
  String get drillSummaryAdminNotesTitle => 'የአስተዳዳሪ ማስታወሻዎች';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'የጸደቀበት: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'የጸደቀበት';

  @override
  String get drillSummaryBackToDrills => 'ወደ ልምምዶች ተመለስ';

  @override
  String get drillSummaryBusNumber => 'የአውቶቡስ ቁጥር';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'ያካሄደው: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'የልምምድ ዝርዝሮች';

  @override
  String get drillSummaryDriverNotesTitle => 'የአሽከርካሪ ማስታወሻዎች';

  @override
  String get drillSummaryDuration => 'የቆይታ ጊዜ';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes ደቂቃ $seconds ሰከንድ';
  }

  @override
  String get drillSummaryEndTime => 'የማብቂያ ጊዜ';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'ለቀው የወጡ: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'ለቀው የወጡበት $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'የማስረጃ ሚዲያ አባሪዎች';

  @override
  String get drillSummaryGps => 'የጂፒኤስ መጋጠሚያዎች';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'ኬክሮስ: $lat, ኬንትሮስ: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'የልምምድ ማጠቃለያ ለመታወቂያ #$id መጫን አልተሳካም።\n$error';
  }

  @override
  String get drillSummaryNoData => 'ምንም የልምምድ መረጃ አልተገኘም።';

  @override
  String get drillSummaryNotOnBus => 'አውቶቡስ ላይ የሉም';

  @override
  String get drillSummaryOnBusNotEvacuated => 'አውቶቡስ ላይ ያሉ - ለቀው ያልወጡ';

  @override
  String get drillSummaryPhotoEvidence => 'የፎቶ ማስረጃ';

  @override
  String get drillSummaryRouteId => 'የመስመር መታወቂያ';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'ወንበር: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'የመጀመሪያ ጊዜ';

  @override
  String get drillSummaryStatus => 'ሁኔታ';

  @override
  String get drillSummaryStudentLogTitle => 'የተማሪ መልቀቂያ መዝገብ';

  @override
  String drillSummaryTitle(Object id) {
    return 'የልምምድ ማጠቃለያ (#$id)';
  }

  @override
  String get drillSummaryType => 'የልምምድ አይነት';

  @override
  String get drillSummaryVideoEvidence => 'የቪዲዮ ማስረጃ';

  @override
  String drillTypeBus(Object busNumber) {
    return 'አውቶቡስ $busNumber';
  }

  @override
  String get drillTypeClassification => 'የልምምድ ምደባን ይምረጡ:';

  @override
  String get drillTypeCustomHint => 'ብጁ የመልቀቂያ ልምምድ አይነት ያስገቡ...';

  @override
  String get drillTypeInvalidState => 'የተሳሳተ የተሽከርካሪ ወይም የመስመር ሁኔታ።';

  @override
  String get drillTypeNameBusFire => 'የአውቶቡስ እሳት';

  @override
  String get drillTypeNameDangerZone => 'አደገኛ ዞን';

  @override
  String get drillTypeNameDriverIncapacitation => 'የአሽከርካሪ አቅም ማጣት';

  @override
  String get drillTypeNameEquipmentOrientation => 'የመሳሪያዎች ትውውቅ';

  @override
  String get drillTypeNameFrontDoor => 'የፊት በር';

  @override
  String get drillTypeNameOthers => 'ሌሎች';

  @override
  String get drillTypeNameRearDoor => 'የኋላ በር';

  @override
  String get drillTypeNameSideOrRoof => 'ጎን ወይም ጣሪያ';

  @override
  String get drillTypeNameSplit => 'የተከፈለ';

  @override
  String get drillTypeNoRouteSelected => 'ምንም መስመር አልተመረጠም';

  @override
  String get drillTypePreparation => 'የልምምድ ዝግጅት';

  @override
  String get drillTypeProceed => 'ወደ ተማሪዎች ዝርዝር ይቀጥሉ';

  @override
  String drillTypeRoute(Object routeName) {
    return 'መስመር: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'መስመር ይምረጡ:';

  @override
  String get drillTypeSpecifyCustom => 'የልምምድ አይነት መግለጫን ይግለጹ:';

  @override
  String get drillTypeTitle => 'የልምምድ አይነት ይምረጡ';

  @override
  String get drillTypeWarning => 'አፈፃፀም ከመጀመሩ በፊት ተሽከርካሪው በደህና መቆሙን ያረጋግጡ።';

  @override
  String get drillsAssignedVehicle => 'የተመደበ ተሽከርካሪ';

  @override
  String get drillsChecking => 'በማረጋገጥ ላይ...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'ልምምድ #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'ምንም አውቶቡስ አልተመደበም';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'ለአውቶቡስ $busNumber የተመዘገቡ ልምምዶች የሉም';
  }

  @override
  String get drillsNoRoutesAvailable => 'ልምምድ ለመጀመር ምንም መስመሮች አይገኙም።';

  @override
  String get drillsShowSummary => 'ማጠቃለያ አሳይ';

  @override
  String get drillsStartDrill => 'ልምምድ ጀምር';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'የተካሄደበት: $date\nሁኔታ: $status';
  }

  @override
  String get drillsTitle => 'የመልቀቂያ ልምምዶች';

  @override
  String get drillsVehicleOutOfService => 'ተሽከርካሪ አገልግሎት አይሰጥም';

  @override
  String get drillsVehicleOutOfServiceMessage => 'ይህ ተሽከርካሪ በአሁኑ ጊዜ አገልግሎት እየሰጠ አይደለም እና ለልምምድ ሊያገለግል አይችልም።';

  @override
  String get driverDetailsCdlClassLabel => 'የሲዲኤል (CDL) ክፍል';

  @override
  String get driverDetailsDrivingLicenseLabel => 'መንጃ ፈቃድ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'ስም: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ፈቃድ: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'መንገደኛ';

  @override
  String get driverDetailsEndorsementSchoolBus => 'የትምህርት ቤት አውቶቡስ';

  @override
  String get driverDetailsEndorsementsTitle => 'የተያዙ ማረጋገጫዎች';

  @override
  String get driverDetailsExpiryDateLabel => 'የሚያበቃበት ቀን';

  @override
  String get driverDetailsHolderSignature => 'የባለቤቱ ፊርማ';

  @override
  String driverDetailsId(Object driverId) {
    return 'መታወቂያ: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'የተሰጠበት ቀን';

  @override
  String get driverDetailsLicenseDocTitle => 'የፈቃድ ሰነድ';

  @override
  String get driverDetailsLicenseNoLabel => 'የፈቃድ ቁጥር';

  @override
  String get driverDetailsLicenseTitle => 'የፈቃድ ዝርዝሮች';

  @override
  String get driverDetailsLicenseTypeLabel => 'የፈቃድ አይነት';

  @override
  String get driverDetailsOfficialSeal => 'ኦፊሴላዊ ማህተም';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'ክፍል: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'የትውልድ ቀን: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ማረጋገጫ: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'የሚያበቃበት: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'የፈቃድ ቁ: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'የመጀመሪያ ስም: $name';
  }

  @override
  String get driverDetailsTapToView => 'የመንጃ ፈቃድ ሰነድ ለማየት ይንኩ';

  @override
  String get driverDetailsTitle => 'የአሽከርካሪ ዝርዝሮች';

  @override
  String get dvirCategoryBusSafetySystems => 'ከአውቶቡስ ጋር የተያያዙ የደህንነት ስርዓቶች';

  @override
  String get dvirCategoryCouplingDevices => 'የማያያዣ መሳሪያዎች';

  @override
  String get dvirCategoryEmergencyEquipment => 'የአደጋ ጊዜ መሳሪያዎች';

  @override
  String get dvirCategoryHorn => 'ጡሩንባ';

  @override
  String get dvirCategoryLightingReflectors => 'የማብራት መሳሪያዎች እና አንጸባራቂዎች';

  @override
  String get dvirCategoryMirrors => 'የኋላ መመልከቻ መስተዋቶች';

  @override
  String get dvirCategoryParkingBrake => 'የፓርኪንግ ፍሬን';

  @override
  String get dvirCategoryPassengerSeating => 'የመንገደኞች መቀመጫ እና መቆጣጠሪያዎች';

  @override
  String get dvirCategoryServiceBrakes => 'የአገልግሎት ፍሬኖች';

  @override
  String get dvirCategorySteeringMechanism => 'የስቲሪንግ መቆጣጠሪያ';

  @override
  String get dvirCategoryTires => 'ጎማዎች';

  @override
  String get dvirCategoryWheelsRims => 'ጎማዎች እና ሪሞች';

  @override
  String get dvirCategoryWipers => 'የንፋስ መከላከያ መጥረጊያዎች';

  @override
  String get dvirPostTripCapturePhoto => 'የብልሽት ፎቶ አንሳ';

  @override
  String get dvirPostTripComplianceTitle => 'የተገዢነት ማረጋገጫ';

  @override
  String get dvirPostTripDefectButton => 'ብልሽት';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'ብልሽትን ያለ ፎቶ ሪፖርት ማድረግ';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'ማስጠንቀቂያ፡ ፎቶ ሳያያይዙ በደህንነት ዞኖች ($zones) ላይ ብልሽት ሪፖርት እያደረጉ ነው። በማንኛውም ሁኔታ ማስገባት እንደሚፈልጉ እርግጠኛ ነዎት?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'ምርመራ: አውቶቡስ $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'የደህንነት ስጋት ዝርዝሮችን ያስገቡ...';

  @override
  String get dvirPostTripNotesLabel => 'ማስታወሻዎች (ለብልሽት ግዴታ ነው) እና ፎቶ';

  @override
  String get dvirPostTripNotesPassedHint => 'የደህንነት ስጋት ዝርዝሮችን ለማስገባት ብልሽትን ይምረጡ...';

  @override
  String get dvirPostTripOdometerHeader => 'የአሁኑ የኦዶሜትር ንባብ';

  @override
  String get dvirPostTripOdometerInstructions => 'በአውቶቡስ መሳሪያ ፓነል ላይ እንደሚታየው ርቀቱን በትክክል ያስገቡ:';

  @override
  String get dvirPostTripOdometerLabel => 'ኦዶሜትር (ማይሎች)';

  @override
  String get dvirPostTripOdometerTitle => 'የተሽከርካሪ የሩጫ ጊዜ መለኪያ';

  @override
  String get dvirPostTripOdometerWarning => 'እባክዎ ከመቀጠልዎ በፊት የኦዶሜትሩን ንባብ ያስገቡ።';

  @override
  String get dvirPostTripPassButton => 'አለፈ';

  @override
  String get dvirPostTripPhotoAttached => 'ፎቶ በተሳካ ሁኔታ ተያይዟል።';

  @override
  String get dvirPostTripProgressLabel => 'የምርመራ ሂደት';

  @override
  String get dvirPostTripSignatureCaptured => 'ፊርማ ተይዟል።';

  @override
  String get dvirPostTripSignatureCert => 'ይህ የተሽከርካሪ ዙሪያ ፍተሻ ሪፖርት በ FMCSA 396.11 ደንቦች መሰረት እንደተጠናቀቀ አረጋግጣለሁ።';

  @override
  String get dvirPostTripSignatureTitle => 'የአሽከርካሪ ፊርማ ማረጋገጫ';

  @override
  String get dvirPostTripSubmitButton => 'ምርመራ አስገባ';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR በተሳካ ሁኔታ ገብቷል።';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ዞን $current ከ $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ዞኖች';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'ያለፈውን የቀረበውን የብልሽት ሪፖርት መገምገሜን፣ ጥገናዎችን (ካሉ) ማረጋገጤን እና አውቶቡሱ ለስራ ደህንነቱ የተጠበቀ መሆኑን አረጋግጣለሁ።';

  @override
  String get dvirPreTripActiveMessage => 'ይህ ተሽከርካሪ ንቁ ነው እና ምንም ክፍት ብልሽቶች የሉትም። የተረጋገጠ እና ለስራ ደህንነቱ የተጠበቀ ነው።';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'ንቁ መስመር: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ትኩረት ያስፈልጋል፡ ያለፈው ቀን ብልሽቶች ተመዝግበዋል';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'የአውቶቡስ ቁጥር: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'የተሽከርካሪ ስምሪት ፍተሻ';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'መፈረም አልተሳካም: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'ምንም ቀደምት ብልሽቶች አልተመዘገቡም';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'ይህ ተሽከርካሪ በቀድሞው የድህረ-ስራ ፈረቃ ፍተሻ ንጹህ እንደሆነ ሪፖርት ተደርጓል።';

  @override
  String get dvirPreTripNoRepairsNeeded => 'ለደህንነት አሠራር ምንም ጥገና አያስፈልግም።';

  @override
  String get dvirPreTripOutOfServiceMessage => 'ይህ ተሽከርካሪ ለጥገና/እድሳት ከአገልግሎት ውጪ ነው። ከመሰማራቱ በፊት የደህንነት ስጋቶች በሱቅ ሰራተኞች መፈታት አለባቸው።';

  @override
  String get dvirPreTripOutofServiceButton => 'ተሽከርካሪ አገልግሎት አይሰጥም';

  @override
  String dvirPreTripReason(Object reason) {
    return 'ምክንያት: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ተጠግኗል)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'አዳዲስ ብልሽቶችን ሪፖርት ያድርጉ';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'በጥገና ወቅት አዳዲስ ብልሽቶችን ሪፖርት ማድረግ አይቻልም።';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'ሁኔታ: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'የትራንስፖርት ንዑስ-አስተዳዳሪ ውሳኔ';

  @override
  String get dvirPreTripReturnToHomeButton => 'ወደ መነሻ ተመለስ';

  @override
  String get dvirPreTripSignOffTitle => 'ወደ ዙሪያ ፍተሻ ለመቀጠል ይፈርሙ';

  @override
  String get dvirPreTripSignedSuccess => 'ማረጋገጫ በተሳካ ሁኔታ ተፈርሟል። የቅድመ-ጉዞ ተከፍቷል።';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ማረጋገጫ አስገባ';

  @override
  String get dvirPreTripTitle => 'የቅድመ-ጉዞ ማረጋገጫ';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'የተሽከርካሪ ሁኔታ: $status';
  }

  @override
  String get dvirSigDrawTitle => 'ፊርማ ይሳሉ';

  @override
  String get dvirSigPreviewLabel => 'የተያዘው ፊርማ ቅድመ-እይታ:';

  @override
  String get dvirSigRedraw => 'እንደገና ይሳሉ';

  @override
  String get dvirSigSave => 'ፊርማ አስቀምጥ';

  @override
  String get dvirSigTapToDraw => 'ፊርማ ለመሳል ይንኩ (ግዴታ ነው)';

  @override
  String get dvirSigWatermark => 'በአቀባዊ ይፈርሙ (ከታች ወደ ላይ)';

  @override
  String get forgotPasswordCancel => 'ሰርዝ';

  @override
  String get forgotPasswordEmailLabel => 'ኢሜይል';

  @override
  String get forgotPasswordInvalidEmail => 'እባክዎ ትክክለኛ ኢሜይል ያስገቡ';

  @override
  String get forgotPasswordSend => 'ላክ';

  @override
  String get forgotPasswordSuccess => 'ያ ኢሜይል ካለ፣ የይለፍ ቃል መቀየሪያ አገናኝ ተልኳል።';

  @override
  String get genericBack => 'ተመለስ';

  @override
  String get genericCancel => 'ሰርዝ';

  @override
  String get genericClear => 'አጽዳ';

  @override
  String get genericClose => 'ዝጋ';

  @override
  String get genericConfirm => 'አረጋግጥ';

  @override
  String get genericEdit => 'አርትዕ';

  @override
  String get genericError => 'የሆነ ችግር ተከስቷል';

  @override
  String get genericLoading => 'በመጫን ላይ...';

  @override
  String get genericNext => 'ቀጣይ';

  @override
  String get genericOk => 'እሺ';

  @override
  String get genericRetry => 'እንደገና ሞክር';

  @override
  String get genericSuccess => 'ተሳክቷል';

  @override
  String homeBusLabel(Object busId) {
    return 'አውቶቡስ: $busId';
  }

  @override
  String get homeDispatchBlocked => 'ስምሪት ታግዷል';

  @override
  String get homeDispatchBlockedTitle => 'ስምሪት ታግዷል';

  @override
  String get homeErrorNoRoutesPreTrip => 'የቅድመ-ጉዞ ለማከናወን ምንም መስመሮች አይገኙም።';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'በሰርቨሩ ላይ ጉዞ መጀመር አልተሳካም: $error';
  }

  @override
  String homeHi(Object name) {
    return 'ሰላም፣ $name';
  }

  @override
  String get homeLogout => 'ውጣ';

  @override
  String get homeMenuAppInfo => 'የመተግበሪያ መረጃ';

  @override
  String get homeMenuDrill => 'ልምምድ';

  @override
  String get homeMenuDriverDetails => 'የአሽከርካሪ ዝርዝሮች';

  @override
  String get homeMenuLanguage => 'ቋንቋ';

  @override
  String get homeMenuPreTrip => 'የቅድመ-ጉዞ ምርመራ';

  @override
  String get homeNoRoutes => 'ምንም መስመሮች አይገኙም';

  @override
  String get homeReviewVerifyPreTrip => 'ቅድመ-ጉዞን ይገምግሙ እና ያረጋግጡ';

  @override
  String get homeSearchHint => 'መስመሮችን ፈልግ';

  @override
  String get homeStart => 'ጀምር';

  @override
  String get homeTitle => 'መነሻ';

  @override
  String get homeVehicleOutOfServiceDefault => 'ተሽከርካሪ በአሁኑ ጊዜ ከአገልግሎት ውጪ ነው።';

  @override
  String get homeVehicleReady => 'ተሽከርካሪው ዝግጁ እና ለደህንነት አሠራር የተረጋገጠ ነው።';

  @override
  String get languageTitle => 'ቋንቋ';

  @override
  String get loginButton => 'ግባ';

  @override
  String get loginEmailOrPhoneLabel => 'ኢሜይል ወይም ስልክ ቁጥር';

  @override
  String get loginErrorEnterPassword => 'እባክዎ የይለፍ ቃል ያስገቡ';

  @override
  String get loginErrorEnterUsername => 'እባክዎ የተጠቃሚ ስም ያስገቡ';

  @override
  String get loginErrorFailed => 'መግባት አልተሳካም። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get loginErrorInvalidEmailOrPhone => 'እባክዎ ትክክለኛ ኢሜይል ወይም ስልክ ቁጥር ያስገቡ';

  @override
  String get loginForgotPassword => 'የይለፍ ቃል ረሱ?';

  @override
  String get loginPasswordLabel => 'የይለፍ ቃል';

  @override
  String get mapChildrenTooltip => 'ልጆች እና አሳዳጊዎች';

  @override
  String get mapConfirmMessage => 'በእርግጥ ጉዞውን መዝጋት ይፈልጋሉ?';

  @override
  String get mapConfirmTitle => 'አረጋግጥ';

  @override
  String get mapCurrentPosition => 'የአሁኑ ቦታ';

  @override
  String get mapNo => 'አይ';

  @override
  String get mapReconnectMessage => 'የቦታ ዝመና በተደጋጋሚ እየተቋረጠ ነው። እባክዎ ኢንተርኔትዎን ያረጋግጡ።';

  @override
  String get mapReconnectTitle => 'መከታተያ';

  @override
  String get mapStop => 'አቁም';

  @override
  String get mapStopping => 'በማቆም ላይ...';

  @override
  String get mapStopsTooltip => 'ማቆሚያዎች';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'ከ $seconds ሰከንድ በፊት የዘመነ';
  }

  @override
  String get mapWaitingGps => 'ጂፒኤስ በመጠበቅ ላይ...';

  @override
  String get mapYes => 'አዎ';

  @override
  String get splashDriverApp => 'የአሽከርካሪ መተግበሪያ';

  @override
  String get stopsActionUndo => 'ቀልብስ';

  @override
  String get stopsCancelledSuccess => 'በተሳካ ሁኔታ ተሰርዟል';

  @override
  String get stopsDefaultLabel => 'ማቆሚያ';

  @override
  String get stopsGenericError => 'የሆነ ችግር ተከስቷል። እባክዎ እንደገና ይሞክሩ።';

  @override
  String get stopsStatusComplete => 'ተጠናቋል';

  @override
  String get stopsStatusDone => 'ተከናውኗል';

  @override
  String stopsSubmitCount(Object count) {
    return 'አስገባ ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'በተሳካ ሁኔታ ገብቷል';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected ተመርጠዋል · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'ማውረጃ';

  @override
  String get stopsTypePick => 'ማንሻ';

  @override
  String stopsUndoCount(Object count) {
    return 'ቀልብስ ($count)';
  }

  @override
  String get stopsUndoTooltip => 'ማንሻ/ማውረጃ ቀልብስ';

  @override
  String get tripConfirmCancel => 'ሰርዝ';

  @override
  String get tripConfirmOk => 'እሺ';

  @override
  String get tripConfirmTitle => 'መከታተያ';

  @override
  String get tripErrorLocationRequired => 'ጉዞ ለመጀመር የቦታ ፍቃድ ያስፈልጋል።';

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
}
