import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/routing/app_router.dart';
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
        _handleDepotArrivalAutoPrompt(context, ref);
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
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        await _confirmStop(context, ref);
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => _confirmStop(context, ref),
          ),
          title: Text(route.name),
          actions: [
            IconButton(
              icon: const Icon(Icons.checklist),
              tooltip: l10n.mapStopsTooltip,
              onPressed: () => context.push(
                Constants.STOPS_ROUTE,
                extra: StopsRouteArgs(routeId: route.id, routeName: route.name),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.groups),
              tooltip: l10n.mapChildrenTooltip,
              onPressed: () => context.push(
                Constants.CHILDREN_ROUTE,
                extra: StopsRouteArgs(routeId: route.id, routeName: route.name),
              ),
            ),
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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: state.isStopping ? null : () => _confirmStop(context, ref),
          icon: const Icon(Icons.stop),
          label: Text(state.isStopping ? l10n.mapStopping : l10n.mapStop),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Future<void> _confirmStop(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.mapConfirmTitle),
        content: Text(l10n.mapConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.mapNo),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.mapYes),
          ),
        ],
      ),
    );

    if (confirmed != true || !context.mounted) return;

    final tripNotifier = ref.read(tripViewModelProvider(widget.route).notifier);
    final stopped = await tripNotifier.stopTrip();
    if (stopped && context.mounted) {
      context.go(Constants.HOME_ROUTE);
    }
  }

  Future<void> _handleDepotArrivalAutoPrompt(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context)!;
    final autoEnd = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.location_on, color: Colors.green),
            const SizedBox(width: 8),
            Text(l10n.depotArrivalDetectedTitle),
          ],
        ),
        content: Text(
          l10n.depotArrivalDetectedMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.genericCancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.PRIMARY),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.depotArrivalEndTripAndStartCheck, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (autoEnd == true && context.mounted) {
      final stopped =
          await ref.read(tripViewModelProvider(widget.route).notifier).stopTrip();
      if (stopped && context.mounted) {
        context.go(Constants.HOME_ROUTE);
      }
    }
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
}
