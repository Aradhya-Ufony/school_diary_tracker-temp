import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/utils/app_constants.dart';
import '../../../data/models/route_response.dart';
import '../../../l10n/generated/app_localizations.dart';
import '../viewmodel/trip_viewmodel.dart';

/// Flutter equivalent of `TransportActivity` + `transport_activity.xml`.
class TransportMapScreen extends ConsumerStatefulWidget {
  final RouteResponse route;

  const TransportMapScreen({super.key, required this.route});

  @override
  ConsumerState<TransportMapScreen> createState() => _TransportMapScreenState();
}

class _TransportMapScreenState extends ConsumerState<TransportMapScreen> {
  static const _defaultPosition = LatLng(21.0000, 78.0000);
  GoogleMapController? _mapController;

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final route = widget.route;
    final l10n = AppLocalizations.of(context)!;
    final state = ref.watch(tripViewModelProvider(route));

    final busPosition = state.currentPosition != null
        ? LatLng(
            state.currentPosition!.latitude, state.currentPosition!.longitude)
        : (route.startLocation != null
            ? LatLng(route.startLocation!.latitude,
                route.startLocation!.longitude)
            : _defaultPosition);

    ref.listen<TripState>(tripViewModelProvider(route), (previous, next) {
      if (next.error != null && (previous == null || previous.error != next.error)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error!),
            backgroundColor: Colors.red,
          ),
        );
      }
      if (next.currentPosition != null &&
          (previous == null || previous.currentPosition != next.currentPosition)) {
        _mapController?.animateCamera(
          CameraUpdate.newLatLng(
            LatLng(next.currentPosition!.latitude, next.currentPosition!.longitude),
          ),
        );
      }
      if (next.showReconnectWarning && context.mounted) {
        _showReconnectWarning(context, ref);
      }
      if (next.depotArrivalDetected && (previous == null || !previous.depotArrivalDetected) && context.mounted) {
        _showDepotArrivalDialog(context, ref);
      }
    });

    final markers = <Marker>{
      Marker(
        markerId: const MarkerId('bus'),
        position: busPosition,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: InfoWindow(title: l10n.mapCurrentPosition),
        zIndex: 2,
      ),
    };

    if (route.startLocation != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('start_location'),
          position: LatLng(route.startLocation!.latitude, route.startLocation!.longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
          infoWindow: InfoWindow(
            title: l10n.mapStartLocation,
            snippet: route.name,
          ),
        ),
      );
    }

    if (route.endLocation != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('end_location'),
          position: LatLng(route.endLocation!.latitude, route.endLocation!.longitude),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
          infoWindow: InfoWindow(
            title: l10n.mapEndLocation,
            snippet: route.name,
          ),
        ),
      );
    }

    final polylinePoints = <LatLng>[];
    if (route.startLocation != null) {
      polylinePoints.add(LatLng(route.startLocation!.latitude, route.startLocation!.longitude));
    }

    for (final stop in state.stops) {
      if (stop.latitude != null && stop.longitude != null) {
        final pos = LatLng(stop.latitude!, stop.longitude!);
        polylinePoints.add(pos);
        markers.add(
          Marker(
            markerId: MarkerId('stop_${stop.id ?? stop.address}'),
            position: pos,
            infoWindow: InfoWindow(
              title: stop.address ?? l10n.mapDefaultStop,
              snippet:
                  '${stop.totalPickedDropped}/${stop.children.length} ${l10n.stopsStatusComplete}',
            ),
          ),
        );
      }
    }

    if (route.endLocation != null) {
      polylinePoints.add(LatLng(route.endLocation!.latitude, route.endLocation!.longitude));
    }

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go(Constants.HOME_ROUTE),
          ),
          title: Text(route.name),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Center(
                child: Text(
                  state.currentPosition == null
                      ? l10n.mapWaitingGps
                      : l10n.mapUpdatedAgo(state.secondsSinceLastUpdate),
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
              onMapCreated: (controller) {
                _mapController = controller;
              },
              markers: markers,
              polylines: {
                if (polylinePoints.length > 1)
                  Polyline(
                    polylineId: const PolylineId('route'),
                    points: polylinePoints,
                    color: Colors.blue,
                    width: 5,
                  ),
              },
              myLocationEnabled: true,
            ),
            if (state.currentPosition == null || state.isLoadingStops)
              const Positioned(
                top: 16,
                left: 0,
                right: 0,
                child: Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),
    );
  }



  void _showReconnectWarning(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.mapReconnectTitle),
        content: Text(l10n.mapReconnectMessage),
        actions: [
          TextButton(
            onPressed: () {
              ref
                  .read(tripViewModelProvider(widget.route).notifier)
                  .dismissReconnectWarning();
              Navigator.of(dialogContext).pop();
            },
            child: Text(l10n.genericOk),
          ),
        ],
      ),
    );
  }

  void _showDepotArrivalDialog(BuildContext context, WidgetRef ref) {
    int countdown = 30;
    Timer? timer;

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (context, setDialogState) {
            timer ??= Timer.periodic(const Duration(seconds: 1), (t) {
              if (countdown > 1) {
                setDialogState(() {
                  countdown--;
                });
              } else {
                t.cancel();
                if (Navigator.of(dialogContext).canPop()) {
                  Navigator.of(dialogContext).pop();
                }
                ref.read(tripViewModelProvider(widget.route).notifier).stopTrip().then((_) {
                  if (context.mounted) {
                    context.go(Constants.CHILD_SAFETY_CHECK_ROUTE, extra: widget.route);
                  }
                });
              }
            });

            return AlertDialog(
              title: const Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.orange),
                  SizedBox(width: 8),
                  Text('Depot Arrival Detected'),
                ],
              ),
              content: Text(
                'Depot arrival detected. Ending trip in $countdown seconds...',
                style: const TextStyle(fontSize: 15),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    timer?.cancel();
                    ref.read(tripViewModelProvider(widget.route).notifier).cancelDepotArrivalAlert();
                    Navigator.of(dialogContext).pop();
                  },
                  child: const Text('CANCEL'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    timer?.cancel();
                    Navigator.of(dialogContext).pop();
                    ref.read(tripViewModelProvider(widget.route).notifier).stopTrip().then((_) {
                      if (context.mounted) {
                        context.go(Constants.CHILD_SAFETY_CHECK_ROUTE, extra: widget.route);
                      }
                    });
                  },
                  child: const Text('CONFIRM NOW'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
