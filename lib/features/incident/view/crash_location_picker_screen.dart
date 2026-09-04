import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dio/dio.dart';
import '../../../l10n/generated/app_localizations.dart';

class CrashLocationPickerScreen extends StatefulWidget {
  final LatLng initialLocation;
  const CrashLocationPickerScreen({super.key, required this.initialLocation});

  @override
  State<CrashLocationPickerScreen> createState() => _CrashLocationPickerScreenState();
}

class _CrashLocationPickerScreenState extends State<CrashLocationPickerScreen> {
  late LatLng _selectedLocation;
  GoogleMapController? _mapController;
  final _searchController = TextEditingController();
  List<Map<String, dynamic>> _searchResults = [];
  final _dio = Dio();

  // The active Google Maps API Key configured in the project.
  // In a live environment, make sure this key has the "Geocoding API" and "Places API" enabled on Google Cloud Console.
  final String _apiKey = 'AIzaSyCMcN2Ns07e7wKDB1sQA_bNkXnRH759LKs';

  @override
  void initState() {
    super.initState();
    _selectedLocation = widget.initialLocation;
  }

  @override
  void dispose() {
    _mapController?.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _searchLocation(String query) async {
    if (query.trim().isEmpty) {
      setState(() {
        _searchResults = [];
      });
      return;
    }

    try {
      // 1. Attempt to call live Google Geocoding API
      final geocodeUrl = 'https://maps.googleapis.com/maps/api/geocode/json';
      final response = await _dio.get(
        geocodeUrl,
        queryParameters: {
          'address': query,
          'key': _apiKey,
        },
      );

      if (response.statusCode == 200 && response.data['status'] == 'OK') {
        final results = response.data['results'] as List;
        final List<Map<String, dynamic>> parsedResults = [];

        for (final res in results) {
          final address = res['formatted_address'] as String;
          final lat = res['geometry']['location']['lat'] as double;
          final lng = res['geometry']['location']['lng'] as double;
          parsedResults.add({
            'name': address,
            'lat': lat,
            'lng': lng,
          });
        }

        if (parsedResults.isNotEmpty) {
          setState(() {
            _searchResults = parsedResults;
          });
          return;
        }
      }
    } catch (_) {
      // Silently catch error
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.crashLocationPickerTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            tooltip: l10n.crashLocationPickerTooltip,
            onPressed: () {
              Navigator.pop(context, _selectedLocation);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: l10n.crashLocationPickerSearchHint,
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    onChanged: _searchLocation,
                    onSubmitted: (val) {
                      _searchLocation(val);
                      if (_searchResults.isNotEmpty) {
                        final first = _searchResults.first;
                        final newLoc = LatLng(first['lat'] as double, first['lng'] as double);
                        setState(() {
                          _selectedLocation = newLoc;
                          _searchResults = [];
                          _searchController.text = first['name'] as String;
                        });
                        _mapController?.animateCamera(CameraUpdate.newLatLngZoom(newLoc, 15));
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    _searchLocation(_searchController.text);
                  },
                ),
              ],
            ),
          ),
          if (_searchResults.isNotEmpty)
            Container(
              constraints: const BoxConstraints(maxHeight: 200),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  final loc = _searchResults[index];
                  final isSelected = _selectedLocation.latitude == loc['lat'] &&
                      _selectedLocation.longitude == loc['lng'];
                  return ListTile(
                    title: Text(loc['name'] as String),
                    subtitle: Text(
                      l10n.crashLocationPickerCoords(
                        (loc['lat'] as double).toStringAsFixed(4),
                        (loc['lng'] as double).toStringAsFixed(4),
                      ),
                    ),
                    trailing: isSelected ? const Icon(Icons.check_circle, color: Colors.green) : null,
                    onTap: () {
                      final newLoc = LatLng(loc['lat'] as double, loc['lng'] as double);
                      setState(() {
                        _selectedLocation = newLoc;
                        _searchResults = [];
                        _searchController.text = loc['name'] as String;
                      });
                      _mapController?.animateCamera(CameraUpdate.newLatLngZoom(newLoc, 15));
                    },
                  );
                },
              ),
            ),
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: _selectedLocation,
                    zoom: 14,
                  ),
                  onMapCreated: (controller) => _mapController = controller,
                  onCameraMove: (position) {
                    _selectedLocation = position.target;
                  },
                  onCameraIdle: () {
                    setState(() {});
                  },
                  onTap: (latLng) {
                    setState(() {
                      _selectedLocation = latLng;
                    });
                    _mapController?.animateCamera(CameraUpdate.newLatLng(latLng));
                  },
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Icon(
                      Icons.location_pin,
                      size: 48,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
