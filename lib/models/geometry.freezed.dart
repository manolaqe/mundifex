// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geometry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Geometry _$GeometryFromJson(Map<String, dynamic> json) {
  return Geometry$.fromJson(json);
}

/// @nodoc
mixin _$Geometry {
  AddressCoordinates get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_type')
  String get locationType => throw _privateConstructorUsedError;
  Viewport get viewport => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeometryCopyWith<Geometry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeometryCopyWith<$Res> {
  factory $GeometryCopyWith(Geometry value, $Res Function(Geometry) then) = _$GeometryCopyWithImpl<$Res, Geometry>;
  @useResult
  $Res call({AddressCoordinates location, @JsonKey(name: 'location_type') String locationType, Viewport viewport});

  $AddressCoordinatesCopyWith<$Res> get location;
  $ViewportCopyWith<$Res> get viewport;
}

/// @nodoc
class _$GeometryCopyWithImpl<$Res, $Val extends Geometry> implements $GeometryCopyWith<$Res> {
  _$GeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? locationType = null,
    Object? viewport = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCoordinatesCopyWith<$Res> get location {
    return $AddressCoordinatesCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ViewportCopyWith<$Res> get viewport {
    return $ViewportCopyWith<$Res>(_value.viewport, (value) {
      return _then(_value.copyWith(viewport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Geometry$ImplCopyWith<$Res> implements $GeometryCopyWith<$Res> {
  factory _$$Geometry$ImplCopyWith(_$Geometry$Impl value, $Res Function(_$Geometry$Impl) then) =
      __$$Geometry$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressCoordinates location, @JsonKey(name: 'location_type') String locationType, Viewport viewport});

  @override
  $AddressCoordinatesCopyWith<$Res> get location;
  @override
  $ViewportCopyWith<$Res> get viewport;
}

/// @nodoc
class __$$Geometry$ImplCopyWithImpl<$Res> extends _$GeometryCopyWithImpl<$Res, _$Geometry$Impl>
    implements _$$Geometry$ImplCopyWith<$Res> {
  __$$Geometry$ImplCopyWithImpl(_$Geometry$Impl _value, $Res Function(_$Geometry$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? locationType = null,
    Object? viewport = null,
  }) {
    return _then(_$Geometry$Impl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
      locationType: null == locationType
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String,
      viewport: null == viewport
          ? _value.viewport
          : viewport // ignore: cast_nullable_to_non_nullable
              as Viewport,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Geometry$Impl implements Geometry$ {
  const _$Geometry$Impl(
      {required this.location, @JsonKey(name: 'location_type') this.locationType = '', required this.viewport});

  factory _$Geometry$Impl.fromJson(Map<String, dynamic> json) => _$$Geometry$ImplFromJson(json);

  @override
  final AddressCoordinates location;
  @override
  @JsonKey(name: 'location_type')
  final String locationType;
  @override
  final Viewport viewport;

  @override
  String toString() {
    return 'Geometry(location: $location, locationType: $locationType, viewport: $viewport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Geometry$Impl &&
            (identical(other.location, location) || other.location == location) &&
            (identical(other.locationType, locationType) || other.locationType == locationType) &&
            (identical(other.viewport, viewport) || other.viewport == viewport));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, locationType, viewport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Geometry$ImplCopyWith<_$Geometry$Impl> get copyWith =>
      __$$Geometry$ImplCopyWithImpl<_$Geometry$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Geometry$ImplToJson(
      this,
    );
  }
}

abstract class Geometry$ implements Geometry {
  const factory Geometry$(
      {required final AddressCoordinates location,
      @JsonKey(name: 'location_type') final String locationType,
      required final Viewport viewport}) = _$Geometry$Impl;

  factory Geometry$.fromJson(Map<String, dynamic> json) = _$Geometry$Impl.fromJson;

  @override
  AddressCoordinates get location;
  @override
  @JsonKey(name: 'location_type')
  String get locationType;
  @override
  Viewport get viewport;
  @override
  @JsonKey(ignore: true)
  _$$Geometry$ImplCopyWith<_$Geometry$Impl> get copyWith => throw _privateConstructorUsedError;
}
