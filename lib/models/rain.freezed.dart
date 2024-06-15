// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rain _$RainFromJson(Map<String, dynamic> json) {
  return Rain$.fromJson(json);
}

/// @nodoc
mixin _$Rain {
  @JsonKey(name: '1h')
  double get the1H => throw _privateConstructorUsedError;
  @JsonKey(name: '3h')
  double get the3H => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) = _$RainCopyWithImpl<$Res, Rain>;
  @useResult
  $Res call({@JsonKey(name: '1h') double the1H, @JsonKey(name: '3h') double the3H});
}

/// @nodoc
class _$RainCopyWithImpl<$Res, $Val extends Rain> implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1H = null,
    Object? the3H = null,
  }) {
    return _then(_value.copyWith(
      the1H: null == the1H
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
      the3H: null == the3H
          ? _value.the3H
          : the3H // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Rain$ImplCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$$Rain$ImplCopyWith(_$Rain$Impl value, $Res Function(_$Rain$Impl) then) = __$$Rain$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double the1H, @JsonKey(name: '3h') double the3H});
}

/// @nodoc
class __$$Rain$ImplCopyWithImpl<$Res> extends _$RainCopyWithImpl<$Res, _$Rain$Impl>
    implements _$$Rain$ImplCopyWith<$Res> {
  __$$Rain$ImplCopyWithImpl(_$Rain$Impl _value, $Res Function(_$Rain$Impl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1H = null,
    Object? the3H = null,
  }) {
    return _then(_$Rain$Impl(
      the1H: null == the1H
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
      the3H: null == the3H
          ? _value.the3H
          : the3H // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Rain$Impl implements Rain$ {
  const _$Rain$Impl({@JsonKey(name: '1h') this.the1H = 0, @JsonKey(name: '3h') this.the3H = 0});

  factory _$Rain$Impl.fromJson(Map<String, dynamic> json) => _$$Rain$ImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double the1H;
  @override
  @JsonKey(name: '3h')
  final double the3H;

  @override
  String toString() {
    return 'Rain(the1H: $the1H, the3H: $the3H)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Rain$Impl &&
            (identical(other.the1H, the1H) || other.the1H == the1H) &&
            (identical(other.the3H, the3H) || other.the3H == the3H));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, the1H, the3H);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Rain$ImplCopyWith<_$Rain$Impl> get copyWith => __$$Rain$ImplCopyWithImpl<_$Rain$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Rain$ImplToJson(
      this,
    );
  }
}

abstract class Rain$ implements Rain {
  const factory Rain$({@JsonKey(name: '1h') final double the1H, @JsonKey(name: '3h') final double the3H}) = _$Rain$Impl;

  factory Rain$.fromJson(Map<String, dynamic> json) = _$Rain$Impl.fromJson;

  @override
  @JsonKey(name: '1h')
  double get the1H;
  @override
  @JsonKey(name: '3h')
  double get the3H;
  @override
  @JsonKey(ignore: true)
  _$$Rain$ImplCopyWith<_$Rain$Impl> get copyWith => throw _privateConstructorUsedError;
}
