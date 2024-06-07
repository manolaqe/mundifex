import 'package:freezed_annotation/freezed_annotation.dart';

part 'clouds.freezed.dart';
part 'clouds.g.dart';

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    @Default(0) int all,
  }) = Clouds$;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(Map<String, dynamic>.from(json));
}
