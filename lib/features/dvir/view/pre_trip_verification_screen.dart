import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/dvir_previous_day_response.dart';
import '../../../data/models/route_response.dart';
import 'post_trip_walkaround_screen.dart';
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
  bool _isAcknowledged = false;
  String _signatureBase64 = '';
  bool _isSigning = false;

  @override
  void initState() {
    super.initState();
    _fetchPriorDayReport();
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

      setState(() {
        _priorData = data;
        _vehicleState = vehicleState;
        _isLoading = false;
        // If there is no prior day defects or no prior report, driver can skip acknowledgment
        if (!data.hasPriorDvir || !data.requiresDriverAcknowledgment) {
          _isAcknowledged = true;
        }
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
        _isLoading = false;
      });
    }
  }

  Future<void> _submitAcknowledgment() async {
    if (!_isAcknowledged || _signatureBase64.isEmpty) return;

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
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
              ? Center(child: Text(_errorMessage!))
              : _buildReportDetails(l10n),
    );
  }

  Widget _buildReportDetails(AppLocalizations l10n) {
    final priorReport = _priorData?.priorDvir;
    final hasDefects = priorReport?.defects.isNotEmpty ?? false;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_vehicleState != null) ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _vehicleState!.currentState == 'ACTIVE'
                    ? const Color(0xFFF0FDF4)
                    : const Color(0xFFFEF2F2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _vehicleState!.currentState == 'ACTIVE'
                      ? const Color(0xFF16A34A)
                      : const Color(0xFFDC2626),
                  width: 1.5,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    _vehicleState!.currentState == 'ACTIVE'
                        ? Icons.check_circle
                        : Icons.warning_amber_rounded,
                    color: _vehicleState!.currentState == 'ACTIVE'
                        ? const Color(0xFF16A34A)
                        : const Color(0xFFDC2626),
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.dvirPreTripVehicleStatus(_vehicleState!.currentState.replaceAll('_', ' ')),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _vehicleState!.currentState == 'ACTIVE'
                                ? const Color(0xFF15803D)
                                : const Color(0xFFB91C1C),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _vehicleState!.currentState == 'ACTIVE'
                              ? l10n.dvirPreTripActiveMessage
                              : l10n.dvirPreTripOutOfServiceMessage,
                          style: TextStyle(
                            fontSize: 13,
                            color: _vehicleState!.currentState == 'ACTIVE'
                                ? const Color(0xFF166534)
                                : const Color(0xFF991B1B),
                          ),
                        ),
                        if (_vehicleState!.currentState == 'OUT_OF_SERVICE' && _vehicleState!.blockReason != null) ...[
                          const SizedBox(height: 6),
                          Text(
                            l10n.dvirPreTripReason(_vehicleState!.blockReason!),
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF991B1B),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(l10n.dvirPreTripDispatchCheckTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 8),
                  Text(l10n.dvirPreTripBusNumber(widget.routeResponse.vehicleLicenseNumber ?? ''),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text(l10n.dvirPreTripActiveRoute(widget.routeName),
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (hasDefects && _vehicleState?.currentState == 'CERTIFIED_PENDING_VERIFICATION') ...[
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
                final isRepaired = priorReport.workOrder != null;
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  color: isRepaired ? const Color(0xFFF0FDF4) : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: isRepaired ? const Color(0xFF16A34A) : Colors.grey.shade300,
                      width: isRepaired ? 1.5 : 1.0,
                    ),
                  ),
                  child: ListTile(
                    leading: Icon(
                      isRepaired ? Icons.check_circle : Icons.warning,
                      color: isRepaired ? const Color(0xFF16A34A) : Colors.red,
                    ),
                    title: Text(
                      defect.zoneCode,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isRepaired ? const Color(0xFF15803D) : Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      isRepaired ? l10n.dvirPreTripRepairedDefect(defect.description) : defect.description,
                      style: TextStyle(
                        color: isRepaired ? const Color(0xFF166534) : Colors.black54,
                      ),
                    ),
                    trailing: (defect.photoUrl != null && defect.photoUrl!.trim().isNotEmpty)
                        ? IconButton(
                            icon: const Icon(Icons.image),
                            onPressed: () =>
                                _showPhotoPreview(defect.photoUrl!),
                          )
                        : null,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              l10n.dvirPreTripResolutionTitle,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xFF16A34A)),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              color: const Color(0xFFF0FDF4),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.dvirPreTripResolutionStatus(priorReport.workOrder?.resolutionType ?? "Cleared"),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF16A34A)),
                        ),
                        Text(
                          priorReport.workOrder?.subAdminSignedBy ?? 'Admin #1',
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const Divider(height: 20),
                    Text(
                      priorReport.workOrder?.subAdminNotes ??
                          l10n.dvirPreTripNoRepairsNeeded,
                      style: const TextStyle(
                          height: 1.4, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Checkbox(
                  value: _isAcknowledged,
                  onChanged: (val) {
                    setState(() {
                      _isAcknowledged = val ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                      l10n.dvirPreTripAcknowledgmentText),
                )
              ],
            ),
          ] else if (_vehicleState?.currentState == 'CERTIFIED_PENDING_VERIFICATION') ...[
            Card(
              color: const Color(0xFFF0FDF4),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Color(0xFF16A34A), size: 48),
                    const SizedBox(height: 16),
                    Text(
                      l10n.dvirPreTripNoPriorDefects,
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                        l10n.dvirPreTripNoPriorDefectsMessage,
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
          if (_vehicleState?.currentState == 'CERTIFIED_PENDING_VERIFICATION') const SizedBox(height: 20),
          if (_isAcknowledged && _vehicleState?.currentState == 'CERTIFIED_PENDING_VERIFICATION') ...[
            Text(l10n.dvirPreTripSignOffTitle,
                style: const TextStyle(fontWeight: FontWeight.bold)),
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
          const SizedBox(height: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.PRIMARY,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: _vehicleState?.currentState == 'ACTIVE'
                ? () => context.go(Constants.HOME_ROUTE)
                : (_vehicleState?.currentState == 'OUT_OF_SERVICE' || !_isAcknowledged || _signatureBase64.isEmpty || _isSigning)
                    ? null
                    : _submitAcknowledgment,
            child: _isSigning
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 2))
                : Text(
                    _vehicleState?.currentState == 'OUT_OF_SERVICE'
                        ? l10n.dvirPreTripOutofServiceButton
                        : _vehicleState?.currentState == 'ACTIVE'
                            ? l10n.dvirPreTripReturnToHomeButton
                            : l10n.dvirPreTripSubmitVerificationButton,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 12),
          if (_vehicleState?.currentState != 'OUT_OF_SERVICE') ...[
            OutlinedButton.icon(
              icon: const Icon(Icons.add_alert_outlined),
              label: Text(l10n.dvirPreTripReportNewDefectsButton),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: const BorderSide(color: Colors.red, width: 1.5),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onPressed: () {
                context.push(Constants.DVIR_POST_TRIP_ROUTE, extra: widget.routeResponse);
              },
            ),
          ] else ...[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, color: Colors.grey.shade600, size: 18),
                  const SizedBox(width: 8),
                  Text(
                    l10n.dvirPreTripReportNewDefectsDisabled,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _showPhotoPreview(String url) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(url, fit: BoxFit.contain),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('CLOSE'),
            )
          ],
        ),
      ),
    );
  }
}
