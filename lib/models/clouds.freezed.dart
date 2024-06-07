// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clouds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Clouds _$CloudsFromJson(Map<String, dynamic> json) {
  return Clouds$.fromJson(json);
}

/// @nodoc
mixin _$Clouds {
  int get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudsCopyWith<Clouds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudsCopyWith<$Res> {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) then) =
      _$CloudsCopyWithImpl<$Res, Clouds>;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudsCopyWithImpl<$Res, $Val extends Clouds>
    implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Clouds$ImplCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$$Clouds$ImplCopyWith(
          _$Clouds$Impl value, $Res Function(_$Clouds$Impl) then) =
      __$$Clouds$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$$Clouds$ImplCopyWithImpl<$Res>
    extends _$CloudsCopyWithImpl<$Res, _$Clouds$Impl>
    implements _$$Clouds$ImplCopyWith<$Res> {
  __$$Clouds$ImplCopyWithImpl(
      _$Clouds$Impl _value, $Res Function(_$Clouds$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$Clouds$Impl(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Clouds$Impl implements Clouds$ {
  const _$Clouds$Impl({this.all = 0});

  factory _$Clouds$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Clouds$ImplFromJson(json);

  @override
  @JsonKey()
  final int all;

  @override
  String toString() {
    return 'Clouds(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Clouds$Impl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Clouds$ImplCopyWith<_$Clouds$Impl> get copyWith =>
      __$$Clouds$ImplCopyWithImpl<_$Clouds$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Clouds$ImplToJson(
      this,
    );
  }
}

abstract class Clouds$ implements Clouds {
  const factory Clouds$({final int all}) = _$Clouds$Impl;

  factory Clouds$.fromJson(Map<String, dynamic> json) = _$Clouds$Impl.fromJson;

  @override
  int get all;
  @override
  @JsonKey(ignore: true)
  _$$Clouds$ImplCopyWith<_$Clouds$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
