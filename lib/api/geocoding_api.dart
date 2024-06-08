import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/location_data.dart';

class GeocodingApi {
  GeocodingApi(this.apiKey);
  String apiKey;

  Future<Map<String, String>> getAddress(LocationData locationData) async {
    final String url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${locationData.lat},${locationData.lon}&key=${apiKey}';

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final Map<String, dynamic> parsedData = json.decode(response.body) as Map<String, dynamic>;
    final String address = parsedData['results'][0]['formatted_address'] as String;
    String sector = '';

    final List<dynamic> addressComponents = parsedData['results'][0]['address_components'] as List<dynamic>;

    for (final Map<String, dynamic> component in addressComponents as List<Map<String, dynamic>>) {
      final String longName = component['long_name'] as String;

      if (longName.contains('Sector') || longName.contains('Sectorul')) {
        final List<String> parts = longName.split(' ');
        final String sectorFound = parts.last.trim();

        sector = sectorFound;
      }
    }

    final Map<String, String> addressMap = {
      'address': address,
      'sector': 'sector $sector',
    };

    return addressMap;
  }
}
