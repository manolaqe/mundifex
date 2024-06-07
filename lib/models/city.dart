import 'package:freezed_annotation/freezed_annotation.dart';

import 'coord.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    @Default(0) int id,
    @Default('') String name,
    required Coord coord,
    @Default('') String country,
    @Default(0) int population,
    @Default(0) int timezone,
    @Default(0) int sunrise,
    @Default(0) int sunset,
  }) = City$;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(Map<String, dynamic>.from(json));
}
