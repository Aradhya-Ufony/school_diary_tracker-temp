import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appInfoBuild => 'Quraşdırma Nömrəsi';

  @override
  String get appInfoDevice => 'Cihazın Modeli';

  @override
  String get appInfoOS => 'ƏS Versiyası';

  @override
  String get appInfoPackage => 'Paket';

  @override
  String get appInfoTitle => 'Tətbiq Məlumatı';

  @override
  String get appInfoVersion => 'Tətbiq Versiyası';

  @override
  String get appTitleSchoolDiary => 'SD İzləyicisi';

  @override
  String get childrenActionGuardians => 'Qəyyumlar';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name üçün səlahiyyətli qəyyumlar';
  }

  @override
  String get childrenNoGuardians => 'Bu uşaq üçün qeydiyyatda səlahiyyətli qəyyum yoxdur.';

  @override
  String get childrenStatusDropped => 'Düşürüldü';

  @override
  String get childrenStatusPending => 'Gözlənilir';

  @override
  String get childrenStatusPicked => 'Götürüldü';

  @override
  String childrenTitle(Object routeName) {
    return 'Uşaqlar — $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'QAYİB / AVTOBUSDA DEYİL ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Avtobus: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Təxliyə edildi';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Təxliyə edildi: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Qayib tələbə yoxdur.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Avtobusda qeyd olunan tələbə yoxdur.';

  @override
  String get drillChecklistNotOnBus => 'AVTOBUSDA DEYİL';

  @override
  String get drillChecklistOnBusNotEvacuated => 'AVTOBUSDA — TƏXLİYƏ EDİLMƏYİB';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'AVTOBUSDA ($count)';
  }

  @override
  String get drillChecklistProceed => 'SÜBUT TOPLAMAĞA KEÇİN';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Marşrut (Canlı): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Təxliyə Təlimi Yoxlama Siyahısı';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Sayılmayan Tələbə Qaldı!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Bu təlim jurnalını təqdim etmək istədiyinizə əminsiniz? Bu əməliyyat geri qaytarıla bilməz.';

  @override
  String get drillEvidenceConfirmSubmission => 'Təlimin Təqdimatını Təsdiqləyin';

  @override
  String get drillEvidenceDriverNotesHint => 'Təlimin icrasını, tələbə davranışını, istifadə olunan çıxış yollarını və müşahidə olunan hər hansı istisnaları təsvir edin...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Sürücü Qeydləri (Minimum 10 simvol):';

  @override
  String get drillEvidenceFailed => 'Təqdimat Uğursuz Oldu';

  @override
  String get drillEvidenceMandatoryWarning => 'Təlimi təqdim etmək üçün ən azı 1 foto və ya video sübut məcburidir.';

  @override
  String get drillEvidenceRecordVideo => 'Video Yaz';

  @override
  String get drillEvidenceRetrySubmission => 'TƏQDİMATI YENİDƏN CƏHD EDİN';

  @override
  String get drillEvidenceReturnToDashboard => 'İDARƏ PANELİNƏ QAYIT';

  @override
  String get drillEvidenceSubmitButton => 'TƏLİM JURNALINI TƏQDİM ET';

  @override
  String get drillEvidenceSubmitting => 'Təlim Jurnalı Təqdim Edilir...';

  @override
  String get drillEvidenceSuccess => 'Təqdimat Uğurlu Oldu!';

  @override
  String get drillEvidenceSuccessMessage => 'Təxliyə təlimi jurnalı uğurla yükləndi və təsdiq gözləyir.';

  @override
  String get drillEvidenceTakePhoto => 'Foto Çək';

  @override
  String get drillEvidenceTitle => 'Məcburi Təlim Sübutu';

  @override
  String get drillEvidenceUploading => 'Sübutlar və yoxlama siyahısı məlumatları yüklənir';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Avtobus: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Təlim: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Davamiyyəti Qeyd Et';

  @override
  String get drillRosterNoStudents => 'Bu marşrutda qeydiyyatdan keçmiş tələbə yoxdur.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'İştirak edir: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'TƏLİM YOXLAMA SİYAHISINA KEÇİN';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Marşrut: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Oturacaq: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Hamısını Seç';

  @override
  String get drillSummaryAdminNotesTitle => 'Admin Qeydləri';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Təsdiqləndi: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Təsdiqləndi';

  @override
  String get drillSummaryBackToDrills => 'Təlimlərə Qayıt';

  @override
  String get drillSummaryBusNumber => 'Avtobus Nömrəsi';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Keçirdi: $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Təlim Təfərrüatları';

  @override
  String get drillSummaryDriverNotesTitle => 'Sürücü Qeydləri';

  @override
  String get drillSummaryDuration => 'Müddət';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes dəq $seconds san';
  }

  @override
  String get drillSummaryEndTime => 'Bitmə Vaxtı';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Təxliyə edildi: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return '$time təxliyə edildi';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Sübut Media Əlavələri';

  @override
  String get drillSummaryGps => 'GPS Koordinatları';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Enlik: $lat, Uzunluq: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return '#$id ID üçün təlim xülasəsini yükləmək mümkün olmadı.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Təlim məlumatı tapılmadı.';

  @override
  String get drillSummaryNotOnBus => 'Avtobusda Deyil';

  @override
  String get drillSummaryOnBusNotEvacuated => 'AVTOBUSDA - TƏXLİYƏ EDİLMƏYİB';

  @override
  String get drillSummaryPhotoEvidence => 'Foto Sübut';

  @override
  String get drillSummaryRouteId => 'Marşrut ID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Oturacaq: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Başlama Vaxtı';

  @override
  String get drillSummaryStatus => 'Status';

  @override
  String get drillSummaryStudentLogTitle => 'Tələbə Təxliyə Jurnalı';

  @override
  String drillSummaryTitle(Object id) {
    return 'Təlim Xülasəsi (#$id)';
  }

  @override
  String get drillSummaryType => 'Təlim Növü';

  @override
  String get drillSummaryVideoEvidence => 'Video Sübut';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Avtobus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Təlim təsnifatını seçin:';

  @override
  String get drillTypeCustomHint => 'Xüsusi təxliyə təlimi növünü daxil edin...';

  @override
  String get drillTypeInvalidState => 'Yanlış nəqliyyat vasitəsi və ya marşrut vəziyyəti.';

  @override
  String get drillTypeNameBusFire => 'Avtobus Yanğını';

  @override
  String get drillTypeNameDangerZone => 'Təhlükə Zonası';

  @override
  String get drillTypeNameDriverIncapacitation => 'Sürücünün İş Qabiliyyətini İtirməsi';

  @override
  String get drillTypeNameEquipmentOrientation => 'Avadanlıqla Tanışlıq';

  @override
  String get drillTypeNameFrontDoor => 'Ön Qapı';

  @override
  String get drillTypeNameOthers => 'Digərləri';

  @override
  String get drillTypeNameRearDoor => 'Arxa Qapı';

  @override
  String get drillTypeNameSideOrRoof => 'Yan və ya Dam';

  @override
  String get drillTypeNameSplit => 'Bölünmüş';

  @override
  String get drillTypeNoRouteSelected => 'Marşrut Seçilməyib';

  @override
  String get drillTypePreparation => 'TƏLİM HAZIRLIĞI';

  @override
  String get drillTypeProceed => 'TƏLƏBƏ SİYAHISINA KEÇİN';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Marşrut: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Marşrut Seçin:';

  @override
  String get drillTypeSpecifyCustom => 'Təlim Növü Təsvirini Qeyd Edin:';

  @override
  String get drillTypeTitle => 'Təlim Növünü Seçin';

  @override
  String get drillTypeWarning => 'İcraya başlamazdan əvvəl nəqliyyat vasitəsinin təhlükəsiz park edildiyinə əmin olun.';

  @override
  String get drillsAssignedVehicle => 'Təyin Edilmiş Nəqliyyat Vasitəsi';

  @override
  String get drillsChecking => 'Yoxlanılır...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Təlim #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Avtobus Təyin Edilməyib';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return '$busNumber nömrəli avtobus üçün təlim qeydə alınmayıb';
  }

  @override
  String get drillsNoRoutesAvailable => 'Təlimə başlamaq üçün marşrut yoxdur.';

  @override
  String get drillsShowSummary => 'Xülasəni Göstər';

  @override
  String get drillsStartDrill => 'Təlimə Başla';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Keçirildi: $date\nStatus: $status';
  }

  @override
  String get drillsTitle => 'Təxliyə Təlimləri';

  @override
  String get drillsVehicleOutOfService => 'Nəqliyyat Vasitəsi Xidmətdən Kənardır';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Bu nəqliyyat vasitəsi hazırda xidmətdən kənardır və təlimlər üçün istifadə edilə bilməz.';

  @override
  String get driverDetailsCdlClassLabel => 'CDL Sinfi';

  @override
  String get driverDetailsDrivingLicenseLabel => 'SÜRÜCÜLÜK VƏSİQƏSİ';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'AD: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LİS: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Sərnişin';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Məktəb Avtobusu';

  @override
  String get driverDetailsEndorsementsTitle => 'Sahib Olunan Kateqoriyalar';

  @override
  String get driverDetailsExpiryDateLabel => 'Bitmə Tarixi';

  @override
  String get driverDetailsHolderSignature => 'SAHİBİN İMZASI';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Verilmə Tarixi';

  @override
  String get driverDetailsLicenseDocTitle => 'Vəsiqə Sənədi';

  @override
  String get driverDetailsLicenseNoLabel => 'Vəsiqə №';

  @override
  String get driverDetailsLicenseTitle => 'Vəsiqə Təfərrüatları';

  @override
  String get driverDetailsLicenseTypeLabel => 'Vəsiqə Növü';

  @override
  String get driverDetailsOfficialSeal => 'RƏSMİ MÖHÜR';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'SİNİF: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DT: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'KAT: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'BİTİR: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'VN: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'AD: $name';
  }

  @override
  String get driverDetailsTapToView => 'Sürücülük Vəsiqəsi Sənədinə Baxmaq üçün Toxunun';

  @override
  String get driverDetailsTitle => 'Sürücü Təfərrüatları';

  @override
  String get dvirCategoryBusSafetySystems => 'Avtobusa Xüsusi Təhlükəsizlik Sistemləri';

  @override
  String get dvirCategoryCouplingDevices => 'Birləşdirici Cihazlar';

  @override
  String get dvirCategoryEmergencyEquipment => 'Təcili Yardım Avadanlıqları';

  @override
  String get dvirCategoryHorn => 'Səs Siqnalı';

  @override
  String get dvirCategoryLightingReflectors => 'İşıqlandırma Cihazları və İşıqqaytarıcılar';

  @override
  String get dvirCategoryMirrors => 'Arxa Görüntü Güzgüləri';

  @override
  String get dvirCategoryParkingBrake => 'Parkinq Əyləci';

  @override
  String get dvirCategoryPassengerSeating => 'Sərnişin Oturacaqları və Təhlükəsizlik Kəmərləri';

  @override
  String get dvirCategoryServiceBrakes => 'İşçi Əyləcləri';

  @override
  String get dvirCategorySteeringMechanism => 'Sükan Mexanizmi';

  @override
  String get dvirCategoryTires => 'Təkərlər';

  @override
  String get dvirCategoryWheelsRims => 'Təkərlər və Disklər';

  @override
  String get dvirCategoryWipers => 'Şüşəsilənlər';

  @override
  String get dvirPostTripCapturePhoto => 'QÜSUR FOTOSUNU ÇƏKİN';

  @override
  String get dvirPostTripComplianceTitle => 'UYĞUNLUQ SERTİFİKATLAŞDIRILMASI';

  @override
  String get dvirPostTripDefectButton => 'QÜSUR';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Fotosuz Qüsurun Bildirilməsi';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Xəbərdarlıq: Foto əlavə etmədən təhlükəsizlik zonalarında ($zones) qüsur barədə məlumat verirsiniz. Yenə də təqdim etmək istədiyinizə əminsiniz?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Yoxlama: Avtobus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Təhlükəsizlik narahatlığının təfərrüatlarını daxil edin...';

  @override
  String get dvirPostTripNotesLabel => 'QEYDLƏR (QÜSUR OLDUQDA MƏCBURİDİR) VƏ FOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Təhlükəsizlik narahatlığının təfərrüatlarını daxil etmək üçün QÜSUR seçin...';

  @override
  String get dvirPostTripOdometerHeader => 'Cari Odometr Göstəricisi';

  @override
  String get dvirPostTripOdometerInstructions => 'Məsafə göstəricisini avtobusun alətlər panelində göstərildiyi kimi tam daxil edin:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometr (Mil)';

  @override
  String get dvirPostTripOdometerTitle => 'NƏQLİYYAT VASİTƏSİNİN İŞLƏMƏ VAXTI METRİKASI';

  @override
  String get dvirPostTripOdometerWarning => 'Davam etməzdən əvvəl odometr göstəricisini daxil edin.';

  @override
  String get dvirPostTripPassButton => 'KEÇDİ';

  @override
  String get dvirPostTripPhotoAttached => 'Foto uğurla əlavə edildi.';

  @override
  String get dvirPostTripProgressLabel => 'Yoxlama Gedişatı';

  @override
  String get dvirPostTripSignatureCaptured => 'İmza qeydə alındı.';

  @override
  String get dvirPostTripSignatureCert => 'Təsdiq edirəm ki, bu nəqliyyat vasitəsinə baxış yoxlama siyahısı hesabatı FMCSA 396.11 qaydalarına uyğun olaraq doldurulmuşdur.';

  @override
  String get dvirPostTripSignatureTitle => 'Sürücü İmzasının Təsdiqi';

  @override
  String get dvirPostTripSubmitButton => 'YOXLAMANI TƏQDİM ET';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR uğurla təqdim edildi.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONA $current / $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zona';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Son təqdim olunmuş qüsur hesabatını nəzərdən keçirdiyimi və təmirləri (əgər varsa) təsdiqlədiyimi bəyan edirəm və avtobusun istismar üçün təhlükəsiz olduğunu bildirirəm.';

  @override
  String get dvirPreTripActiveMessage => 'Bu nəqliyyat vasitəsi Aktivdir və heç bir açıq qüsuru yoxdur. O, yoxlanılıb və istismar üçün təhlükəsizdir.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Aktiv Marşrut: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'DİQQƏT TƏLƏB OLUNUR: ƏVVƏLKİ GÜNÜN QÜSURLARI QEYDƏ ALINIB';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Avtobus Nömrəsi: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'NƏQLİYYAT VASİTƏSİNİN İRSAL YOXLAMASI';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'İmzalamaq mümkün olmadı: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Əvvəlki Qüsurlar Qeydə Alınmayıb';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Bu nəqliyyat vasitəsi əvvəlki səfərsonrası növbə yoxlamasında təmiz olaraq məruzə edilib.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Təhlükəsiz istismar üçün heç bir təmir tələb olunmur.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Bu nəqliyyat vasitəsi təmir/texniki xidmət üçün Xidmətdən Kənardır. Təhlükəsizlik problemləri irsaldan əvvəl emalatxana işçiləri tərəfindən həll edilməlidir.';

  @override
  String get dvirPreTripOutofServiceButton => 'NƏQLİYYAT VASİTƏSİ XİDMƏTDƏN KƏNARDIR';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Səbəb: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (TƏMİR EDİLİB)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'YENİ QÜSURLARI BİLDİRİN';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Təmir zamanı yeni qüsurların bildirilməsi qeyri-aktivdir.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'NƏQLİYYAT ALT-ADMİNİNİN HƏLLİ';

  @override
  String get dvirPreTripReturnToHomeButton => 'ƏSAS SƏHİFƏYƏ QAYIT';

  @override
  String get dvirPreTripSignOffTitle => 'BAXIŞA KEÇMƏK ÜÇÜN İMZALAYIN';

  @override
  String get dvirPreTripSignedSuccess => 'Təsdiq uğurla imzalandı. Səfəröncəsi yoxlama kiliddən çıxarıldı.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'TƏSDİQİ TƏQDİM ET';

  @override
  String get dvirPreTripTitle => 'Səfəröncəsi Təsdiq';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Nəqliyyat Vasitəsinin Statusu: $status';
  }

  @override
  String get dvirSigDrawTitle => 'İmzanı Çəkin';

  @override
  String get dvirSigPreviewLabel => 'Qeydə Alınmış İmza Önizləməsi:';

  @override
  String get dvirSigRedraw => 'YENİDƏN ÇƏKİN';

  @override
  String get dvirSigSave => 'İMZANI YADDA SAXLA';

  @override
  String get dvirSigTapToDraw => 'İMZA ÇƏKMƏK ÜÇÜN TOXUNUN (MƏCBURİDİR)';

  @override
  String get dvirSigWatermark => 'Şaquli İmzalayın (Aşağıdan Yuxarı)';

  @override
  String get forgotPasswordCancel => 'Ləğv et';

  @override
  String get forgotPasswordEmailLabel => 'E-poçt';

  @override
  String get forgotPasswordInvalidEmail => 'Zəhmət olmasa, düzgün e-poçt daxil edin';

  @override
  String get forgotPasswordSend => 'Göndər';

  @override
  String get forgotPasswordSuccess => 'Əgər bu e-poçt mövcuddursa, sıfırlama linki göndərildi.';

  @override
  String get genericBack => 'GERİ';

  @override
  String get genericCancel => 'Ləğv et';

  @override
  String get genericClear => 'TƏMİZLƏ';

  @override
  String get genericClose => 'Bağla';

  @override
  String get genericConfirm => 'Təsdiqlə';

  @override
  String get genericEdit => 'Düzəliş et';

  @override
  String get genericError => 'Xəta baş verdi';

  @override
  String get genericLoading => 'Yüklənir...';

  @override
  String get genericNext => 'NÖVBƏTİ';

  @override
  String get genericOk => 'Oldu';

  @override
  String get genericRetry => 'Yenidən cəhd et';

  @override
  String get genericSuccess => 'Uğurlu';

  @override
  String homeBusLabel(Object busId) {
    return 'Avtobus: $busId';
  }

  @override
  String get homeDispatchBlocked => 'İrsal Bloklanıb';

  @override
  String get homeDispatchBlockedTitle => 'İrsal Bloklanıb';

  @override
  String get homeErrorNoRoutesPreTrip => 'Səfəröncəsi yoxlama üçün marşrut yoxdur.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Serverdə səfərə başlamaq mümkün olmadı: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Salam, $name';
  }

  @override
  String get homeLogout => 'Çıxış';

  @override
  String get homeMenuAppInfo => 'Tətbiq Məlumatı';

  @override
  String get homeMenuDrill => 'Təlim';

  @override
  String get homeMenuDriverDetails => 'Sürücü Təfərrüatları';

  @override
  String get homeMenuLanguage => 'Dil';

  @override
  String get homeMenuPreTrip => 'Səfəröncəsi Yoxlama';

  @override
  String get homeNoRoutes => 'Marşrut yoxdur';

  @override
  String get homeReviewVerifyPreTrip => 'Səfəröncəsi Yoxlamanı Nəzərdən Keçir və Təsdiqlə';

  @override
  String get homeSearchHint => 'Marşrutları axtar';

  @override
  String get homeStart => 'Başla';

  @override
  String get homeTitle => 'Əsas Səhifə';

  @override
  String get homeVehicleOutOfServiceDefault => 'Nəqliyyat vasitəsi hazırda XİDMƏTDƏN_KƏNARDIR.';

  @override
  String get homeVehicleReady => 'Nəqliyyat vasitəsi hazırdır və təhlükəsiz istismar üçün təsdiqlənib.';

  @override
  String get languageTitle => 'Dil';

  @override
  String get loginButton => 'Daxil ol';

  @override
  String get loginEmailOrPhoneLabel => 'E-poçt və ya telefon nömrəsi';

  @override
  String get loginErrorEnterPassword => 'Zəhmət olmasa, şifrəni daxil edin';

  @override
  String get loginErrorEnterUsername => 'Zəhmət olmasa, istifadəçi adını daxil edin';

  @override
  String get loginErrorFailed => 'Daxil olmaq mümkün olmadı. Zəhmət olmasa, yenidən cəhd edin.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Zəhmət olmasa, düzgün e-poçt və ya telefon nömrəsi daxil edin';

  @override
  String get loginForgotPassword => 'Şifrəni unutmusunuz?';

  @override
  String get loginPasswordLabel => 'Şifrə';

  @override
  String get mapChildrenTooltip => 'Uşaqlar və qəyyumlar';

  @override
  String get mapConfirmMessage => 'Səfəri həqiqətən bağlamaq istəyirsiniz?';

  @override
  String get mapConfirmTitle => 'Təsdiqlə';

  @override
  String get mapCurrentPosition => 'Cari Mövqe';

  @override
  String get mapNo => 'Xeyr';

  @override
  String get mapReconnectMessage => 'Məkan yenilənməsi tez-tez kəsilir, zəhmət olmasa internetinizi yoxlayın.';

  @override
  String get mapReconnectTitle => 'İzləyici';

  @override
  String get mapStop => 'Dayan';

  @override
  String get mapStopping => 'Dayandırılır...';

  @override
  String get mapStopsTooltip => 'Dayanacaqlar';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '${seconds}s əvvəl yeniləndi';
  }

  @override
  String get mapWaitingGps => 'GPS gözlənilir...';

  @override
  String get mapYes => 'Bəli';

  @override
  String get splashDriverApp => 'Sürücü Tətbiqi';

  @override
  String get stopsActionUndo => 'Geri al';

  @override
  String get stopsCancelledSuccess => 'Uğurla ləğv edildi';

  @override
  String get stopsDefaultLabel => 'Dayanacaq';

  @override
  String get stopsGenericError => 'Xəta baş verdi. Zəhmət olmasa, yenidən cəhd edin.';

  @override
  String get stopsStatusComplete => 'tamamlandı';

  @override
  String get stopsStatusDone => 'edildi';

  @override
  String stopsSubmitCount(Object count) {
    return 'Təqdim et ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Uğurla təqdim edildi';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected seçildi · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Düşürtmə';

  @override
  String get stopsTypePick => 'Götürmə';

  @override
  String stopsUndoCount(Object count) {
    return 'Geri al ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Götürmə/Düşürtməni geri al';

  @override
  String get tripConfirmCancel => 'Ləğv et';

  @override
  String get tripConfirmOk => 'OLDU';

  @override
  String get tripConfirmTitle => 'İzləyici';

  @override
  String get tripErrorLocationRequired => 'Səfərə başlamaq üçün məkan icazəsi tələb olunur.';

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
