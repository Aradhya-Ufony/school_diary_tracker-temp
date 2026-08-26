import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import '../../../core/di/providers.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/dvir_submit_request.dart';
import '../../../data/models/route_response.dart';
import '../../../data/repositories/dvir_repository.dart';
import '../../auth/viewmodel/login_viewmodel.dart';
import '../../drills/presentation/providers/drill_providers.dart';
import '../viewmodel/dvir_sync_worker.dart';
import '../viewmodel/dvir_viewmodel.dart';
import 'widgets/signature_pad.dart';
import '../../../l10n/generated/app_localizations.dart';


final dvirViewModelProvider =
StateNotifierProvider.autoDispose<DvirViewModel, DvirState>((ref) {
  return DvirViewModel(ref.watch(dvirRepositoryProvider));
});

final dvirSyncWorkerProvider = Provider<DvirSyncWorker>((ref) {
  final repo = ref.watch(dvirRepositoryProvider);
  final worker = DvirSyncWorker(repo);
  ref.onDispose(worker.dispose);
  return worker;
});

class PostTripWalkaroundScreen extends ConsumerStatefulWidget {
  final RouteResponse route;
  const PostTripWalkaroundScreen({super.key, required this.route});

  @override
  ConsumerState<PostTripWalkaroundScreen> createState() =>
      _PostTripWalkaroundScreenState();
}

class _PostTripWalkaroundScreenState extends ConsumerState<PostTripWalkaroundScreen> {
  final PageController _pageController = PageController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _odometerController = TextEditingController();
  int _currentStep = 0;
  String _signatureBase64 = '';

  static const List<Map<String, String>> _categories = [
    {'code': 'SERVICE_BRAKES', 'name': 'Service Brakes'},
    {'code': 'PARKING_BRAKE', 'name': 'Parking Brake'},
    {'code': 'STEERING_MECHANISM', 'name': 'Steering Mechanism'},
    {'code': 'LIGHTING_REFLECTORS', 'name': 'Lighting Devices & Reflectors'},
    {'code': 'TIRES', 'name': 'Tires'},
    {'code': 'HORN', 'name': 'Horn'},
    {'code': 'WIPERS', 'name': 'Windshield Wipers'},
    {'code': 'MIRRORS', 'name': 'Rear-Vision Mirrors'},
    {'code': 'WHEELS_RIMS', 'name': 'Wheels and Rims'},
    {'code': 'EMERGENCY_EQUIPMENT', 'name': 'Emergency Equipment'},
    {'code': 'COUPLING_DEVICES', 'name': 'Coupling Devices'},
    {'code': 'BUS_SAFETY_SYSTEMS', 'name': 'Bus-Specific Safety Systems'},
    {'code': 'PASSENGER_SEATING', 'name': 'Passenger Seating & Restraints'},
  ];

  String _getCategoryName(String code, AppLocalizations l10n) {
    switch (code) {
      case 'SERVICE_BRAKES': return l10n.dvirCategoryServiceBrakes;
      case 'PARKING_BRAKE': return l10n.dvirCategoryParkingBrake;
      case 'STEERING_MECHANISM': return l10n.dvirCategorySteeringMechanism;
      case 'LIGHTING_REFLECTORS': return l10n.dvirCategoryLightingReflectors;
      case 'TIRES': return l10n.dvirCategoryTires;
      case 'HORN': return l10n.dvirCategoryHorn;
      case 'WIPERS': return l10n.dvirCategoryWipers;
      case 'MIRRORS': return l10n.dvirCategoryMirrors;
      case 'WHEELS_RIMS': return l10n.dvirCategoryWheelsRims;
      case 'EMERGENCY_EQUIPMENT': return l10n.dvirCategoryEmergencyEquipment;
      case 'COUPLING_DEVICES': return l10n.dvirCategoryCouplingDevices;
      case 'BUS_SAFETY_SYSTEMS': return l10n.dvirCategoryBusSafetySystems;
      case 'PASSENGER_SEATING': return l10n.dvirCategoryPassengerSeating;
      default: return code;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _notesController.dispose();
    _odometerController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentStep < _categories.length + 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _prevPage() {
    if (_currentStep > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  Future<void> _capturePhoto(String zoneCode) async {
    final mediaService = ref.read(mediaCompressionServiceProvider);
    final l10n = AppLocalizations.of(context)!;

    // Trigger image picker and compression matching Drill Evidence Flow
    final photo = await mediaService.pickAndCompressMedia(ImageSource.camera, isVideo: false);
    if (photo != null && photo.localFilePath != null) {
      ref.read(dvirViewModelProvider.notifier).updateZonePhoto(zoneCode, photo.localFilePath!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.dvirPostTripPhotoAttached)),
      );
    }
  }

  Future<void> _submitDvirReport() async {
    final checklist = ref.read(dvirViewModelProvider).checklist.values;
    final defectsWithoutPhoto = checklist.where((item) => !item.isPassed && (item.photo == null || item.photo!.isEmpty)).toList();
    final l10n = AppLocalizations.of(context)!;

    if (defectsWithoutPhoto.isNotEmpty) {
      final proceed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: Text(l10n.dvirPostTripDefectWithoutPhotoTitle),
          content: Text(
            l10n.dvirPostTripDefectWithoutPhotoWarning(defectsWithoutPhoto.map((e) => e.zoneCode).join(', ')),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(l10n.genericCancel),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(l10n.genericNext, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ),
      );
      if (proceed != true) return;
    }

    final odometer = double.tryParse(_odometerController.text) ?? 0.0;
    final currentUser = ref.read(authRepositoryProvider).getCurrentUser();
    final driverId = currentUser?.id ?? 0;

    double latitude = 0.0;
    double longitude = 0.0;

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        timeLimit: const Duration(seconds: 3),
      );
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (_) {
      try {
        final lastKnown = await Geolocator.getLastKnownPosition();
        if (lastKnown != null) {
          latitude = lastKnown.latitude;
          longitude = lastKnown.longitude;
        }
      } catch (_) {}
    }

    int busId = widget.route.vehicleId ?? 0;
    if (busId == 0 && widget.route.vehicleLicenseNumber != null && widget.route.vehicleLicenseNumber!.isNotEmpty) {
      try {
        final resolved = await ref.read(dvirRepositoryProvider).getBusIdFromNumber(widget.route.vehicleLicenseNumber!);
        if (resolved != null) {
          busId = resolved;
        }
      } catch (_) {}
    }

    ref.read(dvirViewModelProvider.notifier).submitReport(
      busId: busId,
      userId: driverId,
      tripType: 'PostTrip',
      odometer: odometer,
      signatureBase64: _signatureBase64,
      latitude: latitude,
      longitude: longitude,
      deviceId: Platform.isAndroid ? 'Android' : 'iOS',
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(dvirViewModelProvider);
    final l10n = AppLocalizations.of(context)!;

    // Listen for error messages and success routing
    ref.listen<DvirState>(dvirViewModelProvider, (prev, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error!), backgroundColor: Colors.red),
        );
      }
      if (next.isSubmitSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.dvirPostTripSubmitSuccess)),
        );
        context.go(Constants.HOME_ROUTE);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dvirPostTripInspectionTitle(widget.route.vehicleLicenseNumber ?? '')),
        backgroundColor: AppColors.PRIMARY,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          if (_currentStep < _categories.length)
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.dvirPostTripProgressLabel,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Text(
                        l10n.dvirPostTripZonesProgress(_currentStep + 1, _categories.length),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.PRIMARY,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: (_currentStep + 1) / _categories.length,
                      minHeight: 6,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.PRIMARY),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (pageIndex) {
                setState(() {
                  _currentStep = pageIndex;
                });
              },
              itemCount: _categories.length + 2, // 13 zones + 1 odometer + 1 signature screen
              itemBuilder: (context, index) {
                if (index < _categories.length) {
                  final category = _categories[index];
                  final itemState = state.checklist[category['code']!];

                  return _buildZoneStepCard(category['name']!, category['code']!, itemState!, l10n);
                } else if (index == _categories.length) {
                  return _buildOdometerStepCard(l10n);
                } else {
                  return _buildSignatureStepCard(state.isLoading, l10n);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildZoneStepCard(String name, String code, DvirChecklistItemModel model, AppLocalizations l10n) {
    final localizedName = _getCategoryName(code, l10n);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.dvirPostTripZoneHeader(_currentStep + 1, _categories.length),
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              Text(
                localizedName,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              Text(l10n.dvirPostTripPassButton + ' / ' + l10n.dvirPostTripDefectButton + ':', style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: model.isPassed ? const Color(0xFFDCFCE7) : Colors.transparent,
                        side: BorderSide(
                          color: model.isPassed ? const Color(0xFF16A34A) : Colors.grey.shade400,
                          width: 2,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        ref.read(dvirViewModelProvider.notifier).updateZoneStatus(code, true);
                      },
                      child: Text(
                        l10n.dvirPostTripPassButton,
                        style: TextStyle(
                          color: model.isPassed ? const Color(0xFF16A34A) : Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: !model.isPassed ? const Color(0xFFFEE2E2) : Colors.transparent,
                        side: BorderSide(
                          color: !model.isPassed ? const Color(0xFFDC2626) : Colors.grey.shade400,
                          width: 2,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {
                        ref.read(dvirViewModelProvider.notifier).updateZoneStatus(code, false);
                      },
                      child: Text(
                        l10n.dvirPostTripDefectButton,
                        style: TextStyle(
                          color: !model.isPassed ? const Color(0xFFDC2626) : Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                l10n.dvirPostTripNotesLabel,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: model.isPassed ? Colors.grey : Colors.red,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                key: ValueKey(code),
                enabled: !model.isPassed,
                maxLines: 3,
                initialValue: model.notes,
                decoration: InputDecoration(
                  hintText: model.isPassed
                      ? l10n.dvirPostTripNotesPassedHint
                      : l10n.dvirPostTripNotesDefectHint,
                  border: const OutlineInputBorder(),
                  fillColor: model.isPassed ? Colors.grey.shade100 : Colors.white,
                  filled: true,
                ),
                onChanged: (text) {
                  ref.read(dvirViewModelProvider.notifier).updateZoneNotes(code, text);
                },
              ),
              const SizedBox(height: 16),
              if (model.photo != null)
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(File(model.photo!), fit: BoxFit.cover),
                  ),
                )
              else
                OutlinedButton.icon(
                  onPressed: model.isPassed ? null : () => _capturePhoto(code),
                  icon: const Icon(Icons.camera_alt),
                  label: Text(l10n.dvirPostTripCapturePhoto),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: model.isPassed ? Colors.grey : Colors.red,
                    side: BorderSide(
                      color: model.isPassed ? Colors.grey.shade300 : Colors.red,
                      width: 1.5,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _currentStep == 0 ? null : _prevPage,
                    child: Text(l10n.genericBack),
                  ),
                  ElevatedButton(
                    onPressed: _nextPage,
                    child: Text(l10n.genericNext),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOdometerStepCard(AppLocalizations l10n) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.dvirPostTripOdometerTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.dvirPostTripOdometerHeader,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              Text(l10n.dvirPostTripOdometerInstructions, style: const TextStyle(height: 1.4)),
              const SizedBox(height: 16),
              TextField(
                controller: _odometerController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: l10n.dvirPostTripOdometerLabel,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.speed),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: _prevPage, child: Text(l10n.genericBack)),
                  ElevatedButton(
                    onPressed: () {
                      if (_odometerController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.dvirPostTripOdometerWarning)),
                        );
                        return;
                      }
                      _nextPage();
                    },
                    child: Text(l10n.genericNext),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignatureStepCard(bool isLoading, AppLocalizations l10n) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.dvirPostTripComplianceTitle,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.dvirPostTripSignatureTitle,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              Text(
                l10n.dvirPostTripSignatureCert,
                style: const TextStyle(fontSize: 13, height: 1.4),
              ),
              const SizedBox(height: 24),
              SignaturePad(
                onSigned: (base64) {
                  setState(() {
                    _signatureBase64 = base64;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.dvirPostTripSignatureCaptured)),
                  );
                },
                onCleared: () {
                  setState(() {
                    _signatureBase64 = '';
                  });
                },
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _prevPage,
                    child: Text(l10n.genericBack),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.PRIMARY,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _signatureBase64.isEmpty || isLoading ? null : _submitDvirReport,
                    child: isLoading
                        ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                        : Text(l10n.dvirPostTripSubmitButton),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}