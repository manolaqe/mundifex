// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_pollution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MainPollution _$MainPollutionFromJson(Map<String, dynamic> json) {
  return MainPollution$.fromJson(json);
}

/// @nodoc
mixin _$MainPollution {
  int get aqi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainPollutionCopyWith<MainPollution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPollutionCopyWith<$Res> {
  factory $MainPollutionCopyWith(
          MainPollution value, $Res Function(MainPollution) then) =
      _$MainPollutionCopyWithImpl<$Res, MainPollution>;
  @useResult
  $Res call({int aqi});
}

/// @nodoc
class _$MainPollutionCopyWithImpl<$Res, $Val extends MainPollution>
    implements $MainPollutionCopyWith<$Res> {
  _$MainPollutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aqi = null,
  }) {
    return _then(_value.copyWith(
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPollution$ImplCopyWith<$Res>
    implements $MainPollutionCopyWith<$Res> {
  factory _$$MainPollution$ImplCopyWith(_$MainPollution$Impl value,
          $Res Function(_$MainPollution$Impl) then) =
      __$$MainPollution$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int aqi});
}

/// @nodoc
class __$$MainPollution$ImplCopyWithImpl<$Res>
    extends _$MainPollutionCopyWithImpl<$Res, _$MainPollution$Impl>
    implements _$$MainPollution$ImplCopyWith<$Res> {
  __$$MainPollution$ImplCopyWithImpl(
      _$MainPollution$Impl _value, $Res Function(_$MainPollution$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aqi = null,
  }) {
    return _then(_$MainPollution$Impl(
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainPollution$Impl implements MainPollution$ {
  const _$MainPollution$Impl({this.aqi = 0});

  factory _$MainPollution$Impl.fromJson(Map<String, dynamic> json) =>
      _$$MainPollution$ImplFromJson(json);

  @override
  @JsonKey()
  final int aqi;

  @override
  String toString() {
    return 'MainPollution(aqi: $aqi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPollution$Impl &&
            (identical(other.aqi, aqi) || other.aqi == aqi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, aqi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPollution$ImplCopyWith<_$MainPollution$Impl> get copyWith =>
      __$$MainPollution$ImplCopyWithImpl<_$MainPollution$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainPollution$ImplToJson(
      this,
    );
  }
}

abstract class MainPollution$ implements MainPollution {
  const factory MainPollution$({final int aqi}) = _$MainPollution$Impl;

  factory MainPollution$.fromJson(Map<String, dynamic> json) =
      _$MainPollution$Impl.fromJson;

  @override
  int get aqi;
  @override
  @JsonKey(ignore: true)
  _$$MainPollution$ImplCopyWith<_$MainPollution$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
