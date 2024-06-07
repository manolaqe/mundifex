// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_pollution_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirPollutionData _$AirPollutionDataFromJson(Map<String, dynamic> json) {
  return AirPollutionData$.fromJson(json);
}

/// @nodoc
mixin _$AirPollutionData {
  Coord get coord => throw _privateConstructorUsedError;
  List<AirPollutionElement> get list => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirPollutionDataCopyWith<AirPollutionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirPollutionDataCopyWith<$Res> {
  factory $AirPollutionDataCopyWith(
          AirPollutionData value, $Res Function(AirPollutionData) then) =
      _$AirPollutionDataCopyWithImpl<$Res, AirPollutionData>;
  @useResult
  $Res call({Coord coord, List<AirPollutionElement> list, int dt});

  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class _$AirPollutionDataCopyWithImpl<$Res, $Val extends AirPollutionData>
    implements $AirPollutionDataCopyWith<$Res> {
  _$AirPollutionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? list = null,
    Object? dt = null,
  }) {
    return _then(_value.copyWith(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AirPollutionElement>,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$AirPollutionData$ImplCopyWith<$Res>
    implements $AirPollutionDataCopyWith<$Res> {
  factory _$$AirPollutionData$ImplCopyWith(_$AirPollutionData$Impl value,
          $Res Function(_$AirPollutionData$Impl) then) =
      __$$AirPollutionData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coord coord, List<AirPollutionElement> list, int dt});

  @override
  $CoordCopyWith<$Res> get coord;
}

/// @nodoc
class __$$AirPollutionData$ImplCopyWithImpl<$Res>
    extends _$AirPollutionDataCopyWithImpl<$Res, _$AirPollutionData$Impl>
    implements _$$AirPollutionData$ImplCopyWith<$Res> {
  __$$AirPollutionData$ImplCopyWithImpl(_$AirPollutionData$Impl _value,
      $Res Function(_$AirPollutionData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coord = null,
    Object? list = null,
    Object? dt = null,
  }) {
    return _then(_$AirPollutionData$Impl(
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AirPollutionElement>,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirPollutionData$Impl implements AirPollutionData$ {
  const _$AirPollutionData$Impl(
      {required this.coord,
      final List<AirPollutionElement> list = const <AirPollutionElement>[],
      this.dt = 0})
      : _list = list;

  factory _$AirPollutionData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AirPollutionData$ImplFromJson(json);

  @override
  final Coord coord;
  final List<AirPollutionElement> _list;
  @override
  @JsonKey()
  List<AirPollutionElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final int dt;

  @override
  String toString() {
    return 'AirPollutionData(coord: $coord, list: $list, dt: $dt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirPollutionData$Impl &&
            (identical(other.coord, coord) || other.coord == coord) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, coord, const DeepCollectionEquality().hash(_list), dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirPollutionData$ImplCopyWith<_$AirPollutionData$Impl> get copyWith =>
      __$$AirPollutionData$ImplCopyWithImpl<_$AirPollutionData$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirPollutionData$ImplToJson(
      this,
    );
  }
}

abstract class AirPollutionData$ implements AirPollutionData {
  const factory AirPollutionData$(
      {required final Coord coord,
      final List<AirPollutionElement> list,
      final int dt}) = _$AirPollutionData$Impl;

  factory AirPollutionData$.fromJson(Map<String, dynamic> json) =
      _$AirPollutionData$Impl.fromJson;

  @override
  Coord get coord;
  @override
  List<AirPollutionElement> get list;
  @override
  int get dt;
  @override
  @JsonKey(ignore: true)
  _$$AirPollutionData$ImplCopyWith<_$AirPollutionData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
