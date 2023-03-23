import 'package:geolocator/geolocator.dart';

class LocationRepository {
  LocationRepository();
  Stream<Position> positionStream() => Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 50,
        ),
      );
}
