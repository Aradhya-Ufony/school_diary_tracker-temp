import 'package:geolocator/geolocator.dart';


class GPSCaptureResult {
  final double latitude;
  final double longitude;
  final String? errorMessage;

  bool get isSuccess => errorMessage == null && latitude != 0.0 && longitude != 0.0;

  GPSCaptureResult.success(this.latitude, this.longitude) : errorMessage = null;
  GPSCaptureResult.failure(this.errorMessage) : latitude = 0.0, longitude = 0.0;
}

class GPSCaptureService {
  Future<GPSCaptureResult> captureLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return GPSCaptureResult.failure('Location services are disabled on device');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return GPSCaptureResult.failure('Location permission was denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return GPSCaptureResult.failure(
        'Location permission is permanently denied. Enable in device settings.',
      );
    }

    try {
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 10),
        ),
      );
      if (pos.latitude == 0.0 && pos.longitude == 0.0) {
        return GPSCaptureResult.failure('Invalid coordinates captured (0,0)');
      }
      return GPSCaptureResult.success(pos.latitude, pos.longitude);
    } catch (e) {
      return GPSCaptureResult.failure('Failed to lock GPS position: $e');
    }
  }
}
