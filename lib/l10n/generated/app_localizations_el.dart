import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appInfoBuild => 'Χτίστε αριθμό';

  @override
  String get appInfoDevice => 'Μοντέλο συσκευής';

  @override
  String get appInfoOS => 'Επισήμανση';

  @override
  String get appInfoPackage => 'Πακέτο';

  @override
  String get appInfoTitle => 'Πληροφορίες για την εφαρμογή';

  @override
  String get appInfoVersion => 'Εφαρμογή';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Φύλακες';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Απασχολούμενοι φύλακες για $name';
  }

  @override
  String get childrenNoGuardians => 'Δεν υπάρχουν εξουσιοδοτημένοι κηδεμόνες για αυτό το παιδί.';

  @override
  String get childrenStatusDropped => 'Απετάχθηκε';

  @override
  String get childrenStatusPending => 'Περιμένει';

  @override
  String get childrenStatusPicked => 'Εξετάστηκε';

  @override
  String childrenTitle(Object routeName) {
    return 'Παιδιά  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ΑΠΟΥΡΟΣΗ / ΑΠΟΥΣΤΙΚΟΣ ΒΟΥΣ ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Ο λεωφορείος:';
  }

  @override
  String get drillChecklistEvacuated => 'Εκκένωση';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Εκκενώθηκαν: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Δεν υπάρχουν απομακρυσμένοι μαθητές.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Δεν υπάρχουν μαθητές που να έχουν σημειωθεί στο λεωφορείο.';

  @override
  String get drillChecklistNotOnBus => 'Όχι στο λεωφορείο';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Στον λεωφορείο  ΑΠΟΥΝ εκκενώνονται';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'ΣΤΟ ΒΑΣ ($count)';
  }

  @override
  String get drillChecklistProceed => 'Η διαδικασία για την κατάληψη αποδεικτικών στοιχείων';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Δρόμο (Συγκεκριμένα): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Ελέγχος για τις εκκένωσεις';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return 'Αγνοημένος Σπουδαστής...';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Είσαι σίγουρος ότι θέλεις να υποβάλεις το ημερολόγιο;';

  @override
  String get drillEvidenceConfirmSubmission => 'Επιβεβαιώστε την υποβολή των ασκημάτων';

  @override
  String get drillEvidenceDriverNotesHint => 'Περιγράψτε την εκτέλεση των ασκήσεων, τη συμπεριφορά των μαθητών, τις διαδρομές εξόδου που χρησιμοποιήθηκαν, και τυχόν παρατηρημένες εξαιρέσεις...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Σημείωση οδηγού (μικρότερο 10 χαρακτήρες):';

  @override
  String get drillEvidenceFailed => 'Ατυχή υποβολή';

  @override
  String get drillEvidenceMandatoryWarning => 'Για την υποβολή της άσκησης είναι υποχρεωτική τουλάχιστον μία φωτογραφική ή βιντεοπαρασκευή.';

  @override
  String get drillEvidenceRecordVideo => 'Καταγραφή Βίντεο';

  @override
  String get drillEvidenceRetrySubmission => 'ΕΠΙΤΑΓΟΣΗ';

  @override
  String get drillEvidenceReturnToDashboard => 'Επιστρέφουμε στο νταμπλόρντ';

  @override
  String get drillEvidenceSubmitButton => 'ΥΠΟΥΜΗΤΗΣΗ ΤΗΣ ΤΡΑΣΜΟΥΣ';

  @override
  String get drillEvidenceSubmitting => 'Υποβάλλω το ημερολόγιο των ασκήσεων...';

  @override
  String get drillEvidenceSuccess => 'Η Υποταγή Αποτυγχάνει!';

  @override
  String get drillEvidenceSuccessMessage => 'Το ημερολόγιο εκκένωσης έχει ανεβασθεί με επιτυχία και αναμένει έγκριση.';

  @override
  String get drillEvidenceTakePhoto => 'Φωτογραφήστε';

  @override
  String get drillEvidenceTitle => 'Υποχρεωτικές αποδείξεις για την άσκηση';

  @override
  String get drillEvidenceUploading => 'Εφορτισμός στοιχείων και δεδομένων καταλόγου ελέγχου';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Ο λεωφορείος:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Ειδικότερα:';
  }

  @override
  String get drillRosterMarkAttendance => 'Η παρουσία του Μαρκ';

  @override
  String get drillRosterNoStudents => 'Δεν υπάρχουν φοιτητές που να έχουν εγγραφεί σε αυτή τη διαδρομή.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Παρουσίαση: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'ΕΠΙΔΩΣΗΣΗ ΤΑ ΚΑΛΟΣ';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Δρόμο:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Καθίσκο:';
  }

  @override
  String get drillRosterSelectAll => 'Επιλέξτε όλα';

  @override
  String get drillSummaryAdminNotesTitle => 'Σημείες διαχειριστή';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Εγκρίθηκε:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Αποδοθεί στο';

  @override
  String get drillSummaryBackToDrills => 'Επιστροφή στις Τροφές';

  @override
  String get drillSummaryBusNumber => 'Αριθμός λεωφορείου';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Διευθύνεται από:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Πληροφορίες για την άσκηση';

  @override
  String get drillSummaryDriverNotesTitle => 'Σημείωση οδηγοί';

  @override
  String get drillSummaryDuration => 'Διάρκεια';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return 'Πιθανότατα να είναι αστείο.';
  }

  @override
  String get drillSummaryEndTime => 'Ο καιρός του τέλους';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Εκκενώθηκαν: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Εκκενώθηκε';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Επιστολές για τα ΜΜΕ';

  @override
  String get drillSummaryGps => 'Συγκεντρώσεις GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Επιστροφή:';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Δεν κατάφερα να φορτώσω την περίληψη των ασκήσεων για το ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Δεν βρέθηκαν στοιχεία από τις ασκήσεις.';

  @override
  String get drillSummaryNotOnBus => 'Όχι στο λεωφορείο';

  @override
  String get drillSummaryOnBusNotEvacuated => 'Στον λεωφορείο - ΑΠΟΥΝ εκκενώνονται';

  @override
  String get drillSummaryPhotoEvidence => 'Φωτοτεχνική Απόδειξη';

  @override
  String get drillSummaryRouteId => 'Δωρεάν ταυτότητα διαδρομής';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Καθίσκο:';
  }

  @override
  String get drillSummaryStartTime => 'Η ώρα της έναρξης';

  @override
  String get drillSummaryStatus => 'Κράτος';

  @override
  String get drillSummaryStudentLogTitle => 'Λογκ εκκένωσης φοιτητών';

  @override
  String drillSummaryTitle(Object id) {
    return 'Συνοπτική μελέτη (#$id)';
  }

  @override
  String get drillSummaryType => 'Τύπος γεωτρήσεων';

  @override
  String get drillSummaryVideoEvidence => 'Απόδειξη Βίντεο';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Ο λεωφορείος';
  }

  @override
  String get drillTypeClassification => 'Επιλέξτε την ταξινόμηση των ασκητήρων:';

  @override
  String get drillTypeCustomHint => 'Εισάγετε τον τύπο της εκκένωσης...';

  @override
  String get drillTypeInvalidState => 'Απαράβλητη κατάσταση οχήματος ή διαδρομής.';

  @override
  String get drillTypeNameBusFire => 'Πυροσβεστική';

  @override
  String get drillTypeNameDangerZone => 'Ζώνη κινδύνου';

  @override
  String get drillTypeNameDriverIncapacitation => 'Απασχόληση του οδηγού';

  @override
  String get drillTypeNameEquipmentOrientation => 'Προσανατολισμός του εξοπλισμού';

  @override
  String get drillTypeNameFrontDoor => 'Πρωτιές πόρτες';

  @override
  String get drillTypeNameOthers => 'Άλλοι';

  @override
  String get drillTypeNameRearDoor => 'Πίσω πόρτα';

  @override
  String get drillTypeNameSideOrRoof => 'Περαιτέρω ή Πτώνα';

  @override
  String get drillTypeNameSplit => 'Χειρισμός';

  @override
  String get drillTypeNoRouteSelected => 'Δεν επιλέχθηκε δρόμος';

  @override
  String get drillTypePreparation => 'ΕΠΙΤΑΡΙΚΗΣ ΤΗΣ ΤΑΜΟΥΣ';

  @override
  String get drillTypeProceed => 'ΕΠΙΤΑΓΩΝΤΑΣ ΣΤΟΣ ΣΤΟΣ ΣΤΟΣ';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Δρόμο:';
  }

  @override
  String get drillTypeSelectRoute => 'Επιλέξτε διαδρομή:';

  @override
  String get drillTypeSpecifyCustom => 'Ειδικότερα:';

  @override
  String get drillTypeTitle => 'Επιλέξτε τον τύπο γεωτρήσεων';

  @override
  String get drillTypeWarning => 'Επομένως, η Επιτροπή πρέπει να επιβεβαιώνει ότι το όχημα είναι ασφαλές πριν από την έναρξη της εκτέλεσης.';

  @override
  String get drillsAssignedVehicle => 'Ειδικότερα οχήματα';

  @override
  String get drillsChecking => 'Ελέγξτε...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Ειδικότερα, η εικόνα της πτυχής';
  }

  @override
  String get drillsNoBusAssigned => 'Δεν έχει ανατεθεί λεωφορείο';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Δεν έχουν καταγραφεί ασκήσεις για λεωφορείο $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Δεν υπάρχουν διαθέσιμες διαδρομές για να ξεκινήσουμε μια άσκηση.';

  @override
  String get drillsShowSummary => 'Επισκόπηση';

  @override
  String get drillsStartDrill => 'Ξεκινήστε την άσκηση';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Κρατημένο: $date Κείμενο: $status';
  }

  @override
  String get drillsTitle => 'Εποχή εκκένωσης';

  @override
  String get drillsVehicleOutOfService => 'Οχήμα εκτός λειτουργίας';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Αυτό το όχημα είναι προς το παρόν εκτός λειτουργίας και δεν μπορεί να χρησιμοποιηθεί για ασκήσεις.';

  @override
  String get driverDetailsCdlClassLabel => 'Τμήμα CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'ΠΟΛΟΥΣΗ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Ονομασία:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'Επικοινωνία:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Επιβάτης';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Σχολικό λεωφορείο';

  @override
  String get driverDetailsEndorsementsTitle => 'Υποστήριξη';

  @override
  String get driverDetailsExpiryDateLabel => 'Ημερομηνία λήξης';

  @override
  String get driverDetailsHolderSignature => 'ΥΠΟΥΡΓΟΣ';

  @override
  String driverDetailsId(Object driverId) {
    return 'ΔΙ: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Ημερομηνία έκδοσης';

  @override
  String get driverDetailsLicenseDocTitle => 'Δελτίο άδειας';

  @override
  String get driverDetailsLicenseNoLabel => 'Αριθμός άδειας';

  @override
  String get driverDetailsLicenseTitle => 'Πληροφορίες άδειας';

  @override
  String get driverDetailsLicenseTypeLabel => 'Τύπος άδειας';

  @override
  String get driverDetailsOfficialSeal => 'ΕΥΡΙΚΟ ΣΕΛ';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'ΤΡΑΣΜΟ:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'ΔΟΒ:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ΠΟΣΗ:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'ΕΠ: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'Εθνική:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'Φ.Ν.:';
  }

  @override
  String get driverDetailsTapToView => 'Τεμπήστε για να δείτε το έγγραφο DL';

  @override
  String get driverDetailsTitle => 'Πληροφορίες οδηγού';

  @override
  String get dvirCategoryBusSafetySystems => 'Συστήματα ασφάλειας ειδικών λεωφορείων';

  @override
  String get dvirCategoryCouplingDevices => 'Συσκευές σύνδεσης';

  @override
  String get dvirCategoryEmergencyEquipment => 'Επαγγελματική εκπαίδευση';

  @override
  String get dvirCategoryHorn => 'Κέρας';

  @override
  String get dvirCategoryLightingReflectors => 'Προϊόντα φωτισμού και αντανακλαστικά';

  @override
  String get dvirCategoryMirrors => 'Αντικατοπράξεις';

  @override
  String get dvirCategoryParkingBrake => 'Φρένα στάθμευσης';

  @override
  String get dvirCategoryPassengerSeating => 'Τόποι κάθισμα και περιορισμοί';

  @override
  String get dvirCategoryServiceBrakes => 'Τα φρένα εξυπηρέτησης';

  @override
  String get dvirCategorySteeringMechanism => 'Μηχανισμός καθοδήγησης';

  @override
  String get dvirCategoryTires => 'Τάιρες';

  @override
  String get dvirCategoryWheelsRims => 'Χόρες και ράμματα';

  @override
  String get dvirCategoryWipers => 'Σφραγίστες με παγομπλεξί';

  @override
  String get dvirPostTripCapturePhoto => 'Φωτογραφία ελαττώματος';

  @override
  String get dvirPostTripComplianceTitle => 'ΠΑΡΑΓΑΣΗΣΗ συμμόρφωσης';

  @override
  String get dvirPostTripDefectButton => 'ΕΝΑΤΑΓΟΣ';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Αναφορά ελαττώματος χωρίς φωτογραφία';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Προειδοποίηση: Αναφέρετε ελαττώματα στις ζώνες ασφαλείας ($zones) χωρίς να επισυνάπτετε φωτογραφία.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Ελέγχος: λεωφορείο $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Εισάγετε λεπτομέρειες για την ανησυχία για την ασφάλεια...';

  @override
  String get dvirPostTripNotesLabel => 'Σημείωση (ΠΟΥΛΗΜΑΣ ΠΟΥ ΕΝΑΤΑΚΑΤΑ) & Φωτογραφία';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Επιλέξτε DEFECT για να εισάγετε λεπτομέρειες ανησυχίας για την ασφάλεια...';

  @override
  String get dvirPostTripOdometerHeader => 'Διάγνωση του οδόμετρου';

  @override
  String get dvirPostTripOdometerInstructions => 'Εισάγετε την ανάγνωση χιλιόμετρας ακριβώς όπως φαίνεται στο πίνακα οργάνων του λεωφορείου:';

  @override
  String get dvirPostTripOdometerLabel => 'Οδημετρός (μύλια)';

  @override
  String get dvirPostTripOdometerTitle => 'ΤΗΜΕΡΙΚΗ ΤΗΜΕΡΙΚΗ ΤΗΜΕΡΙΚΗ ΤΗΜΕΡΙΚΗ ΤΗΜΕΡΙΚΗ';

  @override
  String get dvirPostTripOdometerWarning => 'Παρακαλούμε εισάγετε την ανάγνωση του οδόμετρου πριν προχωρήσετε.';

  @override
  String get dvirPostTripPassButton => 'ΠΑΣΣ';

  @override
  String get dvirPostTripPhotoAttached => 'Φωτογραφία προσαρτήθηκε με επιτυχία.';

  @override
  String get dvirPostTripProgressLabel => 'Προοδεία της επιθεώρησης';

  @override
  String get dvirPostTripSignatureCaptured => 'Υπογραφή κατασχέθηκε.';

  @override
  String get dvirPostTripSignatureCert => 'Διαπιστώνω ότι η έκθεση ελέγχου περιπλανήσεων οχημάτων έχει συμπληρωθεί σύμφωνα με τους κανονισμούς FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Επιστολή υπογραφής οδηγού';

  @override
  String get dvirPostTripSubmitButton => 'ΕΠΙΔΩΣΗ';

  @override
  String get dvirPostTripSubmitSuccess => 'Η eDVIR υποβλήθηκε με επιτυχία.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ΖΩΝΑ $current OF $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Ζώνες V1';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Αναγνωρίζω ότι έχω αναθεωρήσει την τελευταία υποβληθείσα έκθεση ελαττώματος και επαληθεύτηκα τις επισκευές (αν υπάρχουν) και δηλώσω ότι το λεωφορείο είναι ασφαλές για λειτουργία.';

  @override
  String get dvirPreTripActiveMessage => 'Αυτό το όχημα είναι ενεργό και δεν έχει ανοιχτά ελαττώματα.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Δραστηριώδης διαδρομή: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ΑΠΟΠΡΟΣΗΣΗΣ ΑΠΟΠΟΣΗ: Επαγγελματικές ατυχίες';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Αριθμός λεωφορείου: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Ελέγχος αποστολής οχημάτων';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Αποτύχει να υπογράψει:';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Δεν καταγράφονται προηγούμενες ελαττώσεις';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Αυτό το όχημα αναφέρθηκε καθαρό στην προηγούμενη επιθεώρηση μετά την εκδρομή.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Δεν χρειάζεται επισκευές για ασφαλή λειτουργία.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Το όχημα αυτό είναι εκτός λειτουργίας για επισκευή/επακράτηση.';

  @override
  String get dvirPreTripOutofServiceButton => 'ΤΗΣ ΕΡΩΤΗΣΗΣ ΑΠΟΥΡΓΕΙΣ';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Λόγος:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return 'ΠΟΥΛΟΥΣ';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'ΕΠΙΘΕΜΑΝΑ Νέοι ελαττώματα';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Η αναφορά νέων ελαττωμάτων είναι απενεργοποιημένη κατά τη διάρκεια των επισκευών.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Κατάσταση:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'ΑΠΟΤΟΣΗΣΗ ΤΟΥ ΥΠΟΥΣΤΟΥ ΤΟΥ ΤΡΑΣΠΟΥΣ';

  @override
  String get dvirPreTripReturnToHomeButton => 'Επιστροφή στο σπίτι';

  @override
  String get dvirPreTripSignOffTitle => 'ΣΥΡΙΖΑ για να προχωρήσουμε στο περίπατο';

  @override
  String get dvirPreTripSignedSuccess => 'Επιβεβαίωση υπογράφηκε με επιτυχία.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'ΕΠΙΔΕΣΗ';

  @override
  String get dvirPreTripTitle => 'Επιστολή πριν από το ταξίδι';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Κράτος οχήματος: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Ζωγραφίστε υπογραφή';

  @override
  String get dvirSigPreviewLabel => 'Επισκόπηση υπογραφής:';

  @override
  String get dvirSigRedraw => 'ΕΡΤΑΣΗ';

  @override
  String get dvirSigSave => 'ΣΑΒΑΛΙΣΤΕΥΣ ΥΠΟΥΡΓΟΥ';

  @override
  String get dvirSigTapToDraw => 'ΤΕΠ για να τραβήξετε υπογραφή (ΑΠΟΡΘΕΙΣΕΙΣ)';

  @override
  String get dvirSigWatermark => 'Υπογραφή κάθετα (κάτω προς τα πάνω)';

  @override
  String get forgotPasswordCancel => 'Ακύρωση';

  @override
  String get forgotPasswordEmailLabel => 'Επιστολή';

  @override
  String get forgotPasswordInvalidEmail => 'Παρακαλούμε εισάγετε ένα έγκυρο e-mail';

  @override
  String get forgotPasswordSend => 'Στείλε';

  @override
  String get forgotPasswordSuccess => 'Αν υπάρχει αυτό το e-mail, έχει αποσταλεί ένα σύνδεσμο επαναφοράς.';

  @override
  String get genericBack => 'Επιστροφή';

  @override
  String get genericCancel => 'Ακύρωση';

  @override
  String get genericClear => 'ΕΛΑΙΑ';

  @override
  String get genericClose => 'Κοντά';

  @override
  String get genericConfirm => 'Επιβεβαίωση';

  @override
  String get genericEdit => 'Εξετάστε';

  @override
  String get genericError => 'Κάτι πήγε στραβά.';

  @override
  String get genericLoading => 'Φορτώνοντας...';

  @override
  String get genericNext => 'Επόμενο';

  @override
  String get genericOk => 'Εντάξει, εντάξει.';

  @override
  String get genericRetry => 'Δοκιμάστε ξανά';

  @override
  String get genericSuccess => 'Επιτυχία';

  @override
  String homeBusLabel(Object busId) {
    return 'Ο λεωφορείος:';
  }

  @override
  String get homeDispatchBlocked => 'Αποστολή εμποδίστηκε';

  @override
  String get homeDispatchBlockedTitle => 'Αποστολή εμποδίστηκε';

  @override
  String get homeErrorNoRoutesPreTrip => 'Δεν υπάρχουν διαθέσιμες διαδρομές για την εκτέλεση του Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Αποτύχει να ξεκινήσει την πτήση στον διακομιστή: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Γεια σου, V0__';
  }

  @override
  String get homeLogout => 'Επενδύσεις';

  @override
  String get homeMenuAppInfo => 'Πληροφορίες για την εφαρμογή';

  @override
  String get homeMenuDrill => 'Ειδικότερα';

  @override
  String get homeMenuDriverDetails => 'Πληροφορίες οδηγού';

  @override
  String get homeMenuLanguage => 'Γλώσσα';

  @override
  String get homeMenuPreTrip => 'Ελέγχος πριν από το ταξίδι';

  @override
  String get homeNoRoutes => 'Δεν υπάρχουν διαθέσιμες διαδρομές';

  @override
  String get homeReviewVerifyPreTrip => 'Επισκόπηση & Ελέγχου Προ-Τρίπ';

  @override
  String get homeSearchHint => 'Διαδρομές αναζήτησης';

  @override
  String get homeStart => 'Ξεκινήστε';

  @override
  String get homeTitle => 'Επιστροφή';

  @override
  String get homeVehicleOutOfServiceDefault => 'Το όχημα είναι επί του παρόντος εκτός υπηρεσίας.';

  @override
  String get homeVehicleReady => 'Το όχημα είναι έτοιμο και επαληθευμένο για ασφαλή λειτουργία.';

  @override
  String get languageTitle => 'Γλώσσα';

  @override
  String get loginButton => 'Εισαγωγή';

  @override
  String get loginEmailOrPhoneLabel => 'Επιστολή ή αριθμός τηλεφώνου';

  @override
  String get loginErrorEnterPassword => 'Παρακαλούμε εισάγετε κωδικό πρόσβασης';

  @override
  String get loginErrorEnterUsername => 'Παρακαλούμε εισάγετε το όνομα χρήστη';

  @override
  String get loginErrorFailed => 'Η σύνδεση απέτυχε.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Παρακαλούμε εισάγετε ένα έγκυρο e-mail ή αριθμό τηλεφώνου';

  @override
  String get loginForgotPassword => 'Ξέχασες τον κωδικό πρόσβασης;';

  @override
  String get loginPasswordLabel => 'Κωδικός πρόσβασης';

  @override
  String get mapChildrenTooltip => 'Παιδιά & κηδεμόνα';

  @override
  String get mapConfirmMessage => 'Θέλεις πραγματικά να κλείσεις το ταξίδι;';

  @override
  String get mapConfirmTitle => 'Επιβεβαίωση';

  @override
  String get mapCurrentPosition => 'Σήμερα';

  @override
  String get mapNo => 'Όχι, όχι.';

  @override
  String get mapReconnectMessage => 'Η επικαιροποίηση της τοποθεσίας αποτυγχάνει συχνά, Παρακαλούμε ελέγξτε το διαδίκτυο σας.';

  @override
  String get mapReconnectTitle => 'Επισκόπηση';

  @override
  String get mapStop => 'Σταμάτα.';

  @override
  String get mapStopping => 'Σταματήστε...';

  @override
  String get mapStopsTooltip => 'Σταματά';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Ενημερωθεί πριν από ${seconds}s';
  }

  @override
  String get mapWaitingGps => 'Περιμένω GPS...';

  @override
  String get mapYes => 'Ναι, ναι.';

  @override
  String get splashDriverApp => 'Εφαρμογή οδηγού';

  @override
  String get stopsActionUndo => 'Απαλλαγή';

  @override
  String get stopsCancelledSuccess => 'Ακύρωση επιτυχημένη';

  @override
  String get stopsDefaultLabel => 'Σταμάτα.';

  @override
  String get stopsGenericError => 'Κάτι πήγε στραβά.';

  @override
  String get stopsStatusComplete => 'ολοκληρωμένη';

  @override
  String get stopsStatusDone => 'Τελείωσε';

  @override
  String stopsSubmitCount(Object count) {
    return 'Υποβολή ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Υποβολή επιτυχώς';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Ελέγξτε:';
  }

  @override
  String get stopsTypeDrop => 'Πέταξε';

  @override
  String get stopsTypePick => 'Επιλέξτε';

  @override
  String stopsUndoCount(Object count) {
    return 'Απαλλαγή ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Απαλλαγή από την επιλογή/αποβολή';

  @override
  String get tripConfirmCancel => 'Ακύρωση';

  @override
  String get tripConfirmOk => 'Εντάξει.';

  @override
  String get tripConfirmTitle => 'Επισκόπηση';

  @override
  String get tripErrorLocationRequired => 'Για να ξεκινήσετε ένα ταξίδι απαιτείται άδεια τοποθεσίας.';

  @override
  String get homeMenuPostCrashReporting => 'Αναφορά μετά το ατύχημα';

  @override
  String homeVehicleReason(Object reason) {
    return 'Λόγος:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Κατάσταση:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Επιστροφή:';
  }

  @override
  String get crashLocationPickerSearchHint => 'Τοποθεσία αναζήτησης (π.χ. Market St)';

  @override
  String get crashLocationPickerTitle => 'Επιλέξτε τοποθεσία στον χάρτη';

  @override
  String get crashLocationPickerTooltip => 'Επιβεβαιώστε τοποθεσία';

  @override
  String get incidentDashboardDescription => 'Επιλέξτε μια ενέργεια για να προχωρήσετε με τη διαχείριση συμβάντων ή να δείτε προηγούμενες αναφορές.';

  @override
  String get incidentDashboardHeadline => 'Αναφορά για περιστατικά μετά το ατύχημα';

  @override
  String get incidentDashboardLogNew => 'Λογκ Νέος Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Ξεκινάτε μια νέα έκθεση βήμα προς βήμα';

  @override
  String get incidentDashboardTitle => 'Συνέπεια μετά το ατύχημα';

  @override
  String get incidentDashboardViewHistory => 'Δείτε Ιστορία';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Δείτε προηγούμενες αναφορές συντριβής και κατάσταση';

  @override
  String get incidentDetailsAdminLetter => 'Λήψη';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Ανάμετρο των δοκιμών αλκοόλ (2-ωρο)';

  @override
  String get incidentDetailsBranchId => 'Δωρεάν ταυτότητα υποκαταστήματος';

  @override
  String get incidentDetailsBusPlate => 'Πίνακα πιστοποιητικών λεωφορείων';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Επίδραση αναφοράς: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Αναφορά προς τον οδηγό';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Συντονισμοί: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- Κοντάρφηκε στο κουμπί!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Αντιγραφή σε κλιπμπορντ';

  @override
  String get incidentDetailsCrashCitationInfo => 'Ειδικότερα';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Ημερομηνία & ώρα: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Έκθεση DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Έκθεση του Κρατικού Υπουργείου Εξωτερικών (Επιαιρετική)';

  @override
  String get incidentDetailsDriverNotes => 'Σημείωση οδηγού:';

  @override
  String get incidentDetailsDriverUserId => 'Χρησιμοποιούμενο ID οδηγού';

  @override
  String get incidentDetailsDrugCountdown => 'Ο αριθμός των δοκιμών για τα ναρκωτικά DOT (8-ωρο)';

  @override
  String get incidentDetailsFatalityOccurred => 'Θανάτου';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Τροποποίηση';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Τραυματισμοί που απαιτούν ιατρική θεραπεία';

  @override
  String get incidentDetailsLawEnforcement => 'Υπηρεσία επιβολής του νόμου';

  @override
  String get incidentDetailsLoadFailed => 'Δεν κατάφερα να φορτώσω λεπτομέρειες.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Τοποθεσία:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Ενημέρωση για τα ΜΜΕ';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Κατάσταση:';
  }

  @override
  String get incidentDetailsNo => 'Οχι';

  @override
  String get incidentDetailsNoMediaAttachments => 'Δεν έχει επισυνάψει φωτογραφίες ή βίντεο.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Κανένας μαθητής δεν είχε σημειωθεί στο πλοίο κατά τη διάρκεια του περιστατικού.';

  @override
  String get incidentDetailsNotificationsDesc => 'Γενικεύει αναφορές ειδοποίησης και στέλνει προτυποποιημένα γράμματα στους επιθεωρητές ή την διοίκηση της περιοχής.';

  @override
  String get incidentDetailsNotificationsTitle => 'Αναφορές για τη μεταφορά';

  @override
  String get incidentDetailsOfficer => 'Πληροφορίες για τον αξιωματικό';

  @override
  String get incidentDetailsPoliceReport => 'Αριθμός αναφοράς της αστυνομίας';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Προεπιγεμισμένη επιστολή μεταφοράς:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Κανονιστική βάση:';

  @override
  String get incidentDetailsRouteId => 'Δωρεάν ταυτότητα διαδρομής';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Ανακοίνωση του διοικητή σχολείου';

  @override
  String get incidentDetailsStatusPending => 'Περιμένει';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Πληροφορίες:';
  }

  @override
  String get incidentDetailsStudentInjured => 'Χτύπησε';

  @override
  String get incidentDetailsStudentNoInjury => 'Δεν έχει τραυματισμούς';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Σοβαρότητα:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Μεταφορές προς:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Σπουδαστές στο σκάφος ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Απαιτείται δοκιμή μετά την κατάρρευση';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Κατάσταση:';
  }

  @override
  String get incidentDetailsTitle => 'Πληροφορίες για το περιστατικό';

  @override
  String get incidentDetailsVehicleTowed => 'Τραγμένο όχημα';

  @override
  String get incidentDetailsYes => 'Ναι, ναι.';

  @override
  String get incidentHistoryEmpty => 'Δεν υπάρχουν καταγραφές περιστατικών για αυτό το όχημα.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Αποτύχθηκε να ανακτηθεί η καταγραφή: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Χρόνος: Β0 Οδήγηση: Β1';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Τροποποίηση';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'ΑΠΟΥΡΕΙΣ';

  @override
  String get incidentHistoryTestingRequired => 'Απαιτείται';

  @override
  String get incidentHistoryTitle => 'Μητρώο συμβάντων μετά το ατύχημα';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Προσθέστε άλλη φωτογραφία';

  @override
  String get incidentIntakeBadgeNumberError => 'Απαιτείται';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Αριθμός σήματος *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Αριθμός λεωφορείου: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Φωτογραφία της σκηνής';

  @override
  String get incidentIntakeCitationSubtitle => 'Έδωσαν μήνυμα παραβίασης κυκλοφορίας στον οδηγό σχολικού λεωφορείου;';

  @override
  String get incidentIntakeCitationTitle => 'Εκδόθηκε αναφορά;';

  @override
  String get incidentIntakeDateTimeLabel => 'Ημερομηνία και ώρα του συντριβής *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'ΔΕΝ απαιτείται δοκιμή';

  @override
  String get incidentIntakeDotTestingRequired => 'ΑΠΟΠΟΡΕΙΣΗ ΔΕΝ ΤΕΣΤΙΚΗΣ';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Οδηγός:';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Εισάγετε τυχόν πρόσθετες σημειώσεις σχετικά με την σύγκρουση...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Σημείωση για το περιστατικό οδήγησης';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Αποτυχημένη φόρτωση επιβατών διαδρομής: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Παραστεθείτε απόδειξη (φωτογραφίες) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Υπήρξαν θανάτους ως αποτέλεσμα αυτού του ατυχήματος;';

  @override
  String get incidentIntakeFatalityTitle => 'Έγινε Θανάτο;';

  @override
  String get incidentIntakeGpsLabel => 'Συγκεντρώσεις GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Δείτε Ιστορία';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Έγινε κανείς τραυματισμός στο σώμα που απαιτούσε άμεση ιατρική περίθαλψη μακριά από το σημείο;';

  @override
  String get incidentIntakeInjuriesTitle => 'Τραυματισμοί που απαιτούν ιατρική περίθαλψη;';

  @override
  String get incidentIntakeInjuryNotesError => 'Οι επιστολές για τραυματισμούς είναι υποχρεωτικές για τους τραυματισμένους μαθητές.';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Σημείωση / λεπτομέρειες για τον τραυματισμό (Πρόσκληση) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Σοβαρότητα τραυματισμού *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Παρακαλώ εισάγετε την υπηρεσία επιβολής του νόμου';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Υπηρεσία επιβολής του νόμου (π.χ. κρατική οδική περίπολο) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Έκθεση Αστυνομίας και Αστυνομίας';

  @override
  String get incidentIntakeLocationDescError => 'Παρακαλούμε εισάγετε περιγραφή της τοποθεσίας';

  @override
  String get incidentIntakeLocationDescLabel => 'Περιγραφή της τοποθεσίας (π.χ. Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Ιατρική εγκατάσταση μεταφέρεται';

  @override
  String get incidentIntakeNoMatchingStudents => 'Δεν υπάρχουν φοιτητές που ταιριάζουν.';

  @override
  String get incidentIntakeNoStudentsFound => 'Δεν βρήκαν φοιτητές.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Δεν υπάρχουν μαθητές στο σκάφος.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Δεν έχουν εγγραφεί μαθητές για αυτή τη διαδρομή.';

  @override
  String get incidentIntakeOfficerNameError => 'Παρακαλούμε να εισαγάγετε το όνομα του αξιωματικού .';

  @override
  String get incidentIntakeOfficerNameLabel => 'Ονομασία του αξιωματικού *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Παρακαλούμε εισάγετε τον αριθμό της αστυνομικής αναφοράς';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Αριθμός αναφοράς της αστυνομίας *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Δρόμο:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Πληροφορίες για το δρόμο και τον οδηγό';

  @override
  String get incidentIntakeSearchInjuredHint => 'Ψάξτε τραυματισμένο παιδί...';

  @override
  String get incidentIntakeSearchStudentHint => 'Ψάξτε μαθητή...';

  @override
  String get incidentIntakeSelectAll => 'Επιλέξτε όλους τους μαθητές';

  @override
  String get incidentIntakeSelectOnMap => 'ΕΠΙΔΗΣΗΣΣΣΣ Στον Χάρτη';

  @override
  String get incidentIntakeSeverityFatal => 'Φτωτικό';

  @override
  String get incidentIntakeSeverityMinor => 'Μικρό';

  @override
  String get incidentIntakeSeverityModerate => 'Μετριοπαθής';

  @override
  String get incidentIntakeSeveritySevere => 'Σοβαρά';

  @override
  String get incidentIntakeSeverityTitle => 'Αλλακτικές σοβαρότητας κατάρρευσης';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ΔΙ: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'ΕΠΙΘΕΣΗ';

  @override
  String get incidentIntakeTitle => 'Η πρόσληψη μετά από ένα ατύχημα';

  @override
  String get incidentIntakeTowedSubtitle => 'Υπήρξε κάποιο όχημα που είχε ζημιές που απαιτούσαν να το τραβήξουν από το σημείο;';

  @override
  String get incidentIntakeTowedTitle => '- Το όχημα τραβήχτηκε;';

  @override
  String get incidentIntakeWasInjured => '- Τραυματίστηκε;';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Ο λεωφορείος:';
  }

  @override
  String get dvirPreTripClose => 'ΠΟΛΟΣ';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Σχόλια / σημειώσεις του οδηγού (Επιαιρετική)';

  @override
  String get dvirPreTripNoComments => 'Δεν προστέθηκαν παρατηρήσεις.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Λόγος:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Δρόμο:';
  }

  @override
  String get dvirPreTripSigCaptured => 'Υπογραφή κατασχέθηκε με επιτυχία.';

  @override
  String get dvirPreTripSigMissing => 'Λείπει η υπογραφή.';

  @override
  String get dvirPreTripSignDefectWarning => 'Παρακαλούμε υπογράψτε για να επιβεβαιώσετε την επισκευή προηγούμενων ελαττωμάτων.';

  @override
  String get dvirPreTripStepSignOff => 'Υπογραφή';

  @override
  String get dvirPreTripStepSubmit => 'Υποβολή';

  @override
  String get dvirPreTripStepVerify => 'Επιστολή';

  @override
  String get dvirPreTripTapNext => 'Εμπλέξτε το NEXT για να συνεχίσετε.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Το όχημα είναι εκτός λειτουργίας';

  @override
  String get dvirPreTripVehicleReady => 'Το όχημα είναι έτοιμο για υπηρεσία';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Επιστευχμένη κατάσταση επισκευής:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Παρακαλούμε να επαληθεύσετε ότι όλα τα αναφερόμενα ελαττώματα έχουν επιδιορθωθεί επιλέγοντας το κουτί δίπλα σε κάθε ελαττώμα.';

  @override
  String get dvirPreTripYourComments => 'Οι παρατηρήσεις σας:';

  @override
  String get countryPickerNoCountries => 'Δεν βρέθηκαν χώρες';

  @override
  String get countryPickerSearchHint => 'Ψάξτε με όνομα χώρας, κωδικό ή κωδικό κλήσης...';

  @override
  String get countryPickerTitle => 'Επιλέξτε χώρα';

  @override
  String get mapDefaultStop => 'Σταμάτα.';

  @override
  String get mapEndLocation => 'Τελική τοποθεσία';

  @override
  String get mapStartLocation => 'Αρχική Τοποθεσία';

  @override
  String get stopsNoChangesToUndo => 'Δεν υπάρχουν αλλαγές που να αναστρέψουν.';

  @override
  String get stopsNoStopsAvailable => 'Δεν υπάρχουν στάσεις.';

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
