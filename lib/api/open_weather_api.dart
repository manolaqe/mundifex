// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:http/http.dart';

import '../models/air_pollution_data.dart';
import '../models/air_pollution_data_forecast.dart';
import '../models/current_weather.dart';
import '../models/forecast_weather.dart';
import '../models/location_data.dart';

class OpenWeatherApi {
  OpenWeatherApi(this._client, this.appId);

  final String _baseUrl = 'https://api.openweathermap.org/data/2.5';
  final String _baseUrlGeo = 'https://api.openweathermap.org/geo/1.0';
  final Client _client;
  final String appId;

  Future<CurrentWeather> getCurrentWeather({required LocationData locationData, required bool imperialUnits}) async {
    final Uri uri = Uri.parse('$_baseUrl/weather');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'lat': '${locationData.lat}',
          'lon': '${locationData.lon}',
          'appId': appId,
          'units': imperialUnits ? 'imperial' : 'metric',
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return CurrentWeather.fromJson(json);
  }

  Future<ForecastWeather> getForecastWeather(
      {required LocationData locationData, required bool imperialUnits, int cnt = 40}) async {
    final Uri uri = Uri.parse('$_baseUrl/forecast');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'appId': appId,
          'lat': '${locationData.lat}',
          'lon': '${locationData.lon}',
          'units': imperialUnits ? 'imperial' : 'metric',
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return ForecastWeather.fromJson(json);
  }

  Future<AirPollutionData> getAirPollutionData({
    required LocationData locationData,
  }) async {
    final Uri uri = Uri.parse('$_baseUrl/air_pollution');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'lat': '${locationData.lat}',
          'lon': '${locationData.lon}',
          'appId': appId,
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return AirPollutionData.fromJson(json);
  }

  Future<AirPollutionDataForecast> getAirPollutionDataForecast({
    required LocationData locationData,
  }) async {
    final Uri uri = Uri.parse('$_baseUrl/air_pollution/forecast');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'lat': '${locationData.lat}',
          'lon': '${locationData.lon}',
          'appId': appId,
        },
      ),
    );

    final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;

    return AirPollutionDataForecast.fromJson(json);
  }

  Future<LocationData> getCoordinates({
    required String name,
  }) async {
    final Uri uri = Uri.parse('$_baseUrlGeo/direct');

    final Response response = await _client.get(
      uri.replace(
        queryParameters: <String, String>{
          'q': name,
          'appId': appId,
        },
      ),
    );

    if (response.statusCode != 200) {
      throw Exception('error getting coordinates');
    }

    final List<dynamic> json = jsonDecode(response.body) as List<dynamic>;

    final LocationData locationData = LocationData(lat: json.first['lat'] as double, lon: json.first['lon'] as double);

    return locationData;
  }
}
