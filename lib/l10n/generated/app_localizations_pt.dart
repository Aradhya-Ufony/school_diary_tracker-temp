import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appInfoBuild => 'Construir número';

  @override
  String get appInfoDevice => 'Modelo de dispositivo';

  @override
  String get appInfoOS => 'Versão do sistema operacional';

  @override
  String get appInfoPackage => 'Pacote';

  @override
  String get appInfoTitle => 'Informações do aplicativo';

  @override
  String get appInfoVersion => 'Versão do aplicativo';

  @override
  String get appTitleSchoolDiary => 'SD Tracker';

  @override
  String get childrenActionGuardians => 'Guardiões';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Guardiões autorizados para $name';
  }

  @override
  String get childrenNoGuardians => 'Não há guardiões autorizados no arquivo para esta criança.';

  @override
  String get childrenStatusDropped => 'Deixado cair';

  @override
  String get childrenStatusPending => 'A espera';

  @override
  String get childrenStatusPicked => 'Escolhido';

  @override
  String childrenTitle(Object routeName) {
    return 'Crianças  $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'Absent/NÃO NO BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String get drillChecklistEvacuated => 'Evacuados';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Evacuados: $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Não há estudantes ausentes.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Não há estudantes marcados no autocarro.';

  @override
  String get drillChecklistNotOnBus => 'Não no ônibus';

  @override
  String get drillChecklistOnBusNotEvacuated => 'Em ônibus  Não evacuado';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'Em BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'Processo para capturar provas';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Rota (Live): $routeName';
  }

  @override
  String get drillChecklistTitle => 'Lista de verificação de exercícios de evacuação';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '- Estudante desconhecido... - Restou!';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Tens a certeza de que queres enviar este registro de perfuração?';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmar a submissão do perfurador';

  @override
  String get drillEvidenceDriverNotesHint => 'Descreva a execução do exercício, o comportamento dos alunos, os caminhos de saída usados e quaisquer exceções observadas...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notas do condutor (minimo 10 caracteres):';

  @override
  String get drillEvidenceFailed => 'A submissão falhou';

  @override
  String get drillEvidenceMandatoryWarning => 'É obrigatório apresentar pelo menos uma prova fotográfica ou de vídeo para a realização de exercícios.';

  @override
  String get drillEvidenceRecordVideo => 'Gravar vídeo';

  @override
  String get drillEvidenceRetrySubmission => 'Submissão de aposentadoria';

  @override
  String get drillEvidenceReturnToDashboard => 'Regressar ao painel';

  @override
  String get drillEvidenceSubmitButton => 'Submit drill log';

  @override
  String get drillEvidenceSubmitting => 'Submetendo o registro de perfuração...';

  @override
  String get drillEvidenceSuccess => 'Submissão bem sucedida!';

  @override
  String get drillEvidenceSuccessMessage => 'O registro de evacuação foi submetido com sucesso e está pendente de aprovação.';

  @override
  String get drillEvidenceTakePhoto => 'Faça uma foto';

  @override
  String get drillEvidenceTitle => 'Evidências obrigatórias de perfuros';

  @override
  String get drillEvidenceUploading => 'Carregamento de provas e dados da lista de verificação';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return '- Não, não.';
  }

  @override
  String get drillRosterMarkAttendance => 'Presença de Marcos';

  @override
  String get drillRosterNoStudents => 'Não há estudantes registados nesta rota.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Presente: $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PROCEDO DE TECNOLOGIA';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Caminho:';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Solução de posição:';
  }

  @override
  String get drillRosterSelectAll => 'Selecione Todos';

  @override
  String get drillSummaryAdminNotesTitle => 'Notas de administração';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approvado em:';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approvado em';

  @override
  String get drillSummaryBackToDrills => 'Voltamos aos exercícios';

  @override
  String get drillSummaryBusNumber => 'Número de autocarro';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Dirigido por:';
  }

  @override
  String get drillSummaryDetailsTitle => 'Detalhes do perfuração';

  @override
  String get drillSummaryDriverNotesTitle => 'Notas do condutor';

  @override
  String get drillSummaryDuration => 'Duração';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '- V0__ min __ V1__ sec';
  }

  @override
  String get drillSummaryEndTime => 'Tempo do fim';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Evacuados: $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Evacuado';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Alegamentos de mídia de evidências';

  @override
  String get drillSummaryGps => 'Coordenadas GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Não conseguiu carregar o resumo da perfuração para ID #$id. $error';
  }

  @override
  String get drillSummaryNoData => 'Não encontrámos dados de perfuração.';

  @override
  String get drillSummaryNotOnBus => 'Não no ônibus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'NO BUS - NÃO ÉVAQUADO';

  @override
  String get drillSummaryPhotoEvidence => 'Evidência fotográfica';

  @override
  String get drillSummaryRouteId => 'Identificação de rota';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Solução de posição:';
  }

  @override
  String get drillSummaryStartTime => 'Tempo de Começo';

  @override
  String get drillSummaryStatus => 'Estatuto';

  @override
  String get drillSummaryStudentLogTitle => 'Registo de evacuação dos estudantes';

  @override
  String drillSummaryTitle(Object id) {
    return 'Resumo do exercício (#$id)';
  }

  @override
  String get drillSummaryType => 'Tipo de perfuração';

  @override
  String get drillSummaryVideoEvidence => 'Evidência por Vídeo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Autobús';
  }

  @override
  String get drillTypeClassification => 'Escolha a classificação do perfuração:';

  @override
  String get drillTypeCustomHint => 'Digite o tipo de perfuração de evacuação...';

  @override
  String get drillTypeInvalidState => 'Estado do veículo ou da rota inválido.';

  @override
  String get drillTypeNameBusFire => 'Incêndio de ônibus';

  @override
  String get drillTypeNameDangerZone => 'Zona de perigo';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacidade do condutor';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientação dos equipamentos';

  @override
  String get drillTypeNameFrontDoor => 'Porta da frente';

  @override
  String get drillTypeNameOthers => 'Outros';

  @override
  String get drillTypeNameRearDoor => 'Porta traseira';

  @override
  String get drillTypeNameSideOrRoof => 'Lado ou telhado';

  @override
  String get drillTypeNameSplit => 'Divisão';

  @override
  String get drillTypeNoRouteSelected => 'Não escolhemos uma rota';

  @override
  String get drillTypePreparation => 'Preparação de perfuradores';

  @override
  String get drillTypeProceed => 'PROCEDO DE ROSTE DE ALUMNARES';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Caminho:';
  }

  @override
  String get drillTypeSelectRoute => 'Selecionar rota:';

  @override
  String get drillTypeSpecifyCustom => 'Especificar a descrição do tipo de perfuração:';

  @override
  String get drillTypeTitle => 'Selecionar o tipo de perfuração';

  @override
  String get drillTypeWarning => 'Assegurar que o veículo está estacionado de forma segura antes de começar a execução.';

  @override
  String get drillsAssignedVehicle => 'Veículo designado';

  @override
  String get drillsChecking => 'Estou a verificar...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Forno #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Nenhum ônibus atribuído';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Não foram registrados exercícios para o ônibus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Não há rotas disponíveis para iniciar um exercício.';

  @override
  String get drillsShowSummary => 'Resumo do exibição';

  @override
  String get drillsStartDrill => 'Comece a Esforçar';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Conduzido: $date Status: $status';
  }

  @override
  String get drillsTitle => 'Exercícios de evacuação';

  @override
  String get drillsVehicleOutOfService => 'Veículo fora de serviço';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Este veículo está actualmente fora de serviço e não pode ser utilizado para exercícios.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'Licença de condução';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'Nome:';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC:';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passageiro';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Autobús escolar';

  @override
  String get driverDetailsEndorsementsTitle => 'Adopção de endossamentos';

  @override
  String get driverDetailsExpiryDateLabel => 'Data de expiração';

  @override
  String get driverDetailsHolderSignature => 'O TITOR DE SEGNATURA';

  @override
  String driverDetailsId(Object driverId) {
    return 'Identificação:';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Data de publicação';

  @override
  String get driverDetailsLicenseDocTitle => 'Documento de licença';

  @override
  String get driverDetailsLicenseNoLabel => 'Licença n.o';

  @override
  String get driverDetailsLicenseTitle => 'Detalhes da licença';

  @override
  String get driverDetailsLicenseTypeLabel => 'Tipo de licença';

  @override
  String get driverDetailsOfficialSeal => 'SEAL Oficial';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'Classe:';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DOB:';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'ENDORSO:';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP: $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'LN:';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'FN: $name';
  }

  @override
  String get driverDetailsTapToView => 'Toque para ver o documento DL';

  @override
  String get driverDetailsTitle => 'Detalhes do motorista';

  @override
  String get dvirCategoryBusSafetySystems => 'Sistemas de segurança específicos para ônibus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositivos de acoplamento';

  @override
  String get dvirCategoryEmergencyEquipment => 'Equipamentos de emergência';

  @override
  String get dvirCategoryHorn => 'Corno';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositivos de iluminação e reflectores';

  @override
  String get dvirCategoryMirrors => 'Espelhos de visão retrovisória';

  @override
  String get dvirCategoryParkingBrake => 'Fresco de estacionamento';

  @override
  String get dvirCategoryPassengerSeating => 'Assentos e restrições de passageiros';

  @override
  String get dvirCategoryServiceBrakes => 'Frenos de serviço';

  @override
  String get dvirCategorySteeringMechanism => 'Mecanismo de direcção';

  @override
  String get dvirCategoryTires => 'Tires';

  @override
  String get dvirCategoryWheelsRims => 'Rodas e bordas';

  @override
  String get dvirCategoryWipers => 'Esfregadores de vidro';

  @override
  String get dvirPostTripCapturePhoto => 'FOTOS DE FALTO';

  @override
  String get dvirPostTripComplianceTitle => 'Certificação de conformidade';

  @override
  String get dvirPostTripDefectButton => 'DEFETO';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Relatar defeito sem foto';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Aviso: está a denunciar um defeito nas zonas de segurança ($zones) sem anexar uma foto.';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspecção: Autobús $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Entre os detalhes da preocupação com a segurança...';

  @override
  String get dvirPostTripNotesLabel => 'NOTA (MANDATORIO DE DEFETO) e FOTOS';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Selecione DEFECT para inserir os detalhes de preocupação com a segurança...';

  @override
  String get dvirPostTripOdometerHeader => 'Leitura do Odometro atual';

  @override
  String get dvirPostTripOdometerInstructions => 'Digite a leitura da quilometragem exatamente como mostrado no painel de instrumentos do ônibus:';

  @override
  String get dvirPostTripOdometerLabel => 'Odometro (milhas)';

  @override
  String get dvirPostTripOdometerTitle => 'Veículo RUN TIME METRIC';

  @override
  String get dvirPostTripOdometerWarning => 'Antes de prosseguir, insira a leitura do odómetro.';

  @override
  String get dvirPostTripPassButton => 'Passagem';

  @override
  String get dvirPostTripPhotoAttached => 'Foto anexada com sucesso.';

  @override
  String get dvirPostTripProgressLabel => 'Progresso da inspecção';

  @override
  String get dvirPostTripSignatureCaptured => 'Assinatura capturada.';

  @override
  String get dvirPostTripSignatureCert => 'Certifico que este relatório de lista de verificação de caminhada de veículo foi concluído em conformidade com as normas FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Verificação da assinatura do motorista';

  @override
  String get dvirPostTripSubmitButton => 'A INSPECIÃO';

  @override
  String get dvirPostTripSubmitSuccess => 'O eDVIR foi apresentado com êxito.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'Zona $current DE $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return 'Zonas de controlo';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Reconheço que revisei o último relatório de defeito apresentado e verifiquei as reparações (se houver) e afirmo que o ônibus é seguro para operação.';

  @override
  String get dvirPreTripActiveMessage => 'Este veículo é ativo e não apresenta defeitos abertos.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Rota ativa: $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATENÇÃO REQUERIDO: Defeitos do dia anterior';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Número de ônibus: $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'Verificação de expedição de veículos';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Não assinou: $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Nenhum defeito anterior registrado';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Este veículo foi reportado limpo na inspecção anterior de turno após a viagem.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Não é necessário reparar para uma operação segura.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Este veículo está fora de serviço para reparações/manutenção.';

  @override
  String get dvirPreTripOutofServiceButton => 'Veículo fora de serviço';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Razão:';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (REPARADO)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'RAPORTAR NOSSO DEFETOS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'A comunicação de novos defeitos é desativada durante as reparações.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Status:';
  }

  @override
  String get dvirPreTripResolutionTitle => 'Resolução do Sub-Admin do transporte';

  @override
  String get dvirPreTripReturnToHomeButton => 'Regressar à casa';

  @override
  String get dvirPreTripSignOffTitle => 'Sinha para o passeio';

  @override
  String get dvirPreTripSignedSuccess => 'Verificação assinada com sucesso.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'A CONFICAÇÃO';

  @override
  String get dvirPreTripTitle => 'Verificação prévia à viagem';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Status do veículo: $status';
  }

  @override
  String get dvirSigDrawTitle => 'Desenho de assinatura';

  @override
  String get dvirSigPreviewLabel => 'Capturado Preview da assinatura:';

  @override
  String get dvirSigRedraw => 'REDRAW';

  @override
  String get dvirSigSave => 'Salvar a assinatura';

  @override
  String get dvirSigTapToDraw => 'TAP para desenhar a assinatura (REQUERIDO)';

  @override
  String get dvirSigWatermark => 'Assinação Verticalmente (De Baixo para Superior)';

  @override
  String get forgotPasswordCancel => 'Cancelar';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Por favor, insira um e-mail válido';

  @override
  String get forgotPasswordSend => 'Enviar';

  @override
  String get forgotPasswordSuccess => 'Se esse e-mail existir, um link de reset foi enviado.';

  @override
  String get genericBack => '- Não .';

  @override
  String get genericCancel => 'Cancelar';

  @override
  String get genericClear => 'CLEAR';

  @override
  String get genericClose => '- Quase';

  @override
  String get genericConfirm => 'Confirmar';

  @override
  String get genericEdit => 'Edição';

  @override
  String get genericError => 'Alguma coisa correu mal.';

  @override
  String get genericLoading => 'Carregando...';

  @override
  String get genericNext => 'Próximo';

  @override
  String get genericOk => 'Está bem.';

  @override
  String get genericRetry => 'Tente novamente';

  @override
  String get genericSuccess => 'Sucesso';

  @override
  String homeBusLabel(Object busId) {
    return 'Autobús:';
  }

  @override
  String get homeDispatchBlocked => 'Envio bloqueado';

  @override
  String get homeDispatchBlockedTitle => 'Envio bloqueado';

  @override
  String get homeErrorNoRoutesPreTrip => 'Não há rotas disponíveis para realizar Pre-Trip.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Falhou em iniciar a viagem no servidor: $error';
  }

  @override
  String homeHi(Object name) {
    return 'Olá, V0';
  }

  @override
  String get homeLogout => 'Logout';

  @override
  String get homeMenuAppInfo => 'Informações do aplicativo';

  @override
  String get homeMenuDrill => 'Forro';

  @override
  String get homeMenuDriverDetails => 'Detalhes do motorista';

  @override
  String get homeMenuLanguage => 'Língua';

  @override
  String get homeMenuPreTrip => 'Inspecção prévia à viagem';

  @override
  String get homeNoRoutes => 'Não há rotas disponíveis';

  @override
  String get homeReviewVerifyPreTrip => 'Revisão e verificação pré-viagem';

  @override
  String get homeSearchHint => 'Roteiras de busca';

  @override
  String get homeStart => 'Começa';

  @override
  String get homeTitle => 'Casa';

  @override
  String get homeVehicleOutOfServiceDefault => 'O veículo está atualmente fora de serviço.';

  @override
  String get homeVehicleReady => 'O veículo está pronto e verificado para operação segura.';

  @override
  String get languageTitle => 'Língua';

  @override
  String get loginButton => 'Login';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail ou número de telefone';

  @override
  String get loginErrorEnterPassword => 'Por favor, digite a senha';

  @override
  String get loginErrorEnterUsername => 'Por favor, digite o nome de usuário';

  @override
  String get loginErrorFailed => 'A entrada falhou, por favor, tente novamente.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Por favor, insira um e-mail ou número de telefone válido';

  @override
  String get loginForgotPassword => 'Esqueceste-te da senha?';

  @override
  String get loginPasswordLabel => 'Senha';

  @override
  String get mapChildrenTooltip => 'Crianças e tutores';

  @override
  String get mapConfirmMessage => 'Queres mesmo encerrar a viagem?';

  @override
  String get mapConfirmTitle => 'Confirmar';

  @override
  String get mapCurrentPosition => 'Posição atual';

  @override
  String get mapNo => 'Não, não.';

  @override
  String get mapReconnectMessage => 'Atualização de localização falha com frequência, por favor verifique sua internet.';

  @override
  String get mapReconnectTitle => 'Tracker';

  @override
  String get mapStop => 'Parem!';

  @override
  String get mapStopping => 'Parando...';

  @override
  String get mapStopsTooltip => 'Paradas';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Atualizado há 5 anos';
  }

  @override
  String get mapWaitingGps => 'À espera do GPS...';

  @override
  String get mapYes => 'Sim, sim.';

  @override
  String get splashDriverApp => 'Aplicação de motorista';

  @override
  String get stopsActionUndo => 'Desfeito';

  @override
  String get stopsCancelledSuccess => 'Cancelação com êxito';

  @override
  String get stopsDefaultLabel => 'Parem!';

  @override
  String get stopsGenericError => 'Alguma coisa correu mal, por favor, tente novamente.';

  @override
  String get stopsStatusComplete => 'Completado';

  @override
  String get stopsStatusDone => 'Feito';

  @override
  String stopsSubmitCount(Object count) {
    return 'Submetida ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Submetido com êxito';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return 'Selecionado';
  }

  @override
  String get stopsTypeDrop => '- Deixe cair.';

  @override
  String get stopsTypePick => 'Escolha';

  @override
  String stopsUndoCount(Object count) {
    return 'O valor do valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um valor de um';
  }

  @override
  String get stopsUndoTooltip => 'Descarga/descarga';

  @override
  String get tripConfirmCancel => 'Cancelar';

  @override
  String get tripConfirmOk => '- Está bem.';

  @override
  String get tripConfirmTitle => 'Tracker';

  @override
  String get tripErrorLocationRequired => 'É necessário uma autorização de localização para iniciar uma viagem.';

  @override
  String get homeMenuPostCrashReporting => 'Relatório pós-crash';

  @override
  String homeVehicleReason(Object reason) {
    return 'Razão:';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Status:';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat: V0__, Lng: V1__';
  }

  @override
  String get crashLocationPickerSearchHint => 'Localização da procura (por exemplo, Market St)';

  @override
  String get crashLocationPickerTitle => 'Selecione Localização no mapa';

  @override
  String get crashLocationPickerTooltip => 'Confirmar o local';

  @override
  String get incidentDashboardDescription => 'Selecionar uma ação para prosseguir com a gestão de incidentes ou visualizar relatórios anteriores.';

  @override
  String get incidentDashboardHeadline => 'Relatório de Incidentes Pós-Crash';

  @override
  String get incidentDashboardLogNew => 'Registro de Novos Crash';

  @override
  String get incidentDashboardLogNewSubtitle => 'Iniciar um novo relatório de acidente passo a passo';

  @override
  String get incidentDashboardTitle => 'Incidente pós-crash';

  @override
  String get incidentDashboardViewHistory => 'Veja História';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Veja relatórios de acidente anteriores e status';

  @override
  String get incidentDetailsAdminLetter => 'Carta do administrador';

  @override
  String get incidentDetailsAlcoholCountdown => 'DOT Contato a Cotação de Teste de Alcool (2 horas Limitado)';

  @override
  String get incidentDetailsBranchId => 'Identificação da sucursal';

  @override
  String get incidentDetailsBusPlate => 'Placa de Licença de Autobús';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impacto de citação: $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Citação emitida ao condutor';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordenadas: Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '- V0... copiado para o clipboard!';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copiar para o disco de gravação';

  @override
  String get incidentDetailsCrashCitationInfo => 'Crash & Citation Info';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Data e Hora: $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Relatório do DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Relatório do DOE do Estado (opcional)';

  @override
  String get incidentDetailsDriverNotes => 'Notas do condutor:';

  @override
  String get incidentDetailsDriverUserId => 'ID de usuário do motorista';

  @override
  String get incidentDetailsDrugCountdown => 'Contagem regressiva dos testes de drogas DOT (Limite de 8 horas)';

  @override
  String get incidentDetailsFatalityOccurred => 'A morte ocorreu';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Lesões que exigem tratamento médico';

  @override
  String get incidentDetailsLawEnforcement => 'Agência de aplicação da lei';

  @override
  String get incidentDetailsLoadFailed => 'Não conseguiu carregar detalhes.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Localização:';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Anexos de mídia';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsNo => 'Não';

  @override
  String get incidentDetailsNoMediaAttachments => 'Não há fotos nem vídeos anexados.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Nenhum aluno foi marcado a bordo durante o incidente.';

  @override
  String get incidentDetailsNotificationsDesc => 'Gerar relatórios de notificação e enviar cartas com modelo para supervisores ou administrações distrital.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notificações de transmissão';

  @override
  String get incidentDetailsOfficer => 'Detalhes do oficial';

  @override
  String get incidentDetailsPoliceReport => 'Número de relatório da polícia';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Carta de transmissão pré-povoada:';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base regulamentar:';

  @override
  String get incidentDetailsRouteId => 'Identificação de rota';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notificação do administrador escolar';

  @override
  String get incidentDetailsStatusPending => 'A espera';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Detalhes: $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Feridos';

  @override
  String get incidentDetailsStudentNoInjury => 'Não há ferimentos';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravidade:';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transporte para:';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Estudantes a bordo ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Requerido Teste Pós-Crash';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Status:';
  }

  @override
  String get incidentDetailsTitle => 'Detalhes do Incidente';

  @override
  String get incidentDetailsVehicleTowed => 'Veículo removido';

  @override
  String get incidentDetailsYes => 'Sim, sim.';

  @override
  String get incidentHistoryEmpty => 'Não há registos de incidentes registrados para este veículo.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Falha em recuperar registos: $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Tempo: V0__ Ônibus: V1__ Testes: V2__';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incidente #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Não é necessário';

  @override
  String get incidentHistoryTestingRequired => 'Requerido';

  @override
  String get incidentHistoryTitle => 'Registro de Incidentes Pós-Crash';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Adicione outra foto';

  @override
  String get incidentIntakeBadgeNumberError => 'Requerido';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Número de distintivo *';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Número de ônibus: $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Captura de cena do incidente Foto';

  @override
  String get incidentIntakeCitationSubtitle => 'Foi emitida uma citação de violação de tráfego ao motorista do ônibus escolar?';

  @override
  String get incidentIntakeCitationTitle => 'Citação emitida?';

  @override
  String get incidentIntakeDateTimeLabel => 'Data e Hora do Crash *';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Não é necessário fazer testes';

  @override
  String get incidentIntakeDotTestingRequired => 'Requerido teste';

  @override
  String incidentIntakeDriver(Object driverName) {
    return '- Não, não.';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Digite quaisquer notas adicionais sobre a colisão...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notas de Incidentes com o Condutor';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Não conseguiu carregar passageiros da rota: $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Anexe provas (fotos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Houve alguma morte como resultado deste acidente?';

  @override
  String get incidentIntakeFatalityTitle => 'A morte ocorreu?';

  @override
  String get incidentIntakeGpsLabel => 'Coordenadas GPS *';

  @override
  String get incidentIntakeHistoryTooltip => 'Veja História';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Alguém sofreu lesões corporais que exigiram tratamento médico imediato fora do local?';

  @override
  String get incidentIntakeInjuriesTitle => 'Lesões que exigem tratamento médico?';

  @override
  String get incidentIntakeInjuryNotesError => 'Notas de lesões são obrigatórias para estudantes feridos';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notas de lesões / Detalhes (obrigatório) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravidade do ferimento *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Por favor, entre na agência de aplicação da lei.';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Agência de aplicação da lei (por exemplo, Patrulha Estadual de Estradas) *';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Relatório da Polícia e da Polícia';

  @override
  String get incidentIntakeLocationDescError => 'Por favor, digite a descrição da localização';

  @override
  String get incidentIntakeLocationDescLabel => 'Descrição da localização (por exemplo, Market St & 5th Ave) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Instalação médica transportada para';

  @override
  String get incidentIntakeNoMatchingStudents => 'Não há estudantes iguais.';

  @override
  String get incidentIntakeNoStudentsFound => 'Não encontraram estudantes.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Não há estudantes a bordo, por favor, pressione NEXT para continuar.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Nenhum aluno foi registrado para esta rota.';

  @override
  String get incidentIntakeOfficerNameError => 'Por favor, insira o nome do oficial.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nome do oficial *';

  @override
  String get incidentIntakePoliceReportNumberError => 'Por favor, digite o número do relatório policial.';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Número de relatório da polícia *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Caminho:';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informações de rota e condutor';

  @override
  String get incidentIntakeSearchInjuredHint => 'Procura uma criança ferida...';

  @override
  String get incidentIntakeSearchStudentHint => 'Pesquisa de alunos...';

  @override
  String get incidentIntakeSelectAll => 'Escolha todos os alunos';

  @override
  String get incidentIntakeSelectOnMap => 'SELECTOS NO MAPE';

  @override
  String get incidentIntakeSeverityFatal => 'Fatal';

  @override
  String get incidentIntakeSeverityMinor => 'Menor';

  @override
  String get incidentIntakeSeverityModerate => 'Moderado';

  @override
  String get incidentIntakeSeveritySevere => 'Severo';

  @override
  String get incidentIntakeSeverityTitle => 'Variaveis de gravidade do acidente';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'Identificação:';
  }

  @override
  String get incidentIntakeSubmitButton => 'Relatório';

  @override
  String get incidentIntakeTitle => 'Ingestão de alimentos após o acidente';

  @override
  String get incidentIntakeTowedSubtitle => 'Algum veículo recebeu danos incapacitantes que exigiram que fosse removido do local?';

  @override
  String get incidentIntakeTowedTitle => 'Veículo remolcado?';

  @override
  String get incidentIntakeWasInjured => '- Foi ferido?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Autobús:';
  }

  @override
  String get dvirPreTripClose => 'Aproximem-se';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Comentários do motorista / Notas (opcional)';

  @override
  String get dvirPreTripNoComments => 'Não adicionou comentários.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Razão:';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Caminho:';
  }

  @override
  String get dvirPreTripSigCaptured => 'A assinatura foi capturada com sucesso.';

  @override
  String get dvirPreTripSigMissing => 'A assinatura está faltando.';

  @override
  String get dvirPreTripSignDefectWarning => 'Por favor, assine para verificar a reparação de defeitos anteriores.';

  @override
  String get dvirPreTripStepSignOff => 'A assinatura';

  @override
  String get dvirPreTripStepSubmit => 'Submeter';

  @override
  String get dvirPreTripStepVerify => 'Verificar';

  @override
  String get dvirPreTripTapNext => 'Por favor, toque NEXT para prosseguir.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Veículo fora de serviço';

  @override
  String get dvirPreTripVehicleReady => 'Veículo pronto para serviço';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Status verificado de reparação:';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Verifique se todos os defeitos notificados foram reparados, verificando a caixa ao lado de cada defeito.';

  @override
  String get dvirPreTripYourComments => 'Os seus comentários:';

  @override
  String get countryPickerNoCountries => 'Nenhum país encontrado';

  @override
  String get countryPickerSearchHint => 'Pesquisa por nome de país, código ou código de dial...';

  @override
  String get countryPickerTitle => 'Selecionar país';

  @override
  String get mapDefaultStop => 'Parem!';

  @override
  String get mapEndLocation => 'Localização final';

  @override
  String get mapStartLocation => 'Localização de início';

  @override
  String get stopsNoChangesToUndo => 'Não há alterações disponíveis para desfazer.';

  @override
  String get stopsNoStopsAvailable => 'Não há paradas disponíveis.';

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
