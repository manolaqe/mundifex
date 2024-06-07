import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/location_data.dart';

class AirQualityApi {
  AirQualityApi({required LocationData locationData}) : _locationData = locationData;

  final LocationData _locationData;

  Future<Map<String, dynamic>> getAirQualityData() async {
    final String url =
        'https://api.airvisual.com/v2/nearest_city?lat=${_locationData.lat}&lon=${_locationData.lon}&key=2fbc3070-d3d7-46fd-9ad1-06e5781e4230';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final Map<String, dynamic> parsedData = json.decode(response.body) as Map<String, dynamic>;

    return parsedData;
  }
}
