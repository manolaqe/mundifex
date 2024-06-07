import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/location_data.dart';

class GeocodingApi {
  GeocodingApi(this.apiKey);
  String apiKey;

  Future<String> getAddress(LocationData _locationData) async {
    final String url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${_locationData.lat},${_locationData.lon}&key=${apiKey}';

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final Map<String, dynamic> parsedData = json.decode(response.body) as Map<String, dynamic>;
    final String address = parsedData['results'][0]['formatted_address'] as String;

    return address;
  }
}
