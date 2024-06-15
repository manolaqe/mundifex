import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/address_data.dart';
import '../models/location_data.dart';

class GeocodingApi {
  GeocodingApi(this.apiKey);
  String apiKey;

  Future<AddressData> getAddress(LocationData locationData) async {
    final String url =
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=${locationData.lat},${locationData.lon}&key=$apiKey';

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final Map<String, dynamic> parsedData = jsonDecode(response.body) as Map<String, dynamic>;

    return AddressData.fromJson(parsedData);
  }
}
