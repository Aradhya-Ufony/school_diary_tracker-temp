import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get appInfoBuild => 'བསྐྲུན་གྲངས།';

  @override
  String get appInfoDevice => 'སྒྲིག་ཆས་ཀྱི་དཔེ་དབྱིབས།';

  @override
  String get appInfoOS => 'OS ཐོན་རིམ།';

  @override
  String get appInfoPackage => 'ཐུམ་སྒྲིག';

  @override
  String get appInfoTitle => 'App གནས་ཚུལ།';

  @override
  String get appInfoVersion => 'App ཐོན་རིམ།';

  @override
  String get appTitleSchoolDiary => 'SD འདེད་རྩོལ།';

  @override
  String get childrenActionGuardians => 'ལྟ་སྐྱོང་བ།';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name ལ་ཆོག་མཆན་ཡོད་པའི་ལྟ་སྐྱོང་བ།';
  }

  @override
  String get childrenNoGuardians => 'བྱིས་པ་འདིའི་ཆེད་དུ་ཆོག་མཆན་ཡོད་པའི་ལྟ་སྐྱོང་བ་གང་ཡང་མེད།';

  @override
  String get childrenStatusDropped => 'བཞག་པ།';

  @override
  String get childrenStatusPending => 'སྒུག་པ།';

  @override
  String get childrenStatusPicked => 'བསྒྲུགས་པ།';

  @override
  String childrenTitle(Object routeName) {
    return 'བྱིས་པ། — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'མེད། / སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་མེད་པ། ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར།: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'གནས་སྤོས་པ།';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'གནས་སྤོས་པ།: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'སློབ་མ་མེད་པ་གང་ཡང་མེད།';

  @override
  String get drillChecklistNoStudentsOnBus => 'སློབ་མ་གང་ཡང་སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་ཡོད་པར་མཚན་མ་བརྒྱབ་མེད།';

  @override
  String get drillChecklistNotOnBus => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་མེད།';

  @override
  String get drillChecklistOnBusNotEvacuated => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་ཡོད། — གནས་སྤོས་མེད།';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་ཡོད། ($count)';
  }

  @override
  String get drillChecklistProceed => 'དཔང་རྟགས་འཛིན་སྐྱོང་ལ་མདུན་སྐྱོད་བྱེད་པ།';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'ལམ་ཐིག (དངོས་གནས།): $routeName';
  }

  @override
  String get drillChecklistTitle => 'གནས་སྤོ་བའི་སྦྱོང་བརྡར་ཞིབ་བཤེར་ཐོ་གཞུང་།';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'སློབ་མ་ $count རྩིས་མེད་དུ་ལུས་འདུག';
  }

  @override
  String get drillEvidenceConfirmMessage => 'ཁྱེད་ཀྱིས་སྦྱོང་བརྡར་འདིའི་ཉིན་ཐོ་འགོད་འདོད་ཡོད་དམ། བྱ་སྤྱོད་འདི་ཕྱིར་འཐེན་བྱེད་མི་ཐུབ།';

  @override
  String get drillEvidenceConfirmSubmission => 'སྦྱོང་བརྡར་འགོད་པ་ཁག་ཐེག';

  @override
  String get drillEvidenceDriverNotesHint => 'སྦྱོང་བརྡར་ལག་བསྟར་བྱེད་སྟངས་དང་། སློབ་མའི་སྤྱོད་པ། ཕྱིར་འགྲོ་བའི་ལམ་བུ། དེ་བཞིན་མཐོང་བའི་དམིགས་བསལ་གང་རུང་ཞིག་འགྲེལ་བཤད་རྒྱོབས།';

  @override
  String get drillEvidenceDriverNotesLabel => 'ཁ་ལོ་བའི་ཟིན་ཐོ། (ཡིག་འབྲུ་ 10 མང་མཐའ།):';

  @override
  String get drillEvidenceFailed => 'འགོད་པ་མ་འགྲིག';

  @override
  String get drillEvidenceMandatoryWarning => 'སྦྱོང་བརྡར་འགོད་པར་པར་རིས་སམ་བརྙན་རིས་ཀྱི་དཔང་རྟགས་ཉུང་མཐར་ 1 དགོས།';

  @override
  String get drillEvidenceRecordVideo => 'བརྙན་རིས་བསྐྱོན་པ།';

  @override
  String get drillEvidenceRetrySubmission => 'འགོད་པ་བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་པ།';

  @override
  String get drillEvidenceReturnToDashboard => 'ལས་ཀའི་ངོ་ཤོག་ལ་ལོག་པ།';

  @override
  String get drillEvidenceSubmitButton => 'སྦྱོང་བརྡར་ཉིན་ཐོ་འགོད་པ།';

  @override
  String get drillEvidenceSubmitting => 'སྦྱོང་བརྡར་ཉིན་ཐོ་འགོད་བཞིན་པ།';

  @override
  String get drillEvidenceSuccess => 'འགོད་པ་ལེགས་གྲུབ་བྱུང་།';

  @override
  String get drillEvidenceSuccessMessage => 'གནས་སྤོ་བའི་སྦྱོང་བརྡར་ཉིན་ཐོ་ལེགས་གྲུབ་ངང་བླུགས་ཟིན་པ་དང་། ཆོག་མཆན་སྒུག་བཞིན་ཡོད།';

  @override
  String get drillEvidenceTakePhoto => 'པར་བརྒྱབ་པ།';

  @override
  String get drillEvidenceTitle => 'ངེས་པར་དུ་དགོས་པའི་སྦྱོང་བརྡར་གྱི་དཔང་རྟགས།';

  @override
  String get drillEvidenceUploading => 'དཔང་རྟགས་དང་ཞིབ་བཤེར་ཐོ་གཞུང་གི་གྲངས་གཞི་བླུགས་བཞིན་པ།';

  @override
  String drillRosterBus(Object busNumber) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར།: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'སྦྱོང་བརྡར།: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'འཛུལ་ཞུགས་མཚན་མ་རྒྱག་པ།';

  @override
  String get drillRosterNoStudents => 'ལམ་ཐིག་འདིར་སློབ་མ་གང་ཡང་ཐོ་འགོད་བྱས་མེད།';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'ཡོད།: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'སློབ་མའི་ཐོ་གཞུང་ལ་མདུན་སྐྱོད་བྱེད་པ།';

  @override
  String drillRosterRoute(Object routeName) {
    return 'ལམ་ཐིག: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'སྡོད་སྟེགས།: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'ཚང་མ་འདེམས་པ།';

  @override
  String get drillSummaryAdminNotesTitle => 'སྒྲིག་གཞིའི་ཟིན་ཐོ།';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'ཆོག་མཆན་སྤྲད་དུས།: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'ཆོག་མཆན་སྤྲད་དུས།';

  @override
  String get drillSummaryBackToDrills => 'སྦྱོང་བརྡར་ལ་ལོག་པ།';

  @override
  String get drillSummaryBusNumber => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ཨང་གྲངས།';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'ལག་བསྟར་བྱེད་མཁན།: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'སྦྱོང་བརྡར་གྱི་ཞིབ་ཕྲ།';

  @override
  String get drillSummaryDriverNotesTitle => 'ཁ་ལོ་བའི་ཟིན་ཐོ།';

  @override
  String get drillSummaryDuration => 'དུས་ཡུན།';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes སྐར་མ་ $seconds སྐར་ཆ།';
  }

  @override
  String get drillSummaryEndTime => 'མཇུག་བསྡུ་བའི་དུས་ཚོད།';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'གནས་སྤོས་པ།: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'གནས་སྤོས་པའི་དུས་ཚོད། $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'དཔང་རྟགས་བརྒྱུད་ལམ་གྱི་ཟུར་སྣོན།';

  @override
  String get drillSummaryGps => 'GPS ས་གནས་མཐུན་ཚད།';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'འཕྲེད་ཐིག: $lat, གཞུང་ཐིག: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'ID #$id ཡི་སྦྱོང་བརྡར་གྱི་སྤྱི་བསྡོམས་བླུགས་མ་ཐུབ།\n$error';
  }

  @override
  String get drillSummaryNoData => 'སྦྱོང་བརྡར་གྱི་གྲངས་གཞི་གང་ཡང་མ་རྙེད།';

  @override
  String get drillSummaryNotOnBus => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་མེད།';

  @override
  String get drillSummaryOnBusNotEvacuated => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ནང་ཡོད། - གནས་སྤོས་མེད།';

  @override
  String get drillSummaryPhotoEvidence => 'པར་རིས་དཔང་རྟགས།';

  @override
  String get drillSummaryRouteId => 'ལམ་ཐིག་ ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'སྡོད་སྟེགས།: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'འགོ་འཛུགས་དུས་ཚོད།';

  @override
  String get drillSummaryStatus => 'གནས་སྟངས།';

  @override
  String get drillSummaryStudentLogTitle => 'སློབ་མ་གནས་སྤོ་བའི་ཉིན་ཐོ།';

  @override
  String drillSummaryTitle(Object id) {
    return 'སྦྱོང་བརྡར་གྱི་སྤྱི་བསྡོམས། (#$id)';
  }

  @override
  String get drillSummaryType => 'སྦྱོང་བརྡར་གྱི་རིགས།';

  @override
  String get drillSummaryVideoEvidence => 'བརྙན་རིས་དཔང་རྟགས།';

  @override
  String drillTypeBus(Object busNumber) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར། $busNumber';
  }

  @override
  String get drillTypeClassification => 'སྦྱོང་བརྡར་གྱི་དབྱེ་བ་འདེམས་པ།';

  @override
  String get drillTypeCustomHint => 'གནས་སྤོ་བའི་སྦྱོང་བརྡར་གྱི་རིགས་སྒེར་བཟོས་འགོད་པ།';

  @override
  String get drillTypeInvalidState => 'རླངས་འཁོར་རམ་ལམ་ཐིག་གི་གནས་སྟངས་ནོར་འཁྲུལ།';

  @override
  String get drillTypeNameBusFire => 'སྤྱི་སྤྱོད་རླངས་འཁོར་ལ་མེ་ཤོར།';

  @override
  String get drillTypeNameDangerZone => 'ཉེན་ཁའི་ས་ཁུལ།';

  @override
  String get drillTypeNameDriverIncapacitation => 'ཁ་ལོ་བ་ནུས་མེད་དུ་གྱུར་པ།';

  @override
  String get drillTypeNameEquipmentOrientation => 'སྒྲིག་ཆས་ཀྱི་ཕྱོགས་གཏོགས།';

  @override
  String get drillTypeNameFrontDoor => 'མདུན་སྒོ།';

  @override
  String get drillTypeNameOthers => 'གཞན་པ།';

  @override
  String get drillTypeNameRearDoor => 'རྒྱབ་སྒོ།';

  @override
  String get drillTypeNameSideOrRoof => 'ཟུར་ངོས་སམ་ཐོག་ཁ།';

  @override
  String get drillTypeNameSplit => 'བགོ་བཤའ།';

  @override
  String get drillTypeNoRouteSelected => 'ལམ་ཐིག་གང་ཡང་འདེམས་མེད།';

  @override
  String get drillTypePreparation => 'སྦྱོང་བརྡར་གྲ་སྒྲིག';

  @override
  String get drillTypeProceed => 'སློབ་མའི་ཐོ་གཞུང་ལ་མདུན་སྐྱོད་བྱེད་པ།';

  @override
  String drillTypeRoute(Object routeName) {
    return 'ལམ་ཐིག: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'ལམ་ཐིག་འདེམས་པ།';

  @override
  String get drillTypeSpecifyCustom => 'སྦྱོང་བརྡར་གྱི་རིགས་ཞིབ་བཤད་འགོད་པ།';

  @override
  String get drillTypeTitle => 'སྦྱོང་བརྡར་གྱི་རིགས་འདེམས་པ།';

  @override
  String get drillTypeWarning => 'ལག་བསྟར་མ་བྱས་གོང་རླངས་འཁོར་བདེ་འཇགས་ངང་བཞག་ཡོད་པ་ཁག་ཐེག་བྱོས།';

  @override
  String get drillsAssignedVehicle => 'བསྐོ་བཞག་བྱས་པའི་རླངས་འཁོར།';

  @override
  String get drillsChecking => 'ཞིབ་བཤེར་བྱེད་བཞིན་པ།';

  @override
  String drillsHeader(Object id, Object type) {
    return 'སྦྱོང་བརྡར། #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'སྤྱི་སྤྱོད་རླངས་འཁོར་གང་ཡང་བསྐོ་བཞག་བྱས་མེད།';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར་ $busNumber ལ་སྦྱོང་བརྡར་གང་ཡང་ཐོ་འགོད་བྱས་མེད།';
  }

  @override
  String get drillsNoRoutesAvailable => 'སྦྱོང་བརྡར་འགོ་འཛུགས་བྱེད་པར་ལམ་ཐིག་གང་ཡང་མེད།';

  @override
  String get drillsShowSummary => 'སྤྱི་བསྡོམས་སྟོན་པ།';

  @override
  String get drillsStartDrill => 'སྦྱོང་བརྡར་འགོ་འཛུགས་པ།';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'ལག་བསྟར་བྱས་པ།: $date\nགནས་སྟངས།: $status';
  }

  @override
  String get drillsTitle => 'གནས་སྤོ་བའི་སྦྱོང་བརྡར།';

  @override
  String get drillsVehicleOutOfService => 'རླངས་འཁོར་ཞབས་ཞུ་མེད།';

  @override
  String get drillsVehicleOutOfServiceMessage => 'རླངས་འཁོར་འདི་ད་ལྟ་ཞབས་ཞུ་མེད་པས་སྦྱོང་བརྡར་ལ་བེད་སྤྱོད་བྱེད་མི་ཐུབ།';

  @override
  String get driverDetailsCdlClassLabel => 'CDL རིགས།';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ཁ་ལོ་བའི་ལག་ཁྱེར།';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'མིང་།: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'ལག་ཁྱེར་ཨང་།: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'འགྲུལ་པ།';

  @override
  String get driverDetailsEndorsementSchoolBus => 'སློབ་གྲྭའི་སྤྱི་སྤྱོད་རླངས་འཁོར།';

  @override
  String get driverDetailsEndorsementsTitle => 'ཆོག་མཆན་ཡོད་པའི་རྒྱབ་སྐྱོར།';

  @override
  String get driverDetailsExpiryDateLabel => 'དུས་ཚོད་འདས་བའི་ཉིན་གྲངས།';

  @override
  String get driverDetailsHolderSignature => 'འཛིན་མཁན་གྱི་མཚན་རྟགས།';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'འགྲེམས་སྤེལ་ཉིན་གྲངས།';

  @override
  String get driverDetailsLicenseDocTitle => 'ལག་ཁྱེར་ཡིག་ཆ།';

  @override
  String get driverDetailsLicenseNoLabel => 'ལག་ཁྱེར་ཨང་།';

  @override
  String get driverDetailsLicenseTitle => 'ལག་ཁྱེར་གྱི་ཞིབ་ཕྲ།';

  @override
  String get driverDetailsLicenseTypeLabel => 'ལག་ཁྱེར་གྱི་རིགས།';

  @override
  String get driverDetailsOfficialSeal => 'གཞུང་འབྲེལ་ཐམ་ག';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'རིགས།: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'སྐྱེས་དུས།: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'རྒྱབ་སྐྱོར།: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'དུས་འདས།: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'ལག་ཁྱེར་ཨང་།: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'མིང་།: $name';
  }

  @override
  String get driverDetailsTapToView => 'DL ཡིག་ཆ་བལྟ་བར་རེག་པ།';

  @override
  String get driverDetailsTitle => 'ཁ་ལོ་བའི་ཞིབ་ཕྲ།';

  @override
  String get dvirCategoryBusSafetySystems => 'སྤྱི་སྤྱོད་རླངས་འཁོར་གྱི་བདེ་འཇགས་མ་ལག';

  @override
  String get dvirCategoryCouplingDevices => 'སྦྲེལ་མཐུད་སྒྲིག་ཆས།';

  @override
  String get dvirCategoryEmergencyEquipment => 'ཛ་དྲག་གི་སྒྲིག་ཆས།';

  @override
  String get dvirCategoryHorn => 'རླངས་འཁོར་གྱི་དུང་།';

  @override
  String get dvirCategoryLightingReflectors => 'གློག་འོད་སྒྲིག་ཆས་དང་འོད་འཕྲོ་བ།';

  @override
  String get dvirCategoryMirrors => 'རྒྱབ་མཐོང་མེ་ལོང་།';

  @override
  String get dvirCategoryParkingBrake => 'འཇོག་བྱེད་འགོག་བྱེད།';

  @override
  String get dvirCategoryPassengerSeating => 'འགྲུལ་པའི་སྡོད་སྟེགས་དང་བཀག་སྡོམ།';

  @override
  String get dvirCategoryServiceBrakes => 'ཞབས་ཞུའི་འགོག་བྱེད།';

  @override
  String get dvirCategorySteeringMechanism => 'ཁ་ལོ་བསྒྱུར་བའི་ལམ་ལུགས།';

  @override
  String get dvirCategoryTires => 'འཁོར་ལོའི་འགྱིག་ཤུབས།';

  @override
  String get dvirCategoryWheelsRims => 'འཁོར་ལོ་དང་མཐའ་སྐོར།';

  @override
  String get dvirCategoryWipers => 'རླུང་འགོག་ཤེལ་གྱི་ཕྱིས་བྱེད།';

  @override
  String get dvirPostTripCapturePhoto => 'སྐྱོན་ཤོར་བའི་པར་རིས་བསྐྱོན་པ།';

  @override
  String get dvirPostTripComplianceTitle => 'བརྩི་སྲུང་གི་དཔང་ཡིག';

  @override
  String get dvirPostTripDefectButton => 'སྐྱོན་ཤོར་བ།';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'པར་མེད་པར་སྐྱོན་ཤོར་བ་སྙན་ཞུ་འབུལ་བ།';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'ཉེན་བརྡ།: ཁྱེད་ཀྱིས་བདེ་འཇགས་ས་ཁུལ་ ($zones) ལ་པར་མེད་པར་སྐྱོན་ཤོར་བ་སྙན་ཞུ་འབུལ་བཞིན་ཡོད། ཁྱེད་ཀྱིས་འགོད་འདོད་ཡོད་དམ།';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'ཞིབ་བཤེར།: སྤྱི་སྤྱོད་རླངས་འཁོར། $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'བདེ་འཇགས་ཀྱི་དཀའ་ངལ་གྱི་ཞིབ་ཕྲ་འགོད་པ།';

  @override
  String get dvirPostTripNotesLabel => 'ཟིན་ཐོ། (སྐྱོན་ཤོར་བར་ངེས་པར་དགོས།) དང་པར་རིས།';

  @override
  String get dvirPostTripNotesPassedHint => 'བདེ་འཇགས་ཀྱི་དཀའ་ངལ་གྱི་ཞིབ་ཕྲ་འགོད་པར་སྐྱོན་ཤོར་བ་འདེམས་པ།';

  @override
  String get dvirPostTripOdometerHeader => 'ད་ལྟའི་འཁོར་ལོའི་བགྲོད་ཐག་གི་གྲངས་གཞི།';

  @override
  String get dvirPostTripOdometerInstructions => 'སྤྱི་སྤྱོད་རླངས་འཁོར་གྱི་ཡོ་བྱད་ངོ་ཤོག་ཐོག་བསྟན་པའི་བགྲོད་ཐག་གི་གྲངས་གཞི་འགོད་པ།';

  @override
  String get dvirPostTripOdometerLabel => 'འཁོར་ལོའི་བགྲོད་ཐག (མེ་ལེ།)';

  @override
  String get dvirPostTripOdometerTitle => 'རླངས་འཁོར་གྱི་རྒྱུག་དུས་ཀྱི་ཚད་གཞི།';

  @override
  String get dvirPostTripOdometerWarning => 'མདུན་སྐྱོད་མ་བྱས་གོང་འཁོར་ལོའི་བགྲོད་ཐག་གི་གྲངས་གཞི་འགོད་རོགས།';

  @override
  String get dvirPostTripPassButton => 'འགྲོ་ཆོག';

  @override
  String get dvirPostTripPhotoAttached => 'པར་རིས་ལེགས་གྲུབ་ངང་སྦྱར་ཟིན།';

  @override
  String get dvirPostTripProgressLabel => 'ཞིབ་བཤེར་གྱི་འཕེལ་རིམ།';

  @override
  String get dvirPostTripSignatureCaptured => 'མཚན་རྟགས་བསྐྱོན་ཟིན།';

  @override
  String get dvirPostTripSignatureCert => 'ངས་རླངས་འཁོར་འདིའི་ཉིན་རེའི་ཞིབ་བཤེར་ཐོ་གཞུང་ FMCSA 396.11 གྱི་སྒྲིག་གཞི་དང་མཐུན་པར་ལེགས་གྲུབ་བྱུང་བ་ཁག་ཐེག་བྱེད་ཀྱི་ཡོད།';

  @override
  String get dvirPostTripSignatureTitle => 'ཁ་ལོ་བའི་མཚན་རྟགས་ཁག་ཐེག';

  @override
  String get dvirPostTripSubmitButton => 'ཞིབ་བཤེར་འགོད་པ།';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR ལེགས་གྲུབ་ངང་བཏང་ཟིན།';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return '$total ནང་གི་ས་ཁུལ་ $current';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ས་ཁུལ།';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'ངས་སྔོན་མ་བཏང་བའི་སྐྱོན་ཤོར་བའི་སྙན་ཞུ་བསྐྱར་ཞིབ་བྱས་པ་དང་། ཉམས་གསོ་བྱས་པ་ (གལ་ཏེ་ཡོད་ན།) ཁག་ཐེག་བྱས་པ་མ་ཟད། སྤྱི་སྤྱོད་རླངས་འཁོར་རྒྱུག་པར་བདེ་འཇགས་ཡིན་པ་བཤད་ཀྱི་ཡོད།';

  @override
  String get dvirPreTripActiveMessage => 'རླངས་འཁོར་འདི་ད་ལྟ་བེད་སྤྱོད་བྱེད་བཞིན་པ་དང་། སྐྱོན་ཤོར་བ་གང་ཡང་མེད། དེ་ཁག་ཐེག་བྱས་པ་དང་རྒྱུག་པར་བདེ་འཇགས་ཡིན།';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'བེད་སྤྱོད་བྱེད་བཞིན་པའི་ལམ་ཐིག: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'དོ་སྣང་དགོས།: སྔོན་མའི་ཉིན་གྱི་སྐྱོན་ཤོར་བའི་ཉིན་ཐོ་བཀོད་ཡོད།';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར་ཨང་གྲངས།: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'རླངས་འཁོར་གཏོང་བའི་ཞིབ་བཤེར།';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'མཚན་མ་འགོད་མ་ཐུབ།: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'སྔོན་མ་སྐྱོན་ཤོར་བ་གང་ཡང་ཐོ་འགོད་བྱས་མེད།';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'རླངས་འཁོར་འདི་སྔོན་མའི་ལས་དུས་རྗེས་ཀྱི་ཞིབ་བཤེར་སྐབས་གཙང་མ་ཡིན་པར་སྙན་ཞུ་འབུལ་ཡོད།';

  @override
  String get dvirPreTripNoRepairsNeeded => 'བདེ་འཇགས་ངང་རྒྱུག་པར་ཉམས་གསོ་གང་ཡང་མི་དགོས།';

  @override
  String get dvirPreTripOutOfServiceMessage => 'རླངས་འཁོར་འདི་ཉམས་གསོ་དང་བདག་སྐྱོང་ཆེད་ཞབས་ཞུ་མེད། བདེ་འཇགས་ཀྱི་དཀའ་ངལ་རྣམས་གཏོང་གཤོམ་མ་བྱས་གོང་བཟོ་གྲྭའི་ལས་བྱེད་པས་ཐག་གཅོད་བྱེད་དགོས།';

  @override
  String get dvirPreTripOutofServiceButton => 'རླངས་འཁོར་ཞབས་ཞུ་མེད།';

  @override
  String dvirPreTripReason(Object reason) {
    return 'རྒྱུ་མཚན།: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (ཉམས་གསོ་བྱས་ཟིན།)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'སྐྱོན་ཤོར་བ་གསར་པ་སྙན་ཞུ་འབུལ་བ།';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'ཉམས་གསོ་བྱེད་སྐབས་སྐྱོན་ཤོར་བ་གསར་པ་སྙན་ཞུ་འབུལ་བ་བཀག་སྡོམ་བྱས་ཡོད།';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'གནས་སྟངས།: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'སྐྱེལ་འདྲེན་གྱི་སྒྲིག་གཞི་ཆུང་བའི་ཐག་གཅོད།';

  @override
  String get dvirPreTripReturnToHomeButton => 'ཁྱིམ་ལ་ལོག་པ།';

  @override
  String get dvirPreTripSignOffTitle => 'རྐང་ཐང་ལ་མདུན་སྐྱོད་བྱེད་པར་མཚན་རྟགས་འགོད་པ།';

  @override
  String get dvirPreTripSignedSuccess => 'ཁག་ཐེག་ལེགས་གྲུབ་ངང་མཚན་རྟགས་བརྒྱབ་ཟིན། སྔོན་འགྲོའི་འགྲུལ་བཞུད་བཀག་སྡོམ་ཕྱེས་ཟིན།';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ཁག་ཐེག་འགོད་པ།';

  @override
  String get dvirPreTripTitle => 'སྔོན་འགྲོའི་འགྲུལ་བཞུད་ཀྱི་ཁག་ཐེག';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'རླངས་འཁོར་གྱི་གནས་སྟངས།: $status';
  }

  @override
  String get dvirSigDrawTitle => 'མཚན་རྟགས་འབྲི་བ།';

  @override
  String get dvirSigPreviewLabel => 'བསྐྱོན་ཟིན་པའི་མཚན་རྟགས་ཀྱི་སྔོན་མཐོང་།';

  @override
  String get dvirSigRedraw => 'བསྐྱར་དུ་འབྲི་བ།';

  @override
  String get dvirSigSave => 'མཚན་རྟགས་ཉར་ཚགས་བྱེད་པ།';

  @override
  String get dvirSigTapToDraw => 'མཚན་རྟགས་འབྲི་བར་རེག་པ། (ངེས་པར་དགོས།)';

  @override
  String get dvirSigWatermark => 'གཞུང་དུ་འབྲི་བ། (འོག་ནས་གོང་དུ།)';

  @override
  String get forgotPasswordCancel => 'རྩིས་མེད།';

  @override
  String get forgotPasswordEmailLabel => 'གློག་འཕྲིན།';

  @override
  String get forgotPasswordInvalidEmail => 'གློག་འཕྲིན་ཡང་དག་པ་ཞིག་འགོད་རོགས།';

  @override
  String get forgotPasswordSend => 'གཏོང་བ།';

  @override
  String get forgotPasswordSuccess => 'གལ་ཏེ་གློག་འཕྲིན་དེ་ཡོད་ན། བསྐྱར་སྒྲིག་བྱེད་པའི་འབྲེལ་ཐག་ཅིག་བཏང་ཟིན།';

  @override
  String get genericBack => 'རྒྱབ།';

  @override
  String get genericCancel => 'རྩིས་མེད།';

  @override
  String get genericClear => 'གཙང་མ།';

  @override
  String get genericClose => 'རྒྱབ་པ།';

  @override
  String get genericConfirm => 'ཁག་ཐེག';

  @override
  String get genericEdit => 'བཟོ་བཅོས།';

  @override
  String get genericError => 'ནོར་འཁྲུལ་ཞིག་བྱུང་འདུག';

  @override
  String get genericLoading => 'བླུགས་བཞིན་པ།';

  @override
  String get genericNext => 'རྗེས་མ།';

  @override
  String get genericOk => 'འགྲིག';

  @override
  String get genericRetry => 'བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་པ།';

  @override
  String get genericSuccess => 'ལེགས་གྲུབ།';

  @override
  String homeBusLabel(Object busId) {
    return 'སྤྱི་སྤྱོད་རླངས་འཁོར།: $busId';
  }

  @override
  String get homeDispatchBlocked => 'གཏོང་གཤོམ་བཀག་སྡོམ།';

  @override
  String get homeDispatchBlockedTitle => 'གཏོང་གཤོམ་བཀག་སྡོམ།';

  @override
  String get homeErrorNoRoutesPreTrip => 'སྔོན་འགྲོའི་འགྲུལ་བཞུད་བྱེད་པར་ལམ་ཐིག་གང་ཡང་མེད།';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'སར་བར་འགྲུལ་བཞུད་འགོ་འཛུགས་མ་ཐུབ།: $error';
  }

  @override
  String homeHi(Object name) {
    return 'བཀྲ་ཤིས་བདེ་ལེགས།, $name';
  }

  @override
  String get homeLogout => 'ཕྱིར་འཐེན།';

  @override
  String get homeMenuAppInfo => 'App གནས་ཚུལ།';

  @override
  String get homeMenuDrill => 'སྦྱོང་བརྡར།';

  @override
  String get homeMenuDriverDetails => 'ཁ་ལོ་བའི་ཞིབ་ཕྲ།';

  @override
  String get homeMenuLanguage => 'སྐད་ཡིག';

  @override
  String get homeMenuPreTrip => 'སྔོན་འགྲོའི་འགྲུལ་བཞུད་ཀྱི་ཞིབ་བཤེར།';

  @override
  String get homeNoRoutes => 'ལམ་ཐིག་གང་ཡང་མེད།';

  @override
  String get homeReviewVerifyPreTrip => 'སྔོན་འགྲོའི་འགྲུལ་བཞུད་བསྐྱར་ཞིབ་དང་ཁག་ཐེག';

  @override
  String get homeSearchHint => 'ལམ་ཐིག་འཚོལ་བ།';

  @override
  String get homeStart => 'འགོ་འཛུགས་པ།';

  @override
  String get homeTitle => 'ཁྱིམ།';

  @override
  String get homeVehicleOutOfServiceDefault => 'རླངས་འཁོར་ད་ལྟ་ཞབས་ཞུ་མེད།';

  @override
  String get homeVehicleReady => 'རླངས་འཁོར་གྲ་སྒྲིག་བྱས་པ་དང་བདེ་འཇགས་ངང་རྒྱུག་པར་ཁག་ཐེག་བྱས་ཟིན།';

  @override
  String get languageTitle => 'སྐད་ཡིག';

  @override
  String get loginButton => 'ནང་འཛུལ།';

  @override
  String get loginEmailOrPhoneLabel => 'གློག་འཕྲིན་ནམ་ཁ་པར་ཨང་གྲངས།';

  @override
  String get loginErrorEnterPassword => 'གསང་གྲངས་འགོད་རོགས།';

  @override
  String get loginErrorEnterUsername => 'སྤྱོད་མཁན་གྱི་མིང་འགོད་རོགས།';

  @override
  String get loginErrorFailed => 'ནང་འཛུལ་མ་འགྲིག བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་རོགས།';

  @override
  String get loginErrorInvalidEmailOrPhone => 'གློག་འཕྲིན་ནམ་ཁ་པར་ཨང་གྲངས་ཡང་དག་པ་ཞིག་འགོད་རོགས།';

  @override
  String get loginForgotPassword => 'གསང་གྲངས་བརྗེད་སོང་ངམ།';

  @override
  String get loginPasswordLabel => 'གསང་གྲངས།';

  @override
  String get mapChildrenTooltip => 'བྱིས་པ་དང་ལྟ་སྐྱོང་བ།';

  @override
  String get mapConfirmMessage => 'ཁྱེད་ཀྱིས་འགྲུལ་བཞུད་མཇུག་བསྡུ་འདོད་ཡོད་དམ།';

  @override
  String get mapConfirmTitle => 'ཁག་ཐེག';

  @override
  String get mapCurrentPosition => 'ད་ལྟའི་གནས་ས།';

  @override
  String get mapNo => 'མིན།';

  @override
  String get mapReconnectMessage => 'ས་གནས་གསར་སྒྱུར་ཡང་ཡང་མ་འགྲིག་པས་དྲ་རྒྱ་ཞིབ་བཤེར་བྱེད་རོགས།';

  @override
  String get mapReconnectTitle => 'འདེད་རྩོལ།';

  @override
  String get mapStop => 'འཇོག་པ།';

  @override
  String get mapStopping => 'འཇོག་བཞིན་པ།';

  @override
  String get mapStopsTooltip => 'འཇོག་ས།';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'སྔོན་གྱི་ $seconds སྐར་ཆ་ནས་གསར་སྒྱུར་བྱས་པ།';
  }

  @override
  String get mapWaitingGps => 'GPS སྒུག་བཞིན་པ།';

  @override
  String get mapYes => 'ཡིན།';

  @override
  String get splashDriverApp => 'ཁ་ལོ་བའི་ App';

  @override
  String get stopsActionUndo => 'ཕྱིར་འཐེན།';

  @override
  String get stopsCancelledSuccess => 'ལེགས་གྲུབ་ངང་རྩིས་མེད་བྱས་ཟིན།';

  @override
  String get stopsDefaultLabel => 'འཇོག་ས།';

  @override
  String get stopsGenericError => 'ནོར་འཁྲུལ་ཞིག་བྱུང་འདུག བསྐྱར་དུ་ཚོད་ལྟ་བྱེད་རོགས།';

  @override
  String get stopsStatusComplete => 'ལེགས་གྲུབ།';

  @override
  String get stopsStatusDone => 'ལེགས་གྲུབ།';

  @override
  String stopsSubmitCount(Object count) {
    return 'འགོད་པ། ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'ལེགས་གྲུབ་ངང་བཏང་ཟིན།';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'འདེམས་པ་ $selected · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'འཇོག་པ།';

  @override
  String get stopsTypePick => 'བསྒྲུགས་པ།';

  @override
  String stopsUndoCount(Object count) {
    return 'ཕྱིར་འཐེན། ($count)';
  }

  @override
  String get stopsUndoTooltip => 'བསྒྲུགས་པ་/བཞག་པ་ཕྱིར་འཐེན་བྱེད་པ།';

  @override
  String get tripConfirmCancel => 'རྩིས་མེད།';

  @override
  String get tripConfirmOk => 'འགྲིག';

  @override
  String get tripConfirmTitle => 'འདེད་རྩོལ།';

  @override
  String get tripErrorLocationRequired => 'འགྲུལ་བཞུད་འགོ་འཛུགས་པར་ས་གནས་ཀྱི་ཆོག་མཆན་དགོས།';

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
