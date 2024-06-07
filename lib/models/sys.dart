import 'package:freezed_annotation/freezed_annotation.dart';

part 'sys.freezed.dart';
part 'sys.g.dart';

@freezed
class Sys with _$Sys {
  const factory Sys({
    @Default(0) int type,
    @Default(0) int id,
    @Default('') String country,
    @Default(0) int sunrise,
    @Default(0) int sunset,
  }) = Sys$;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(Map<String, dynamic>.from(json));
}
