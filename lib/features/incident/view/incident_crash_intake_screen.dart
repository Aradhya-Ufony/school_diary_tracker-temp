import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/camera/camera_capture_screen.dart';
import '../../../core/di/providers.dart';
import '../../../core/services/dot_decision_matrix.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/child_with_guardians.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/incident_crash_viewmodel.dart';
import 'crash_location_picker_screen.dart';

final routeStudentsProvider = FutureProvider.autoDispose<List<ChildWithGuardians>>((ref) async {
  final activeRoute = ref.watch(incidentCrashViewModelProvider.select((s) => s.activeRoute));
  if (activeRoute == null) return [];
  return ref.read(childrenRepositoryProvider).getChildren(activeRoute.id);
});

class IncidentCrashIntakeScreen extends ConsumerStatefulWidget {
  const IncidentCrashIntakeScreen({super.key});

  @override
  ConsumerState<IncidentCrashIntakeScreen> createState() => _IncidentCrashIntakeScreenState();
}

class _IncidentCrashIntakeScreenState extends ConsumerState<IncidentCrashIntakeScreen> {
  int _currentStep = 0;
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final _formKeyInjury = GlobalKey<FormState>();
  final _formKey4 = GlobalKey<FormState>();

  String _onboardSearchQuery = '';
  String _injurySearchQuery = '';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(incidentCrashViewModelProvider);
    final vm = ref.read(incidentCrashViewModelProvider.notifier);
    final studentsAsync = ref.watch(routeStudentsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.incidentIntakeTitle),
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // Step Progress Indicator (Unified, non-breaking line)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  color: Colors.grey.shade50,
                  child: Row(
                    children: [
                      _buildStepCircle(0),
                      Expanded(child: _buildLine(0)),
                      _buildStepCircle(1),
                      Expanded(child: _buildLine(1)),
                      _buildStepCircle(2),
                      Expanded(child: _buildLine(2)),
                      _buildStepCircle(3),
                      Expanded(child: _buildLine(3)),
                      _buildStepCircle(4),
                    ],
                  ),
                ),

                Expanded(
                  child: IndexedStack(

                    index: _currentStep,
                    children: [
                      _buildStep1(vm, state, l10n),
                      _buildStep2(vm, state, l10n),
                      _buildStep3Onboard(vm, state, studentsAsync, l10n),
                      _buildStep4Injury(vm, state, l10n),
                      _buildStep5Evidence(vm, state, l10n),
                    ],
                  ),
                ),

                // Bottom Navigation Buttons
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -2))
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (_currentStep > 0)
                        OutlinedButton(
                          onPressed: () {
                            setState(() {
                              _currentStep--;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(100, 48),
                          ),
                          child: Text(l10n.genericBack),
                        )
                      else
                        const SizedBox.shrink(),
                      ElevatedButton(
                        onPressed: () => _handleNext(vm, state),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: _currentStep == 4 ? AppColors.PRIMARY_DARK : AppColors.PRIMARY,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(120, 48),
                        ),
                        child: Text(
                          _currentStep == 4 ? l10n.incidentIntakeSubmitButton : l10n.genericNext,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildStepCircle(int index) {
    final isCompleted = _currentStep > index;
    final isCurrent = _currentStep == index;
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCompleted
            ? Colors.green
            : (isCurrent ? AppColors.PRIMARY : Colors.grey.shade300),
      ),
      child: Center(
        child: isCompleted
            ? const Icon(Icons.check, color: Colors.white, size: 18)
            : Text(
                '${index + 1}',
                style: TextStyle(
                  color: isCurrent || isCompleted ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }

  Widget _buildLine(int index) {
    return Container(
      height: 2,
      color: _currentStep > index ? Colors.green : Colors.grey.shade300,
    );
  }

  void _handleNext(IncidentCrashViewModel vm, IncidentCrashFormState state) async {
    if (_currentStep == 0) {
      if (_formKey1.currentState?.validate() ?? false) {
        setState(() {
          _currentStep++;
        });
      }
    } else if (_currentStep == 1) {
      if (_formKey2.currentState?.validate() ?? false) {
        setState(() {
          _currentStep++;
        });
      }
    } else if (_currentStep == 2) {
      setState(() {
        _currentStep++;
      });
    } else if (_currentStep == 3) {
      if (_formKeyInjury.currentState?.validate() ?? false) {
        setState(() {
          _currentStep++;
        });
      }
    } else if (_currentStep == 4) {
      if (_formKey4.currentState?.validate() ?? false) {
        final success = await vm.submitCrashReport();
        if (success && mounted) {
          await showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (dialogContext) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              contentPadding: const EdgeInsets.all(24),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDCFCE7),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.check_circle_outline, color: Color(0xFF16A34A), size: 36),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Report Submitted',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'The post-crash incident report has been submitted successfully.',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.PRIMARY,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                        context.go(Constants.INCIDENT_INTAKE_ROUTE);
                      },
                      child: const Text(
                        'Return to Dashboard',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (mounted) {
          final err = ref.read(incidentCrashViewModelProvider).error ?? 'Failed to submit report. Please try again.';
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(err),
              backgroundColor: Colors.red.shade700,
              behavior: SnackBarBehavior.floating,
            ),
          );
        }
      }
    }


  }

  Widget _buildStep1(IncidentCrashViewModel vm, IncidentCrashFormState state, AppLocalizations l10n) {
    return Form(
      key: _formKey1,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.incidentIntakeRouteDriverInfo,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.PRIMARY_DARK),
                  ),
                  const Divider(),
                  Text(l10n.incidentIntakeRoute(state.activeRoute?.name ?? "N/A")),
                  const SizedBox(height: 6),
                  Text(l10n.incidentIntakeBus(state.activeRoute?.vehicleLicenseNumber ?? "N/A")),
                  const SizedBox(height: 6),
                  Text(l10n.incidentIntakeDriver(state.currentUser?.fullName ?? "N/A")),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          InkWell(
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: vm.crashTimestamp,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
              );
              if (date == null) return;
              if (!mounted) return;
              final time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(vm.crashTimestamp),
              );
              if (time == null) return;
              setState(() {
                vm.crashTimestamp = DateTime(
                  date.year,
                  date.month,
                  date.day,
                  time.hour,
                  time.minute,
                );
              });
            },
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: l10n.incidentIntakeDateTimeLabel,
                border: const OutlineInputBorder(),
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              child: Text(
                '${vm.crashTimestamp.toLocal().year}-${vm.crashTimestamp.toLocal().month.toString().padLeft(2, '0')}-${vm.crashTimestamp.toLocal().day.toString().padLeft(2, '0')} ${vm.crashTimestamp.toLocal().hour.toString().padLeft(2, '0')}:${vm.crashTimestamp.toLocal().minute.toString().padLeft(2, '0')}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: InputDecorator(
                  decoration: InputDecoration(
                    labelText: l10n.incidentIntakeGpsLabel,
                    border: const OutlineInputBorder(),
                  ),
                  child: Text(
                    '${vm.latitude.toStringAsFixed(6)}, ${vm.longitude.toStringAsFixed(6)}',
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton.icon(
                onPressed: () async {
                  final result = await Navigator.push<LatLng>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CrashLocationPickerScreen(
                        initialLocation: LatLng(vm.latitude, vm.longitude),
                      ),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      vm.latitude = result.latitude;
                      vm.longitude = result.longitude;
                    });
                  }
                },
                icon: const Icon(Icons.map, size: 16,color: Colors.white),
                label: Text(
                  l10n.incidentIntakeSelectOnMap,
                  style: const TextStyle(
                    fontSize: 16
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: vm.locationDescriptionController,
            decoration: InputDecoration(
              labelText: l10n.incidentIntakeLocationDescLabel,
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return l10n.incidentIntakeLocationDescError;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStep2(IncidentCrashViewModel vm, IncidentCrashFormState state, AppLocalizations l10n) {
    return Form(
      key: _formKey2,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            l10n.incidentIntakeSeverityTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            title: Text(l10n.incidentIntakeFatalityTitle),
            subtitle: Text(l10n.incidentIntakeFatalitySubtitle),
            value: vm.hasFatalities,
            onChanged: vm.setFatalities,
            activeColor: Colors.red,
          ),
          SwitchListTile(
            title: Text(l10n.incidentIntakeInjuriesTitle),
            subtitle: Text(l10n.incidentIntakeInjuriesSubtitle),
            value: vm.hasInjuriesRequiringMedicalTreatment,
            onChanged: vm.setInjuries,
            activeColor: Colors.orange,
          ),
          SwitchListTile(
            title: Text(l10n.incidentIntakeTowedTitle),
            subtitle: Text(l10n.incidentIntakeTowedSubtitle),
            value: vm.isVehicleTowed,
            onChanged: vm.setVehicleTowed,
            activeColor: Colors.amber,
          ),
          SwitchListTile(
            title: Text(l10n.incidentIntakeCitationTitle),
            subtitle: Text(l10n.incidentIntakeCitationSubtitle),
            value: vm.wasCitationIssued,
            onChanged: vm.setCitationIssued,
            activeColor: Colors.amber,
          ),
          const Divider(height: 32),
          Text(
            l10n.incidentIntakeLawEnforcementTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: vm.lawEnforcementAgencyController,
            decoration: InputDecoration(
              labelText: l10n.incidentIntakeLawEnforcementAgencyLabel,
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return l10n.incidentIntakeLawEnforcementAgencyError;
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: vm.officerNameController,
                  decoration: InputDecoration(
                    labelText: l10n.incidentIntakeOfficerNameLabel,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return l10n.incidentIntakeOfficerNameError;
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextFormField(
                  controller: vm.badgeNumberController,
                  decoration: InputDecoration(
                    labelText: l10n.incidentIntakeBadgeNumberLabel,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return l10n.incidentIntakeBadgeNumberError;
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: vm.policeReportNumberController,
            decoration: InputDecoration(
              labelText: l10n.incidentIntakePoliceReportNumberLabel,
              border: const OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return l10n.incidentIntakePoliceReportNumberError;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStep3Onboard(
      IncidentCrashViewModel vm,
      IncidentCrashFormState state,
      AsyncValue<List<ChildWithGuardians>> studentsAsync,
      AppLocalizations l10n) {
    return studentsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, s) => Center(child: Text(l10n.incidentIntakeErrorRoutePassengers(e.toString()))),
      data: (students) {
        if (students.isEmpty) {
          return Center(child: Text(l10n.incidentIntakeNoStudentsRoute));
        }

        // 1. Sort alphabetically by full name
        final sortedStudents = List<ChildWithGuardians>.from(students)
          ..sort((a, b) => a.fullName.toLowerCase().compareTo(b.fullName.toLowerCase()));

        // 2. Filter by search query
        final filteredStudents = sortedStudents
            .where((s) => s.fullName.toLowerCase().contains(_onboardSearchQuery.toLowerCase()))
            .toList();

        final allSelected = filteredStudents.isNotEmpty &&
            filteredStudents.every((s) => state.selectedStudents.any((sel) => sel.childId == s.id));

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: l10n.incidentIntakeSearchStudentHint,
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
                onChanged: (val) {
                  setState(() {
                    _onboardSearchQuery = val;
                  });
                },
              ),
            ),
            CheckboxListTile(
              title: Text(l10n.incidentIntakeSelectAll, style: const TextStyle(fontWeight: FontWeight.bold)),
              value: allSelected,
              onChanged: (val) {
                if (val == true) {
                  // Select all filtered students
                  for (final s in filteredStudents) {
                    final isAlreadySelected = state.selectedStudents.any((sel) => sel.childId == s.id);
                    if (!isAlreadySelected) {
                      vm.toggleStudentSelection(s.id, s.fullName);
                    }
                  }
                } else {
                  // Deselect all filtered students
                  for (final s in filteredStudents) {
                    final isSelected = state.selectedStudents.any((sel) => sel.childId == s.id);
                    if (isSelected) {
                      vm.toggleStudentSelection(s.id, s.fullName);
                    }
                  }
                }
              },
            ),
            const Divider(),
            Expanded(
              child: filteredStudents.isEmpty
                  ? Center(child: Text(l10n.incidentIntakeNoStudentsFound))
                  : ListView.builder(
                      itemCount: filteredStudents.length,
                      itemBuilder: (context, index) {
                        final student = filteredStudents[index];
                        final isSelected = state.selectedStudents.any((s) => s.childId == student.id);
                        return CheckboxListTile(
                          title: Text(student.fullName),
                          subtitle: Text(l10n.incidentIntakeStudentId(student.id)),
                          value: isSelected,
                          onChanged: (_) {
                            vm.toggleStudentSelection(student.id, student.fullName);
                          },
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildStep4Injury(IncidentCrashViewModel vm, IncidentCrashFormState state, AppLocalizations l10n) {
    if (state.selectedStudents.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            l10n.incidentIntakeNoStudentsOnboard,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      );
    }

    // Filter by search query
    final filteredOnboard = state.selectedStudents
        .where((s) => (s.childName ?? '').toLowerCase().contains(_injurySearchQuery.toLowerCase()))
        .toList();

    return Form(
      key: _formKeyInjury,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: l10n.incidentIntakeSearchInjuredHint,
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
              onChanged: (val) {
                setState(() {
                  _injurySearchQuery = val;
                });
              },
            ),
          ),
          const Divider(),
          Expanded(
            child: filteredOnboard.isEmpty
                ? Center(child: Text(l10n.incidentIntakeNoMatchingStudents))
                : ListView.builder(
                    itemCount: filteredOnboard.length,
                    itemBuilder: (context, index) {
                      final selectedStudent = filteredOnboard[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                selectedStudent.childName ?? '',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 4),
                              Text(l10n.incidentIntakeStudentId(selectedStudent.childId), style: const TextStyle(color: Colors.grey, fontSize: 13)),
                              const SizedBox(height: 8),
                              SwitchListTile(
                                title: Text(l10n.incidentIntakeWasInjured),
                                contentPadding: EdgeInsets.zero,
                                value: selectedStudent.wasInjured,
                                onChanged: (val) {
                                  vm.updateStudentInjury(selectedStudent.childId, wasInjured: val);
                                },
                              ),
                              if (selectedStudent.wasInjured) ...[
                                const SizedBox(height: 8),
                                DropdownButtonFormField<String>(
                                  value: selectedStudent.injurySeverity ?? 'Minor',
                                  decoration: InputDecoration(labelText: l10n.incidentIntakeInjurySeverityLabel),
                                  items: ['Minor', 'Moderate', 'Severe', 'Fatal']
                                      .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                                      .toList(),
                                  onChanged: (val) {
                                    vm.updateStudentInjury(selectedStudent.childId, wasInjured: true, severity: val);
                                  },
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  initialValue: selectedStudent.medicalFacilityTransportedTo,
                                  decoration: InputDecoration(
                                    labelText: l10n.incidentIntakeMedicalFacilityLabel,
                                    border: const OutlineInputBorder(),
                                  ),
                                  onChanged: (val) {
                                    vm.updateStudentInjury(selectedStudent.childId, wasInjured: true, facility: val);
                                  },
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  initialValue: selectedStudent.notes,
                                  decoration: InputDecoration(
                                    labelText: l10n.incidentIntakeInjuryNotesLabel,
                                    border: const OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (selectedStudent.wasInjured && (value == null || value.trim().isEmpty)) {
                                      return l10n.incidentIntakeInjuryNotesError;
                                    }
                                    return null;
                                  },
                                  onChanged: (val) {
                                    vm.updateStudentInjury(selectedStudent.childId, wasInjured: true, notes: val);
                                  },
                                ),
                              ]
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep5Evidence(IncidentCrashViewModel vm, IncidentCrashFormState state, AppLocalizations l10n) {
    return Form(
      key: _formKey4,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            l10n.incidentIntakeEvidenceTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          state.evidences.isEmpty
              ? Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: TextButton.icon(
                      onPressed: () async {
                        final filePath = await Navigator.of(context).push<String>(
                          MaterialPageRoute(
                            builder: (_) => const CameraCaptureScreen(isVideoMode: false),
                          ),
                        );
                        if (filePath != null) {
                          await vm.addCapturedEvidencePhoto(filePath);
                        }
                      },
                      icon: const Icon(Icons.add_a_photo),
                      label: Text(l10n.incidentIntakeCaptureScenePhoto),
                    ),
                  ),
                )
              : Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.evidences.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        final file = state.evidences[index];
                        return Stack(
                          children: [
                            Positioned.fill(
                              child: file.localFilePath != null
                                  ? Image.file(File(file.localFilePath!), fit: BoxFit.cover)
                                  : Container(color: Colors.grey),
                            ),
                            Positioned(
                              top: 2,
                              right: 2,
                              child: GestureDetector(
                                onTap: () => vm.removeEvidence(index),
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  color: Colors.black54,
                                  child: const Icon(Icons.close, color: Colors.white, size: 16),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () async {
                        final filePath = await Navigator.of(context).push<String>(
                          MaterialPageRoute(
                            builder: (_) => const CameraCaptureScreen(isVideoMode: false),
                          ),
                        );
                        if (filePath != null) {
                          await vm.addCapturedEvidencePhoto(filePath);
                        }
                      },
                      icon: const Icon(
                          Icons.add_a_photo,
                        color: Colors.white,
                      ),
                      label: Text(l10n.incidentIntakeAddAnotherPhoto),
                    ),
                  ],
                ),
          const SizedBox(height: 24),
          Text(
            l10n.incidentIntakeDriverNotesTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: vm.driverNotesController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: l10n.incidentIntakeDriverNotesHint,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 24),
          _buildDecisionMatrixBanner(l10n),
        ],
      ),
    );
  }

  Widget _buildDecisionMatrixBanner(AppLocalizations l10n) {
    final vm = ref.read(incidentCrashViewModelProvider.notifier);
    ref.watch(incidentCrashViewModelProvider); // watch to rebuild on updates
    
    final requiresTest = DotDecisionMatrix.isTestingRequired(
      hasFatalities: vm.hasFatalities,
      wasCitationIssued: vm.wasCitationIssued,
      isVehicleTowed: vm.isVehicleTowed,
      hasInjuriesRequiringMedicalTreatment: vm.hasInjuriesRequiringMedicalTreatment,
    );
    final regulatoryBasis = DotDecisionMatrix.getRegulatoryBasis(
      hasFatalities: vm.hasFatalities,
      wasCitationIssued: vm.wasCitationIssued,
      isVehicleTowed: vm.isVehicleTowed,
      hasInjuriesRequiringMedicalTreatment: vm.hasInjuriesRequiringMedicalTreatment,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: requiresTest ? Colors.red.shade50 : Colors.green.shade50,
        border: Border.all(color: requiresTest ? Colors.red.shade200 : Colors.green.shade200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(
            requiresTest ? Icons.warning_amber_rounded : Icons.check_circle_outline,
            color: requiresTest ? Colors.red.shade700 : Colors.green.shade700,
            size: 28,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  requiresTest ? l10n.incidentIntakeDotTestingRequired : l10n.incidentIntakeDotTestingNotRequired,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: requiresTest ? Colors.red.shade800 : Colors.green.shade800,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  regulatoryBasis,
                  style: TextStyle(
                    fontSize: 12,
                    color: requiresTest ? Colors.red.shade700 : Colors.green.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
