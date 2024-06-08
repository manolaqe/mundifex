import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/flow_segment_data.dart';
import '../models/location_data.dart';

class TomtomApi {
  TomtomApi(this.apiKey);
  String apiKey;

  Future<FlowSegmentData> getFlowSegmentData(LocationData locationData) async {
    final String url =
        'https://api.tomtom.com/traffic/services/4/flowSegmentData/relative0/10/json?point=${locationData.lat}%2C${locationData.lon}&unit=KMPH&openLr=false&key=${apiKey}';

    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('Failed to load data');
    }

    final Map<String, dynamic> parsedData = json.decode(response.body) as Map<String, dynamic>;

    return FlowSegmentData.fromJson(parsedData['flowSegmentData'] as Map<String, dynamic>);
  }
}
