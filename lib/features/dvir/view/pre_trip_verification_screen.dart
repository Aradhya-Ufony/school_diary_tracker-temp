import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/dvir_previous_day_response.dart';
import '../../../data/models/route_response.dart';
import 'post_trip_walkaround_screen.dart';
import 'widgets/signature_pad.dart';

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
      final data = await repo.getPreviousDayDvir(
        int.tryParse(widget.schoolBusId) ?? 0,
        fallbackBusNumber: widget.routeResponse.vehicleLicenseNumber,
      );
      setState(() {
        _priorData = data;
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

    try {
      final repo = ref.read(dvirRepositoryProvider);
      final dvirId = _priorData?.priorDvir?.dvirId;
      if (dvirId != null) {
        // Sign acknowledgment in backend
        await repo.acknowledgePriorDvir(dvirId, _signatureBase64);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content:
                  Text('Verification signed successfully. Pre-Trip unlocked.')),
        );
        // Navigate driver into the walkaround checklists screen or map
        context.go(Constants.TRIP_MAP_ROUTE, extra: widget.routeResponse);
      }
    } catch (e) {
      setState(() => _isSigning = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Failed to sign: $e'), backgroundColor: Colors.red),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pre-Trip Verification'),
        backgroundColor: AppColors.PRIMARY,
        foregroundColor: Colors.white,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _errorMessage != null
              ? Center(child: Text(_errorMessage!))
              : _buildReportDetails(),
    );
  }

  Widget _buildReportDetails() {
    final priorReport = _priorData?.priorDvir;
    final hasDefects = priorReport?.defects.isNotEmpty ?? false;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('VEHICLE DISPATCH CHECK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                  const SizedBox(height: 8),
                  Text('Bus Number: ${widget.routeResponse.vehicleLicenseNumber ?? ''}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Active Route: ${widget.routeName}',
                      style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (hasDefects) ...[
            const Text(
              'ATTENTION REQUIRED: PRIOR DAY DEFECTS LOGGED',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: priorReport!.defects.length,
              itemBuilder: (context, idx) {
                final defect = priorReport.defects[idx];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: const Icon(Icons.warning, color: Colors.red),
                    title: Text(defect.zoneCode,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(defect.description),
                    trailing: defect.photoUrl != null
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
            const Text(
              'TRANSPORT SUB-ADMIN RESOLUTION',
              style: TextStyle(
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
                          'Status: ${priorReport.workOrder?.resolutionType ?? "Cleared"}',
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
                          'No repairs needed for safe operation.',
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
                const Expanded(
                  child: Text(
                      'I acknowledge that I have reviewed the last submitted defect report and verified the repairs(if any) and state that the bus is safe for operation.'),
                )
              ],
            ),
          ] else ...[
            const Card(
              color: Color(0xFFF0FDF4),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(Icons.check_circle,
                        color: Color(0xFF16A34A), size: 48),
                    SizedBox(height: 16),
                    Text(
                      'No Prior Defects Logged',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                        'This vehicle was reported clean in the previous post-trip shift inspection.',
                        textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
          const SizedBox(height: 20),
          if (_isAcknowledged) ...[
            const Text('SIGN-OFF TO PROCEED TO WALKAROUND',
                style: TextStyle(fontWeight: FontWeight.bold)),
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
            onPressed:
                !_isAcknowledged || _signatureBase64.isEmpty || _isSigning
                    ? null
                    : _submitAcknowledgment,
            child: _isSigning
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                        color: Colors.white, strokeWidth: 2))
                : const Text('CONFIRM START TRIP',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
          ),
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
