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

// Riverpod Provider definitions for eDVIR
final dvirRepositoryProvider = Provider<DvirRepository>((ref) {
  return DvirRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

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

    // Trigger image picker and compression matching Drill Evidence Flow
    final photo = await mediaService.pickAndCompressMedia(ImageSource.camera, isVideo: false);
    if (photo != null && photo.localFilePath != null) {
      ref.read(dvirViewModelProvider.notifier).updateZonePhoto(zoneCode, photo.localFilePath!);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Photo attached successfully.')),
      );
    }
  }

  Future<void> _submitDvirReport() async {
    final checklist = ref.read(dvirViewModelProvider).checklist.values;
    final defectsWithoutPhoto = checklist.where((item) => !item.isPassed && (item.photo == null || item.photo!.isEmpty)).toList();

    if (defectsWithoutPhoto.isNotEmpty) {
      final proceed = await showDialog<bool>(
        context: context,
        builder: (dialogContext) => AlertDialog(
          title: const Text('Reporting Defect Without Photo'),
          content: Text(
            'Warning: You are reporting a defect on safety zones (${defectsWithoutPhoto.map((e) => e.zoneCode).join(', ')}) without attaching a photo. Are you sure you want to submit anyway?',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: const Text('Proceed', style: TextStyle(color: Colors.white)),
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

    // Listen for error messages and success routing
    ref.listen<DvirState>(dvirViewModelProvider, (prev, next) {
      if (next.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(next.error!), backgroundColor: Colors.red),
        );
      }
      if (next.isSubmitSuccess) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('eDVIR submitted successfully.')),
        );
        context.go(Constants.HOME_ROUTE);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Inspection: Bus ${widget.route.vehicleLicenseNumber ?? ''}'),
        backgroundColor: AppColors.PRIMARY,
        foregroundColor: Colors.white,
      ),
      body: PageView.builder(
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

            return _buildZoneStepCard(category['name']!, category['code']!, itemState!);
          } else if (index == _categories.length) {
            return _buildOdometerStepCard();
          } else {
            return _buildSignatureStepCard(state.isLoading);
          }
        },
      ),
    );
  }

  Widget _buildZoneStepCard(String name, String code, DvirChecklistItemModel model) {
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
                'ZONE ${_currentStep + 1} OF ${_categories.length}',
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              Text(
                name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              const Text('INSPECTION RESULT:', style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    label: const Text('PASS'),
                    selected: model.isPassed,
                    selectedColor: const Color(0xFFDCFCE7),
                    labelStyle: TextStyle(color: model.isPassed ? const Color(0xFF16A34A) : Colors.black87),
                    onSelected: (selected) {
                      ref.read(dvirViewModelProvider.notifier).updateZoneStatus(code, true);
                    },
                  ),
                  ChoiceChip(
                    label: const Text('DEFECT'),
                    selected: !model.isPassed,
                    selectedColor: const Color(0xFFFEE2E2),
                    labelStyle: TextStyle(color: !model.isPassed ? const Color(0xFFDC2626) : Colors.black87),
                    onSelected: (selected) {
                      ref.read(dvirViewModelProvider.notifier).updateZoneStatus(code, false);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (!model.isPassed) ...[
                const Text(
                  'NOTES (MANDATORY) & PHOTO (OPTIONAL)',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
                const SizedBox(height: 10),
                TextField(
                  maxLines: 3,
                  decoration: const InputDecoration(
                    hintText: 'Enter details of the safety concern...',
                    border: OutlineInputBorder(),
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
                    onPressed: () => _capturePhoto(code),
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('CAPTURE DEFECT PHOTO'),
                    style: OutlinedButton.styleFrom(foregroundColor: Colors.red, side: const BorderSide(color: Colors.red)),
                  ),
              ],
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: _currentStep == 0 ? null : _prevPage,
                    child: const Text('BACK'),
                  ),
                  ElevatedButton(
                    onPressed: _nextPage,
                    child: const Text('NEXT'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOdometerStepCard() {
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
              const Text(
                'VEHICLE RUN TIME METRIC',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              const Text(
                'Current Odometer Reading',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              const Text('Enter the mileage reading exactly as shown on the bus instrument panel:', style: TextStyle(height: 1.4)),
              const SizedBox(height: 16),
              TextField(
                controller: _odometerController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  labelText: 'Odometer (Miles)',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.speed),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: _prevPage, child: const Text('BACK')),
                  ElevatedButton(
                    onPressed: () {
                      if (_odometerController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please enter the odometer reading before proceeding.')),
                        );
                        return;
                      }
                      _nextPage();
                    },
                    child: const Text('NEXT'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignatureStepCard(bool isLoading) {
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
              const Text(
                'COMPLIANCE CERTIFICATION',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, letterSpacing: 1),
              ),
              const SizedBox(height: 8),
              const Text(
                'Driver Signature Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.PRIMARY),
              ),
              const Divider(height: 24, thickness: 1.5),
              const Text(
                'I certify that this vehicle walkaround checklist report has been completed in compliance with FMCSA 396.11 regulations.',
                style: TextStyle(fontSize: 13, height: 1.4),
              ),
              const SizedBox(height: 24),
              SignaturePad(
                onSigned: (base64) {
                  setState(() {
                    _signatureBase64 = base64;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Signature captured.')),
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
                    child: const Text('BACK'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.PRIMARY,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: _signatureBase64.isEmpty || isLoading ? null : _submitDvirReport,
                    child: isLoading
                        ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                        : const Text('SUBMIT INSPECTION'),
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