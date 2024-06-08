// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'water_quality_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaterQualityData _$WaterQualityDataFromJson(Map<String, dynamic> json) {
  return WaterQualityData$.fromJson(json);
}

/// @nodoc
mixin _$WaterQualityData {
  String get id => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get clor => throw _privateConstructorUsedError;
  String get ph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaterQualityDataCopyWith<WaterQualityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaterQualityDataCopyWith<$Res> {
  factory $WaterQualityDataCopyWith(
          WaterQualityData value, $Res Function(WaterQualityData) then) =
      _$WaterQualityDataCopyWithImpl<$Res, WaterQualityData>;
  @useResult
  $Res call({String id, String sector, String clor, String ph});
}

/// @nodoc
class _$WaterQualityDataCopyWithImpl<$Res, $Val extends WaterQualityData>
    implements $WaterQualityDataCopyWith<$Res> {
  _$WaterQualityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sector = null,
    Object? clor = null,
    Object? ph = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      clor: null == clor
          ? _value.clor
          : clor // ignore: cast_nullable_to_non_nullable
              as String,
      ph: null == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaterQualityData$ImplCopyWith<$Res>
    implements $WaterQualityDataCopyWith<$Res> {
  factory _$$WaterQualityData$ImplCopyWith(_$WaterQualityData$Impl value,
          $Res Function(_$WaterQualityData$Impl) then) =
      __$$WaterQualityData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String sector, String clor, String ph});
}

/// @nodoc
class __$$WaterQualityData$ImplCopyWithImpl<$Res>
    extends _$WaterQualityDataCopyWithImpl<$Res, _$WaterQualityData$Impl>
    implements _$$WaterQualityData$ImplCopyWith<$Res> {
  __$$WaterQualityData$ImplCopyWithImpl(_$WaterQualityData$Impl _value,
      $Res Function(_$WaterQualityData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sector = null,
    Object? clor = null,
    Object? ph = null,
  }) {
    return _then(_$WaterQualityData$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      clor: null == clor
          ? _value.clor
          : clor // ignore: cast_nullable_to_non_nullable
              as String,
      ph: null == ph
          ? _value.ph
          : ph // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaterQualityData$Impl implements WaterQualityData$ {
  const _$WaterQualityData$Impl(
      {this.id = '', this.sector = '', this.clor = '', this.ph = ''});

  factory _$WaterQualityData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$WaterQualityData$ImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String sector;
  @override
  @JsonKey()
  final String clor;
  @override
  @JsonKey()
  final String ph;

  @override
  String toString() {
    return 'WaterQualityData(id: $id, sector: $sector, clor: $clor, ph: $ph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaterQualityData$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.clor, clor) || other.clor == clor) &&
            (identical(other.ph, ph) || other.ph == ph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sector, clor, ph);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WaterQualityData$ImplCopyWith<_$WaterQualityData$Impl> get copyWith =>
      __$$WaterQualityData$ImplCopyWithImpl<_$WaterQualityData$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaterQualityData$ImplToJson(
      this,
    );
  }
}

abstract class WaterQualityData$ implements WaterQualityData {
  const factory WaterQualityData$(
      {final String id,
      final String sector,
      final String clor,
      final String ph}) = _$WaterQualityData$Impl;

  factory WaterQualityData$.fromJson(Map<String, dynamic> json) =
      _$WaterQualityData$Impl.fromJson;

  @override
  String get id;
  @override
  String get sector;
  @override
  String get clor;
  @override
  String get ph;
  @override
  @JsonKey(ignore: true)
  _$$WaterQualityData$ImplCopyWith<_$WaterQualityData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
