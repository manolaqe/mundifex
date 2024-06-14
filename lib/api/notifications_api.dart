import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:location/location.dart';
import '../models/location_data.dart' as location_model;

class NotificationsApi {
  const NotificationsApi({required FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin})
      : _flutterLocalNotificationsPlugin = flutterLocalNotificationsPlugin;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  Future<void> sendNotification() async {
    final bool granted = await _flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
            ?.areNotificationsEnabled() ??
        false;

    if (!granted) {
      _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()!
          .requestNotificationsPermission();
    }

    // PermissionStatus permissionStatus = await _location.hasPermission();

    // if (permissionStatus != PermissionStatus.granted) {
    //   permissionStatus = await _location.requestPermission();
    // }

    // final LocationData rawLocationData = await _location.getLocation();

    // final location_model.LocationData locationData = location_model.LocationData(
    //   lat: rawLocationData.latitude!,
    //   lon: rawLocationData.longitude!,
    // );

    // return locationData;
  }
}
