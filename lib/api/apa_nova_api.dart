import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/water_quality_data.dart';

class ApaNovaApi {
  Future<List<WaterQualityData>> getWaterQualityData() async {
    const String url = 'https://www.apanovabucuresti.ro/water/info';

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final List<dynamic> parsedData = json.decode(response.body) as List<dynamic>;

    final List<WaterQualityData> waterQualityDataList =
        parsedData.map((dynamic jsonObject) => WaterQualityData.fromJson(jsonObject as Map<String, dynamic>)).toList();

    return waterQualityDataList;
  }
}
