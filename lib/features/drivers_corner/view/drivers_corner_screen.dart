import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/driver_document.dart';
import '../viewmodel/driver_compliance_state.dart';
import '../viewmodel/driver_compliance_viewmodel.dart';
import 'document_viewer_screen.dart';

class DriversCornerScreen extends ConsumerStatefulWidget {
  final int? driverId;

  const DriversCornerScreen({
    super.key,
    this.driverId,
  });

  @override
  ConsumerState<DriversCornerScreen> createState() => _DriversCornerScreenState();
}

class _DriversCornerScreenState extends ConsumerState<DriversCornerScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _formatDate(String? rawDate) {
    if (rawDate == null || rawDate.isEmpty) return 'N/A';
    try {
      final parsed = DateTime.parse(rawDate);
      return DateFormat('MMM dd, yyyy').format(parsed);
    } catch (_) {
      return rawDate;
    }
  }

  void _openViewer(DriverDocument doc) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DocumentViewerScreen(document: doc),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(driverComplianceViewModelProvider);
    final viewModel = ref.read(driverComplianceViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        title: const Text(
          "Driver's Corner",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            tooltip: 'Refresh Documents',
            onPressed: () => viewModel.refresh(driverId: widget.driverId),
          ),
        ],
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : state.errorMessage != null
              ? _buildErrorWidget(state.errorMessage!, viewModel)
              : _buildContent(context, state, viewModel),
    );
  }

  Widget _buildErrorWidget(String error, DriverComplianceViewModel viewModel) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.ERROR.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.error_outline_rounded, color: AppColors.ERROR, size: 48),
            ),
            const SizedBox(height: 16),
            const Text(
              'Unable to Load Compliance Documents',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              error,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.PRIMARY,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () => viewModel.refresh(driverId: widget.driverId),
              icon: const Icon(Icons.refresh_rounded, color: Colors.white),
              label: const Text('Try Again', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    DriverComplianceState state,
    DriverComplianceViewModel viewModel,
  ) {
    final response = state.response;
    final docs = state.filteredDocuments;

    return RefreshIndicator(
      onRefresh: () => viewModel.refresh(driverId: widget.driverId),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Driver Profile & Overall Compliance Header Card
            if (response != null) _buildDriverHeaderCard(response),

            const SizedBox(height: 20),

            // Search Bar & Filter Chips
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search documents...',
                      prefixIcon: const Icon(Icons.search_rounded, color: AppColors.PRIMARY),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear_rounded),
                              onPressed: () {
                                _searchController.clear();
                                viewModel.setSearchQuery('');
                              },
                            )
                          : null,
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    onChanged: (val) => viewModel.setSearchQuery(val),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Filter Chips
            Row(
              children: [
                _buildFilterChip('All', 'ALL', state.selectedFilter, viewModel),
                const SizedBox(width: 8),
                _buildFilterChip('Compliant / Active', 'COMPLIANT', state.selectedFilter, viewModel),
                const SizedBox(width: 8),
                _buildFilterChip('Non-Compliant / Expired', 'NON_COMPLIANT', state.selectedFilter, viewModel),
              ],
            ),

            const SizedBox(height: 16),

            // Count Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Documents (${docs.length})',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (state.searchQuery.isNotEmpty || state.selectedFilter != 'ALL')
                  TextButton(
                    onPressed: () {
                      _searchController.clear();
                      viewModel.setSearchQuery('');
                      viewModel.setFilter('ALL');
                    },
                    child: const Text('Clear Filters'),
                  ),
              ],
            ),

            const SizedBox(height: 10),

            // Documents List
            docs.isEmpty
                ? _buildEmptyState()
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: docs.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      return _buildDocumentCard(docs[index]);
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterChip(
    String label,
    String filterValue,
    String currentFilter,
    DriverComplianceViewModel viewModel,
  ) {
    final isSelected = currentFilter == filterValue;
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      selectedColor: AppColors.PRIMARY.withOpacity(0.15),
      labelStyle: TextStyle(
        color: isSelected ? AppColors.PRIMARY_DARK : Colors.grey.shade700,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        fontSize: 12,
      ),
      onSelected: (_) => viewModel.setFilter(filterValue),
    );
  }

  Widget _buildDriverHeaderCard(DriverComplianceResponse response) {
    final isPass = (response.overallStatus ?? '').toLowerCase() == 'pass' ||
        (response.overallStatus ?? '').toLowerCase() == 'active';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E293B), Color(0xFF0F172A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: AppColors.PRIMARY.withOpacity(0.2),
                      child: const Icon(Icons.person_rounded, color: AppColors.PRIMARY, size: 26),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            response.driverName ?? 'Driver Profile',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (response.driverNumber != null)
                            Text(
                              'Driver ID: ${response.driverNumber}',
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Overall Status Badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: isPass ? Colors.green.withOpacity(0.2) : Colors.amber.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: isPass ? Colors.green.shade400 : Colors.amber.shade400,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      isPass ? Icons.check_circle_rounded : Icons.warning_rounded,
                      color: isPass ? Colors.greenAccent : Colors.amberAccent,
                      size: 16,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      response.overallStatus ?? 'Unknown',
                      style: TextStyle(
                        color: isPass ? Colors.greenAccent : Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: Colors.white24, height: 1),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (response.branchName != null)
                Row(
                  children: [
                    Icon(Icons.school_rounded, color: Colors.grey.shade400, size: 16),
                    const SizedBox(width: 6),
                    Text(
                      response.branchName!,
                      style: TextStyle(color: Colors.grey.shade300, fontSize: 13),
                    ),
                  ],
                ),
              if (response.isCdl)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppColors.PRIMARY.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.PRIMARY.withOpacity(0.5)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.badge_rounded, color: AppColors.PRIMARY, size: 14),
                      SizedBox(width: 4),
                      Text(
                        'CDL Certified',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDocumentCard(DriverDocument doc) {
    final isCompliant = doc.isCompliant ||
        doc.status?.toLowerCase() == 'active' ||
        doc.status?.toLowerCase() == 'pass' ||
        doc.status?.toLowerCase() == 'negative';

    final hasAttachment = doc.hasFile || (doc.fileUrl != null && doc.fileUrl!.isNotEmpty);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row: Title & Document Type Badge
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isCompliant
                        ? AppColors.PRIMARY.withOpacity(0.1)
                        : Colors.amber.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    doc.isPdf
                        ? Icons.picture_as_pdf_rounded
                        : doc.isImage
                            ? Icons.image_rounded
                            : Icons.assignment_turned_in_rounded,
                    color: isCompliant ? AppColors.PRIMARY : Colors.amber.shade800,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doc.title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      if (doc.documentType != null) ...[
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Text(
                            doc.documentType!,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // Status Badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: isCompliant ? Colors.green.shade50 : Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isCompliant ? Colors.green.shade300 : Colors.red.shade300,
                    ),
                  ),
                  child: Text(
                    doc.status ?? (isCompliant ? 'Compliant' : 'Non-Compliant'),
                    style: TextStyle(
                      color: isCompliant ? Colors.green.shade800 : Colors.red.shade800,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
            const Divider(height: 1),
            const SizedBox(height: 12),

            // Metadata Grid / Details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Issue Date & Expiration Date
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today_rounded, size: 14, color: Colors.grey.shade500),
                          const SizedBox(width: 6),
                          Text(
                            'Issued: ${_formatDate(doc.issueDate)}',
                            style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(Icons.event_repeat_rounded, size: 14, color: Colors.grey.shade500),
                          const SizedBox(width: 6),
                          Text(
                            doc.expirationDate != null
                                ? 'Expires: ${_formatDate(doc.expirationDate)}'
                                : 'No Expiration',
                            style: TextStyle(
                              fontSize: 12,
                              color: doc.expirationDate != null ? Colors.grey.shade700 : Colors.green.shade700,
                              fontWeight: doc.expirationDate == null ? FontWeight.w600 : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Certificate Number
                if (doc.certificateNumber != null && doc.certificateNumber!.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.verified_rounded, size: 14, color: Colors.grey.shade500),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          'Cert #: ${doc.certificateNumber}',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade800, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],

                // Issuing Authority
                if (doc.issuingAuthority != null && doc.issuingAuthority!.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.account_balance_rounded, size: 14, color: Colors.grey.shade500),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          'Issuer: ${doc.issuingAuthority}',
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ),
                    ],
                  ),
                ],

                // Details Text
                if (doc.details != null && doc.details!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      doc.details!,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueGrey.shade900,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ],
            ),

            // Action Button to View Document
            if (hasAttachment) ...[
              const SizedBox(height: 14),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.PRIMARY,
                    side: const BorderSide(color: AppColors.PRIMARY),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: () => _openViewer(doc),
                  icon: Icon(
                    doc.isPdf ? Icons.picture_as_pdf_rounded : Icons.remove_red_eye_rounded,
                    size: 18,
                  ),
                  label: Text(
                    doc.isPdf ? 'View PDF Document' : doc.isImage ? 'View Image Attachment' : 'View Document',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Icon(Icons.folder_off_outlined, size: 56, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            const Text(
              'No Compliance Documents Found',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            Text(
              'No records match your selected criteria or search term.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
