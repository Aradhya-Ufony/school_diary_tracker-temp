import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/di/providers.dart';
import '../../../core/storage/local_storage_service.dart';
import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../data/models/vehicle_state_response.dart';
import '../../../data/repositories/dvir_repository.dart';
import '../../../data/repositories/route_repository.dart';

class HomeState {
  final bool isLoading;
  final List<RouteResponse> allRoutes;
  final String searchQuery;
  final String? error;
  final VehicleStateResponse? vehicleState;
  final bool isVehicleStateLoading;

  const HomeState({
    this.isLoading = false,
    this.allRoutes = const [],
    this.searchQuery = '',
    this.error,
    this.vehicleState,
    this.isVehicleStateLoading = false,
  });

  List<RouteResponse> get filteredRoutes {
    final now = DateTime.now();
    final liveRoutes = allRoutes.where((r) => r.isLiveAt(now)).toList();
    if (searchQuery.isEmpty) return liveRoutes;
    final q = searchQuery.toLowerCase();
    return liveRoutes.where((r) => r.name.toLowerCase().contains(q)).toList();
  }

  HomeState copyWith({
    bool? isLoading,
    List<RouteResponse>? allRoutes,
    String? searchQuery,
    String? error,
    VehicleStateResponse? vehicleState,
    bool? isVehicleStateLoading,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      allRoutes: allRoutes ?? this.allRoutes,
      searchQuery: searchQuery ?? this.searchQuery,
      error: error,
      vehicleState: vehicleState ?? this.vehicleState,
      isVehicleStateLoading: isVehicleStateLoading ?? this.isVehicleStateLoading,
    );
  }
}

class HomeViewModel extends StateNotifier<HomeState> {
  final RouteRepository _routeRepository;
  final LocalStorageService _storage;
  final DvirRepository _dvirRepository;
  StreamSubscription? _dvirSubscription;

  HomeViewModel(
    this._routeRepository,
    this._storage,
    this._dvirRepository,
  ) : super(const HomeState()) {
    _loadRoutes();
    _listenToDvirChanges();
  }

  void _listenToDvirChanges() {
    _dvirSubscription = _dvirRepository.onVehicleStateChanged.listen((_) {
      refreshVehicleState(silent: true);
    });
  }

  @override
  void dispose() {
    _dvirSubscription?.cancel();
    super.dispose();
  }

  Future<void> _loadRoutes() async {
    state = state.copyWith(isLoading: true, isVehicleStateLoading: true, error: null);
    try {
      final routes = await _routeRepository.getRoutes();
      state = state.copyWith(allRoutes: routes, isLoading: false);

      if (routes.isNotEmpty) {
        final firstRoute = routes.first;
        final vehicleId = firstRoute.vehicleId ?? 0;
        final busNumber = firstRoute.vehicleLicenseNumber;
        try {
          final vehicleState = await _dvirRepository.getVehicleState(
            vehicleId,
            fallbackBusNumber: busNumber,
          );
          state = state.copyWith(
            vehicleState: vehicleState,
            isVehicleStateLoading: false,
          );
        } catch (e) {
          state = state.copyWith(
            isVehicleStateLoading: false,
          );
        }
      } else {
        state = state.copyWith(isVehicleStateLoading: false);
      }
    } catch (_) {
      state = state.copyWith(
        isLoading: false,
        isVehicleStateLoading: false,
        error: 'Unable to load routes. Please try again.',
      );
    }
  }

  Future<void> refresh() => _loadRoutes();

  Future<void> refreshVehicleState({bool silent = true}) async {
    if (state.allRoutes.isEmpty) {
      await _loadRoutes();
      return;
    }
    if (!silent) {
      state = state.copyWith(isVehicleStateLoading: true);
    }
    final firstRoute = state.allRoutes.first;
    final vehicleId = firstRoute.vehicleId ?? 0;
    final busNumber = firstRoute.vehicleLicenseNumber;
    try {
      final latestState = await _dvirRepository.getVehicleState(
        vehicleId,
        fallbackBusNumber: busNumber,
      );
      if (state.vehicleState != latestState || state.isVehicleStateLoading) {
        state = state.copyWith(
          vehicleState: latestState,
          isVehicleStateLoading: false,
        );
      }
    } catch (e) {
      if (state.isVehicleStateLoading) {
        state = state.copyWith(
          isVehicleStateLoading: false,
        );
      }
    }
  }

  void search(String query) {
    state = state.copyWith(searchQuery: query);
  }

  Future<void> selectRoute(RouteResponse route) async {
    await _storage.setString(StorageKeys.ROUTE_ID, route.id.toString());
  }
}

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  return HomeViewModel(
    ref.watch(routeRepositoryProvider),
    ref.watch(localStorageServiceProvider),
    ref.watch(dvirRepositoryProvider),
  );
});
