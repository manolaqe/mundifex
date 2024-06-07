import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @Default(0) int id,
    @Default('') String main,
    @Default('') String description,
    @Default('') String icon,
  }) = Weather$;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(Map<String, dynamic>.from(json));
}
