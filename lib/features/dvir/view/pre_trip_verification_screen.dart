import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/dvir_previous_day_response.dart';
import '../../../data/models/route_response.dart';
import '../../../core/di/providers.dart';
import '../../../data/models/vehicle_state_response.dart';
import 'widgets/signature_pad.dart';
import '../../../l10n/generated/app_localizations.dart';

class PreTripVerificationScreen extends ConsumerStatefulWidget {
  final String schoolBusId;
  final String routeName;
  final RouteResponse routeResponse;

  const PreTripVerificationScreen({
    super.key,
    required this.schoolBusId,
    required this.routeName,
    required this.routeResponse,
  });

  @override
  ConsumerState<PreTripVerificationScreen> createState() =>
      _PreTripVerificationScreenState();
}

class _PreTripVerificationScreenState
    extends ConsumerState<PreTripVerificationScreen> {
  bool _isLoading = true;
  String? _errorMessage;
  DvirPreviousDayResponse? _priorData;
  VehicleStateResponse? _vehicleState;
  String _signatureBase64 = '';
  bool _isSigning = false;

  int _currentStep = 0;
  final _commentsController = TextEditingController();
  Map<String, bool> _defectVerified = {};

  @override
  void initState() {
    super.initState();
    _fetchPriorDayReport();
  }

  @override
  void dispose() {
    _commentsController.dispose();
    super.dispose();
  }

  Future<void> _fetchPriorDayReport() async {
    try {
      final repo = ref.read(dvirRepositoryProvider);
      final busId = int.tryParse(widget.schoolBusId) ?? 0;
      final busNumber = widget.routeResponse.vehicleLicenseNumber;

      final results = await Future.wait([
        repo.getPreviousDayDvir(busId, fallbackBusNumber: busNumber),
        repo.getVehicleState(busId, fallbackBusNumber: busNumber),
      ]);

      final data = results[0] as DvirPreviousDayResponse;
      final vehicleState = results[1] as VehicleStateResponse;

      final defects = data.priorDvir?.defects ?? [];
      final tempVerified = <String, bool>{};
      for (final d in defects) {
        tempVerified[d.defectId] = false;
      }

      setState(() {
        _priorData = data;
        _vehicleState = vehicleState;
        _defectVerified = tempVerified;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _submitAcknowledgment() async {
    final hasDefects = _priorData?.priorDvir?.defects.isNotEmpty ?? false;
    final allVerified = !hasDefects || _priorData!.priorDvir!.defects.every((d) => _defectVerified[d.defectId] == true);

    if (!allVerified || _signatureBase64.isEmpty) return;

    setState(() => _isSigning = true);
    final l10n = AppLocalizations.of(context)!;

    try {
      final repo = ref.read(dvirRepositoryProvider);
      final dvirId = _priorData?.priorDvir?.dvirId;
      if (dvirId != null) {
        // Sign acknowledgment in backend
        await repo.acknowledgePriorDvir(dvirId, _signatureBase64);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:
                  Text(l10n.dvirPreTripSignedSuccess)),
        );
        // Navigate back to the home screen
        context.go(Constants.HOME_ROUTE);
      }
    } catch (e) {
      setState(() => _isSigning = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(l10n.dvirPreTripFailedToSign(e)), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dvirPreTripTitle),
        backgroundColor: AppColors.PRIMARY,
        foregroundColor: Colors.white,
        actions: [
          if (_vehicleState?.currentState != 'OUT_OF_SERVICE')
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: l10n.dvirPreTripReportNewDefectsButton,
              onPressed: () {
                context.push(Constants.DVIR_POST_TRIP_ROUTE, extra: widget.routeResponse);
              },
            ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
              ? Center(child: Text(_errorMessage!))
              : _buildReportDetails(l10n),
    );
  }

  Color _getStatusPastelColor(String? state) {
    if (state == 'ACTIVE') return Colors.green.shade50;
    if (state == 'OUT_OF_SERVICE') return Colors.red.shade50;
    return Colors.amber.shade50;
  }

  Color _getStatusTextColor(String? state) {
    if (state == 'ACTIVE') return Colors.green.shade800;
    if (state == 'OUT_OF_SERVICE') return Colors.red.shade800;
    return Colors.amber.shade900;
  }

  Widget _buildPreTripStepCircle(int step, String label) {
    final isCompleted = _currentStep > step;
    final isCurrent = _currentStep == step;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isCompleted
                ? Colors.green
                : (isCurrent ? AppColors.PRIMARY : Colors.grey.shade300),
          ),
          child: Center(
            child: isCompleted
                ? const Icon(Icons.check, color: Colors.white, size: 16)
                : Text(
                    '${step + 1}',
                    style: TextStyle(
                      color: isCurrent || isCompleted ? Colors.white : Colors.black87,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 10,
            fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
            color: isCurrent ? AppColors.PRIMARY : Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildPreTripStepLine(int step) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Container(
          height: 2,
          color: _currentStep > step ? Colors.green : Colors.grey.shade300,
        ),
      ),
    );
  }

  Widget _buildHeaderCard(AppLocalizations l10n) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.dvirPreTripBusLabel(widget.routeResponse.vehicleLicenseNumber ?? ''),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                if (_vehicleState != null)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getStatusPastelColor(_vehicleState!.currentState),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      _vehicleState!.currentState.replaceAll('_', ' '),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: _getStatusTextColor(_vehicleState!.currentState),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.dvirPreTripRouteLabel(widget.routeName),
              style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
            ),
            if (_vehicleState?.blockReason != null) ...[
              const SizedBox(height: 8),
              Text(
                l10n.dvirPreTripReasonLabel(_vehicleState!.blockReason!),
                style: TextStyle(color: Colors.red.shade700, fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildReportDetails(AppLocalizations l10n) {
    if (_vehicleState?.currentState == 'ACTIVE') {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeaderCard(l10n),
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 64),
                  const SizedBox(height: 16),
                  Text(
                    l10n.dvirPreTripVehicleReady,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.dvirPreTripActiveMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    if (_vehicleState?.currentState == 'OUT_OF_SERVICE') {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeaderCard(l10n),
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  const Icon(Icons.cancel, color: Colors.red, size: 64),
                  const SizedBox(height: 16),
                  Text(
                    l10n.dvirPreTripVehicleOutOfService,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.dvirPreTripOutOfServiceMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          color: Colors.grey.shade50,
          child: Row(
            children: [
              _buildPreTripStepCircle(0, l10n.dvirPreTripStepVerify),
              _buildPreTripStepLine(0),
              _buildPreTripStepCircle(1, l10n.dvirPreTripStepSignOff),
              _buildPreTripStepLine(1),
              _buildPreTripStepCircle(2, l10n.dvirPreTripStepSubmit),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeaderCard(l10n),
                const SizedBox(height: 20),
                if (_currentStep == 0) _buildVerifyDefectsStep(l10n),
                if (_currentStep == 1) _buildSignOffStep(l10n),
                if (_currentStep == 2) _buildSubmitStep(l10n),
              ],
            ),
          ),
        ),
        _buildBottomNavigationBar(l10n),
      ],
    );
  }

  Widget _buildVerifyDefectsStep(AppLocalizations l10n) {
    final priorReport = _priorData?.priorDvir;
    final hasDefects = priorReport?.defects.isNotEmpty ?? false;

    if (!hasDefects) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Center(
          child: Column(
            children: [
              Icon(Icons.check_circle_outline, size: 48, color: Colors.green.shade400),
              const SizedBox(height: 16),
              Text(
                l10n.dvirPreTripNoPriorDefects,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(l10n.dvirPreTripTapNext, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.dvirPreTripAttentionRequiredTitle,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: priorReport!.defects.length,
          itemBuilder: (context, idx) {
            final defect = priorReport.defects[idx];
            final verified = _defectVerified[defect.defectId] ?? false;
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey.shade200),
              ),
              child: CheckboxListTile(
                value: verified,
                onChanged: (val) {
                  setState(() {
                    _defectVerified[defect.defectId] = val ?? false;
                  });
                },
                title: Text(
                  defect.zoneCode,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(defect.description),
                secondary: (defect.photoUrl != null && defect.photoUrl!.trim().isNotEmpty)
                    ? IconButton(
                        icon: const Icon(Icons.image),
                        onPressed: () => _showPhotoPreview(defect.photoUrl!, l10n),
                      )
                    : null,
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSignOffStep(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _commentsController,
          maxLines: 3,
          decoration: InputDecoration(
            labelText: l10n.dvirPreTripDriverCommentsLabel,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 24),
        Text(l10n.dvirPreTripSignOffTitle, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        SignaturePad(
          onSigned: (base64) {
            setState(() {
              _signatureBase64 = base64;
            });
          },
          onCleared: () {
            setState(() {
              _signatureBase64 = '';
            });
          },
        ),
      ],
    );
  }

  Widget _buildSubmitStep(AppLocalizations l10n) {
    final priorReport = _priorData?.priorDvir;
    final hasDefects = priorReport?.defects.isNotEmpty ?? false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasDefects && priorReport != null) ...[
          Text(
            l10n.dvirPreTripVerifiedRepairStatus,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          ...priorReport.defects.map((defect) {
            final verified = _defectVerified[defect.defectId] ?? false;
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                verified ? Icons.check_circle : Icons.cancel,
                color: verified ? Colors.green : Colors.red,
              ),
              title: Text(defect.zoneCode),
              subtitle: Text(defect.description),
            );
          }).toList(),
          const SizedBox(height: 16),
        ],
        Text(
          l10n.dvirPreTripYourComments,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(
          _commentsController.text.trim().isEmpty
              ? l10n.dvirPreTripNoComments
              : _commentsController.text.trim(),
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Icon(
              _signatureBase64.isNotEmpty ? Icons.check_circle : Icons.error_outline,
              color: _signatureBase64.isNotEmpty ? Colors.green : Colors.red,
            ),
            const SizedBox(width: 8),
            Text(
              _signatureBase64.isNotEmpty
                  ? l10n.dvirPreTripSigCaptured
                  : l10n.dvirPreTripSigMissing,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar(AppLocalizations l10n) {
    final hasDefects = _priorData?.priorDvir?.defects.isNotEmpty ?? false;
    final allVerified = !hasDefects || _priorData!.priorDvir!.defects.every((d) => _defectVerified[d.defectId] == true);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade200)),
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
              child: Text(l10n.genericBack),
            )
          else
            const SizedBox.shrink(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PRIMARY,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: _isSigning
                ? null
                : () {
                    if (_currentStep == 0) {
                      if (!allVerified) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l10n.dvirPreTripVerifyCheckWarning),
                          ),
                        );
                        return;
                      }
                      setState(() {
                        _currentStep = 1;
                      });
                    } else if (_currentStep == 1) {
                      if (_signatureBase64.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(l10n.dvirPreTripSignDefectWarning),
                          ),
                        );
                        return;
                      }
                      setState(() {
                        _currentStep = 2;
                      });
                    } else if (_currentStep == 2) {
                      if (_vehicleState?.currentState == 'ACTIVE') {
                        context.go(Constants.HOME_ROUTE);
                      } else {
                        _submitAcknowledgment();
                      }
                    }
                  },
            child: _isSigning
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                  )
                : Text(
                    _currentStep == 2
                        ? (_vehicleState?.currentState == 'ACTIVE'
                            ? l10n.dvirPreTripReturnToHomeButton
                            : l10n.dvirPreTripSubmitVerificationButton)
                        : l10n.genericNext,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
          ),
        ],
      ),
    );
  }

  void _showPhotoPreview(String url, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(url, fit: BoxFit.contain),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.dvirPreTripClose),
            )
          ],
        ),
      ),
    );
  }
}
