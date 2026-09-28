import 'dart:developer' as dev;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/di/providers.dart';
import '../../../data/repositories/driver_compliance_repository.dart';
import 'driver_compliance_state.dart';

final driverComplianceViewModelProvider =
    StateNotifierProvider.autoDispose<DriverComplianceViewModel, DriverComplianceState>((ref) {
  final repository = ref.watch(driverComplianceRepositoryProvider);
  return DriverComplianceViewModel(repository: repository);
});

class DriverComplianceViewModel extends StateNotifier<DriverComplianceState> {
  final DriverComplianceRepository _repository;

  DriverComplianceViewModel({required DriverComplianceRepository repository})
      : _repository = repository,
        super(const DriverComplianceState()) {
    loadDriverCompliance();
  }

  Future<void> loadDriverCompliance({int? driverId}) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final response = await _repository.getDriverComplianceDocuments(driverId: driverId);
      state = state.copyWith(
        isLoading: false,
        response: response,
        errorMessage: null,
      );
    } catch (e, stack) {
      dev.log('Error loading driver compliance', name: 'DriverComplianceViewModel', error: e, stackTrace: stack);
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString().replaceAll('Exception: ', ''),
      );
    }
  }

  void setSearchQuery(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void setFilter(String filter) {
    state = state.copyWith(selectedFilter: filter);
  }

  Future<void> refresh({int? driverId}) async {
    await loadDriverCompliance(driverId: driverId);
  }
}
