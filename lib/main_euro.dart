import 'core/flavors/flavor_config.dart';
import 'main_common.dart';

/// Entry point for the EuroWebGenieRouteTracker flavor.
/// Run with: flutter run --flavor euroWebGenieRouteTracker -t lib/main_euro.dart
void main() async {
  await bootstrap(FlavorConfig.euro);
}
