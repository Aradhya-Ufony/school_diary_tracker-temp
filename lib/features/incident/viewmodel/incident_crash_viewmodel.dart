import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import '../../../core/di/providers.dart';
import '../../../core/services/gps_capture_service.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/utils/image_utils.dart';
import '../../../data/models/incident_crash_models.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/user_role.dart';
import '../../../data/repositories/incident_crash_repository.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../../home/viewmodel/home_viewmodel.dart';

class IncidentCrashFormState {
  final bool isLoading;
  final String? error;
  
  // Roster of students on the route
  final List<IncidentCrashStudent> selectedStudents;
  final List<IncidentCrashEvidence> evidences;

  // Selected Route & Bus context
  final RouteResponse? activeRoute;
  final UserRole? currentUser;

  // Saved Log (from server response)
  final IncidentCrashLog? submittedLog;

  IncidentCrashFormState({
    this.isLoading = false,
    this.error,
    this.selectedStudents = const [],
    this.evidences = const [],
    this.activeRoute,
    this.currentUser,
    this.submittedLog,
  });

  IncidentCrashFormState copyWith({
    bool? isLoading,
    String? error,
    List<IncidentCrashStudent>? selectedStudents,
    List<IncidentCrashEvidence>? evidences,
    RouteResponse? activeRoute,
    UserRole? currentUser,
    IncidentCrashLog? submittedLog,
  }) {
    return IncidentCrashFormState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedStudents: selectedStudents ?? this.selectedStudents,
      evidences: evidences ?? this.evidences,
      activeRoute: activeRoute ?? this.activeRoute,
      currentUser: currentUser ?? this.currentUser,
      submittedLog: submittedLog ?? this.submittedLog,
    );
  }
}

class IncidentCrashViewModel extends StateNotifier<IncidentCrashFormState> {
  final IncidentCrashRepository _repository;
  final LocalStorageService _storage;
  final Ref _ref;
  final GPSCaptureService _gpsCaptureService = GPSCaptureService();

  // Intake Form controller instances/values
  DateTime crashTimestamp = DateTime.now();
  final locationDescriptionController = TextEditingController();
  final lawEnforcementAgencyController = TextEditingController();
  final officerNameController = TextEditingController();
  final badgeNumberController = TextEditingController();
  final policeReportNumberController = TextEditingController();
  final driverNotesController = TextEditingController();

  double latitude = 0.0;
  double longitude = 0.0;
  bool hasFatalities = false;
  bool hasInjuriesRequiringMedicalTreatment = false;
  bool isVehicleTowed = false;
  bool wasCitationIssued = false;

  // Ticking controller
  Timer? _timer;

  IncidentCrashViewModel(this._repository, this._storage, this._ref)
      : super(IncidentCrashFormState()) {
    _initializeContext();
  }

  void _initializeContext() {
    final user = _ref.read(authRepositoryProvider).getCurrentUser();
    final homeState = _ref.read(homeViewModelProvider);
    final routeIdStr = _storage.getString(StorageKeys.ROUTE_ID);
    
    RouteResponse? activeRoute;
    if (routeIdStr != null && homeState.allRoutes.isNotEmpty) {
      final routeId = int.tryParse(routeIdStr);
      if (routeId != null) {
        try {
          activeRoute = homeState.allRoutes.firstWhere((r) => r.id == routeId);
        } catch (_) {}
      }
    }
    
    if (activeRoute == null && homeState.allRoutes.isNotEmpty) {
      activeRoute = homeState.allRoutes.first;
    }

    state = state.copyWith(
      currentUser: user,
      activeRoute: activeRoute,
    );

    captureLocation();
  }

  Future<void> captureLocation() async {
    state = state.copyWith(isLoading: true);
    final gpsResult = await _gpsCaptureService.captureLocation();
    if (gpsResult.isSuccess) {
      latitude = gpsResult.latitude;
      longitude = gpsResult.longitude;
      state = state.copyWith(isLoading: false);
    } else {
      state = state.copyWith(
        isLoading: false,
        error: gpsResult.errorMessage ?? 'Failed to lock GPS position',
      );
    }
  }

  void setFatalities(bool value) {
    hasFatalities = value;
    state = state.copyWith(); // trigger UI rebuild
  }

  void setInjuries(bool value) {
    hasInjuriesRequiringMedicalTreatment = value;
    state = state.copyWith();
  }

  void setVehicleTowed(bool value) {
    isVehicleTowed = value;
    state = state.copyWith();
  }

  void setCitationIssued(bool value) {
    wasCitationIssued = value;
    state = state.copyWith();
  }

  void toggleStudentSelection(int childId, String childName) {
    final list = List<IncidentCrashStudent>.from(state.selectedStudents);
    final index = list.indexWhere((s) => s.childId == childId);
    if (index >= 0) {
      list.removeAt(index);
    } else {
      list.add(IncidentCrashStudent(
        childId: childId,
        childName: childName,
        wasInjured: false,
      ));
    }
    state = state.copyWith(selectedStudents: list);
  }

  void updateStudentInjury(int childId, {required bool wasInjured, String? severity, String? facility, String? notes}) {
    final list = state.selectedStudents.map((s) {
      if (s.childId == childId) {
        return IncidentCrashStudent(
          childId: s.childId,
          childName: s.childName,
          wasInjured: wasInjured,
          injurySeverity: severity ?? s.injurySeverity,
          medicalFacilityTransportedTo: facility ?? s.medicalFacilityTransportedTo,
          notes: notes ?? s.notes,
        );
      }
      return s;
    }).toList();
    state = state.copyWith(selectedStudents: list);
  }

  Future<void> captureEvidencePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera, imageQuality: 85);
    if (pickedFile != null) {
      final base64 = await fileToBase64(pickedFile.path);
      if (base64 != null) {
        final evidence = IncidentCrashEvidence(
          stream: 'data:image/jpeg;base64,$base64',
          fileName: pickedFile.name,
          mediaType: 'Photo',
          localFilePath: pickedFile.path,
        );
        state = state.copyWith(evidences: [...state.evidences, evidence]);
      }
    }
  }

  void removeEvidence(int index) {
    final list = List<IncidentCrashEvidence>.from(state.evidences);
    list.removeAt(index);
    state = state.copyWith(evidences: list);
  }

  Future<bool> submitCrashReport() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = state.currentUser;
      final route = state.activeRoute;
      
      final crashLog = IncidentCrashLog(
        crashTimestamp: crashTimestamp,
        schoolBranchId: 1001, // Default matching specs payload
        routeId: route?.id ?? 0,
        schoolBusId: route?.vehicleId ?? 0,
        busNumber: route?.vehicleLicenseNumber ?? 'UNKNOWN',
        driverUserId: user?.id ?? 0,
        latitude: latitude,
        longitude: longitude,
        locationDescription: locationDescriptionController.text.trim(),
        hasFatalities: hasFatalities,
        hasInjuriesRequiringMedicalTreatment: hasInjuriesRequiringMedicalTreatment,
        isVehicleTowed: isVehicleTowed,
        wasCitationIssued: wasCitationIssued,
        lawEnforcementAgency: lawEnforcementAgencyController.text.trim(),
        officerName: officerNameController.text.trim(),
        badgeNumber: badgeNumberController.text.trim(),
        policeReportNumber: policeReportNumberController.text.trim(),
        driverNotes: driverNotesController.text.trim(),
        students: state.selectedStudents,
        evidences: state.evidences,
      );

      final result = await _repository.logIncident(crashLog);
      state = state.copyWith(isLoading: false, submittedLog: result);
      startTimerTicks(result.id!);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
      return false;
    }
  }

  void startTimerTicks(int incidentId) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final log = state.submittedLog;
      if (log == null) return;

      // Update remaining minutes locally
      final updatedAlcMin = (log.alcoholMinutesRemaining != null && log.alcoholMinutesRemaining! > 0)
          ? log.alcoholMinutesRemaining! - (1 / 60)
          : 0.0;
      final updatedDrugMin = (log.drugMinutesRemaining != null && log.drugMinutesRemaining! > 0)
          ? log.drugMinutesRemaining! - (1 / 60)
          : 0.0;

      // Periodic fetch details from server every 30 seconds
      if (timer.tick % 30 == 0) {
        try {
          final refreshedLog = await _repository.getIncidentDetails(incidentId);
          state = state.copyWith(submittedLog: refreshedLog);
        } catch (_) {}
      } else {
        state = state.copyWith(
          submittedLog: IncidentCrashLog(
            id: log.id,
            crashTimestamp: log.crashTimestamp,
            schoolBranchId: log.schoolBranchId,
            schoolBranchName: log.schoolBranchName,
            routeId: log.routeId,
            routeName: log.routeName,
            schoolBusId: log.schoolBusId,
            busNumber: log.busNumber,
            driverUserId: log.driverUserId,
            driverName: log.driverName,
            driverPhone: log.driverPhone,
            latitude: log.latitude,
            longitude: log.longitude,
            locationDescription: log.locationDescription,
            crashType: log.crashType,
            hasFatalities: log.hasFatalities,
            hasInjuriesRequiringMedicalTreatment: log.hasInjuriesRequiringMedicalTreatment,
            isVehicleTowed: log.isVehicleTowed,
            wasCitationIssued: log.wasCitationIssued,
            lawEnforcementAgency: log.lawEnforcementAgency,
            officerName: log.officerName,
            badgeNumber: log.badgeNumber,
            policeReportNumber: log.policeReportNumber,
            driverNotes: log.driverNotes,
            students: log.students,
            evidences: log.evidences,
            attachments: log.attachments,
            requiresAlcoholTest: log.requiresAlcoholTest,
            requiresDrugTest: log.requiresDrugTest,
            alcoholTestDeadline: log.alcoholTestDeadline,
            drugTestDeadline: log.drugTestDeadline,
            alcoholTestStatus: log.alcoholTestStatus,
            drugTestStatus: log.drugTestStatus,
            status: log.status,
            regulatoryBasis: log.regulatoryBasis,
            citationImpactExplanation: log.citationImpactExplanation,
            alcoholDeadlineUrgency: log.alcoholDeadlineUrgency,
            drugDeadlineUrgency: log.drugDeadlineUrgency,
            alcoholMinutesRemaining: updatedAlcMin,
            drugMinutesRemaining: updatedDrugMin,
          ),
        );
      }
    });
  }

  Future<void> fetchSubmittedLogDetails(int incidentId) async {
    state = state.copyWith(isLoading: true);
    try {
      final log = await _repository.getIncidentDetails(incidentId);
      state = state.copyWith(isLoading: false, submittedLog: log);
      startTimerTicks(incidentId);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    locationDescriptionController.dispose();
    lawEnforcementAgencyController.dispose();
    officerNameController.dispose();
    badgeNumberController.dispose();
    policeReportNumberController.dispose();
    driverNotesController.dispose();
    super.dispose();
  }
}

final incidentCrashViewModelProvider =
    StateNotifierProvider.autoDispose<IncidentCrashViewModel, IncidentCrashFormState>((ref) {
  return IncidentCrashViewModel(
    ref.watch(incidentCrashRepositoryProvider),
    ref.watch(localStorageServiceProvider),
    ref,
  );
});

final incidentHistoryProvider = FutureProvider.family<List<IncidentCrashLog>, int>((ref, busId) async {
  return ref.watch(incidentCrashRepositoryProvider).getIncidentLogsForBus(busId);
});
