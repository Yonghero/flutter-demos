import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0;
  late double longitude;

  Future<void> getLocation() async {
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {}
  }
}
