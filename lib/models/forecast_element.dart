import 'package:freezed_annotation/freezed_annotation.dart';

import 'clouds.dart';
import 'main.dart';
import 'rain.dart';
import 'snow.dart';
import 'weather.dart';
import 'wind.dart';

part 'forecast_element.freezed.dart';
part 'forecast_element.g.dart';

@freezed
class ForecastElement with _$ForecastElement {
  const factory ForecastElement({
    @Default(0) int dt,
    required Main main,
    @Default(<Weather>[]) List<Weather> weather,
    required Clouds clouds,
    Wind? wind,
    @Default(0) int visibility,
    @Default(0) double pop,
    Rain? rain,
    Snow? snow,
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(name: 'dt_txt') String dtTxt,
  }) = ForecastElement$;

  factory ForecastElement.fromJson(Map<String, dynamic> json) =>
      _$ForecastElementFromJson(Map<String, dynamic>.from(json));
}
