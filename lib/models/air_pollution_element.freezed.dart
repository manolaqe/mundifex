// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_pollution_element.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirPollutionElement _$AirPollutionElementFromJson(Map<String, dynamic> json) {
  return AirPollutionElement$.fromJson(json);
}

/// @nodoc
mixin _$AirPollutionElement {
  MainPollution get main => throw _privateConstructorUsedError;
  AirPollutionComponents get components => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirPollutionElementCopyWith<AirPollutionElement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirPollutionElementCopyWith<$Res> {
  factory $AirPollutionElementCopyWith(AirPollutionElement value, $Res Function(AirPollutionElement) then) =
      _$AirPollutionElementCopyWithImpl<$Res, AirPollutionElement>;
  @useResult
  $Res call({MainPollution main, AirPollutionComponents components});

  $MainPollutionCopyWith<$Res> get main;
  $AirPollutionComponentsCopyWith<$Res> get components;
}

/// @nodoc
class _$AirPollutionElementCopyWithImpl<$Res, $Val extends AirPollutionElement>
    implements $AirPollutionElementCopyWith<$Res> {
  _$AirPollutionElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainPollution,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as AirPollutionComponents,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainPollutionCopyWith<$Res> get main {
    return $MainPollutionCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AirPollutionComponentsCopyWith<$Res> get components {
    return $AirPollutionComponentsCopyWith<$Res>(_value.components, (value) {
      return _then(_value.copyWith(components: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AirPollutionElement$ImplCopyWith<$Res> implements $AirPollutionElementCopyWith<$Res> {
  factory _$$AirPollutionElement$ImplCopyWith(
          _$AirPollutionElement$Impl value, $Res Function(_$AirPollutionElement$Impl) then) =
      __$$AirPollutionElement$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainPollution main, AirPollutionComponents components});

  @override
  $MainPollutionCopyWith<$Res> get main;
  @override
  $AirPollutionComponentsCopyWith<$Res> get components;
}

/// @nodoc
class __$$AirPollutionElement$ImplCopyWithImpl<$Res>
    extends _$AirPollutionElementCopyWithImpl<$Res, _$AirPollutionElement$Impl>
    implements _$$AirPollutionElement$ImplCopyWith<$Res> {
  __$$AirPollutionElement$ImplCopyWithImpl(
      _$AirPollutionElement$Impl _value, $Res Function(_$AirPollutionElement$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? components = null,
  }) {
    return _then(_$AirPollutionElement$Impl(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainPollution,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as AirPollutionComponents,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirPollutionElement$Impl implements AirPollutionElement$ {
  const _$AirPollutionElement$Impl({required this.main, required this.components});

  factory _$AirPollutionElement$Impl.fromJson(Map<String, dynamic> json) => _$$AirPollutionElement$ImplFromJson(json);

  @override
  final MainPollution main;
  @override
  final AirPollutionComponents components;

  @override
  String toString() {
    return 'AirPollutionElement(main: $main, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirPollutionElement$Impl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.components, components) || other.components == components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, components);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirPollutionElement$ImplCopyWith<_$AirPollutionElement$Impl> get copyWith =>
      __$$AirPollutionElement$ImplCopyWithImpl<_$AirPollutionElement$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirPollutionElement$ImplToJson(
      this,
    );
  }
}

abstract class AirPollutionElement$ implements AirPollutionElement {
  const factory AirPollutionElement$(
      {required final MainPollution main,
      required final AirPollutionComponents components}) = _$AirPollutionElement$Impl;

  factory AirPollutionElement$.fromJson(Map<String, dynamic> json) = _$AirPollutionElement$Impl.fromJson;

  @override
  MainPollution get main;
  @override
  AirPollutionComponents get components;
  @override
  @JsonKey(ignore: true)
  _$$AirPollutionElement$ImplCopyWith<_$AirPollutionElement$Impl> get copyWith => throw _privateConstructorUsedError;
}
