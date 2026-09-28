import '../../../data/models/driver_document.dart';

class DriverComplianceState {
  final bool isLoading;
  final String? errorMessage;
  final DriverComplianceResponse? response;
  final String searchQuery;
  final String selectedFilter; // 'ALL', 'COMPLIANT', 'NON_COMPLIANT'

  const DriverComplianceState({
    this.isLoading = false,
    this.errorMessage,
    this.response,
    this.searchQuery = '',
    this.selectedFilter = 'ALL',
  });

  DriverComplianceState copyWith({
    bool? isLoading,
    String? errorMessage,
    DriverComplianceResponse? response,
    String? searchQuery,
    String? selectedFilter,
  }) {
    return DriverComplianceState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      response: response ?? this.response,
      searchQuery: searchQuery ?? this.searchQuery,
      selectedFilter: selectedFilter ?? this.selectedFilter,
    );
  }

  List<DriverDocument> get filteredDocuments {
    if (response == null) return [];
    var list = response!.documents;

    if (selectedFilter == 'COMPLIANT') {
      list = list.where((d) => d.isCompliant || d.status?.toLowerCase() == 'active' || d.status?.toLowerCase() == 'pass').toList();
    } else if (selectedFilter == 'NON_COMPLIANT') {
      list = list.where((d) => !d.isCompliant || d.status?.toLowerCase() == 'expired' || d.status?.toLowerCase() == 'fail').toList();
    }

    if (searchQuery.trim().isNotEmpty) {
      final query = searchQuery.trim().toLowerCase();
      list = list.where((d) {
        final titleMatch = d.title.toLowerCase().contains(query);
        final docTypeMatch = (d.documentType ?? '').toLowerCase().contains(query);
        final certMatch = (d.certificateNumber ?? '').toLowerCase().contains(query);
        final detailsMatch = (d.details ?? '').toLowerCase().contains(query);
        final authorityMatch = (d.issuingAuthority ?? '').toLowerCase().contains(query);
        return titleMatch || docTypeMatch || certMatch || detailsMatch || authorityMatch;
      }).toList();
    }

    return list;
  }
}
