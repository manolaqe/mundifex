// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Viewport _$ViewportFromJson(Map<String, dynamic> json) {
  return Viewport$.fromJson(json);
}

/// @nodoc
mixin _$Viewport {
  AddressCoordinates get northeast => throw _privateConstructorUsedError;
  AddressCoordinates get southwest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewportCopyWith<Viewport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewportCopyWith<$Res> {
  factory $ViewportCopyWith(Viewport value, $Res Function(Viewport) then) =
      _$ViewportCopyWithImpl<$Res, Viewport>;
  @useResult
  $Res call({AddressCoordinates northeast, AddressCoordinates southwest});

  $AddressCoordinatesCopyWith<$Res> get northeast;
  $AddressCoordinatesCopyWith<$Res> get southwest;
}

/// @nodoc
class _$ViewportCopyWithImpl<$Res, $Val extends Viewport>
    implements $ViewportCopyWith<$Res> {
  _$ViewportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_value.copyWith(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCoordinatesCopyWith<$Res> get northeast {
    return $AddressCoordinatesCopyWith<$Res>(_value.northeast, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCoordinatesCopyWith<$Res> get southwest {
    return $AddressCoordinatesCopyWith<$Res>(_value.southwest, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Viewport$ImplCopyWith<$Res>
    implements $ViewportCopyWith<$Res> {
  factory _$$Viewport$ImplCopyWith(
          _$Viewport$Impl value, $Res Function(_$Viewport$Impl) then) =
      __$$Viewport$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressCoordinates northeast, AddressCoordinates southwest});

  @override
  $AddressCoordinatesCopyWith<$Res> get northeast;
  @override
  $AddressCoordinatesCopyWith<$Res> get southwest;
}

/// @nodoc
class __$$Viewport$ImplCopyWithImpl<$Res>
    extends _$ViewportCopyWithImpl<$Res, _$Viewport$Impl>
    implements _$$Viewport$ImplCopyWith<$Res> {
  __$$Viewport$ImplCopyWithImpl(
      _$Viewport$Impl _value, $Res Function(_$Viewport$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = null,
    Object? southwest = null,
  }) {
    return _then(_$Viewport$Impl(
      northeast: null == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
      southwest: null == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as AddressCoordinates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Viewport$Impl implements Viewport$ {
  const _$Viewport$Impl({required this.northeast, required this.southwest});

  factory _$Viewport$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Viewport$ImplFromJson(json);

  @override
  final AddressCoordinates northeast;
  @override
  final AddressCoordinates southwest;

  @override
  String toString() {
    return 'Viewport(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Viewport$Impl &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Viewport$ImplCopyWith<_$Viewport$Impl> get copyWith =>
      __$$Viewport$ImplCopyWithImpl<_$Viewport$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Viewport$ImplToJson(
      this,
    );
  }
}

abstract class Viewport$ implements Viewport {
  const factory Viewport$(
      {required final AddressCoordinates northeast,
      required final AddressCoordinates southwest}) = _$Viewport$Impl;

  factory Viewport$.fromJson(Map<String, dynamic> json) =
      _$Viewport$Impl.fromJson;

  @override
  AddressCoordinates get northeast;
  @override
  AddressCoordinates get southwest;
  @override
  @JsonKey(ignore: true)
  _$$Viewport$ImplCopyWith<_$Viewport$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
