// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_pollution_data_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirPollutionDataForecast _$AirPollutionDataForecastFromJson(
    Map<String, dynamic> json) {
  return AirPollutionDataForecast$.fromJson(json);
}

/// @nodoc
mixin _$AirPollutionDataForecast {
  Coord get coord => throw _privateConstructorUsedError;
  List<AirPollutionElementForecast> get list =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirPollutionDataForecastCopyWith<AirPollutionDataForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirPollutionDataForecastCopyWith<$Res> {
  factory $AirPollutionDataForecastCopyWith(AirPollutionDataForecast value,
          $Res Function(AirPollutionDataForecast) then) =
      _$AirPollutionDataForecastCopyWithImpl<$Res, AirPollutionDataForecast>;
  @useResult
  $Res call({Coord coord, List<AirPollutionElementForecast> list});

  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class _$AirPollutionDataForecastCopyWithImpl<$Res,
        $Val extends AirPollutionDataForecast>
    implements $AirPollutionDataForecastCopyWith<$Res> {
  _$AirPollutionDataForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AirPollutionElementForecast>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordCopyWith<$Res> get coord {
    return $CoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AirPollutionDataForecast$ImplCopyWith<$Res>
    implements $AirPollutionDataForecastCopyWith<$Res> {
  factory _$$AirPollutionDataForecast$ImplCopyWith(
          _$AirPollutionDataForecast$Impl value,
          $Res Function(_$AirPollutionDataForecast$Impl) then) =
      __$$AirPollutionDataForecast$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coord coord, List<AirPollutionElementForecast> list});

  @override
  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class __$$AirPollutionDataForecast$ImplCopyWithImpl<$Res>
    extends _$AirPollutionDataForecastCopyWithImpl<$Res,
        _$AirPollutionDataForecast$Impl>
    implements _$$AirPollutionDataForecast$ImplCopyWith<$Res> {
  __$$AirPollutionDataForecast$ImplCopyWithImpl(
      _$AirPollutionDataForecast$Impl _value,
      $Res Function(_$AirPollutionDataForecast$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? list = null,
  }) {
    return _then(_$AirPollutionDataForecast$Impl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AirPollutionElementForecast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirPollutionDataForecast$Impl implements AirPollutionDataForecast$ {
  const _$AirPollutionDataForecast$Impl(
      {required this.coord,
      final List<AirPollutionElementForecast> list =
          const <AirPollutionElementForecast>[]})
      : _list = list;

  factory _$AirPollutionDataForecast$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AirPollutionDataForecast$ImplFromJson(json);

  @override
  final Coord coord;
  final List<AirPollutionElementForecast> _list;
  @override
  @JsonKey()
  List<AirPollutionElementForecast> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'AirPollutionDataForecast(coord: $coord, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirPollutionDataForecast$Impl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, coord, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirPollutionDataForecast$ImplCopyWith<_$AirPollutionDataForecast$Impl>
      get copyWith => __$$AirPollutionDataForecast$ImplCopyWithImpl<
          _$AirPollutionDataForecast$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirPollutionDataForecast$ImplToJson(
      this,
    );
  }
}

abstract class AirPollutionDataForecast$ implements AirPollutionDataForecast {
  const factory AirPollutionDataForecast$(
          {required final Coord coord,
          final List<AirPollutionElementForecast> list}) =
      _$AirPollutionDataForecast$Impl;

  factory AirPollutionDataForecast$.fromJson(Map<String, dynamic> json) =
      _$AirPollutionDataForecast$Impl.fromJson;

  @override
  Coord get coord;
  @override
  List<AirPollutionElementForecast> get list;
  @override
  @JsonKey(ignore: true)
  _$$AirPollutionDataForecast$ImplCopyWith<_$AirPollutionDataForecast$Impl>
      get copyWith => throw _privateConstructorUsedError;
}
