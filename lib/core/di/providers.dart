import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/route_repository.dart';
import '../../data/repositories/trip_repository.dart';
import '../flavors/flavor_config.dart';
import '../network/api_client.dart';
import '../services/location_tracking_service.dart';
import '../storage/local_storage_service.dart';

/// Exposes the active [FlavorConfig] to the widget tree / other providers.
///
/// Repositories and services that need the base URL (Step 2 onward) will
/// depend on this provider rather than importing FlavorConfig.instance
/// directly, so they stay easily testable (override this provider in tests
/// instead of relying on process-wide static state).
final flavorConfigProvider = Provider<FlavorConfig>((ref) {
  return FlavorConfig.instance;
});

/// [LocalStorageService] depends on `SharedPreferences.getInstance()`,
/// which is async — that can't be satisfied inside a synchronous Provider
/// body. Instead, `bootstrap()` in main_common.dart awaits it once before
/// `runApp()` and supplies the real instance via `overrideWithValue` in
/// [rootProviderOverrides]. This placeholder throws if something is
/// accidentally read before that override is applied, which is a startup
/// bug we want to fail loudly on rather than silently return nulls.
final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  throw UnimplementedError(
    'localStorageServiceProvider must be overridden in bootstrap() '
        'before runApp() — see main_common.dart.',
  );
});

/// The Dio-based API client (Step 2). Depends on [flavorConfigProvider] for
/// the base URL and [localStorageServiceProvider] for auth headers.
final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    flavorConfig: ref.watch(flavorConfigProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Routes list (Step 4).
final routeRepositoryProvider = Provider<RouteRepository>((ref) {
  return RouteRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Trip lifecycle (Step 5/6).
final tripRepositoryProvider = Provider<TripRepository>((ref) {
  return TripRepository(
    apiClient: ref.watch(apiClientProvider),
    storage: ref.watch(localStorageServiceProvider),
  );
});

/// Background location tracking (Step 5/6). Kept alive for the whole app
/// lifetime (not `.autoDispose`) — same reasoning as the original's
/// foreground `Service` outliving any single Activity: a trip in progress
/// must keep streaming location even if the driver navigates between
/// screens.
final locationTrackingServiceProvider = Provider<LocationTrackingService>((ref) {
  final service = LocationTrackingService(
    tripRepository: ref.watch(tripRepositoryProvider),
  );
  ref.onDispose(service.dispose);
  return service;
});

/// Root list of provider overrides applied at app startup, built from the
/// values `bootstrap()` has already resolved asynchronously (currently just
/// SharedPreferences). Add further async-initialized services here as
/// later steps introduce them, rather than threading more parameters
/// through main_*.dart.
List<Override> buildRootProviderOverrides({
  required LocalStorageService localStorageService,
}) {
  return [
    localStorageServiceProvider.overrideWithValue(localStorageService),
  ];
}

