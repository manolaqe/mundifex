import 'package:location/location.dart';
import '../models/location_data.dart' as location_model;

class LocationApi {
  const LocationApi({required Location location}) : _location = location;
  final Location _location;

  Future<location_model.LocationData> getLocation() async {
    PermissionStatus permissionStatus = await _location.hasPermission();

    if (permissionStatus != PermissionStatus.granted) {
      permissionStatus = await _location.requestPermission();
    }

    final LocationData rawLocationData = await _location.getLocation();
    final location_model.LocationData locationData = location_model.LocationData(
      lat: rawLocationData.latitude!,
      lon: rawLocationData.longitude!,
    );

    return locationData;
  }
}
