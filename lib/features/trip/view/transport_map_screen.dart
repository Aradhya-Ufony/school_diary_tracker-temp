import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/routing/app_router.dart';
import '../../../data/models/route_response.dart';
import '../viewmodel/trip_viewmodel.dart';

/// Flutter equivalent of `TransportActivity` + `transport_activity.xml`.
/// Uses `google_maps_flutter` in place of the original's Google Maps
/// Android SDK v2 `MapFragment`/`GoogleMap` — same underlying map
/// provider, modern cross-platform binding.
///
/// See `TripViewModel.stopTrip()`'s doc comment for an important note:
/// the original's Stop button here had no working click handler at all in
/// production. This version's Stop button is real, working functionality,
/// not a straight port.
class TransportMapScreen extends ConsumerWidget {
  final RouteResponse route;

  const TransportMapScreen({super.key, required this.route});

  // Original's default camera position before any fix arrives:
  // `new LatLng(21.0000, 78.0000)` — roughly the geographic center of
  // India. Kept as-is; it's a reasonable default for this app's actual
  // deployment region, not an arbitrary placeholder to second-guess.
  static const _defaultPosition = LatLng(21.0000, 78.0000);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tripViewModelProvider(route));

    final busPosition = state.currentPosition != null
        ? LatLng(
            state.currentPosition!.latitude, state.currentPosition!.longitude)
        : (route.startLocation != null
            ? LatLng(route.startLocation!.latitude,
                route.startLocation!.longitude)
            : _defaultPosition);

    ref.listen(tripViewModelProvider(route), (previous, next) {
      if (next.showReconnectWarning && context.mounted) {
        _showReconnectWarning(context, ref);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(route.name),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Text(
                state.currentPosition == null
                    ? 'Waiting for GPS...'
                    : 'Updated ${state.secondsSinceLastUpdate}s ago',
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:
                CameraPosition(target: busPosition, zoom: 15),
            markers: {
              Marker(
                markerId: const MarkerId('bus'),
                position: busPosition,
                infoWindow: const InfoWindow(title: 'Current Position'),
              ),
            },
            myLocationEnabled: true,
          ),
          if (state.currentPosition == null)
            const Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: state.isStopping ? null : () => _confirmStop(context, ref),
        icon: const Icon(Icons.stop),
        label: Text(state.isStopping ? 'Stopping...' : 'Stop'),
        backgroundColor: Colors.red,
      ),
    );
  }

  /// Ported from `BusRunningActivity.ShowAlertDialog()`'s Yes/No
  /// confirmation — the only working stop-confirmation flow that existed
  /// anywhere in the original codebase (see `TripViewModel.stopTrip()`
  /// for the full explanation of why this screen didn't have its own).
  Future<void> _confirmStop(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Confirm'),
        content: const Text('Do you really want to close the trip?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    final stopped =
        await ref.read(tripViewModelProvider(route).notifier).stopTrip();
    if (stopped && context.mounted) {
      context.go(AppRoutes.homeShell);
    }
  }

  /// Ported from `TransportActivity`'s 65-second watchdog
  /// (`ShowAlertDialogFail`) — originally also vibrated the device and
  /// played a sound via `MediaSounds`; those are cosmetic and can be
  /// added back easily if you'd like (not included here to keep this
  /// step focused on the core tracking/stop functionality).
  void _showReconnectWarning(BuildContext context, WidgetRef ref) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Tracker'),
        content: const Text(
          'Location update failing frequently, Please check your internet.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref
                  .read(tripViewModelProvider(route).notifier)
                  .dismissReconnectWarning();
              Navigator.of(dialogContext).pop();
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
