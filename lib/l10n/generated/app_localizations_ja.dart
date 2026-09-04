import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appInfoBuild => 'ビルド番号';

  @override
  String get appInfoDevice => 'デバイスモデル';

  @override
  String get appInfoOS => 'OSバージョン';

  @override
  String get appInfoPackage => 'パッケージ';

  @override
  String get appInfoTitle => 'アプリ情報';

  @override
  String get appInfoVersion => 'アプリバージョン';

  @override
  String get appTitleSchoolDiary => 'SDトラッカー';

  @override
  String get childrenActionGuardians => '保護者';

  @override
  String childrenGuardiansFor(Object name) {
    return '$name の認定保護者';
  }

  @override
  String get childrenNoGuardians => 'この児童の認定保護者は登録されていません。';

  @override
  String get childrenStatusDropped => '降車済み';

  @override
  String get childrenStatusPending => '保留中';

  @override
  String get childrenStatusPicked => '乗車済み';

  @override
  String childrenTitle(Object routeName) {
    return '児童 - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return '欠席 / バスに乗っていない ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'バス: $busNumber';
  }

  @override
  String get drillChecklistEvacuated => '避難済み';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return '避難済み: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => '欠席している生徒はいません。';

  @override
  String get drillChecklistNoStudentsOnBus => 'バスに乗っている生徒はマークされていません。';

  @override
  String get drillChecklistNotOnBus => 'バスに乗っていません';

  @override
  String get drillChecklistOnBusNotEvacuated => 'バス内 - 未避難';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'バス内 ($count)';
  }

  @override
  String get drillChecklistProceed => '証拠の記録に進む';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'ルート (ライブ): $routeName';
  }

  @override
  String get drillChecklistTitle => '避難訓練チェックリスト';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '安否不明の生徒が $count 人残っています！';
  }

  @override
  String get drillEvidenceConfirmMessage => 'この訓練ログを送信してもよろしいですか？ この操作は元に戻せません。';

  @override
  String get drillEvidenceConfirmSubmission => '訓練の送信を完了する';

  @override
  String get drillEvidenceDriverNotesHint => '訓練の実施状況、生徒の行動、使用した避難経路、観察された例外などを記述してください...';

  @override
  String get drillEvidenceDriverNotesLabel => 'ドライバーのメモ (最低10文字):';

  @override
  String get drillEvidenceFailed => '送信に失敗しました';

  @override
  String get drillEvidenceMandatoryWarning => '訓練を送信するには、少なくとも1つの写真または動画の証拠が必須です。';

  @override
  String get drillEvidenceRecordVideo => '動画を録画';

  @override
  String get drillEvidenceRetrySubmission => '再送信する';

  @override
  String get drillEvidenceReturnToDashboard => 'ダッシュボードに戻る';

  @override
  String get drillEvidenceSubmitButton => '訓練ログを送信';

  @override
  String get drillEvidenceSubmitting => '訓練ログを送信しています...';

  @override
  String get drillEvidenceSuccess => '送信が成功しました！';

  @override
  String get drillEvidenceSuccessMessage => '避難訓練ログは正常にアップロードされ、管理者の承認待ちです。';

  @override
  String get drillEvidenceTakePhoto => '写真を撮る';

  @override
  String get drillEvidenceTitle => '必須の訓練の証拠';

  @override
  String get drillEvidenceUploading => '証拠とチェックリストのデータをアップロードしています';

  @override
  String drillRosterBus(Object busNumber) {
    return 'バス: $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '訓練: $drillType';
  }

  @override
  String get drillRosterMarkAttendance => '出欠を記録する';

  @override
  String get drillRosterNoStudents => 'このルートに登録されている生徒はいません。';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return '出席: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => '訓練チェックリストに進む';

  @override
  String drillRosterRoute(Object routeName) {
    return 'ルート: $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return '座席: $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'すべて選択';

  @override
  String get drillSummaryAdminNotesTitle => '管理者のメモ';

  @override
  String drillSummaryApprovedAt(Object date) {
    return '承認日時: $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => '承認日時';

  @override
  String get drillSummaryBackToDrills => '訓練一覧に戻る';

  @override
  String get drillSummaryBusNumber => 'バス番号';

  @override
  String drillSummaryConductedBy(Object name) {
    return '実施者: $name';
  }

  @override
  String get drillSummaryDetailsTitle => '訓練の詳細';

  @override
  String get drillSummaryDriverNotesTitle => 'ドライバーのメモ';

  @override
  String get drillSummaryDuration => '所要時間';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes 分 $seconds 秒';
  }

  @override
  String get drillSummaryEndTime => '終了時間';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return '避難済み: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return '避難完了 $time';
  }

  @override
  String get drillSummaryEvidenceTitle => '証拠メディアの添付';

  @override
  String get drillSummaryGps => 'GPS座標';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return '緯度: $lat, 経度: $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'ID #$id の訓練の概要を読み込めませんでした。\n$error';
  }

  @override
  String get drillSummaryNoData => '訓練データが見つかりません。';

  @override
  String get drillSummaryNotOnBus => 'バスに乗っていません';

  @override
  String get drillSummaryOnBusNotEvacuated => 'バス内 - 未避難';

  @override
  String get drillSummaryPhotoEvidence => '写真の証拠';

  @override
  String get drillSummaryRouteId => 'ルートID';

  @override
  String drillSummarySeat(Object seatNumber) {
    return '座席: $seatNumber';
  }

  @override
  String get drillSummaryStartTime => '開始時間';

  @override
  String get drillSummaryStatus => 'ステータス';

  @override
  String get drillSummaryStudentLogTitle => '生徒の避難ログ';

  @override
  String drillSummaryTitle(Object id) {
    return '訓練の概要 (#$id)';
  }

  @override
  String get drillSummaryType => '訓練のタイプ';

  @override
  String get drillSummaryVideoEvidence => '動画の証拠';

  @override
  String drillTypeBus(Object busNumber) {
    return 'バス $busNumber';
  }

  @override
  String get drillTypeClassification => '訓練の分類を選択してください:';

  @override
  String get drillTypeCustomHint => 'カスタム避難訓練のタイプを入力...';

  @override
  String get drillTypeInvalidState => '無効な車両またはルートの状態です。';

  @override
  String get drillTypeNameBusFire => 'バス火災';

  @override
  String get drillTypeNameDangerZone => '危険区域';

  @override
  String get drillTypeNameDriverIncapacitation => 'ドライバーの無力化';

  @override
  String get drillTypeNameEquipmentOrientation => '機器のオリエンテーション';

  @override
  String get drillTypeNameFrontDoor => '前方ドア';

  @override
  String get drillTypeNameOthers => 'その他';

  @override
  String get drillTypeNameRearDoor => '後方ドア';

  @override
  String get drillTypeNameSideOrRoof => '側面または屋根';

  @override
  String get drillTypeNameSplit => '分割';

  @override
  String get drillTypeNoRouteSelected => 'ルートが選択されていません';

  @override
  String get drillTypePreparation => '訓練の準備';

  @override
  String get drillTypeProceed => '生徒名簿に進む';

  @override
  String drillTypeRoute(Object routeName) {
    return 'ルート: $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'ルートを選択:';

  @override
  String get drillTypeSpecifyCustom => '訓練のタイプの説明を指定:';

  @override
  String get drillTypeTitle => '訓練のタイプを選択';

  @override
  String get drillTypeWarning => '実行を開始する前に、車両が安全に駐車されていることを確認してください。';

  @override
  String get drillsAssignedVehicle => '割り当てられた車両';

  @override
  String get drillsChecking => '確認中...';

  @override
  String drillsHeader(Object id, Object type) {
    return '訓練 #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'バスが割り当てられていません';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'バス $busNumber に記録された訓練はありません';
  }

  @override
  String get drillsNoRoutesAvailable => '訓練を開始できるルートがありません。';

  @override
  String get drillsShowSummary => '概要を表示';

  @override
  String get drillsStartDrill => '訓練を開始';

  @override
  String drillsSubtitle(Object date, Object status) {
    return '実施日: $date\nステータス: $status';
  }

  @override
  String get drillsTitle => '避難訓練';

  @override
  String get drillsVehicleOutOfService => '車両は休車中です';

  @override
  String get drillsVehicleOutOfServiceMessage => 'この車両は現在休車中であり、訓練に使用することはできません。';

  @override
  String get driverDetailsCdlClassLabel => 'CDLクラス';

  @override
  String get driverDetailsDrivingLicenseLabel => '運転免許証';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return '氏名: $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return '免許証番号: $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => '旅客';

  @override
  String get driverDetailsEndorsementSchoolBus => 'スクールバス';

  @override
  String get driverDetailsEndorsementsTitle => '保有する免許・資格';

  @override
  String get driverDetailsExpiryDateLabel => '有効期限';

  @override
  String get driverDetailsHolderSignature => '所持者の署名';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID: $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => '発行日';

  @override
  String get driverDetailsLicenseDocTitle => '免許証ドキュメント';

  @override
  String get driverDetailsLicenseNoLabel => '免許証番号';

  @override
  String get driverDetailsLicenseTitle => '免許証の詳細';

  @override
  String get driverDetailsLicenseTypeLabel => '免許の種類';

  @override
  String get driverDetailsOfficialSeal => '公式印';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'クラス: $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return '生年月日: $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return '資格: $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return '有効期限: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return '免許証番号: $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return '氏名: $name';
  }

  @override
  String get driverDetailsTapToView => 'タップして運転免許証を表示';

  @override
  String get driverDetailsTitle => 'ドライバーの詳細';

  @override
  String get dvirCategoryBusSafetySystems => 'バス特有の安全システム';

  @override
  String get dvirCategoryCouplingDevices => '連結装置';

  @override
  String get dvirCategoryEmergencyEquipment => '非常用設備';

  @override
  String get dvirCategoryHorn => 'クラクション';

  @override
  String get dvirCategoryLightingReflectors => '照明装置と反射器';

  @override
  String get dvirCategoryMirrors => 'バックミラー';

  @override
  String get dvirCategoryParkingBrake => 'パーキングブレーキ';

  @override
  String get dvirCategoryPassengerSeating => '客席と拘束装置';

  @override
  String get dvirCategoryServiceBrakes => 'サービスブレーキ';

  @override
  String get dvirCategorySteeringMechanism => 'ステアリング機構';

  @override
  String get dvirCategoryTires => 'タイヤ';

  @override
  String get dvirCategoryWheelsRims => 'ホイールとリム';

  @override
  String get dvirCategoryWipers => 'ワイパー';

  @override
  String get dvirPostTripCapturePhoto => '欠陥の写真を撮る';

  @override
  String get dvirPostTripComplianceTitle => 'コンプライアンス証明';

  @override
  String get dvirPostTripDefectButton => '欠陥';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => '写真なしでの欠陥報告';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return '警告: 写真を添付せずに安全ゾーン ($zones) の欠陥を報告しようとしています。それでも送信してよろしいですか？';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return '点検: バス $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => '安全上の懸念事項の詳細を入力してください...';

  @override
  String get dvirPostTripNotesLabel => 'メモ (欠陥時は必須) と写真';

  @override
  String get dvirPostTripNotesPassedHint => '欠陥を選択して安全上の問題の詳細を入力してください...';

  @override
  String get dvirPostTripOdometerHeader => '現在の走行距離計の読み';

  @override
  String get dvirPostTripOdometerInstructions => 'バスの計器パネルに表示されている通りの走行距離を入力してください:';

  @override
  String get dvirPostTripOdometerLabel => '走行距離計 (マイル)';

  @override
  String get dvirPostTripOdometerTitle => '車両の稼働時間指標';

  @override
  String get dvirPostTripOdometerWarning => '先に進む前に走行距離を入力してください。';

  @override
  String get dvirPostTripPassButton => '合格';

  @override
  String get dvirPostTripPhotoAttached => '写真が正常に添付されました。';

  @override
  String get dvirPostTripProgressLabel => '点検の進捗状況';

  @override
  String get dvirPostTripSignatureCaptured => '署名が記録されました。';

  @override
  String get dvirPostTripSignatureCert => '私は、この車両巡回点検レポートがFMCSA 396.11規則に準拠して完了したことを証明します。';

  @override
  String get dvirPostTripSignatureTitle => 'ドライバー署名の確認';

  @override
  String get dvirPostTripSubmitButton => '点検を送信する';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIRが正常に送信されました。';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ゾーン $current / $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total ゾーン';
  }

  @override
  String get dvirPreTripAcknowledgmentText => '前回提出された欠陥報告を確認し、修理箇所（ある場合）を確認した上で、バスが安全に運行できる状態であることを証明します。';

  @override
  String get dvirPreTripActiveMessage => 'この車両は稼働中であり、未対応の欠陥はありません。検証済みで、安全に運行できます。';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return '現在のアクティブルート: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => '要注意: 前日の欠陥が記録されています';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'バス番号: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => '車両配車チェック';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return '署名に失敗しました: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => '以前の欠陥は記録されていません';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'この車両は、前回の乗務後点検で問題なしと報告されています。';

  @override
  String get dvirPreTripNoRepairsNeeded => '安全運行のために修理は必要ありません。';

  @override
  String get dvirPreTripOutOfServiceMessage => 'この車両は修理/メンテナンスのため休車中です。配車前に工場スタッフが安全上の問題を解決する必要があります。';

  @override
  String get dvirPreTripOutofServiceButton => '車両休車中';

  @override
  String dvirPreTripReason(Object reason) {
    return '理由: $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (修理済み)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => '新しい欠陥を報告';

  @override
  String get dvirPreTripReportNewDefectsDisabled => '修理中のため、新しい欠陥の報告は無効になっています。';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'ステータス: $status';
  }

  @override
  String get dvirPreTripResolutionTitle => '運輸サブ管理者の解決';

  @override
  String get dvirPreTripReturnToHomeButton => 'ホームに戻る';

  @override
  String get dvirPreTripSignOffTitle => 'サインオフして巡回点検へ進む';

  @override
  String get dvirPreTripSignedSuccess => '検証への署名が成功しました。乗務前点検のロックが解除されました。';

  @override
  String get dvirPreTripSubmitVerificationButton => '検証を送信';

  @override
  String get dvirPreTripTitle => '乗務前検証';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return '車両ステータス: $status';
  }

  @override
  String get dvirSigDrawTitle => '署名を描く';

  @override
  String get dvirSigPreviewLabel => '記録された署名のプレビュー:';

  @override
  String get dvirSigRedraw => '書き直す';

  @override
  String get dvirSigSave => '署名を保存';

  @override
  String get dvirSigTapToDraw => 'タップして署名を描く (必須)';

  @override
  String get dvirSigWatermark => '垂直に署名してください (下から上へ)';

  @override
  String get forgotPasswordCancel => 'キャンセル';

  @override
  String get forgotPasswordEmailLabel => 'メールアドレス';

  @override
  String get forgotPasswordInvalidEmail => '有効なメールアドレスを入力してください';

  @override
  String get forgotPasswordSend => '送信';

  @override
  String get forgotPasswordSuccess => 'そのメールアドレスが存在する場合、リセットリンクが送信されます。';

  @override
  String get genericBack => '戻る';

  @override
  String get genericCancel => 'キャンセル';

  @override
  String get genericClear => 'クリア';

  @override
  String get genericClose => '閉じる';

  @override
  String get genericConfirm => '確認';

  @override
  String get genericEdit => '編集';

  @override
  String get genericError => 'エラーが発生しました';

  @override
  String get genericLoading => '読み込み中...';

  @override
  String get genericNext => '次へ';

  @override
  String get genericOk => 'OK';

  @override
  String get genericRetry => '再試行';

  @override
  String get genericSuccess => '成功';

  @override
  String homeBusLabel(Object busId) {
    return 'バス: $busId';
  }

  @override
  String get homeDispatchBlocked => '配車ブロック';

  @override
  String get homeDispatchBlockedTitle => '配車ブロック';

  @override
  String get homeErrorNoRoutesPreTrip => '乗務前点検を実行できるルートがありません。';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'サーバーで運行を開始できませんでした: $error';
  }

  @override
  String homeHi(Object name) {
    return 'こんにちは、$nameさん';
  }

  @override
  String get homeLogout => 'ログアウト';

  @override
  String get homeMenuAppInfo => 'アプリ情報';

  @override
  String get homeMenuDrill => '訓練';

  @override
  String get homeMenuDriverDetails => 'ドライバーの詳細';

  @override
  String get homeMenuLanguage => '言語';

  @override
  String get homeMenuPreTrip => '乗務前点検';

  @override
  String get homeNoRoutes => '利用可能なルートはありません';

  @override
  String get homeReviewVerifyPreTrip => '乗務前確認と検証';

  @override
  String get homeSearchHint => 'ルートを検索';

  @override
  String get homeStart => '開始';

  @override
  String get homeTitle => 'ホーム';

  @override
  String get homeVehicleOutOfServiceDefault => '現在、車両は休車中です。';

  @override
  String get homeVehicleReady => '車両の準備ができ、安全運行の確認が完了しました。';

  @override
  String get languageTitle => '言語';

  @override
  String get loginButton => 'ログイン';

  @override
  String get loginEmailOrPhoneLabel => 'メールアドレスまたは電話番号';

  @override
  String get loginErrorEnterPassword => 'パスワードを入力してください';

  @override
  String get loginErrorEnterUsername => 'ユーザー名を入力してください';

  @override
  String get loginErrorFailed => 'ログインに失敗しました。もう一度お試しください。';

  @override
  String get loginErrorInvalidEmailOrPhone => '有効なメールアドレスまたは電話番号を入力してください';

  @override
  String get loginForgotPassword => 'パスワードをお忘れですか？';

  @override
  String get loginPasswordLabel => 'パスワード';

  @override
  String get mapChildrenTooltip => '子供と保護者';

  @override
  String get mapConfirmMessage => '本当に運行を終了しますか？';

  @override
  String get mapConfirmTitle => '確認';

  @override
  String get mapCurrentPosition => '現在位置';

  @override
  String get mapNo => 'いいえ';

  @override
  String get mapReconnectMessage => '位置情報の更新が頻繁に失敗しています。インターネット接続を確認してください。';

  @override
  String get mapReconnectTitle => 'トラッカー';

  @override
  String get mapStop => '停止';

  @override
  String get mapStopping => '停止中...';

  @override
  String get mapStopsTooltip => '停留所';

  @override
  String mapUpdatedAgo(Object seconds) {
    return '$seconds秒前に更新';
  }

  @override
  String get mapWaitingGps => 'GPSを待機中...';

  @override
  String get mapYes => 'はい';

  @override
  String get splashDriverApp => 'ドライバーアプリ';

  @override
  String get stopsActionUndo => '元に戻す';

  @override
  String get stopsCancelledSuccess => '正常にキャンセルされました';

  @override
  String get stopsDefaultLabel => '停留所';

  @override
  String get stopsGenericError => 'エラーが発生しました。もう一度お試しください。';

  @override
  String get stopsStatusComplete => '完了';

  @override
  String get stopsStatusDone => '完了済み';

  @override
  String stopsSubmitCount(Object count) {
    return '送信 ($count)';
  }

  @override
  String get stopsSubmittedSuccess => '正常に送信されました';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected人選択中 · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => '降車';

  @override
  String get stopsTypePick => '乗車';

  @override
  String stopsUndoCount(Object count) {
    return '元に戻す ($count)';
  }

  @override
  String get stopsUndoTooltip => '乗車/降車を元に戻す';

  @override
  String get tripConfirmCancel => 'キャンセル';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'トラッカー';

  @override
  String get tripErrorLocationRequired => '運行を開始するには位置情報の権限が必要です。';

  @override
  String get homeMenuPostCrashReporting => '事故後レポート';

  @override
  String homeVehicleReason(Object reason) {
    return '理由: $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'ステータス: $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return '緯度: $lat, 経度: $lng';
  }

  @override
  String get crashLocationPickerSearchHint => '場所を検索 (例: マーケットストリート)';

  @override
  String get crashLocationPickerTitle => '地図上で場所を選択';

  @override
  String get crashLocationPickerTooltip => '場所を確定';

  @override
  String get incidentDashboardDescription => 'アクションを選択して事故管理に進むか、過去のレポートを表示してください。';

  @override
  String get incidentDashboardHeadline => '事故後インシデント報告';

  @override
  String get incidentDashboardLogNew => '新しい事故を記録';

  @override
  String get incidentDashboardLogNewSubtitle => 'ステップごとの事故レポートを開始';

  @override
  String get incidentDashboardTitle => '事故後インシデント';

  @override
  String get incidentDashboardViewHistory => '履歴を表示';

  @override
  String get incidentDashboardViewHistorySubtitle => '過去の事故レポートとステータスを表示';

  @override
  String get incidentDetailsAdminLetter => '管理者宛の文書';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOTアルコールテスト カウントダウン (2時間制限)';

  @override
  String get incidentDetailsBranchId => '支部ID';

  @override
  String get incidentDetailsBusPlate => 'バスのナンバープレート';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return '違反切符の影響: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'ドライバーへの違反切符の交付';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return '座標: 緯度 $lat, 経度 $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title をクリップボードにコピーしました！';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'クリップボードにコピー';

  @override
  String get incidentDetailsCrashCitationInfo => '事故と違反切符情報';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return '日時: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'DOEレポート';

  @override
  String get incidentDetailsDoeReportTitle => '州DOEレポート (任意)';

  @override
  String get incidentDetailsDriverNotes => 'ドライバーのメモ:';

  @override
  String get incidentDetailsDriverUserId => 'ドライバーユーザーID';

  @override
  String get incidentDetailsDrugCountdown => 'DOT薬物テスト カウントダウン (8時間制限)';

  @override
  String get incidentDetailsFatalityOccurred => '死亡者の発生';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'インシデント #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => '医療処置を必要とする怪我';

  @override
  String get incidentDetailsLawEnforcement => '法執行機関';

  @override
  String get incidentDetailsLoadFailed => '詳細の読み込みに失敗しました。';

  @override
  String incidentDetailsLocation(Object location) {
    return '場所: $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'メディア添付';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'ステータス: $status';
  }

  @override
  String get incidentDetailsNo => 'いいえ';

  @override
  String get incidentDetailsNoMediaAttachments => '写真や動画は添付されていません。';

  @override
  String get incidentDetailsNoStudentsOnboard => '事故当時、バスには生徒が乗車していませんでした。';

  @override
  String get incidentDetailsNotificationsDesc => '通知レポートを作成し、テンプレート化された文書を地区の監督者や管理者に送信します。';

  @override
  String get incidentDetailsNotificationsTitle => '送信通知';

  @override
  String get incidentDetailsOfficer => '警察官の詳細';

  @override
  String get incidentDetailsPoliceReport => '警察の事故証明書番号';

  @override
  String get incidentDetailsPrePopulatedLetter => '自動入力された送信文書:';

  @override
  String get incidentDetailsRegulatoryBasis => '規制の根拠:';

  @override
  String get incidentDetailsRouteId => 'ルートID';

  @override
  String get incidentDetailsSchoolAdminTitle => '学校管理者への通知';

  @override
  String get incidentDetailsStatusPending => '保留中';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return '詳細: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => '負傷';

  @override
  String get incidentDetailsStudentNoInjury => '怪我なし';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return '重症度: $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return '搬送先: $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return '乗車中の生徒 ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'DOTの事故後テストが必要です';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'ステータス: $status';
  }

  @override
  String get incidentDetailsTitle => 'インシデントの詳細';

  @override
  String get incidentDetailsVehicleTowed => '車両のレッカー移動';

  @override
  String get incidentDetailsYes => 'はい';

  @override
  String get incidentHistoryEmpty => 'この車両にはインシデントログが登録されていません。';

  @override
  String incidentHistoryFailed(Object error) {
    return 'ログの取得に失敗しました: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return '時間: $time バス: $busNumber テスト: $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'インシデント #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => '不要';

  @override
  String get incidentHistoryTestingRequired => '必須';

  @override
  String get incidentHistoryTitle => '事故後インシデントレジストリ';

  @override
  String get incidentIntakeAddAnotherPhoto => '別の写真を追加';

  @override
  String get incidentIntakeBadgeNumberError => '必須';

  @override
  String get incidentIntakeBadgeNumberLabel => 'バッジ番号*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'バス番号: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => '現場の写真を撮る';

  @override
  String get incidentIntakeCitationSubtitle => 'スクールバスのドライバーに移動交通違反の切符が切られましたか？';

  @override
  String get incidentIntakeCitationTitle => '違反切符の交付はありましたか？';

  @override
  String get incidentIntakeDateTimeLabel => '事故の日時*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'DOTテストは不要です';

  @override
  String get incidentIntakeDotTestingRequired => 'DOTテストが必要です';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'ドライバー: $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => '衝突に関する追加のメモを入力してください...';

  @override
  String get incidentIntakeDriverNotesTitle => 'ドライバーの事故メモ';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'ルート乗客の読み込みに失敗しました: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => '証拠を添付 (写真) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'この事故の結果、死者は出ましたか？';

  @override
  String get incidentIntakeFatalityTitle => '死亡者は出ましたか？';

  @override
  String get incidentIntakeGpsLabel => 'GPS座標*';

  @override
  String get incidentIntakeHistoryTooltip => '履歴を表示';

  @override
  String get incidentIntakeInjuriesSubtitle => '現場から離れて直ちに医療処置が必要な身体的傷害を負った人はいますか？';

  @override
  String get incidentIntakeInjuriesTitle => '医療処置が必要な怪我はありますか？';

  @override
  String get incidentIntakeInjuryNotesError => '負傷した生徒には怪我のメモが必須です';

  @override
  String get incidentIntakeInjuryNotesLabel => '怪我のメモ / 詳細 (必須) *';

  @override
  String get incidentIntakeInjurySeverityLabel => '怪我の重症度 *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => '法執行機関名を入力してください';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => '法執行機関 (例: 州高速道路パトロール)*';

  @override
  String get incidentIntakeLawEnforcementTitle => '法執行機関と警察の報告';

  @override
  String get incidentIntakeLocationDescError => '場所の説明を入力してください';

  @override
  String get incidentIntakeLocationDescLabel => '場所の説明 (例: マーケット通りと5番街) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => '搬送先の医療施設';

  @override
  String get incidentIntakeNoMatchingStudents => '一致する生徒がいません。';

  @override
  String get incidentIntakeNoStudentsFound => '生徒が見つかりません。';

  @override
  String get incidentIntakeNoStudentsOnboard => '乗車している生徒はいません。次へを押して進んでください。';

  @override
  String get incidentIntakeNoStudentsRoute => 'このルートに登録されている生徒はいません。';

  @override
  String get incidentIntakeOfficerNameError => '警察官の名前を入力してください。';

  @override
  String get incidentIntakeOfficerNameLabel => '警察官の名前*';

  @override
  String get incidentIntakePoliceReportNumberError => '警察の事故証明書番号を入力してください';

  @override
  String get incidentIntakePoliceReportNumberLabel => '警察の事故証明書番号 *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'ルート: $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'ルートとドライバー情報';

  @override
  String get incidentIntakeSearchInjuredHint => '負傷した子供を検索...';

  @override
  String get incidentIntakeSearchStudentHint => '生徒を検索...';

  @override
  String get incidentIntakeSelectAll => 'すべての生徒を選択';

  @override
  String get incidentIntakeSelectOnMap => '地図上で選択';

  @override
  String get incidentIntakeSeverityFatal => '致命的';

  @override
  String get incidentIntakeSeverityMinor => '軽傷';

  @override
  String get incidentIntakeSeverityModerate => '中等度';

  @override
  String get incidentIntakeSeveritySevere => '重傷';

  @override
  String get incidentIntakeSeverityTitle => '事故の重症度変数';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID: $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'レポートを送信';

  @override
  String get incidentIntakeTitle => '事故後インシデントの入力';

  @override
  String get incidentIntakeTowedSubtitle => '走行不能な損傷を受け、現場からレッカー移動が必要な車両はありましたか？';

  @override
  String get incidentIntakeTowedTitle => '車両はレッカー移動されましたか？';

  @override
  String get incidentIntakeWasInjured => '負傷しましたか？';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'バス: $busNumber';
  }

  @override
  String get dvirPreTripClose => '閉じる';

  @override
  String get dvirPreTripDriverCommentsLabel => 'ドライバーのコメント / メモ (任意)';

  @override
  String get dvirPreTripNoComments => 'コメントは追加されていません。';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return '理由: $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'ルート: $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => '署名が正常にキャプチャされました。';

  @override
  String get dvirPreTripSigMissing => '署名がありません。';

  @override
  String get dvirPreTripSignDefectWarning => '以前の欠陥の修理を検証するために署名してください。';

  @override
  String get dvirPreTripStepSignOff => 'サインオフ';

  @override
  String get dvirPreTripStepSubmit => '送信';

  @override
  String get dvirPreTripStepVerify => '検証';

  @override
  String get dvirPreTripTapNext => '次へをタップして進んでください。';

  @override
  String get dvirPreTripVehicleOutOfService => '車両は休車中です';

  @override
  String get dvirPreTripVehicleReady => '車両はサービスの準備ができています';

  @override
  String get dvirPreTripVerifiedRepairStatus => '検証済みの修理ステータス:';

  @override
  String get dvirPreTripVerifyCheckWarning => '各欠陥の横のボックスにチェックを入れ、報告されたすべての欠陥が修理されていることを確認してください。';

  @override
  String get dvirPreTripYourComments => 'あなたのコメント:';

  @override
  String get countryPickerNoCountries => '国が見つかりません';

  @override
  String get countryPickerSearchHint => '国名、コード、または国番号で検索...';

  @override
  String get countryPickerTitle => '国を選択';

  @override
  String get mapDefaultStop => '停留所';

  @override
  String get mapEndLocation => '終了地点';

  @override
  String get mapStartLocation => '開始地点';

  @override
  String get stopsNoChangesToUndo => '元に戻す変更はありません。';

  @override
  String get stopsNoStopsAvailable => '利用可能な停留所がありません。';
}
