import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appInfoBuild => 'Numéro de version';

  @override
  String get appInfoDevice => 'Modèle de l\'appareil';

  @override
  String get appInfoOS => 'Version de l\'OS';

  @override
  String get appInfoPackage => 'Package';

  @override
  String get appInfoTitle => 'Infos sur l\'appli';

  @override
  String get appInfoVersion => 'Version de l\'appli';

  @override
  String get appTitleSchoolDiary => 'Traqueur SD';

  @override
  String get childrenActionGuardians => 'Tuteurs';

  @override
  String childrenGuardiansFor(Object name) {
    return 'Tuteurs autorisés pour $name';
  }

  @override
  String get childrenNoGuardians => 'Aucun tuteur autorisé enregistré pour cet enfant.';

  @override
  String get childrenStatusDropped => 'Déposé';

  @override
  String get childrenStatusPending => 'En attente';

  @override
  String get childrenStatusPicked => 'Récupéré';

  @override
  String childrenTitle(Object routeName) {
    return 'Enfants - $routeName';
  }

  @override
  String drillChecklistAbsentTitle(Object count) {
    return 'ABSENT / PAS DANS LE BUS ($count)';
  }

  @override
  String drillChecklistBus(Object busNumber) {
    return 'Bus : $busNumber';
  }

  @override
  String get drillChecklistEvacuated => 'Évacué';

  @override
  String drillChecklistEvacuatedProgress(Object evacuatedCount, Object totalCount) {
    return 'Évacués : $evacuatedCount/$totalCount';
  }

  @override
  String get drillChecklistNoAbsentStudents => 'Aucun étudiant absent.';

  @override
  String get drillChecklistNoStudentsOnBus => 'Aucun étudiant marqué dans le bus.';

  @override
  String get drillChecklistNotOnBus => 'PAS DANS LE BUS';

  @override
  String get drillChecklistOnBusNotEvacuated => 'DANS LE BUS - NON ÉVACUÉ';

  @override
  String drillChecklistOnBusTitle(Object count) {
    return 'DANS LE BUS ($count)';
  }

  @override
  String get drillChecklistProceed => 'PASSER À LA CAPTURE DE PREUVES';

  @override
  String drillChecklistRouteLive(Object routeName) {
    return 'Itinéraire (En direct) : $routeName';
  }

  @override
  String get drillChecklistTitle => 'Liste de contrôle de l\'exercice d\'évacuation';

  @override
  String drillChecklistUnaccountedWarning(Object count) {
    return '$count Étudiant(s) manquant(s) à l\'appel !';
  }

  @override
  String get drillEvidenceConfirmMessage => 'Êtes-vous sûr de vouloir soumettre ce journal d\'exercice ? Cette action est irréversible.';

  @override
  String get drillEvidenceConfirmSubmission => 'Confirmer la soumission de l\'exercice';

  @override
  String get drillEvidenceDriverNotesHint => 'Décrivez l\'exécution de l\'exercice, le comportement des étudiants, les voies de sortie utilisées et toute exception observée...';

  @override
  String get drillEvidenceDriverNotesLabel => 'Notes du conducteur (Minimum 10 caractères) :';

  @override
  String get drillEvidenceFailed => 'Échec de la soumission';

  @override
  String get drillEvidenceMandatoryWarning => 'Au moins 1 preuve photo ou vidéo est obligatoire pour soumettre l\'exercice.';

  @override
  String get drillEvidenceRecordVideo => 'Enregistrer une vidéo';

  @override
  String get drillEvidenceRetrySubmission => 'RÉESSAYER LA SOUMISSION';

  @override
  String get drillEvidenceReturnToDashboard => 'RETOURNER AU TABLEAU DE BORD';

  @override
  String get drillEvidenceSubmitButton => 'SOUMETTRE LE JOURNAL D\'EXERCICE';

  @override
  String get drillEvidenceSubmitting => 'Soumission du journal d\'exercice...';

  @override
  String get drillEvidenceSuccess => 'Soumission réussie !';

  @override
  String get drillEvidenceSuccessMessage => 'Le journal de l\'exercice d\'évacuation a été téléchargé avec succès et est en attente d\'approbation.';

  @override
  String get drillEvidenceTakePhoto => 'Prendre une photo';

  @override
  String get drillEvidenceTitle => 'Preuves obligatoires de l\'exercice';

  @override
  String get drillEvidenceUploading => 'Téléchargement des preuves et des données de la liste de contrôle';

  @override
  String drillRosterBus(Object busNumber) {
    return 'Bus : $busNumber';
  }

  @override
  String drillRosterDrillType(Object drillType) {
    return 'Exercice : $drillType';
  }

  @override
  String get drillRosterMarkAttendance => 'Faire l\'appel';

  @override
  String get drillRosterNoStudents => 'Aucun étudiant inscrit sur cet itinéraire.';

  @override
  String drillRosterPresentCount(Object presentCount, Object totalCount) {
    return 'Présents : $presentCount / $totalCount';
  }

  @override
  String get drillRosterProceed => 'PASSER À LA LISTE DE CONTRÔLE DE L\'EXERCICE';

  @override
  String drillRosterRoute(Object routeName) {
    return 'Itinéraire : $routeName';
  }

  @override
  String drillRosterSeat(Object seatNumber) {
    return 'Siège : $seatNumber';
  }

  @override
  String get drillRosterSelectAll => 'Tout sélectionner';

  @override
  String get drillSummaryAdminNotesTitle => 'Notes de l\'administrateur';

  @override
  String drillSummaryApprovedAt(Object date) {
    return 'Approuvé le : $date';
  }

  @override
  String get drillSummaryApprovedAtLabel => 'Approuvé le';

  @override
  String get drillSummaryBackToDrills => 'Retour aux exercices';

  @override
  String get drillSummaryBusNumber => 'Numéro de bus';

  @override
  String drillSummaryConductedBy(Object name) {
    return 'Animé par : $name';
  }

  @override
  String get drillSummaryDetailsTitle => 'Détails de l\'exercice';

  @override
  String get drillSummaryDriverNotesTitle => 'Notes du conducteur';

  @override
  String get drillSummaryDuration => 'Durée';

  @override
  String drillSummaryDurationValue(Object minutes, Object seconds) {
    return '$minutes min $seconds sec';
  }

  @override
  String get drillSummaryEndTime => 'Heure de fin';

  @override
  String drillSummaryEvacuatedCount(Object evacuatedCount, Object totalCount) {
    return 'Évacués : $evacuatedCount/$totalCount';
  }

  @override
  String drillSummaryEvacuatedTime(Object time) {
    return 'Évacué à $time';
  }

  @override
  String get drillSummaryEvidenceTitle => 'Pièces jointes multimédias des preuves';

  @override
  String get drillSummaryGps => 'Coordonnées GPS';

  @override
  String drillSummaryGpsValue(Object lat, Object lng) {
    return 'Lat : $lat, Lng : $lng';
  }

  @override
  String drillSummaryLoadFailed(Object error, Object id) {
    return 'Échec du chargement du résumé de l\'exercice pour l\'ID #$id.\n$error';
  }

  @override
  String get drillSummaryNoData => 'Aucune donnée d\'exercice trouvée.';

  @override
  String get drillSummaryNotOnBus => 'Pas dans le bus';

  @override
  String get drillSummaryOnBusNotEvacuated => 'DANS LE BUS - NON ÉVACUÉ';

  @override
  String get drillSummaryPhotoEvidence => 'Preuve photographique';

  @override
  String get drillSummaryRouteId => 'ID de l\'itinéraire';

  @override
  String drillSummarySeat(Object seatNumber) {
    return 'Siège : $seatNumber';
  }

  @override
  String get drillSummaryStartTime => 'Heure de début';

  @override
  String get drillSummaryStatus => 'Statut';

  @override
  String get drillSummaryStudentLogTitle => 'Journal d\'évacuation des étudiants';

  @override
  String drillSummaryTitle(Object id) {
    return 'Résumé de l\'exercice (#$id)';
  }

  @override
  String get drillSummaryType => 'Type d\'exercice';

  @override
  String get drillSummaryVideoEvidence => 'Preuve vidéo';

  @override
  String drillTypeBus(Object busNumber) {
    return 'Bus $busNumber';
  }

  @override
  String get drillTypeClassification => 'Choisissez la classification de l\'exercice :';

  @override
  String get drillTypeCustomHint => 'Entrez le type d\'exercice d\'évacuation personnalisé...';

  @override
  String get drillTypeInvalidState => 'État du véhicule ou de l\'itinéraire invalide.';

  @override
  String get drillTypeNameBusFire => 'Incendie de bus';

  @override
  String get drillTypeNameDangerZone => 'Zone de danger';

  @override
  String get drillTypeNameDriverIncapacitation => 'Incapacité du conducteur';

  @override
  String get drillTypeNameEquipmentOrientation => 'Orientation sur les équipements';

  @override
  String get drillTypeNameFrontDoor => 'Porte avant';

  @override
  String get drillTypeNameOthers => 'Autres';

  @override
  String get drillTypeNameRearDoor => 'Porte arrière';

  @override
  String get drillTypeNameSideOrRoof => 'Côté ou toit';

  @override
  String get drillTypeNameSplit => 'Séparé';

  @override
  String get drillTypeNoRouteSelected => 'Aucun itinéraire sélectionné';

  @override
  String get drillTypePreparation => 'PRÉPARATION DE L\'EXERCICE';

  @override
  String get drillTypeProceed => 'PASSER À LA LISTE DES ÉTUDIANTS';

  @override
  String drillTypeRoute(Object routeName) {
    return 'Itinéraire : $routeName';
  }

  @override
  String get drillTypeSelectRoute => 'Sélectionner l\'itinéraire :';

  @override
  String get drillTypeSpecifyCustom => 'Spécifiez la description de l\'exercice :';

  @override
  String get drillTypeTitle => 'Sélectionner le type d\'exercice';

  @override
  String get drillTypeWarning => 'Assurez-vous que le véhicule est garé en toute sécurité avant de commencer l\'exécution.';

  @override
  String get drillsAssignedVehicle => 'Véhicule assigné';

  @override
  String get drillsChecking => 'Vérification...';

  @override
  String drillsHeader(Object id, Object type) {
    return 'Exercice #$id - $type';
  }

  @override
  String get drillsNoBusAssigned => 'Aucun bus assigné';

  @override
  String drillsNoDrillsRecorded(Object busNumber) {
    return 'Aucun exercice enregistré pour le bus $busNumber';
  }

  @override
  String get drillsNoRoutesAvailable => 'Aucun itinéraire disponible pour commencer un exercice.';

  @override
  String get drillsShowSummary => 'Afficher le résumé';

  @override
  String get drillsStartDrill => 'Commencer l\'exercice';

  @override
  String drillsSubtitle(Object date, Object status) {
    return 'Effectué le : $date\nStatut : $status';
  }

  @override
  String get drillsTitle => 'Exercices d\'évacuation';

  @override
  String get drillsVehicleOutOfService => 'Véhicule hors service';

  @override
  String get drillsVehicleOutOfServiceMessage => 'Ce véhicule est actuellement hors service et ne peut pas être utilisé pour les exercices.';

  @override
  String get driverDetailsCdlClassLabel => 'Classe CDL';

  @override
  String get driverDetailsDrivingLicenseLabel => 'PERMIS DE CONDUIRE';

  @override
  String driverDetailsDrivingLicenseName(Object name) {
    return 'NOM : $name';
  }

  @override
  String driverDetailsDrivingLicenseNo(Object licenseNo) {
    return 'LIC : $licenseNo';
  }

  @override
  String get driverDetailsEndorsementPassenger => 'Passager';

  @override
  String get driverDetailsEndorsementSchoolBus => 'Bus scolaire';

  @override
  String get driverDetailsEndorsementsTitle => 'Mentions détenues';

  @override
  String get driverDetailsExpiryDateLabel => 'Date d\'expiration';

  @override
  String get driverDetailsHolderSignature => 'SIGNATURE DU TITULAIRE';

  @override
  String driverDetailsId(Object driverId) {
    return 'ID : $driverId';
  }

  @override
  String get driverDetailsIssueDateLabel => 'Date de délivrance';

  @override
  String get driverDetailsLicenseDocTitle => 'Document de permis';

  @override
  String get driverDetailsLicenseNoLabel => 'N° de permis';

  @override
  String get driverDetailsLicenseTitle => 'Détails du permis';

  @override
  String get driverDetailsLicenseTypeLabel => 'Type de permis';

  @override
  String get driverDetailsOfficialSeal => 'SCEAU OFFICIEL';

  @override
  String driverDetailsPreviewClass(Object cdlClass) {
    return 'CLASSE : $cdlClass';
  }

  @override
  String driverDetailsPreviewDob(Object dob) {
    return 'DDN : $dob';
  }

  @override
  String driverDetailsPreviewEndorse(Object endorsements) {
    return 'MENTIONS : $endorsements';
  }

  @override
  String driverDetailsPreviewExp(Object expiryDate) {
    return 'EXP : $expiryDate';
  }

  @override
  String driverDetailsPreviewLicenseNo(Object licenseNo) {
    return 'NP : $licenseNo';
  }

  @override
  String driverDetailsPreviewName(Object name) {
    return 'NOM : $name';
  }

  @override
  String get driverDetailsTapToView => 'Appuyez pour voir le document du permis';

  @override
  String get driverDetailsTitle => 'Détails du conducteur';

  @override
  String get dvirCategoryBusSafetySystems => 'Systèmes de sécurité spécifiques aux bus';

  @override
  String get dvirCategoryCouplingDevices => 'Dispositifs d\'attelage';

  @override
  String get dvirCategoryEmergencyEquipment => 'Équipement d\'urgence';

  @override
  String get dvirCategoryHorn => 'Klaxon';

  @override
  String get dvirCategoryLightingReflectors => 'Dispositifs d\'éclairage et catadioptres';

  @override
  String get dvirCategoryMirrors => 'Rétroviseurs';

  @override
  String get dvirCategoryParkingBrake => 'Frein de stationnement';

  @override
  String get dvirCategoryPassengerSeating => 'Sièges passagers et dispositifs de retenue';

  @override
  String get dvirCategoryServiceBrakes => 'Freins de service';

  @override
  String get dvirCategorySteeringMechanism => 'Mécanisme de direction';

  @override
  String get dvirCategoryTires => 'Pneus';

  @override
  String get dvirCategoryWheelsRims => 'Roues et jantes';

  @override
  String get dvirCategoryWipers => 'Essuie-glaces';

  @override
  String get dvirPostTripCapturePhoto => 'CAPTURER LA PHOTO DU DÉFAUT';

  @override
  String get dvirPostTripComplianceTitle => 'CERTIFICATION DE CONFORMITÉ';

  @override
  String get dvirPostTripDefectButton => 'DÉFAUT';

  @override
  String get dvirPostTripDefectWithoutPhotoTitle => 'Signalement d\'un défaut sans photo';

  @override
  String dvirPostTripDefectWithoutPhotoWarning(Object zones) {
    return 'Attention : Vous signalez un défaut sur les zones de sécurité ($zones) sans joindre de photo. Êtes-vous sûr de vouloir quand même soumettre ?';
  }

  @override
  String dvirPostTripInspectionTitle(Object busNumber) {
    return 'Inspection : Bus $busNumber';
  }

  @override
  String get dvirPostTripNotesDefectHint => 'Entrez les détails du problème de sécurité...';

  @override
  String get dvirPostTripNotesLabel => 'NOTES (OBLIGATOIRES EN CAS DE DÉFAUT) & PHOTO';

  @override
  String get dvirPostTripPhotoLabel => 'PHOTO (OPTIONAL)';

  @override
  String get dvirPostTripNotesPassedHint => 'Sélectionnez DÉFAUT pour entrer les détails du problème...';

  @override
  String get dvirPostTripOdometerHeader => 'Relevé kilométrique actuel';

  @override
  String get dvirPostTripOdometerInstructions => 'Entrez le kilométrage exactement tel qu\'il apparaît sur le tableau de bord du bus :';

  @override
  String get dvirPostTripOdometerLabel => 'Odomètre (Miles/Km)';

  @override
  String get dvirPostTripOdometerTitle => 'MÉTRIQUE DE TEMPS DE FONCTIONNEMENT DU VÉHICULE';

  @override
  String get dvirPostTripOdometerWarning => 'Veuillez entrer le relevé kilométrique avant de continuer.';

  @override
  String get dvirPostTripPassButton => 'RÉUSSI';

  @override
  String get dvirPostTripPhotoAttached => 'Photo jointe avec succès.';

  @override
  String get dvirPostTripProgressLabel => 'Progression de l\'inspection';

  @override
  String get dvirPostTripSignatureCaptured => 'Signature capturée.';

  @override
  String get dvirPostTripSignatureCert => 'Je certifie que ce rapport de contrôle du véhicule a été rempli conformément aux réglementations FMCSA 396.11.';

  @override
  String get dvirPostTripSignatureTitle => 'Vérification de la signature du conducteur';

  @override
  String get dvirPostTripSubmitButton => 'SOUMETTRE L\'INSPECTION';

  @override
  String get dvirPostTripSubmitSuccess => 'eDVIR soumis avec succès.';

  @override
  String dvirPostTripZoneHeader(Object current, Object total) {
    return 'ZONE $current SUR $total';
  }

  @override
  String dvirPostTripZonesProgress(Object current, Object total) {
    return '$current / $total Zones';
  }

  @override
  String get dvirPreTripAcknowledgmentText => 'Je reconnais avoir examiné le dernier rapport de défaut soumis et vérifié les réparations (le cas échéant) et je déclare que le bus est sûr pour l\'exploitation.';

  @override
  String get dvirPreTripActiveMessage => 'Ce véhicule est Actif et ne présente aucun défaut ouvert. Il est vérifié et sûr pour l\'exploitation.';

  @override
  String dvirPreTripActiveRoute(Object routeName) {
    return 'Itinéraire actif : $routeName';
  }

  @override
  String get dvirPreTripAttentionRequiredTitle => 'ATTENTION REQUISE : DÉFAUTS DU JOUR PRÉCÉDENT ENREGISTRÉS';

  @override
  String dvirPreTripBusNumber(Object busNumber) {
    return 'Numéro de bus : $busNumber';
  }

  @override
  String get dvirPreTripDispatchCheckTitle => 'VÉRIFICATION DE LA DISPONIBILITÉ DU VÉHICULE';

  @override
  String dvirPreTripFailedToSign(Object error) {
    return 'Échec de la signature : $error';
  }

  @override
  String get dvirPreTripNoPriorDefects => 'Aucun défaut antérieur enregistré';

  @override
  String get dvirPreTripNoPriorDefectsMessage => 'Ce véhicule a été déclaré en bon état lors de l\'inspection de fin de service précédente.';

  @override
  String get dvirPreTripNoRepairsNeeded => 'Aucune réparation nécessaire pour une exploitation sûre.';

  @override
  String get dvirPreTripOutOfServiceMessage => 'Ce véhicule est Hors Service pour réparations/entretien. Les problèmes de sécurité doivent être résolus par le personnel de l\'atelier avant la mise en service.';

  @override
  String get dvirPreTripOutofServiceButton => 'VÉHICULE HORS SERVICE';

  @override
  String dvirPreTripReason(Object reason) {
    return 'Raison : $reason';
  }

  @override
  String dvirPreTripRepairedDefect(Object description) {
    return '$description (RÉPARÉ)';
  }

  @override
  String get dvirPreTripReportNewDefectsButton => 'SIGNALER DE NOUVEAUX DÉFAUTS';

  @override
  String get dvirPreTripReportNewDefectsDisabled => 'Le signalement de nouveaux défauts est désactivé pendant les réparations.';

  @override
  String dvirPreTripResolutionStatus(Object status) {
    return 'Statut : $status';
  }

  @override
  String get dvirPreTripResolutionTitle => 'RÉSOLUTION DU SOUS-ADMINISTRATEUR DE TRANSPORT';

  @override
  String get dvirPreTripReturnToHomeButton => 'RETOURNER À L\'ACCUEIL';

  @override
  String get dvirPreTripSignOffTitle => 'VALIDATION POUR PASSER À L\'INSPECTION';

  @override
  String get dvirPreTripSignedSuccess => 'Vérification signée avec succès. Inspection avant départ débloquée.';

  @override
  String get dvirPreTripSubmitVerificationButton => 'SOUMETTRE LA VÉRIFICATION';

  @override
  String get dvirPreTripTitle => 'Vérification avant départ';

  @override
  String dvirPreTripVehicleStatus(Object status) {
    return 'Statut du véhicule : $status';
  }

  @override
  String get dvirSigDrawTitle => 'Dessiner la signature';

  @override
  String get dvirSigPreviewLabel => 'Aperçu de la signature capturée :';

  @override
  String get dvirSigRedraw => 'REDESSINER';

  @override
  String get dvirSigSave => 'SAUVEGARDER LA SIGNATURE';

  @override
  String get dvirSigTapToDraw => 'APPUYEZ POUR DESSINER LA SIGNATURE (OBLIGATOIRE)';

  @override
  String get dvirSigWatermark => 'Signez verticalement (de bas en haut)';

  @override
  String get forgotPasswordCancel => 'Annuler';

  @override
  String get forgotPasswordEmailLabel => 'E-mail';

  @override
  String get forgotPasswordInvalidEmail => 'Veuillez entrer une adresse e-mail valide';

  @override
  String get forgotPasswordSend => 'Envoyer';

  @override
  String get forgotPasswordSuccess => 'Si cet e-mail existe, un lien de réinitialisation a été envoyé.';

  @override
  String get genericBack => 'RETOUR';

  @override
  String get genericCancel => 'Annuler';

  @override
  String get genericClear => 'EFFACER';

  @override
  String get genericClose => 'Fermer';

  @override
  String get genericConfirm => 'Confirmer';

  @override
  String get genericEdit => 'Modifier';

  @override
  String get genericError => 'Quelque chose s\'est mal passé';

  @override
  String get genericLoading => 'Chargement...';

  @override
  String get genericNext => 'SUIVANT';

  @override
  String get genericOk => 'Ok';

  @override
  String get genericRetry => 'Réessayer';

  @override
  String get genericSuccess => 'Succès';

  @override
  String homeBusLabel(Object busId) {
    return 'Bus : $busId';
  }

  @override
  String get homeDispatchBlocked => 'Mise en service bloquée';

  @override
  String get homeDispatchBlockedTitle => 'Mise en service bloquée';

  @override
  String get homeErrorNoRoutesPreTrip => 'Aucun itinéraire disponible pour effectuer l\'inspection avant départ.';

  @override
  String homeFailedToStartTrip(Object error) {
    return 'Échec du démarrage du trajet sur le serveur : $error';
  }

  @override
  String homeHi(Object name) {
    return 'Bonjour, $name';
  }

  @override
  String get homeLogout => 'Se déconnecter';

  @override
  String get homeMenuAppInfo => 'Infos de l\'appli';

  @override
  String get homeMenuDrill => 'Exercice';

  @override
  String get homeMenuDriverDetails => 'Détails du conducteur';

  @override
  String get homeMenuLanguage => 'Langue';

  @override
  String get homeMenuPreTrip => 'Inspection avant départ';

  @override
  String get homeMenuReportDefects => 'Report Defects';

  @override
  String get homeErrorNoRoutesReportDefects => 'No routes available to report defects';

  @override
  String get homeNoRoutes => 'Aucun itinéraire disponible';

  @override
  String get homeReviewVerifyPreTrip => 'Examiner et vérifier avant le départ';

  @override
  String get homeSearchHint => 'Rechercher des itinéraires';

  @override
  String get homeStart => 'Démarrer';

  @override
  String get homeTitle => 'Accueil';

  @override
  String get homeVehicleOutOfServiceDefault => 'Le véhicule est actuellement HORS SERVICE.';

  @override
  String get homeVehicleReady => 'Le véhicule est prêt et vérifié pour une utilisation en toute sécurité.';

  @override
  String get languageTitle => 'Langue';

  @override
  String get loginButton => 'Se connecter';

  @override
  String get loginEmailOrPhoneLabel => 'E-mail ou numéro de téléphone';

  @override
  String get loginErrorEnterPassword => 'Veuillez entrer le mot de passe';

  @override
  String get loginErrorEnterUsername => 'Veuillez entrer le nom d\'utilisateur';

  @override
  String get loginErrorFailed => 'Échec de la connexion. Veuillez réessayer.';

  @override
  String get loginErrorInvalidEmailOrPhone => 'Veuillez entrer un e-mail ou un numéro de téléphone valide';

  @override
  String get loginForgotPassword => 'Mot de passe oublié ?';

  @override
  String get loginPasswordLabel => 'Mot de passe';

  @override
  String get mapChildrenTooltip => 'Enfants et tuteurs';

  @override
  String get mapConfirmMessage => 'Voulez-vous vraiment terminer le trajet ?';

  @override
  String get mapConfirmTitle => 'Confirmer';

  @override
  String get mapCurrentPosition => 'Position actuelle';

  @override
  String get mapNo => 'Non';

  @override
  String get mapReconnectMessage => 'La mise à jour de la position échoue fréquemment. Veuillez vérifier votre connexion internet.';

  @override
  String get mapReconnectTitle => 'Traqueur';

  @override
  String get mapStop => 'Arrêter';

  @override
  String get mapStopping => 'Arrêt en cours...';

  @override
  String get mapStopsTooltip => 'Arrêts';

  @override
  String mapUpdatedAgo(Object seconds) {
    return 'Mis à jour il y a ${seconds}s';
  }

  @override
  String get mapWaitingGps => 'En attente du GPS...';

  @override
  String get mapYes => 'Oui';

  @override
  String get splashDriverApp => 'Appli Conducteur';

  @override
  String get stopsActionUndo => 'Annuler';

  @override
  String get stopsCancelledSuccess => 'Annulé avec succès';

  @override
  String get stopsDefaultLabel => 'Arrêt';

  @override
  String get stopsGenericError => 'Une erreur s\'est produite. Veuillez réessayer.';

  @override
  String get stopsStatusComplete => 'terminé';

  @override
  String get stopsStatusDone => 'fait';

  @override
  String stopsSubmitCount(Object count) {
    return 'Soumettre ($count)';
  }

  @override
  String get stopsSubmittedSuccess => 'Soumis avec succès';

  @override
  String stopsSummary(Object done, Object selected, Object status, Object total) {
    return '$selected sélectionné(s) · $done/$total $status';
  }

  @override
  String get stopsTypeDrop => 'Dépose';

  @override
  String get stopsTypePick => 'Ramassage';

  @override
  String stopsUndoCount(Object count) {
    return 'Annuler ($count)';
  }

  @override
  String get stopsUndoTooltip => 'Annuler la dépose/le ramassage';

  @override
  String get tripConfirmCancel => 'Annuler';

  @override
  String get tripConfirmOk => 'OK';

  @override
  String get tripConfirmTitle => 'Traqueur';

  @override
  String get tripErrorLocationRequired => 'L\'autorisation de localisation est requise pour démarrer un trajet.';

  @override
  String get homeMenuPostCrashReporting => 'Rapport post-accident';

  @override
  String homeVehicleReason(Object reason) {
    return 'Raison : $reason';
  }

  @override
  String homeVehicleStatus(Object status) {
    return 'Statut : $status';
  }

  @override
  String crashLocationPickerCoords(Object lat, Object lng) {
    return 'Lat : $lat, Lng : $lng';
  }

  @override
  String get crashLocationPickerSearchHint => 'Rechercher un emplacement (ex: Rue du Marché)';

  @override
  String get crashLocationPickerTitle => 'Sélectionner l\'emplacement sur la carte';

  @override
  String get crashLocationPickerTooltip => 'Confirmer l\'emplacement';

  @override
  String get incidentDashboardDescription => 'Sélectionnez une action pour procéder à la gestion de l\'incident ou afficher les rapports passés.';

  @override
  String get incidentDashboardHeadline => 'Signalement d\'incident post-accident';

  @override
  String get incidentDashboardLogNew => 'Enregistrer un nouvel accident';

  @override
  String get incidentDashboardLogNewSubtitle => 'Lancer un nouveau rapport d\'accident étape par étape';

  @override
  String get incidentDashboardTitle => 'Incident post-accident';

  @override
  String get incidentDashboardViewHistory => 'Voir l\'historique';

  @override
  String get incidentDashboardViewHistorySubtitle => 'Voir les rapports d\'accidents précédents et leur statut';

  @override
  String get incidentDetailsAdminLetter => 'Lettre administrative';

  @override
  String get incidentDetailsAlcoholCountdown => 'Compte à rebours du test d\'alcoolémie DOT (limite de 2 heures)';

  @override
  String get incidentDetailsBranchId => 'ID de la succursale';

  @override
  String get incidentDetailsBusPlate => 'Plaque d\'immatriculation du bus';

  @override
  String incidentDetailsCitationImpact(Object explanation) {
    return 'Impact de l\'infraction : $explanation';
  }

  @override
  String get incidentDetailsCitationIssued => 'Contravention émise au conducteur';

  @override
  String incidentDetailsCoordinates(Object lat, Object lng) {
    return 'Coordonnées : Lat $lat, Lng $lng';
  }

  @override
  String incidentDetailsCopiedToClipboard(Object title) {
    return '$title copié dans le presse-papiers !';
  }

  @override
  String get incidentDetailsCopyToClipboard => 'Copier dans le presse-papiers';

  @override
  String get incidentDetailsCrashCitationInfo => 'Infos sur l\'accident et les contraventions';

  @override
  String incidentDetailsDateTime(Object dateTime) {
    return 'Date et heure : $dateTime';
  }

  @override
  String get incidentDetailsDoeReport => 'Rapport DOE';

  @override
  String get incidentDetailsDoeReportTitle => 'Rapport DOE de l\'État (facultatif)';

  @override
  String get incidentDetailsDriverNotes => 'Notes du conducteur :';

  @override
  String get incidentDetailsDriverUserId => 'ID utilisateur du conducteur';

  @override
  String get incidentDetailsDrugCountdown => 'Compte à rebours du test de dépistage de drogues DOT (limite de 8 heures)';

  @override
  String get incidentDetailsFatalityOccurred => 'Décès survenu';

  @override
  String incidentDetailsHeaderTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentDetailsInjuriesMedTreatment => 'Blessures nécessitant un traitement médical';

  @override
  String get incidentDetailsLawEnforcement => 'Organisme chargé de l\'application de la loi';

  @override
  String get incidentDetailsLoadFailed => 'Échec du chargement des détails.';

  @override
  String incidentDetailsLocation(Object location) {
    return 'Emplacement : $location';
  }

  @override
  String get incidentDetailsMediaAttachments => 'Pièces jointes multimédias';

  @override
  String incidentDetailsMediaStatus(Object status) {
    return 'Statut : $status';
  }

  @override
  String get incidentDetailsNo => 'Non';

  @override
  String get incidentDetailsNoMediaAttachments => 'Aucune photo ou vidéo jointe.';

  @override
  String get incidentDetailsNoStudentsOnboard => 'Aucun étudiant n\'a été marqué à bord lors de l\'incident.';

  @override
  String get incidentDetailsNotificationsDesc => 'Générez des rapports de notification et envoyez des lettres types aux superviseurs du district ou à l\'administration.';

  @override
  String get incidentDetailsNotificationsTitle => 'Notifications de transmission';

  @override
  String get incidentDetailsOfficer => 'Détails de l\'agent';

  @override
  String get incidentDetailsPoliceReport => 'Numéro du rapport de police';

  @override
  String get incidentDetailsPrePopulatedLetter => 'Lettre de transmission pré-remplie :';

  @override
  String get incidentDetailsRegulatoryBasis => 'Base réglementaire :';

  @override
  String get incidentDetailsRouteId => 'ID de l\'itinéraire';

  @override
  String get incidentDetailsSchoolAdminTitle => 'Notification à l\'administration de l\'école';

  @override
  String get incidentDetailsStatusPending => 'En attente';

  @override
  String incidentDetailsStudentDetails(Object notes) {
    return 'Détails : $notes';
  }

  @override
  String get incidentDetailsStudentInjured => 'Blessé';

  @override
  String get incidentDetailsStudentNoInjury => 'Aucune blessure';

  @override
  String incidentDetailsStudentSeverity(Object severity) {
    return 'Gravité : $severity';
  }

  @override
  String incidentDetailsStudentTransportedTo(Object facility) {
    return 'Transporté à : $facility';
  }

  @override
  String incidentDetailsStudentsOnboard(Object count) {
    return 'Étudiants à bord ($count)';
  }

  @override
  String get incidentDetailsTestingRequiredTitle => 'Test post-accident DOT requis';

  @override
  String incidentDetailsTimerStatus(Object status) {
    return 'Statut : $status';
  }

  @override
  String get incidentDetailsTitle => 'Détails de l\'incident';

  @override
  String get incidentDetailsVehicleTowed => 'Véhicule remorqué';

  @override
  String get incidentDetailsYes => 'Oui';

  @override
  String get incidentHistoryEmpty => 'Aucun journal d\'incident enregistré pour ce véhicule.';

  @override
  String incidentHistoryFailed(Object error) {
    return 'Échec de la récupération des journaux : $error';
  }

  @override
  String incidentHistoryItemSubtitle(Object busNumber, Object testingStatus, Object time) {
    return 'Heure : $time Bus : $busNumber Test : $testingStatus';
  }

  @override
  String incidentHistoryItemTitle(Object id) {
    return 'Incident #$id';
  }

  @override
  String get incidentHistoryTestingNotRequired => 'Non requis';

  @override
  String get incidentHistoryTestingRequired => 'Requis';

  @override
  String get incidentHistoryTitle => 'Registre des incidents post-accident';

  @override
  String get incidentIntakeAddAnotherPhoto => 'Ajouter une autre photo';

  @override
  String get incidentIntakeBadgeNumberError => 'Requis';

  @override
  String get incidentIntakeBadgeNumberLabel => 'Numéro de badge*';

  @override
  String incidentIntakeBus(Object busNumber) {
    return 'Numéro de bus : $busNumber';
  }

  @override
  String get incidentIntakeCaptureScenePhoto => 'Capturer une photo de la scène de l\'incident';

  @override
  String get incidentIntakeCitationSubtitle => 'Une contravention pour infraction au code de la route a-t-elle été émise au conducteur du bus scolaire ?';

  @override
  String get incidentIntakeCitationTitle => 'Contravention émise ?';

  @override
  String get incidentIntakeDateTimeLabel => 'Date et heure de l\'accident*';

  @override
  String get incidentIntakeDotTestingNotRequired => 'Test DOT NON requis';

  @override
  String get incidentIntakeDotTestingRequired => 'Test DOT requis';

  @override
  String incidentIntakeDriver(Object driverName) {
    return 'Conducteur : $driverName';
  }

  @override
  String get incidentIntakeDriverNotesHint => 'Entrez toutes notes supplémentaires concernant la collision...';

  @override
  String get incidentIntakeDriverNotesTitle => 'Notes du conducteur sur l\'incident';

  @override
  String incidentIntakeErrorRoutePassengers(Object error) {
    return 'Échec du chargement des passagers de l\'itinéraire : $error';
  }

  @override
  String get incidentIntakeEvidenceTitle => 'Joindre des preuves (Photos) *';

  @override
  String get incidentIntakeFatalitySubtitle => 'Des décès sont-ils survenus à la suite de cet accident ?';

  @override
  String get incidentIntakeFatalityTitle => 'Décès survenu ?';

  @override
  String get incidentIntakeGpsLabel => 'Coordonnées GPS*';

  @override
  String get incidentIntakeHistoryTooltip => 'Voir l\'historique';

  @override
  String get incidentIntakeInjuriesSubtitle => 'Quelqu\'un a-t-il subi une blessure physique nécessitant un traitement médical immédiat loin des lieux ?';

  @override
  String get incidentIntakeInjuriesTitle => 'Blessures nécessitant un traitement médical ?';

  @override
  String get incidentIntakeInjuryNotesError => 'Les notes sur les blessures sont obligatoires pour les étudiants blessés';

  @override
  String get incidentIntakeInjuryNotesLabel => 'Notes / détails sur la blessure (obligatoire) *';

  @override
  String get incidentIntakeInjurySeverityLabel => 'Gravité de la blessure *';

  @override
  String get incidentIntakeLawEnforcementAgencyError => 'Veuillez entrer l\'organisme chargé de l\'application de la loi';

  @override
  String get incidentIntakeLawEnforcementAgencyLabel => 'Organisme chargé de l\'application de la loi (ex. Patrouille routière de l\'État)*';

  @override
  String get incidentIntakeLawEnforcementTitle => 'Application de la loi et rapport de police';

  @override
  String get incidentIntakeLocationDescError => 'Veuillez entrer la description de l\'emplacement';

  @override
  String get incidentIntakeLocationDescLabel => 'Description de l\'emplacement (ex. Rue du Marché & 5ème Avenue) *';

  @override
  String get incidentIntakeMedicalFacilityLabel => 'Installation médicale transportée à';

  @override
  String get incidentIntakeNoMatchingStudents => 'Aucun étudiant correspondant.';

  @override
  String get incidentIntakeNoStudentsFound => 'Aucun étudiant trouvé.';

  @override
  String get incidentIntakeNoStudentsOnboard => 'Aucun étudiant à bord, veuillez appuyer sur SUIVANT pour continuer.';

  @override
  String get incidentIntakeNoStudentsRoute => 'Aucun étudiant inscrit pour cet itinéraire.';

  @override
  String get incidentIntakeOfficerNameError => 'Veuillez entrer le nom de l\'agent.';

  @override
  String get incidentIntakeOfficerNameLabel => 'Nom de l\'agent*';

  @override
  String get incidentIntakePoliceReportNumberError => 'Veuillez entrer le numéro du rapport de police';

  @override
  String get incidentIntakePoliceReportNumberLabel => 'Numéro du rapport de police *';

  @override
  String incidentIntakeRoute(Object routeName) {
    return 'Itinéraire : $routeName';
  }

  @override
  String get incidentIntakeRouteDriverInfo => 'Informations sur l\'itinéraire et le conducteur';

  @override
  String get incidentIntakeSearchInjuredHint => 'Rechercher un enfant blessé...';

  @override
  String get incidentIntakeSearchStudentHint => 'Rechercher un étudiant...';

  @override
  String get incidentIntakeSelectAll => 'Sélectionner tous les étudiants';

  @override
  String get incidentIntakeSelectOnMap => 'Sélectionner sur la carte';

  @override
  String get incidentIntakeSeverityFatal => 'Mortel';

  @override
  String get incidentIntakeSeverityMinor => 'Mineur';

  @override
  String get incidentIntakeSeverityModerate => 'Modéré';

  @override
  String get incidentIntakeSeveritySevere => 'Grave';

  @override
  String get incidentIntakeSeverityTitle => 'Variables de gravité de l\'accident';

  @override
  String incidentIntakeStudentId(Object id) {
    return 'ID : $id';
  }

  @override
  String get incidentIntakeSubmitButton => 'Soumettre le rapport';

  @override
  String get incidentIntakeTitle => 'Prise en charge de l\'incident post-accident';

  @override
  String get incidentIntakeTowedSubtitle => 'Un véhicule a-t-il subi des dommages invalidants nécessitant qu\'il soit remorqué depuis les lieux ?';

  @override
  String get incidentIntakeTowedTitle => 'Véhicule remorqué ?';

  @override
  String get incidentIntakeWasInjured => 'A été blessé(e) ?';

  @override
  String dvirPreTripBusLabel(Object busNumber) {
    return 'Bus : $busNumber';
  }

  @override
  String get dvirPreTripClose => 'Fermer';

  @override
  String get dvirPreTripDriverCommentsLabel => 'Commentaires / notes du conducteur (facultatif)';

  @override
  String get dvirPreTripNoComments => 'Aucun commentaire ajouté.';

  @override
  String dvirPreTripReasonLabel(Object reason) {
    return 'Raison : $reason';
  }

  @override
  String dvirPreTripRouteLabel(Object routeName) {
    return 'Itinéraire : $routeName';
  }

  @override
  String get dvirPreTripSigCaptured => 'Signature capturée avec succès.';

  @override
  String get dvirPreTripSigMissing => 'La signature est manquante.';

  @override
  String get dvirPreTripSignDefectWarning => 'Veuillez signer pour vérifier la réparation des défauts précédents.';

  @override
  String get dvirPreTripStepSignOff => 'Signer';

  @override
  String get dvirPreTripStepSubmit => 'Soumettre';

  @override
  String get dvirPreTripStepVerify => 'Vérifier';

  @override
  String get dvirPreTripTapNext => 'Veuillez appuyer sur SUIVANT pour continuer.';

  @override
  String get dvirPreTripVehicleOutOfService => 'Le véhicule est hors service';

  @override
  String get dvirPreTripVehicleReady => 'Le véhicule est prêt pour le service';

  @override
  String get dvirPreTripVerifiedRepairStatus => 'Statut de réparation vérifié :';

  @override
  String get dvirPreTripVerifyCheckWarning => 'Veuillez vérifier que tous les défauts signalés ont été réparés en cochant la case à côté de chaque défaut.';

  @override
  String get dvirPreTripYourComments => 'Vos commentaires :';

  @override
  String get countryPickerNoCountries => 'Aucun pays trouvé';

  @override
  String get countryPickerSearchHint => 'Rechercher par nom de pays, code ou indicatif...';

  @override
  String get countryPickerTitle => 'Sélectionnez le pays';

  @override
  String get mapDefaultStop => 'Arrêt';

  @override
  String get mapEndLocation => 'Lieu d\'arrivée';

  @override
  String get mapStartLocation => 'Lieu de départ';

  @override
  String get stopsNoChangesToUndo => 'Aucune modification disponible à annuler.';

  @override
  String get stopsNoStopsAvailable => 'Aucun arrêt disponible.';

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
