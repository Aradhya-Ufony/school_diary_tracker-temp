import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appInfoBuild => 'बिल्ड क्रमांक';

  @override
  String get appInfoDevice => 'डिव्हाइस मॉडेल';

  @override
  String get appInfoOS => 'OS आवृत्ती';

  @override
  String get appInfoPackage => 'पॅकेज';

  @override
  String get appInfoTitle => 'अॅप माहिती';

  @override
  String get appInfoVersion => 'अॅप आवृत्ती';

  @override
  String get appTitleSchoolDiary => 'SD ट्रॅकर';

  @override
  String get childrenActionGuardians => 'पालक';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name चे अधिकृत पालक';
  }

  @override
  String get childrenNoGuardians => 'या मुलासाठी फाईलवर कोणतेही अधिकृत पालक नाहीत.';

  @override
  String get childrenStatusDropped => 'सोडले';

  @override
  String get childrenStatusPending => 'प्रलंबित';

  @override
  String get childrenStatusPicked => 'घेतले';

  @override
  String childrenTitle(Object routeName) {
    return 'मुले - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'गैरहजर / बसमध्ये नाही ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'बाहेर काढले';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'बाहेर काढलेले: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'एकही विद्यार्थी गैरहजर नाही.';

  @override
  String get drillChecklistNoStudentsOnBus => 'बसमध्ये एकही विद्यार्थी चिन्हांकित नाही.';

  @override
  String get drillChecklistNotOnBus => 'बसमध्ये नाही';

  @override
  String get drillChecklistOnBusNotEvacuated => 'बसवर - बाहेर काढले नाही';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'बसवर ($count)';
  }

  @override
  String get drillChecklistProceed => 'पुरावा कॅप्चर करण्यासाठी पुढे जा';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'मार्ग (थेट): $routeName';
  }

  @override
  String get drillChecklistTitle => 'निर्वासन सराव चेकलिस्ट';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count बेपत्ता विद्यार्थी शिल्लक आहेत!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'तुम्हाला खात्री आहे की तुम्ही हा सराव लॉग सबमिट करू इच्छिता? ही कृती पूर्ववत केली जाऊ शकत नाही.';

  @override
  String get drillEvidenceConfirmSubmission => 'सराव सबमिशनची पुष्टी करा';

  @override
  String get drillEvidenceDriverNotesHint => 'सराव अंमलबजावणी, विद्यार्थ्यांचे वर्तन, वापरलेले एक्झिट मार्ग आणि कोणतेही अपवाद वर्णन करा...';

  @override
  String get drillEvidenceDriverNotesLabel => 'चालक नोट्स (किमान 10 अक्षरे):';

  @override
  String get drillEvidenceFailed => 'सबमिशन अयशस्वी';

  @override
  String get drillEvidenceMandatoryWarning => 'सराव सबमिट करण्यासाठी किमान 1 फोटो किंवा व्हिडिओ पुरावा अनिवार्य आहे.';

  @override
  String get drillEvidenceRecordVideo => 'व्हिडिओ रेकॉर्ड करा';

  @override
  String get drillEvidenceRetrySubmission => 'पुन्हा सबमिट करा';

  @override
  String get drillEvidenceReturnToDashboard => 'डॅशबोर्डवर परत जा';

  @override
  String get drillEvidenceSubmitButton => 'सराव लॉग सबमिट करा';

  @override
  String get drillEvidenceSubmitting => 'सराव लॉग सबमिट करत आहे...';

  @override
  String get drillEvidenceSuccess => 'सबमिशन यशस्वी!';

  @override
  String get drillEvidenceSuccessMessage => 'निर्वासन सराव लॉग यशस्वीरित्या अपलोड केला गेला आहे आणि मंजुरीसाठी प्रलंबित आहे.';

  @override
  String get drillEvidenceTakePhoto => 'फोटो काढा';

  @override
  String get drillEvidenceTitle => 'अनिवार्य सराव पुरावा';

  @override
  String get drillEvidenceUploading => 'पुरावे आणि चेकलिस्ट डेटा अपलोड करत आहे';

  @override
  String drillRosterBus(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'सराव: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'उपस्थिती नोंदवा';

  @override
  String get drillRosterNoStudents => 'या मार्गावर कोणतेही विद्यार्थी नोंदणीकृत नाहीत.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'उपस्थित: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'सराव चेकलिस्टकडे जा';

  @override
  String drillRosterRoute(Object routeName) {
    return 'मार्ग: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'आसन: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'सर्व निवडा';

  @override
  String get drillSummaryAdminNotesTitle => 'प्रशासक नोट्स';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'येथे मंजूर: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'मंजूर वेळ';

  @override
  String get drillSummaryBackToDrills => 'सरावावर परत जा';

  @override
  String get drillSummaryBusNumber => 'बस क्रमांक';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'आयोजित केले: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'सराव तपशील';

  @override
  String get drillSummaryDriverNotesTitle => 'चालक नोट्स';

  @override
  String get drillSummaryDuration => 'कालावधी';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes मि $seconds से';
  }

  @override
  String get drillSummaryEndTime => 'समाप्ती वेळ';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'बाहेर काढलेले: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'बाहेर काढलेली वेळ $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'पुरावा मीडिया संलग्नक';

  @override
  String get drillSummaryGps => 'GPS निर्देशांक';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'अक्षांश: $lat, रेखांश: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'ID #$id साठी सराव सारांश लोड करण्यात अयशस्वी.\n$error';
  }

  @override
  String get drillSummaryNoData => 'कोणताही सराव डेटा आढळला नाही.';

  @override
  String get drillSummaryNotOnBus => 'बसवर नाही';

  @override
  String get drillSummaryOnBusNotEvacuated => 'बसवर - बाहेर काढले नाही';

  @override
  String get drillSummaryPhotoEvidence => 'फोटो पुरावा';

  @override
  String get drillSummaryRouteId => 'मार्ग ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'आसन: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'सुरुवातीची वेळ';

  @override
  String get drillSummaryStatus => 'स्थिती';

  @override
  String get drillSummaryStudentLogTitle => 'विद्यार्थी निर्वासन लॉग';

  @override
  String drillSummaryTitle(Object id) {
    return 'सराव सारांश (#$id)';
  }

  @override
  String get drillSummaryType => 'सराव प्रकार';

  @override
  String get drillSummaryVideoEvidence => 'व्हिडिओ पुरावा';

  @override
  String drillTypeBus(Object busNumber) {
    return 'बस $busNumber';
  }

  @override
  String get drillTypeClassification => 'सराव वर्गीकरण निवडा:';

  @override
  String get drillTypeCustomHint => 'सानुकूल निर्वासन सराव प्रकार प्रविष्ट करा...';

  @override
  String get drillTypeInvalidState => 'अवैध वाहन किंवा मार्ग स्थिती.';

  @override
  String get drillTypeNameBusFire => 'बसला आग';

  @override
  String get drillTypeNameDangerZone => 'धोकादायक क्षेत्र';

  @override
  String get drillTypeNameDriverIncapacitation => 'चालक अक्षमता';

  @override
  String get drillTypeNameEquipmentOrientation => 'उपकरणे अभिमुखता';

  @override
  String get drillTypeNameFrontDoor => 'पुढचा दरवाजा';

  @override
  String get drillTypeNameOthers => 'इतर';

  @override
  String get drillTypeNameRearDoor => 'मागचा दरवाजा';

  @override
  String get drillTypeNameSideOrRoof => 'बाजूला किंवा छतावर';

  @override
  String get drillTypeNameSplit => 'स्प्लिट';

  @override
  String get drillTypeNoRouteSelected => 'कोणताही मार्ग निवडला नाही';

  @override
  String get drillTypePreparation => 'सराव तयारी';

  @override
  String get drillTypeProceed => 'विद्यार्थी रोस्टरकडे जा';

  @override
  String drillTypeRoute(Object routeName) {
    return 'मार्ग: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'मार्ग निवडा:';

  @override
  String get drillTypeSpecifyCustom => 'सराव प्रकाराचे वर्णन निर्दिष्ट करा:';

  @override
  String get drillTypeTitle => 'सराव प्रकार निवडा';

  @override
  String get drillTypeWarning => 'अंमलबजावणी सुरू करण्यापूर्वी वाहन सुरक्षितपणे पार्क केल्याची खात्री करा.';

  @override
  String get drillsAssignedVehicle => 'नियुक्त वाहन';

  @override
  String get drillsChecking => 'तपासत आहे...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'सराव #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'कोणतीही बस नियुक्त केलेली नाही';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'बस $busNumber साठी कोणतेही सराव नोंदवले गेले नाहीत';
  }

  @override
  String get drillsNoRoutesAvailable => 'सराव सुरू करण्यासाठी कोणतेही मार्ग उपलब्ध नाहीत.';

  @override
  String get drillsShowSummary => 'सारांश दाखवा';

  @override
  String get drillsStartDrill => 'सराव सुरू करा';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'आयोजित: $date\nस्थिती: $status';
  }

  @override
  String get drillsTitle => 'निर्वासन सराव';

  @override
  String get drillsVehicleOutOfService => 'वाहन सेवेबाहेर आहे';

  @override
  String get drillsVehicleOutOfServiceMessage => 'हे वाहन सध्या सेवेबाहेर आहे आणि सरावासाठी वापरले जाऊ शकत नाही.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL वर्ग';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ड्रायव्हिंग लायसन्स';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'नाव: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'लायसन्स: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'प्रवासी';

  @override
  String get driverDetailsEndorsementSchoolBus => 'शालेय बस';

  @override
  String get driverDetailsEndorsementsTitle => 'प्राप्त समर्थन';

  @override
  String get driverDetailsExpiryDateLabel => 'कालबाह्य तारीख';

  @override
  String get driverDetailsHolderSignature => 'धारकाची स्वाक्षरी';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'जारी केल्याची तारीख';

  @override
  String get driverDetailsLicenseDocTitle => 'परवाना दस्तऐवज';

  @override
  String get driverDetailsLicenseNoLabel => 'परवाना क्र';

  @override
  String get driverDetailsLicenseTitle => 'परवाना तपशील';

  @override
  String get driverDetailsLicenseTypeLabel => 'परवाना प्रकार';

  @override
  String get driverDetailsOfficialSeal => 'अधिकृत मोहोर';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'वर्ग: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'जन्म तारीख: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'समर्थन: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'समाप्ती: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'लायसन्स क्र: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'नाव: $name';
  }

  @override
  String get driverDetailsTapToView => 'DL दस्तऐवज पाहण्यासाठी टॅप करा';

  @override
  String get driverDetailsTitle => 'चालक तपशील';

  @override
  String get dvirCategoryBusSafetySystems => 'बस-विशिष्ट सुरक्षा प्रणाली';

  @override
  String get dvirCategoryCouplingDevices => 'कपलिंग उपकरणे';

  @override
  String get dvirCategoryEmergencyEquipment => 'आपत्कालीन उपकरणे';

  @override
  String get dvirCategoryHorn => 'हॉर्न';

  @override
  String get dvirCategoryLightingReflectors => 'लायटिंग उपकरणे आणि रिफ्लेक्टर्स';

  @override
  String get dvirCategoryMirrors => 'रियर-व्हिजन आरसे';

  @override
  String get dvirCategoryParkingBrake => 'पार्किंग ब्रेक';

  @override
  String get dvirCategoryPassengerSeating => 'प्रवासी आसन आणि निर्बंध';

  @override
  String get dvirCategoryServiceBrakes => 'सर्व्हिस ब्रेक्स';

  @override
  String get dvirCategorySteeringMechanism => 'स्टीयरिंग यंत्रणा';

  @override
  String get dvirCategoryTires => 'टायर्स';

  @override
  String get dvirCategoryWheelsRims => 'चाके आणि रिम्स';

  @override
  String get dvirCategoryWipers => 'विंडशील्ड वायपर्स';

  @override
  String get dvirPostTripCapturePhoto => 'दोष फोटो कॅप्चर करा';

  @override
  String get dvirPostTripComplianceTitle => 'अनुपालन प्रमाणपत्र';

  @override
  String get dvirPostTripDefectButton => 'दोष';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'फोटोशिवाय दोषाचा अहवाल देणे';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'चेतावणी: तुम्ही फोटो संलग्न न करता सुरक्षा झोन ($zones) वर दोषाचा अहवाल देत आहात. तुम्हाला खात्री आहे की तुम्हाला तरीही सबमिट करायचे आहे?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'तपासणी: बस $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'सुरक्षिततेच्या समस्येचे तपशील प्रविष्ट करा...';

  @override
  String get dvirPostTripNotesLabel => 'नोट्स (दोषावर अनिवार्य) आणि फोटो';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'सुरक्षिततेच्या समस्येचे तपशील प्रविष्ट करण्यासाठी दोष निवडा...';

  @override
  String get dvirPostTripOdometerHeader => 'सध्याचे ओडोमीटर रीडिंग';

  @override
  String get dvirPostTripOdometerInstructions => 'बसच्या इन्स्ट्रुमेंट पॅनेलवर दाखवल्याप्रमाणे अचूक मायलेज रीडिंग प्रविष्ट करा:';

  @override
  String get dvirPostTripOdometerLabel => 'ओडोमीटर (मैल)';

  @override
  String get dvirPostTripOdometerTitle => 'वाहन रन टाइम मेट्रिक';

  @override
  String get dvirPostTripOdometerWarning => 'कृपया पुढे जाण्यापूर्वी ओडोमीटर रीडिंग प्रविष्ट करा.';

  @override
  String get dvirPostTripPassButton => 'पास';

  @override
  String get dvirPostTripPhotoAttached => 'फोटो यशस्वीरित्या जोडला.';

  @override
  String get dvirPostTripProgressLabel => 'तपासणी प्रगती';

  @override
  String get dvirPostTripSignatureCaptured => 'स्वाक्षरी कॅप्चर केली.';

  @override
  String get dvirPostTripSignatureCert => 'मी प्रमाणित करतो की हा वाहन तपासणी अहवाल FMCSA 396.11 नियमांच्या अनुपालनासह पूर्ण झाला आहे.';

  @override
  String get dvirPostTripSignatureTitle => 'चालक स्वाक्षरी पडताळणी';

  @override
  String get dvirPostTripSubmitButton => 'तपासणी सबमिट करा';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR यशस्वीरित्या सबमिट केला.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return '$total पैकी $current झोन';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total झोन';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'मी कबूल करतो की मी शेवटच्या सबमिट केलेल्या दोष अहवालाचे पुनरावलोकन केले आहे आणि दुरुस्तीची (असल्यास) पडताळणी केली आहे आणि बस कार्यासाठी सुरक्षित असल्याचे नमूद करतो.';

  @override
  String get dvirPreTripActiveMessage => 'हे वाहन सक्रिय आहे आणि यात कोणतेही दोष नाहीत. हे पडताळले आहे आणि कार्यासाठी सुरक्षित आहे.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'सक्रिय मार्ग: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'लक्ष देणे आवश्यक: मागील दिवसाचे दोष नोंदवले';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'बस क्रमांक: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'वाहन डिस्पॅच तपासणी';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'स्वाक्षरी करण्यात अयशस्वी: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'कोणतेही मागील दोष नोंदवले नाहीत';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'मागील ट्रिप नंतरच्या शिफ्ट तपासणीमध्ये हे वाहन स्वच्छ असल्याचे नोंदवले गेले.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'सुरक्षित कार्यासाठी कोणत्याही दुरुस्तीची आवश्यकता नाही.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'दुरुस्ती/देखभालीसाठी हे वाहन सेवेबाहेर आहे. पाठवण्यापूर्वी दुकान कर्मचाऱ्यांनी सुरक्षितता समस्यांचे निराकरण केले पाहिजे.';

  @override
  String get dvirPreTripOutofServiceButton => 'वाहन सेवेबाहेर आहे';

  @override
  String dvirPreTripReason(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (दुरुस्त केले)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'नवीन दोषांचा अहवाल द्या';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'दुरुस्ती दरम्यान नवीन दोषांचा अहवाल देणे अक्षम केले आहे.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'स्थिती: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'वाहतूक उप-प्रशासक ठराव';

  @override
  String get dvirPreTripReturnToHomeButton => 'होम वर परत जा';

  @override
  String get dvirPreTripSignOffTitle => 'तपासणीसाठी पुढे जाण्याकरिता साइन-ऑफ करा';

  @override
  String get dvirPreTripSignedSuccess => 'पडताळणी यशस्वीरित्या स्वाक्षरी केली. पूर्व-ट्रिप अनलॉक केले.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'पडताळणी सबमिट करा';

  @override
  String get dvirPreTripTitle => 'पूर्व-ट्रिप पडताळणी';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'वाहनाची स्थिती: $status';
  }

  @override
  String get dvirSigDrawTitle => 'स्वाक्षरी काढा';

  @override
  String get dvirSigPreviewLabel => 'कॅप्चर केलेले स्वाक्षरी पूर्वावलोकन:';

  @override
  String get dvirSigRedraw => 'पुन्हा काढा';

  @override
  String get dvirSigSave => 'स्वाक्षरी जतन करा';

  @override
  String get dvirSigTapToDraw => 'स्वाक्षरी काढण्यासाठी टॅप करा (अनिवार्य)';

  @override
  String get dvirSigWatermark => 'उभ्या स्वाक्षरी करा (खालून वर)';

  @override
  String get forgotPasswordCancel => 'रद्द करा';

  @override
  String get forgotPasswordEmailLabel => 'ईमेल';

  @override
  String get forgotPasswordInvalidEmail => 'कृपया वैध ईमेल प्रविष्ट करा';

  @override
  String get forgotPasswordSend => 'पाठवा';

  @override
  String get forgotPasswordSuccess => 'जर तो ईमेल अस्तित्वात असेल, तर रीसेट लिंक पाठवली गेली आहे.';

  @override
  String get genericBack => 'मागे';

  @override
  String get genericCancel => 'रद्द करा';

  @override
  String get genericClear => 'साफ करा';

  @override
  String get genericClose => 'बंद करा';

  @override
  String get genericConfirm => 'पुष्टी करा';

  @override
  String get genericEdit => 'संपादित करा';

  @override
  String get genericError => 'काहीतरी चूक झाली';

  @override
  String get genericLoading => 'लोड होत आहे...';

  @override
  String get genericNext => 'पुढे';

  @override
  String get genericOk => 'ठीक आहे';

  @override
  String get genericRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get genericSuccess => 'यशस्वी';

  @override
  String homeBusLabel(Object busId) {
    return 'बस: $busId';
  }

  @override
  String get homeDispatchBlocked => 'डिस्पॅच ब्लॉक केले';

  @override
  String get homeDispatchBlockedTitle => 'डिस्पॅच ब्लॉक केले';

  @override
  String get homeErrorNoRoutesPreTrip => 'पूर्व-ट्रिप करण्यासाठी कोणतेही मार्ग उपलब्ध नाहीत.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'सर्व्हरवर ट्रिप सुरू करण्यात अयशस्वी: $error';
  }

  @override
  String homeHi(Object name) {
    return 'नमस्कार, $name';
  }

  @override
  String get homeLogout => 'लॉग आउट';

  @override
  String get homeMenuAppInfo => 'अॅप माहिती';

  @override
  String get homeMenuDrill => 'सराव';

  @override
  String get homeMenuDriverDetails => 'चालक तपशील';

  @override
  String get homeMenuLanguage => 'भाषा';

  @override
  String get homeMenuPreTrip => 'पूर्व-ट्रिप तपासणी';

  @override
  String get homeNoRoutes => 'कोणतेही मार्ग उपलब्ध नाहीत';

  @override
  String get homeReviewVerifyPreTrip => 'पूर्व-ट्रिपचे पुनरावलोकन करा आणि पडताळणी करा';

  @override
  String get homeSearchHint => 'मार्ग शोधा';

  @override
  String get homeStart => 'सुरू करा';

  @override
  String get homeTitle => 'होम';

  @override
  String get homeVehicleOutOfServiceDefault => 'वाहन सध्या सेवेबाहेर आहे.';

  @override
  String get homeVehicleReady => 'वाहन तयार आहे आणि सुरक्षित कार्यासाठी पडताळले आहे.';

  @override
  String get languageTitle => 'भाषा';

  @override
  String get loginButton => 'लॉग इन करा';

  @override
  String get loginEmailOrPhoneLabel => 'ईमेल किंवा फोन नंबर';

  @override
  String get loginErrorEnterPassword => 'कृपया पासवर्ड प्रविष्ट करा';

  @override
  String get loginErrorEnterUsername => 'कृपया वापरकर्तानाव प्रविष्ट करा';

  @override
  String get loginErrorFailed => 'लॉगिन अयशस्वी. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'कृपया वैध ईमेल किंवा फोन नंबर प्रविष्ट करा';

  @override
  String get loginForgotPassword => 'पासवर्ड विसरलात?';

  @override
  String get loginPasswordLabel => 'पासवर्ड';

  @override
  String get mapChildrenTooltip => 'मुले आणि पालक';

  @override
  String get mapConfirmMessage => 'तुम्हाला खरोखर ट्रिप बंद करायची आहे का?';

  @override
  String get mapConfirmTitle => 'पुष्टी करा';

  @override
  String get mapCurrentPosition => 'सध्याची स्थिती';

  @override
  String get mapNo => 'नाही';

  @override
  String get mapReconnectMessage => 'स्थान अपडेट वारंवार अयशस्वी होत आहे, कृपया तुमचे इंटरनेट तपासा.';

  @override
  String get mapReconnectTitle => 'ट्रॅकर';

  @override
  String get mapStop => 'थांबा';

  @override
  String get mapStopping => 'थांबत आहे...';

  @override
  String get mapStopsTooltip => 'थांबे';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds सेकंदांपूर्वी अपडेट केले';
  }

  @override
  String get mapWaitingGps => 'GPS ची प्रतीक्षा करत आहे...';

  @override
  String get mapYes => 'होय';

  @override
  String get splashDriverApp => 'चालक अॅप';

  @override
  String get stopsActionUndo => 'पूर्ववत करा';

  @override
  String get stopsCancelledSuccess => 'यशस्वीरित्या रद्द केले';

  @override
  String get stopsDefaultLabel => 'थांबा';

  @override
  String get stopsGenericError => 'काहीतरी चूक झाली. कृपया पुन्हा प्रयत्न करा.';

  @override
  String get stopsStatusComplete => 'पूर्ण';

  @override
  String get stopsStatusDone => 'झाले';

  @override
  String stopsSubmitCount(Object count) {
    return 'सबमिट करा ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'यशस्वीरित्या सबमिट केले';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected निवडले · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'सोडा';

  @override
  String get stopsTypePick => 'घ्या';

  @override
  String stopsUndoCount(Object count) {
    return 'पूर्ववत करा ($count)';
  }

  @override
  String get stopsUndoTooltip => 'घेणे/सोडणे पूर्ववत करा';

  @override
  String get tripConfirmCancel => 'रद्द करा';

  @override
  String get tripConfirmOk => 'ठीक आहे';

  @override
  String get tripConfirmTitle => 'ट्रॅकर';

  @override
  String get tripErrorLocationRequired => 'ट्रिप सुरू करण्यासाठी स्थान परवानगी आवश्यक आहे.';

  @override
  String get homeMenuPostCrashReporting => 'क्रॅश-नंतरचा अहवाल';

  @override
  String homeVehicleReason(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'स्थिती: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'अक्षांश: $lat, रेखांश: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'स्थान शोधा (उदा. मार्केट स्ट्रीट)';

  @override
  String get crashLocationPickerTitle => 'नकाशावर स्थान निवडा';

  @override
  String get crashLocationPickerTooltip => 'स्थानाची पुष्टी करा';

  @override
  String get incidentDashboardDescription => 'घटना व्यवस्थापनासह पुढे जाण्यासाठी किंवा मागील अहवाल पाहण्यासाठी क्रिया निवडा.';

  @override
  String get incidentDashboardHeadline => 'क्रॅश-नंतरची घटना नोंदवणे';

  @override
  String get incidentDashboardLogNew => 'नवीन क्रॅश लॉग करा';

  @override
  String get incidentDashboardLogNewSubtitle => 'नवीन टप्प्याटप्प्याने क्रॅश अहवाल सुरू करा';

  @override
  String get incidentDashboardTitle => 'क्रॅश-नंतरची घटना';

  @override
  String get incidentDashboardViewHistory => 'इतिहास पहा';

  @override
  String get incidentDashboardViewHistorySubtitle => 'मागील क्रॅश अहवाल आणि स्थिती पहा';

  @override
  String get incidentDetailsAdminLetter => 'प्रशासक पत्र';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT अल्कोहोल चाचणी काउंटडाउन (2-तास मर्यादा)';

  @override
  String get incidentDetailsBranchId => 'शाखा ID';

  @override
  String get incidentDetailsBusPlate => 'बस लायसन्स नंबर';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'उल्लेख प्रभाव: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'चालकाला उल्लेख जारी केला';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'निर्देशांक: अक्षांश $lat, रेखांश $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title क्लिपबोर्डवर कॉपी केले!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'क्लिपबोर्डवर कॉपी करा';

  @override
  String get incidentDetailsCrashCitationInfo => 'क्रॅश आणि उल्लेख माहिती';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'तारीख आणि वेळ: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOE अहवाल';

  @override
  String get incidentDetailsDoeReportTitle => 'राज्य DOE अहवाल (पर्यायी)';

  @override
  String get incidentDetailsDriverNotes => 'चालकाच्या नोट्स:';

  @override
  String get incidentDetailsDriverUserId => 'चालक वापरकर्ता ID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT औषध चाचणी काउंटडाउन (8-तास मर्यादा)';

  @override
  String get incidentDetailsFatalityOccurred => 'जीवितहानी झाली';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'घटना #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'वैद्यकीय उपचार आवश्यक असलेल्या दुखापती';

  @override
  String get incidentDetailsLawEnforcement => 'कायदा अंमलबजावणी संस्था';

  @override
  String get incidentDetailsLoadFailed => 'तपशील लोड करण्यात अयशस्वी.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'स्थान: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'मीडिया संलग्नक';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'स्थिती: $status';
  }

  @override
  String get incidentDetailsNo => 'नाही';

  @override
  String get incidentDetailsNoMediaAttachments => 'कोणतेही फोटो किंवा व्हिडिओ जोडलेले नाहीत.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'घटनेदरम्यान बसमध्ये कोणतेही विद्यार्थी चिन्हांकित केलेले नव्हते.';

  @override
  String get incidentDetailsNotificationsDesc => 'अधिसूचना अहवाल व्युत्पन्न करा आणि जिल्हा पर्यवेक्षक किंवा प्रशासनाला टेम्पलेट केलेली पत्रे पाठवा.';

  @override
  String get incidentDetailsNotificationsTitle => 'प्रेषण अधिसूचना';

  @override
  String get incidentDetailsOfficer => 'अधिकाऱ्याचे तपशील';

  @override
  String get incidentDetailsPoliceReport => 'पोलीस अहवाल क्रमांक';

  @override
  String get incidentDetailsPrePopulatedLetter => 'पूर्व-भरलेले प्रेषण पत्र:';

  @override
  String get incidentDetailsRegulatoryBasis => 'नियामक आधार:';

  @override
  String get incidentDetailsRouteId => 'मार्ग ID';

  @override
  String get incidentDetailsSchoolAdminTitle => 'शाळा प्रशासक अधिसूचना';

  @override
  String get incidentDetailsStatusPending => 'प्रलंबित';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'तपशील: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'जखमी';

  @override
  String get incidentDetailsStudentNoInjury => 'दुखापत नाही';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'तीव्रता: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'येथे नेले: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'बसमध्ये असलेले विद्यार्थी ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOT क्रॅश-नंतरची चाचणी आवश्यक';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'स्थिती: $status';
  }

  @override
  String get incidentDetailsTitle => 'घटना तपशील';

  @override
  String get incidentDetailsVehicleTowed => 'वाहन टो केले';

  @override
  String get incidentDetailsYes => 'होय';

  @override
  String get incidentHistoryEmpty => 'या वाहनासाठी कोणतेही घटना लॉग नोंदणीकृत नाहीत.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'लॉग पुनर्प्राप्त करण्यात अयशस्वी: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'वेळ: $time बस: $busNumber चाचणी: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'घटना #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'आवश्यक नाही';

  @override
  String get incidentHistoryTestingRequired => 'आवश्यक';

  @override
  String get incidentHistoryTitle => 'क्रॅश-नंतरची घटना नोंदवही';

  @override
  String get incidentIntakeAddAnotherPhoto => 'आणखी एक फोटो जोडा';

  @override
  String get incidentIntakeBadgeNumberError => 'आवश्यक';

  @override
  String get incidentIntakeBadgeNumberLabel => 'बिल्ला क्रमांक*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'बस क्रमांक: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'घटना स्थळाचा फोटो कॅप्चर करा';

  @override
  String get incidentIntakeCitationSubtitle => 'शालेय बस चालकाला हलत्या वाहतूक उल्लंघनाचा उल्लेख जारी करण्यात आला होता का?';

  @override
  String get incidentIntakeCitationTitle => 'उल्लेख जारी केला का?';

  @override
  String get incidentIntakeDateTimeLabel => 'क्रॅशची तारीख आणि वेळ*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOT चाचणी आवश्यक नाही';

  @override
  String get incidentIntakeDotTestingRequired => 'DOT चाचणी आवश्यक';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'चालक: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'टक्कर संबंधी कोणत्याही अतिरिक्त नोट्स प्रविष्ट करा...';

  @override
  String get incidentIntakeDriverNotesTitle => 'चालकाच्या घटना नोट्स';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'मार्गावरील प्रवासी लोड करण्यात अयशस्वी: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'पुरावा जोडा (फोटो) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'या क्रॅशच्या परिणामी कोणतीही जीवितहानी झाली का?';

  @override
  String get incidentIntakeFatalityTitle => 'जीवितहानी झाली का?';

  @override
  String get incidentIntakeGpsLabel => 'GPS निर्देशांक*';

  @override
  String get incidentIntakeHistoryTooltip => 'इतिहास पहा';

  @override
  String get incidentIntakeInjuriesSubtitle => 'घटनास्थळापासून दूर त्वरित वैद्यकीय उपचारांची आवश्यकता असलेली शारीरिक दुखापत कोणाला झाली का?';

  @override
  String get incidentIntakeInjuriesTitle => 'वैद्यकीय उपचारांची आवश्यकता असलेल्या दुखापती?';

  @override
  String get incidentIntakeInjuryNotesError => 'जखमी विद्यार्थ्यांसाठी दुखापतीच्या नोट्स अनिवार्य आहेत';

  @override
  String get incidentIntakeInjuryNotesLabel => 'दुखापतीच्या नोट्स / तपशील (अनिवार्य) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'दुखापतीची तीव्रता *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'कृपया कायदा अंमलबजावणी संस्था प्रविष्ट करा';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'कायदा अंमलबजावणी संस्था (उदा. राज्य महामार्ग गस्त)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'कायदा अंमलबजावणी आणि पोलीस अहवाल';

  @override
  String get incidentIntakeLocationDescError => 'कृपया स्थानाचे वर्णन प्रविष्ट करा';

  @override
  String get incidentIntakeLocationDescLabel => 'स्थानाचे वर्णन (उदा. मार्केट स्ट्रीट आणि 5 वा मार्ग) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'ज्या वैद्यकीय सुविधेमध्ये नेले गेले';

  @override
  String get incidentIntakeNoMatchingStudents => 'कोणतेही जुळणारे विद्यार्थी नाहीत.';

  @override
  String get incidentIntakeNoStudentsFound => 'कोणतेही विद्यार्थी आढळले नाहीत.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'बसमध्ये कोणतेही विद्यार्थी नाहीत, कृपया पुढे जाण्यासाठी \'पुढे\' दाबा.';

  @override
  String get incidentIntakeNoStudentsRoute => 'या मार्गासाठी कोणतेही विद्यार्थी नोंदणीकृत नाहीत.';

  @override
  String get incidentIntakeOfficerNameError => 'कृपया अधिकाऱ्याचे नाव प्रविष्ट करा.';

  @override
  String get incidentIntakeOfficerNameLabel => 'अधिकाऱ्याचे नाव*';

  @override
  String get incidentIntakePoliceReportNumberError => 'कृपया पोलीस अहवाल क्रमांक प्रविष्ट करा';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'पोलीस अहवाल क्रमांक *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'मार्ग: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'मार्ग आणि चालक माहिती';

  @override
  String get incidentIntakeSearchInjuredHint => 'जखमी मूल शोधा...';

  @override
  String get incidentIntakeSearchStudentHint => 'विद्यार्थी शोधा...';

  @override
  String get incidentIntakeSelectAll => 'सर्व विद्यार्थी निवडा';

  @override
  String get incidentIntakeSelectOnMap => 'नकाशावर निवडा';

  @override
  String get incidentIntakeSeverityFatal => 'प्राणघातक';

  @override
  String get incidentIntakeSeverityMinor => 'किरकोळ';

  @override
  String get incidentIntakeSeverityModerate => 'मध्यम';

  @override
  String get incidentIntakeSeveritySevere => 'गंभीर';

  @override
  String get incidentIntakeSeverityTitle => 'क्रॅश तीव्रतेचे चल';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'अहवाल सबमिट करा';

  @override
  String get incidentIntakeTitle => 'क्रॅश-नंतरचे घटना सेवन';

  @override
  String get incidentIntakeTowedSubtitle => 'कोणत्याही वाहनाला घटनास्थळावरून टो करून नेण्याची आवश्यकता असलेले नुकसान झाले का?';

  @override
  String get incidentIntakeTowedTitle => 'वाहन टो केले का?';

  @override
  String get incidentIntakeWasInjured => 'जखमी झाला होता?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'बस: $busNumber';
  }

  @override
  String get dvirPreTripClose => 'बंद करा';

  @override
  String get dvirPreTripDriverCommentsLabel => 'चालक टिप्पण्या / नोट्स (पर्यायी)';

  @override
  String get dvirPreTripNoComments => 'कोणत्याही टिप्पण्या जोडल्या नाहीत.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'कारण: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'मार्ग: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'स्वाक्षरी यशस्वीरित्या कॅप्चर केली.';

  @override
  String get dvirPreTripSigMissing => 'स्वाक्षरी गहाळ आहे.';

  @override
  String get dvirPreTripSignDefectWarning => 'मागील दोषांच्या दुरुस्तीची पडताळणी करण्यासाठी कृपया स्वाक्षरी करा.';

  @override
  String get dvirPreTripStepSignOff => 'साइन ऑफ करा';

  @override
  String get dvirPreTripStepSubmit => 'सबमिट करा';

  @override
  String get dvirPreTripStepVerify => 'पडताळणी करा';

  @override
  String get dvirPreTripTapNext => 'पुढे जाण्यासाठी कृपया \'पुढे\' टॅप करा.';

  @override
  String get dvirPreTripVehicleOutOfService => 'वाहन सेवेबाहेर आहे';

  @override
  String get dvirPreTripVehicleReady => 'वाहन सेवेसाठी तयार आहे';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'पडताळलेली दुरुस्ती स्थिती:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'कृपया प्रत्येक दोषाच्या पुढील बॉक्स चेक करून नोंदवलेले सर्व दोष दुरुस्त केले गेले असल्याची पडताळणी करा.';

  @override
  String get dvirPreTripYourComments => 'तुमच्या टिप्पण्या:';

  @override
  String get countryPickerNoCountries => 'कोणतेही देश आढळले नाहीत';

  @override
  String get countryPickerSearchHint => 'देशाचे नाव, कोड किंवा डायल कोडद्वारे शोधा...';

  @override
  String get countryPickerTitle => 'देश निवडा';

  @override
  String get mapDefaultStop => 'थांबा';

  @override
  String get mapEndLocation => 'अंतिम स्थान';

  @override
  String get mapStartLocation => 'सुरुवातीचे स्थान';

  @override
  String get stopsNoChangesToUndo => 'पूर्ववत करण्यासाठी कोणतेही बदल उपलब्ध नाहीत.';

  @override
  String get stopsNoStopsAvailable => 'कोणतेही थांबे उपलब्ध नाहीत.';

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
