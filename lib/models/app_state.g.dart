// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      users: (json['users'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, AppUser.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, AppUser>{},
      locationData: json['locationData'] == null
          ? null
          : LocationData.fromJson(json['locationData'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      airPollutionData: json['airPollutionData'] == null
          ? null
          : AirPollutionData.fromJson(
              json['airPollutionData'] as Map<String, dynamic>),
      airTrafficData: json['airTrafficData'] as Map<String, dynamic>?,
      weatherData: json['weatherData'] == null
          ? null
          : CurrentWeather.fromJson(
              json['weatherData'] as Map<String, dynamic>),
      addressData: json['addressData'] == null
          ? null
          : AddressData.fromJson(json['addressData'] as Map<String, dynamic>),
      flowSegmentData: json['flowSegmentData'] == null
          ? null
          : FlowSegmentData.fromJson(
              json['flowSegmentData'] as Map<String, dynamic>),
      waterQualityData: (json['waterQualityData'] as List<dynamic>?)
          ?.map((e) => WaterQualityData.fromJson(e as Map<String, dynamic>))
          .toList(),
      forecastWeather: json['forecastWeather'] == null
          ? null
          : ForecastWeather.fromJson(
              json['forecastWeather'] as Map<String, dynamic>),
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'users': instance.users,
      'locationData': instance.locationData,
      'isLoading': instance.isLoading,
      'airPollutionData': instance.airPollutionData,
      'airTrafficData': instance.airTrafficData,
      'weatherData': instance.weatherData,
      'addressData': instance.addressData,
      'flowSegmentData': instance.flowSegmentData,
      'waterQualityData': instance.waterQualityData,
      'forecastWeather': instance.forecastWeather,
      'posts': instance.posts,
    };
