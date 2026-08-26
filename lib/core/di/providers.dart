import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/children_repository.dart';
import '../../data/repositories/route_repository.dart';
import '../../data/repositories/stops_repository.dart';
import '../../data/repositories/trip_repository.dart';
import '../network/api_client.dart';
import '../routing/app_router.dart';
import '../services/crash_reporting_service.dart';
import '../services/location_tracking_service.dart';
import '../storage/local_storage_service.dart';
import '../../data/repositories/dvir_repository.dart';

/// [LocalStorageService] placeholder.
final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  throw UnimplementedError(
    'localStorageServiceProvider must be overridden in bootstrap() '
    'before runApp() — see main_common.dart.',
  );
});

/// Crash reporting
final crashReportingServiceProvider = Provider<CrashReportingService>((ref) {
  return CrashReportingService();
});

/// The Dio-based API client
/// Automatically tracks the current screen via [currentScreenProvider]
/// for logging purposes.
final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    storage: ref.watch(localStorageServiceProvider),
    crashReporting: ref.watch(crashReportingServiceProvider),
    getScreen: () => ref.read(currentScreenProvider),
  );
});

/// Routes list
final routeRepositoryProvider = Provider<RouteRepository>((ref) {
  return RouteRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Trip lifecycle
final tripRepositoryProvider = Provider<TripRepository>((ref) {
  return TripRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Stops & pick/drop
final stopsRepositoryProvider = Provider<StopsRepository>((ref) {
  return StopsRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Children & guardians
final childrenRepositoryProvider = Provider<ChildrenRepository>((ref) {
  return ChildrenRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// eDVIR repository
final dvirRepositoryProvider = Provider<DvirRepository>((ref) {
  return DvirRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Background location tracking
final locationTrackingServiceProvider = Provider<LocationTrackingService>((ref) {
  final service = LocationTrackingService(
    tripRepository: ref.watch(tripRepositoryProvider),
  );
  ref.onDispose(service.dispose);
  return service;
});

/// Root list of provider overrides.
List<Override> buildRootProviderOverrides({
  required LocalStorageService localStorageService,
}) {
  return [
    localStorageServiceProvider.overrideWithValue(localStorageService),
  ];
}
