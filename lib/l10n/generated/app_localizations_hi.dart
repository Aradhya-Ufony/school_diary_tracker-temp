import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appInfoBuild => 'बिल्ड नंबर';

  @override
  String get appInfoDevice => 'डिवाइस मॉडल';

  @override
  String get appInfoOS => 'OS वर्ज़न';

  @override
  String get appInfoPackage => 'पैकेज';

  @override
  String get appInfoTitle => 'ऐप की जानकारी';

  @override
  String get appInfoVersion => 'ऐप वर्ज़न';

  @override
  String get appTitleSchoolDiary => 'SD ट्रैकर';

  @override
  String get childrenActionGuardians => 'अभिभावक';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name के लिए अधिकृत अभिभावक';
  }

  @override
  String get childrenNoGuardians => 'इस बच्चे के लिए फ़ाइल में कोई अधिकृत अभिभावक नहीं है।';

  @override
  String get childrenStatusDropped => 'ड्रॉप किया गया';

  @override
  String get childrenStatusPending => 'लंबित';

  @override
  String get childrenStatusPicked => 'पिक किया गया';

  @override
  String childrenTitle(Object routeName) {
    return 'बच्चे - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'अनुपस्थित / बस में नहीं ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'निकाला गया';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'निकाला गया: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'कोई छात्र अनुपस्थित नहीं है।';

  @override
  String get drillChecklistNoStudentsOnBus => 'बस में कोई छात्र चिह्नित नहीं है।';

  @override
  String get drillChecklistNotOnBus => 'बस में नहीं';

  @override
  String get drillChecklistOnBusNotEvacuated => 'बस में हैं - निकाला नहीं गया';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'बस में हैं ($count)';
  }

  @override
  String get drillChecklistProceed => 'प्रमाण कैप्चर के लिए आगे बढ़ें';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'रूट (लाइव): $routeName';
  }

  @override
  String get drillChecklistTitle => 'निकासी ड्रिल चेकलिस्ट';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count बेहिसाब छात्र शेष!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'क्या आप वाकई यह ड्रिल लॉग सबमिट करना चाहते हैं? इस कार्रवाई को पूर्ववत नहीं किया जा सकता है।';

  @override
  String get drillEvidenceConfirmSubmission => 'ड्रिल सबमिशन की पुष्टि करें';

  @override
  String get drillEvidenceDriverNotesHint => 'ड्रिल निष्पादन, छात्र के व्यवहार, उपयोग किए गए निकास पथ और देखे गए किसी भी अपवाद का वर्णन करें...';

  @override
  String get drillEvidenceDriverNotesLabel => 'ड्राइवर के नोट्स (न्यूनतम 10 वर्ण):';

  @override
  String get drillEvidenceFailed => 'सबमिशन विफल';

  @override
  String get drillEvidenceMandatoryWarning => 'ड्रिल सबमिट करने के लिए कम से कम 1 फ़ोटो या वीडियो प्रमाण अनिवार्य है।';

  @override
  String get drillEvidenceRecordVideo => 'वीडियो रिकॉर्ड करें';

  @override
  String get drillEvidenceRetrySubmission => 'पुनः सबमिट करने का प्रयास करें';

  @override
  String get drillEvidenceReturnToDashboard => 'डैशबोर्ड पर वापस लौटें';

  @override
  String get drillEvidenceSubmitButton => 'ड्रिल लॉग सबमिट करें';

  @override
  String get drillEvidenceSubmitting => 'ड्रिल लॉग सबमिट किया जा रहा है...';

  @override
  String get drillEvidenceSuccess => 'सबमिशन सफल!';

  @override
  String get drillEvidenceSuccessMessage => 'निकासी ड्रिल लॉग सफलतापूर्वक अपलोड कर दिया गया है और अनुमोदन के लिए लंबित है।';

  @override
  String get drillEvidenceTakePhoto => 'फ़ोटो लें';

  @override
  String get drillEvidenceTitle => 'अनिवार्य ड्रिल प्रमाण';

  @override
  String get drillEvidenceUploading => 'प्रमाण और चेकलिस्ट डेटा अपलोड किया जा रहा है';

  @override
  String drillRosterBus(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'ड्रिल: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'उपस्थिति दर्ज करें';

  @override
  String get drillRosterNoStudents => 'इस रूट पर कोई छात्र पंजीकृत नहीं है।';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'उपस्थित: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'ड्रिल चेकलिस्ट के लिए आगे बढ़ें';

  @override
  String drillRosterRoute(Object routeName) {
    return 'रूट: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'सीट: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'सभी चुनें';

  @override
  String get drillSummaryAdminNotesTitle => 'एडमिन नोट्स';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'पर स्वीकृत: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'पर स्वीकृत';

  @override
  String get drillSummaryBackToDrills => 'ड्रिल पर वापस जाएं';

  @override
  String get drillSummaryBusNumber => 'बस नंबर';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'द्वारा आयोजित: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'ड्रिल विवरण';

  @override
  String get drillSummaryDriverNotesTitle => 'ड्राइवर के नोट्स';

  @override
  String get drillSummaryDuration => 'अवधि';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes मिनट $seconds सेकंड';
  }

  @override
  String get drillSummaryEndTime => 'समाप्ति समय';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'निकाला गया: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return '$time पर निकाला गया';
  }

  @override
  String get drillSummaryEvidenceTitle => 'प्रमाण मीडिया अटैचमेंट';

  @override
  String get drillSummaryGps => 'GPS निर्देशांक';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'अक्षांश: $lat, देशांतर: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'आईडी #$id के लिए ड्रिल सारांश लोड करने में विफल।\n$error';
  }

  @override
  String get drillSummaryNoData => 'कोई ड्रिल डेटा नहीं मिला।';

  @override
  String get drillSummaryNotOnBus => 'बस में नहीं';

  @override
  String get drillSummaryOnBusNotEvacuated => 'बस में हैं - निकाला नहीं गया';

  @override
  String get drillSummaryPhotoEvidence => 'फ़ोटो प्रमाण';

  @override
  String get drillSummaryRouteId => 'रूट आईडी';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'सीट: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'प्रारंभ समय';

  @override
  String get drillSummaryStatus => 'स्थिति';

  @override
  String get drillSummaryStudentLogTitle => 'छात्र निकासी लॉग';

  @override
  String drillSummaryTitle(Object id) {
    return 'ड्रिल सारांश (#$id)';
  }

  @override
  String get drillSummaryType => 'ड्रिल का प्रकार';

  @override
  String get drillSummaryVideoEvidence => 'वीडियो प्रमाण';

  @override
  String drillTypeBus(Object busNumber) {
    return 'बस $busNumber';
  }

  @override
  String get drillTypeClassification => 'ड्रिल वर्गीकरण चुनें:';

  @override
  String get drillTypeCustomHint => 'कस्टम निकासी ड्रिल प्रकार दर्ज करें...';

  @override
  String get drillTypeInvalidState => 'अमान्य वाहन या रूट स्थिति।';

  @override
  String get drillTypeNameBusFire => 'बस में आग';

  @override
  String get drillTypeNameDangerZone => 'खतरे का क्षेत्र (डेंजर ज़ोन)';

  @override
  String get drillTypeNameDriverIncapacitation => 'ड्राइवर की अक्षमता';

  @override
  String get drillTypeNameEquipmentOrientation => 'उपकरण ओरिएंटेशन';

  @override
  String get drillTypeNameFrontDoor => 'सामने का दरवाज़ा';

  @override
  String get drillTypeNameOthers => 'अन्य';

  @override
  String get drillTypeNameRearDoor => 'पीछे का दरवाज़ा';

  @override
  String get drillTypeNameSideOrRoof => 'साइड या छत';

  @override
  String get drillTypeNameSplit => 'स्प्लिट';

  @override
  String get drillTypeNoRouteSelected => 'कोई रूट नहीं चुना गया';

  @override
  String get drillTypePreparation => 'ड्रिल की तैयारी';

  @override
  String get drillTypeProceed => 'छात्र रोस्टर के लिए आगे बढ़ें';

  @override
  String drillTypeRoute(Object routeName) {
    return 'रूट: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'रूट चुनें:';

  @override
  String get drillTypeSpecifyCustom => 'ड्रिल प्रकार का विवरण निर्दिष्ट करें:';

  @override
  String get drillTypeTitle => 'ड्रिल का प्रकार चुनें';

  @override
  String get drillTypeWarning => 'सुनिश्चित करें कि निष्पादन शुरू करने से पहले वाहन सुरक्षित रूप से पार्क किया गया है।';

  @override
  String get drillsAssignedVehicle => 'असाइन किया गया वाहन';

  @override
  String get drillsChecking => 'जांच की जा रही है...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'ड्रिल #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'कोई बस असाइन नहीं की गई';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'बस $busNumber के लिए कोई ड्रिल रिकॉर्ड नहीं की गई';
  }

  @override
  String get drillsNoRoutesAvailable => 'ड्रिल शुरू करने के लिए कोई रूट उपलब्ध नहीं है।';

  @override
  String get drillsShowSummary => 'सारांश दिखाएं';

  @override
  String get drillsStartDrill => 'ड्रिल शुरू करें';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'आयोजित: $date\nस्थिति: $status';
  }

  @override
  String get drillsTitle => 'निकासी ड्रिल';

  @override
  String get drillsVehicleOutOfService => 'वाहन सेवा से बाहर है';

  @override
  String get drillsVehicleOutOfServiceMessage => 'यह वाहन वर्तमान में सेवा से बाहर है और इसका उपयोग ड्रिल के लिए नहीं किया जा सकता है।';

  @override
  String get driverDetailsCdlClassLabel => 'CDL क्लास';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ड्राइविंग लाइसेंस';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'नाम: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'लाइसेंस: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'यात्री';

  @override
  String get driverDetailsEndorsementSchoolBus => 'स्कूल बस';

  @override
  String get driverDetailsEndorsementsTitle => 'प्राप्त अनुमोदन (Endorsements)';

  @override
  String get driverDetailsExpiryDateLabel => 'समाप्ति तिथि';

  @override
  String get driverDetailsHolderSignature => 'धारक के हस्ताक्षर';

  @override
  String driverDetailsId(Object driverId) {
    return 'आईडी: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'जारी करने की तिथि';

  @override
  String get driverDetailsLicenseDocTitle => 'लाइसेंस दस्तावेज़';

  @override
  String get driverDetailsLicenseNoLabel => 'लाइसेंस नंबर';

  @override
  String get driverDetailsLicenseTitle => 'लाइसेंस विवरण';

  @override
  String get driverDetailsLicenseTypeLabel => 'लाइसेंस का प्रकार';

  @override
  String get driverDetailsOfficialSeal => 'आधिकारिक मुहर';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'क्लास: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'जन्म तिथि: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'अनुमोदन: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'समाप्ति: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'लाइसेंस नं: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'नाम: $name';
  }

  @override
  String get driverDetailsTapToView => 'DL दस्तावेज़ देखने के लिए टैप करें';

  @override
  String get driverDetailsTitle => 'ड्राइवर का विवरण';

  @override
  String get dvirCategoryBusSafetySystems => 'बस-विशिष्ट सुरक्षा प्रणालियां';

  @override
  String get dvirCategoryCouplingDevices => 'कपलिंग डिवाइस';

  @override
  String get dvirCategoryEmergencyEquipment => 'आपातकालीन उपकरण';

  @override
  String get dvirCategoryHorn => 'हॉर्न';

  @override
  String get dvirCategoryLightingReflectors => 'लाइटिंग डिवाइस और रिफ्लेक्टर';

  @override
  String get dvirCategoryMirrors => 'रियर-विज़न दर्पण';

  @override
  String get dvirCategoryParkingBrake => 'पार्किंग ब्रेक';

  @override
  String get dvirCategoryPassengerSeating => 'यात्री बैठक और सुरक्षा घेरे';

  @override
  String get dvirCategoryServiceBrakes => 'सर्विस ब्रेक';

  @override
  String get dvirCategorySteeringMechanism => 'स्टीयरिंग तंत्र';

  @override
  String get dvirCategoryTires => 'टायर';

  @override
  String get dvirCategoryWheelsRims => 'पहिए और रिम';

  @override
  String get dvirCategoryWipers => 'विंडशील्ड वाइपर';

  @override
  String get dvirPostTripCapturePhoto => 'खराबी की फ़ोटो कैप्चर करें';

  @override
  String get dvirPostTripComplianceTitle => 'अनुपालन प्रमाणन';

  @override
  String get dvirPostTripDefectButton => 'खराबी';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'फ़ोटो के बिना खराबी की रिपोर्ट करना';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'चेतावनी: आप फ़ोटो संलग्न किए बिना सुरक्षा क्षेत्रों ($zones) पर खराबी की रिपोर्ट कर रहे हैं। क्या आप वाकई वैसे भी सबमिट करना चाहते हैं?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'निरीक्षण: बस $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'सुरक्षा चिंता का विवरण दर्ज करें...';

  @override
  String get dvirPostTripNotesLabel => 'नोट्स (खराबी होने पर अनिवार्य) और फ़ोटो';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'सुरक्षा चिंता का विवरण दर्ज करने के लिए \'खराबी\' चुनें...';

  @override
  String get dvirPostTripOdometerHeader => 'वर्तमान ओडोमीटर रीडिंग';

  @override
  String get dvirPostTripOdometerInstructions => 'बस के इंस्ट्रूमेंट पैनल पर दिखाए गए अनुसार ही माइलेज रीडिंग दर्ज करें:';

  @override
  String get dvirPostTripOdometerLabel => 'ओडोमीटर (माइल्स)';

  @override
  String get dvirPostTripOdometerTitle => 'वाहन रन टाइम मीट्रिक';

  @override
  String get dvirPostTripOdometerWarning => 'कृपया आगे बढ़ने से पहले ओडोमीटर रीडिंग दर्ज करें।';

  @override
  String get dvirPostTripPassButton => 'पास';

  @override
  String get dvirPostTripPhotoAttached => 'फ़ोटो सफलतापूर्वक संलग्न की गई।';

  @override
  String get dvirPostTripProgressLabel => 'निरीक्षण प्रगति';

  @override
  String get dvirPostTripSignatureCaptured => 'हस्ताक्षर कैप्चर किए गए।';

  @override
  String get dvirPostTripSignatureCert => 'मैं प्रमाणित करता हूं कि यह वाहन वॉकअराउंड चेकलिस्ट रिपोर्ट FMCSA 396.11 नियमों के अनुपालन में पूरी कर ली गई है।';

  @override
  String get dvirPostTripSignatureTitle => 'ड्राइवर हस्ताक्षर सत्यापन';

  @override
  String get dvirPostTripSubmitButton => 'निरीक्षण सबमिट करें';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR सफलतापूर्वक सबमिट किया गया।';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ज़ोन $current / $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ज़ोन';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'मैं स्वीकार करता हूं कि मैंने पिछली सबमिट की गई खराबी रिपोर्ट की समीक्षा कर ली है और मरम्मत (यदि कोई हो) का सत्यापन कर लिया है और कहता हूं कि बस संचालन के लिए सुरक्षित है।';

  @override
  String get dvirPreTripActiveMessage => 'यह वाहन सक्रिय है और इसमें कोई खुली खराबी नहीं है। यह सत्यापित है और संचालन के लिए सुरक्षित है।';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'सक्रिय रूट: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ध्यान आवश्यक है: पिछले दिन की खराबी लॉग की गई';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'बस नंबर: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'वाहन प्रेषण जांच (डिस्पैच चेक)';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'हस्ताक्षर करने में विफल: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'कोई पूर्व खराबी लॉग नहीं की गई';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'पिछले पोस्ट-ट्रिप शिफ्ट निरीक्षण में इस वाहन को साफ (दोष-मुक्त) बताया गया था।';

  @override
  String get dvirPreTripNoRepairsNeeded => 'सुरक्षित संचालन के लिए किसी मरम्मत की आवश्यकता नहीं है।';

  @override
  String get dvirPreTripOutOfServiceMessage => 'यह वाहन मरम्मत/रखरखाव के लिए सेवा से बाहर है। प्रेषण (डिस्पैच) से पहले दुकान के कर्मचारियों द्वारा सुरक्षा संबंधी चिंताओं का समाधान किया जाना चाहिए।';

  @override
  String get dvirPreTripOutofServiceButton => 'वाहन सेवा से बाहर है';

  @override
  String dvirPreTripReason(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (मरम्मत की गई)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'नई खराबी की रिपोर्ट करें';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'मरम्मत के दौरान नई खराबी की रिपोर्टिंग अक्षम कर दी गई है।';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'परिवहन उप-प्रशासक समाधान';

  @override
  String get dvirPreTripReturnToHomeButton => 'होम पर वापस लौटें';

  @override
  String get dvirPreTripSignOffTitle => 'वॉकअराउंड के लिए आगे बढ़ने के लिए साइन-ऑफ़ करें';

  @override
  String get dvirPreTripSignedSuccess => 'सत्यापन सफलतापूर्वक हस्ताक्षरित। प्री-ट्रिप अनलॉक किया गया।';

  @override
  String get dvirPreTripSubmitVerificationButton => 'सत्यापन सबमिट करें';

  @override
  String get dvirPreTripTitle => 'प्री-ट्रिप सत्यापन';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'वाहन की स्थिति: $status';
  }

  @override
  String get dvirSigDrawTitle => 'हस्ताक्षर ड्रा करें';

  @override
  String get dvirSigPreviewLabel => 'कैप्चर किए गए हस्ताक्षर का पूर्वावलोकन:';

  @override
  String get dvirSigRedraw => 'पुनः ड्रा करें';

  @override
  String get dvirSigSave => 'हस्ताक्षर सहेजें';

  @override
  String get dvirSigTapToDraw => 'हस्ताक्षर ड्रा करने के लिए टैप करें (आवश्यक)';

  @override
  String get dvirSigWatermark => 'लंबवत रूप से हस्ताक्षर करें (नीचे से ऊपर की ओर)';

  @override
  String get forgotPasswordCancel => 'रद्द करें';

  @override
  String get forgotPasswordEmailLabel => 'ईमेल';

  @override
  String get forgotPasswordInvalidEmail => 'कृपया एक वैध ईमेल दर्ज करें';

  @override
  String get forgotPasswordSend => 'भेजें';

  @override
  String get forgotPasswordSuccess => 'यदि वह ईमेल मौजूद है, तो एक रीसेट लिंक भेज दिया गया है।';

  @override
  String get genericBack => 'पीछे';

  @override
  String get genericCancel => 'रद्द करें';

  @override
  String get genericClear => 'साफ़ करें';

  @override
  String get genericClose => 'बंद करें';

  @override
  String get genericConfirm => 'पुष्टि करें';

  @override
  String get genericEdit => 'संपादित करें';

  @override
  String get genericError => 'कुछ गलत हो गया';

  @override
  String get genericLoading => 'लोड हो रहा है...';

  @override
  String get genericNext => 'अगला';

  @override
  String get genericOk => 'ठीक है';

  @override
  String get genericRetry => 'पुनः प्रयास करें';

  @override
  String get genericSuccess => 'सफलता';

  @override
  String homeBusLabel(Object busId) {
    return 'बस: $busId';
  }

  @override
  String get homeDispatchBlocked => 'प्रेषण (डिस्पैच) अवरुद्ध';

  @override
  String get homeDispatchBlockedTitle => 'प्रेषण (डिस्पैच) अवरुद्ध';

  @override
  String get homeErrorNoRoutesPreTrip => 'प्री-ट्रिप करने के लिए कोई रूट उपलब्ध नहीं है।';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'सर्वर पर ट्रिप शुरू करने में विफल: $error';
  }

  @override
  String homeHi(Object name) {
    return 'नमस्ते, $name';
  }

  @override
  String get homeLogout => 'लॉग आउट';

  @override
  String get homeMenuAppInfo => 'ऐप की जानकारी';

  @override
  String get homeMenuDrill => 'ड्रिल';

  @override
  String get homeMenuDriverDetails => 'ड्राइवर का विवरण';

  @override
  String get homeMenuLanguage => 'भाषा';

  @override
  String get homeMenuPreTrip => 'प्री-ट्रिप निरीक्षण';

  @override
  String get homeNoRoutes => 'कोई रूट उपलब्ध नहीं';

  @override
  String get homeReviewVerifyPreTrip => 'समीक्षा करें और प्री-ट्रिप सत्यापित करें';

  @override
  String get homeSearchHint => 'रूट खोजें';

  @override
  String get homeStart => 'शुरू करें';

  @override
  String get homeTitle => 'होम';

  @override
  String get homeVehicleOutOfServiceDefault => 'वाहन वर्तमान में सेवा से बाहर है।';

  @override
  String get homeVehicleReady => 'वाहन तैयार है और सुरक्षित संचालन के लिए सत्यापित है।';

  @override
  String get languageTitle => 'भाषा';

  @override
  String get loginButton => 'लॉग इन करें';

  @override
  String get loginEmailOrPhoneLabel => 'ईमेल या फोन नंबर';

  @override
  String get loginErrorEnterPassword => 'कृपया पासवर्ड दर्ज करें';

  @override
  String get loginErrorEnterUsername => 'कृपया उपयोगकर्ता नाम दर्ज करें';

  @override
  String get loginErrorFailed => 'लॉगिन विफल रहा। कृपया पुनः प्रयास करें।';

  @override
  String get loginErrorInvalidEmailOrPhone => 'कृपया एक वैध ईमेल या फोन नंबर दर्ज करें';

  @override
  String get loginForgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get loginPasswordLabel => 'पासवर्ड';

  @override
  String get mapChildrenTooltip => 'बच्चे और अभिभावक';

  @override
  String get mapConfirmMessage => 'क्या आप वाकई ट्रिप बंद करना चाहते हैं?';

  @override
  String get mapConfirmTitle => 'पुष्टि करें';

  @override
  String get mapCurrentPosition => 'वर्तमान स्थान';

  @override
  String get mapNo => 'नहीं';

  @override
  String get mapReconnectMessage => 'स्थान अपडेट बार-बार विफल हो रहा है, कृपया अपने इंटरनेट की जांच करें।';

  @override
  String get mapReconnectTitle => 'ट्रैकर';

  @override
  String get mapStop => 'रोकें';

  @override
  String get mapStopping => 'रोका जा रहा है...';

  @override
  String get mapStopsTooltip => 'स्टॉप';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds सेकंड पहले अपडेट किया गया';
  }

  @override
  String get mapWaitingGps => 'जीपीएस की प्रतीक्षा कर रहा है...';

  @override
  String get mapYes => 'हां';

  @override
  String get splashDriverApp => 'ड्राइवर ऐप';

  @override
  String get stopsActionUndo => 'पूर्ववत (Undo)';

  @override
  String get stopsCancelledSuccess => 'सफलतापूर्वक रद्द किया गया';

  @override
  String get stopsDefaultLabel => 'स्टॉप';

  @override
  String get stopsGenericError => 'कुछ गलत हो गया। कृपया पुनः प्रयास करें।';

  @override
  String get stopsStatusComplete => 'पूरा';

  @override
  String get stopsStatusDone => 'हो गया';

  @override
  String stopsSubmitCount(Object count) {
    return 'सबमिट ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'सफलतापूर्वक सबमिट किया गया';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected चयनित · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'ड्रॉप';

  @override
  String get stopsTypePick => 'पिक';

  @override
  String stopsUndoCount(Object count) {
    return 'पूर्ववत (Undo) ($count)';
  }

  @override
  String get stopsUndoTooltip => 'पिक/ड्रॉप को पूर्ववत करें';

  @override
  String get tripConfirmCancel => 'रद्द करें';

  @override
  String get tripConfirmOk => 'ठीक है';

  @override
  String get tripConfirmTitle => 'ट्रैकर';

  @override
  String get tripErrorLocationRequired => 'ट्रिप शुरू करने के लिए स्थान अनुमति आवश्यक है।';

  @override
  String get homeMenuPostCrashReporting => 'दुर्घटना के बाद की रिपोर्ट';

  @override
  String homeVehicleReason(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'अक्षांश: $lat, देशांतर: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'स्थान खोजें (उदा. मार्केट स्ट्रीट)';

  @override
  String get crashLocationPickerTitle => 'मानचित्र पर स्थान चुनें';

  @override
  String get crashLocationPickerTooltip => 'स्थान की पुष्टि करें';

  @override
  String get incidentDashboardDescription => 'घटना प्रबंधन के साथ आगे बढ़ने या पिछली रिपोर्ट देखने के लिए कोई कार्रवाई चुनें।';

  @override
  String get incidentDashboardHeadline => 'दुर्घटना (क्रैश) के बाद घटना की रिपोर्टिंग';

  @override
  String get incidentDashboardLogNew => 'नई दुर्घटना (क्रैश) लॉग करें';

  @override
  String get incidentDashboardLogNewSubtitle => 'चरण दर चरण क्रैश रिपोर्ट प्रारंभ करें';

  @override
  String get incidentDashboardTitle => 'दुर्घटना के बाद की घटना';

  @override
  String get incidentDashboardViewHistory => 'इतिहास देखें';

  @override
  String get incidentDashboardViewHistorySubtitle => 'पिछली क्रैश रिपोर्ट और स्थिति देखें';

  @override
  String get incidentDetailsAdminLetter => 'एडमिन पत्र';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT अल्कोहल टेस्ट उलटी गिनती (2 घंटे की सीमा)';

  @override
  String get incidentDetailsBranchId => 'ब्रांच आईडी';

  @override
  String get incidentDetailsBusPlate => 'बस लाइसेंस नंबर';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'चालान (Citation) का प्रभाव: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'ड्राइवर को चालान (Citation) जारी किया गया';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'निर्देशांक: अक्षांश $lat, देशांतर $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title क्लिपबोर्ड पर कॉपी किया गया!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'क्लिपबोर्ड पर कॉपी करें';

  @override
  String get incidentDetailsCrashCitationInfo => 'क्रैश और चालान (Citation) की जानकारी';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'दिनांक और समय: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE रिपोर्ट';

  @override
  String get incidentDetailsDoeReportTitle => 'राज्य DOE रिपोर्ट (वैकल्पिक)';

  @override
  String get incidentDetailsDriverNotes => 'ड्राइवर के नोट्स:';

  @override
  String get incidentDetailsDriverUserId => 'ड्राइवर यूज़र आईडी';

  @override
  String get incidentDetailsDrugCountdown => 'DOT ड्रग टेस्ट उलटी गिनती (8 घंटे की सीमा)';

  @override
  String get incidentDetailsFatalityOccurred => 'मृत्यु हुई';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'घटना #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'ऐसी चोटें जिनमें चिकित्सा उपचार की आवश्यकता हो';

  @override
  String get incidentDetailsLawEnforcement => 'कानून प्रवर्तन एजेंसी';

  @override
  String get incidentDetailsLoadFailed => 'विवरण लोड करने में विफल।';

  @override
  String incidentDetailsLocation(Object location) {
    return 'स्थान: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'मीडिया अटैचमेंट';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String get incidentDetailsNo => 'नहीं';

  @override
  String get incidentDetailsNoMediaAttachments => 'कोई फ़ोटो या वीडियो संलग्न नहीं है।';

  @override
  String get incidentDetailsNoStudentsOnboard => 'घटना के दौरान बस में किसी भी छात्र को चिह्नित नहीं किया गया था।';

  @override
  String get incidentDetailsNotificationsDesc => 'अधिसूचना रिपोर्ट जेनरेट करें और जिला पर्यवेक्षकों या प्रशासन को टेम्पलेटेड पत्र भेजें।';

  @override
  String get incidentDetailsNotificationsTitle => 'प्रेषण (Transmittal) सूचनाएं';

  @override
  String get incidentDetailsOfficer => 'अधिकारी का विवरण';

  @override
  String get incidentDetailsPoliceReport => 'पुलिस रिपोर्ट संख्या';

  @override
  String get incidentDetailsPrePopulatedLetter => 'पूर्व-भरी हुई प्रेषण पत्र:';

  @override
  String get incidentDetailsRegulatoryBasis => 'नियामक आधार:';

  @override
  String get incidentDetailsRouteId => 'रूट आईडी';

  @override
  String get incidentDetailsSchoolAdminTitle => 'स्कूल व्यवस्थापक अधिसूचना';

  @override
  String get incidentDetailsStatusPending => 'लंबित';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'विवरण: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'घायल';

  @override
  String get incidentDetailsStudentNoInjury => 'कोई चोट नहीं';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'गंभीरता: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'यहां ले जाया गया: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'बस में सवार छात्र ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT क्रैश के बाद का परीक्षण आवश्यक है';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'स्थिति: $status';
  }

  @override
  String get incidentDetailsTitle => 'घटना का विवरण';

  @override
  String get incidentDetailsVehicleTowed => 'वाहन को खींचा (Tow) गया';

  @override
  String get incidentDetailsYes => 'हां';

  @override
  String get incidentHistoryEmpty => 'इस वाहन के लिए कोई घटना लॉग पंजीकृत नहीं है।';

  @override
  String incidentHistoryFailed(Object error) {
    return 'लॉग प्राप्त करने में विफल: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'समय: $time बस: $busNumber परीक्षण: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'घटना #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'आवश्यक नहीं';

  @override
  String get incidentHistoryTestingRequired => 'आवश्यक है';

  @override
  String get incidentHistoryTitle => 'दुर्घटना के बाद घटना रजिस्ट्री';

  @override
  String get incidentIntakeAddAnotherPhoto => 'एक और फ़ोटो जोड़ें';

  @override
  String get incidentIntakeBadgeNumberError => 'आवश्यक है';

  @override
  String get incidentIntakeBadgeNumberLabel => 'बैज नंबर*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'बस नंबर: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'घटना स्थल की फ़ोटो कैप्चर करें';

  @override
  String get incidentIntakeCitationSubtitle => 'क्या स्कूल बस ड्राइवर को चलती यातायात के उल्लंघन का चालान जारी किया गया था?';

  @override
  String get incidentIntakeCitationTitle => 'क्या चालान जारी किया गया?';

  @override
  String get incidentIntakeDateTimeLabel => 'दुर्घटना का दिनांक और समय*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT परीक्षण आवश्यक नहीं है';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT परीक्षण आवश्यक है';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'ड्राइवर: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'टक्कर के संबंध में कोई अतिरिक्त नोट दर्ज करें...';

  @override
  String get incidentIntakeDriverNotesTitle => 'ड्राइवर के घटना नोट्स';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'रूट के यात्रियों को लोड करने में विफल: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'प्रमाण (फ़ोटो) संलग्न करें *';

  @override
  String get incidentIntakeFatalitySubtitle => 'क्या इस दुर्घटना के परिणामस्वरूप कोई मृत्यु हुई?';

  @override
  String get incidentIntakeFatalityTitle => 'क्या मृत्यु हुई?';

  @override
  String get incidentIntakeGpsLabel => 'GPS निर्देशांक*';

  @override
  String get incidentIntakeHistoryTooltip => 'इतिहास देखें';

  @override
  String get incidentIntakeInjuriesSubtitle => 'क्या किसी व्यक्ति को ऐसी शारीरिक चोट लगी जिसके लिए घटनास्थल से दूर तत्काल चिकित्सा उपचार की आवश्यकता थी?';

  @override
  String get incidentIntakeInjuriesTitle => 'क्या चिकित्सा उपचार की आवश्यकता वाली चोटें लगीं?';

  @override
  String get incidentIntakeInjuryNotesError => 'घायल छात्रों के लिए चोट के नोट अनिवार्य हैं';

  @override
  String get incidentIntakeInjuryNotesLabel => 'चोट के नोट्स / विवरण (अनिवार्य) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'चोट की गंभीरता *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'कृपया कानून प्रवर्तन एजेंसी दर्ज करें';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'कानून प्रवर्तन एजेंसी (उदा. स्टेट हाईवे पेट्रोल)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'कानून प्रवर्तन और पुलिस रिपोर्ट';

  @override
  String get incidentIntakeLocationDescError => 'कृपया स्थान का विवरण दर्ज करें';

  @override
  String get incidentIntakeLocationDescLabel => 'स्थान का विवरण (उदा. मार्केट सेंट और 5वां एवेन्यू) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'चिकित्सा सुविधा जहां ले जाया गया';

  @override
  String get incidentIntakeNoMatchingStudents => 'कोई मेल खाने वाला छात्र नहीं।';

  @override
  String get incidentIntakeNoStudentsFound => 'कोई छात्र नहीं मिला।';

  @override
  String get incidentIntakeNoStudentsOnboard => 'बस में कोई छात्र नहीं, कृपया जारी रखने के लिए \'अगला\' दबाएं।';

  @override
  String get incidentIntakeNoStudentsRoute => 'इस रूट के लिए कोई छात्र पंजीकृत नहीं है।';

  @override
  String get incidentIntakeOfficerNameError => 'कृपया अधिकारी का नाम दर्ज करें।';

  @override
  String get incidentIntakeOfficerNameLabel => 'अधिकारी का नाम*';

  @override
  String get incidentIntakePoliceReportNumberError => 'कृपया पुलिस रिपोर्ट संख्या दर्ज करें';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'पुलिस रिपोर्ट संख्या *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'रूट: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'रूट और ड्राइवर की जानकारी';

  @override
  String get incidentIntakeSearchInjuredHint => 'घायल बच्चे को खोजें...';

  @override
  String get incidentIntakeSearchStudentHint => 'छात्र खोजें...';

  @override
  String get incidentIntakeSelectAll => 'सभी छात्रों को चुनें';

  @override
  String get incidentIntakeSelectOnMap => 'मानचित्र पर चुनें';

  @override
  String get incidentIntakeSeverityFatal => 'घातक (Fatal)';

  @override
  String get incidentIntakeSeverityMinor => 'मामूली';

  @override
  String get incidentIntakeSeverityModerate => 'मध्यम';

  @override
  String get incidentIntakeSeveritySevere => 'गंभीर';

  @override
  String get incidentIntakeSeverityTitle => 'क्रैश की गंभीरता के चर (Variables)';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'आईडी: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'रिपोर्ट सबमिट करें';

  @override
  String get incidentIntakeTitle => 'दुर्घटना के बाद घटना सेवन (Intake)';

  @override
  String get incidentIntakeTowedSubtitle => 'क्या किसी वाहन को इतना नुकसान पहुंचा कि उसे घटनास्थल से खींचकर (Tow) ले जाने की आवश्यकता पड़ी?';

  @override
  String get incidentIntakeTowedTitle => 'क्या वाहन को खींचा गया?';

  @override
  String get incidentIntakeWasInjured => 'क्या घायल हुआ?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'बंद करें';

  @override
  String get dvirPreTripDriverCommentsLabel => 'ड्राइवर की टिप्पणियां / नोट्स (वैकल्पिक)';

  @override
  String get dvirPreTripNoComments => 'कोई टिप्पणी नहीं जोड़ी गई।';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'रूट: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'हस्ताक्षर सफलतापूर्वक कैप्चर किए गए।';

  @override
  String get dvirPreTripSigMissing => 'हस्ताक्षर गायब हैं।';

  @override
  String get dvirPreTripSignDefectWarning => 'कृपया पिछली खराबी की मरम्मत को सत्यापित करने के लिए हस्ताक्षर करें।';

  @override
  String get dvirPreTripStepSignOff => 'साइन-ऑफ़ करें';

  @override
  String get dvirPreTripStepSubmit => 'सबमिट करें';

  @override
  String get dvirPreTripStepVerify => 'सत्यापित करें';

  @override
  String get dvirPreTripTapNext => 'कृपया आगे बढ़ने के लिए \'अगला\' पर टैप करें।';

  @override
  String get dvirPreTripVehicleOutOfService => 'वाहन सेवा से बाहर है';

  @override
  String get dvirPreTripVehicleReady => 'वाहन सेवा के लिए तैयार है';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'सत्यापित मरम्मत की स्थिति:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'कृपया प्रत्येक दोष के बगल में स्थित बॉक्स को चेक करके सत्यापित करें कि रिपोर्ट किए गए सभी दोषों की मरम्मत कर दी गई है।';

  @override
  String get dvirPreTripYourComments => 'आपकी टिप्पणियां:';

  @override
  String get countryPickerNoCountries => 'कोई देश नहीं मिला';

  @override
  String get countryPickerSearchHint => 'देश का नाम, कोड या डायल कोड द्वारा खोजें...';

  @override
  String get countryPickerTitle => 'देश चुनें';

  @override
  String get mapDefaultStop => 'स्टॉप';

  @override
  String get mapEndLocation => 'अंतिम स्थान';

  @override
  String get mapStartLocation => 'प्रारंभिक स्थान';

  @override
  String get stopsNoChangesToUndo => 'पूर्ववत (Undo) करने के लिए कोई बदलाव उपलब्ध नहीं है।';

  @override
  String get stopsNoStopsAvailable => 'कोई स्टॉप उपलब्ध नहीं है।';

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
