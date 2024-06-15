// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_pollution_element_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirPollutionElementForecast _$AirPollutionElementForecastFromJson(Map<String, dynamic> json) {
  return AirPollutionElementForecast$.fromJson(json);
}

/// @nodoc
mixin _$AirPollutionElementForecast {
  MainPollution get main => throw _privateConstructorUsedError;
  AirPollutionComponents get components => throw _privateConstructorUsedError;
  int get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirPollutionElementForecastCopyWith<AirPollutionElementForecast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirPollutionElementForecastCopyWith<$Res> {
  factory $AirPollutionElementForecastCopyWith(
          AirPollutionElementForecast value, $Res Function(AirPollutionElementForecast) then) =
      _$AirPollutionElementForecastCopyWithImpl<$Res, AirPollutionElementForecast>;
  @useResult
  $Res call({MainPollution main, AirPollutionComponents components, int dt});

  $MainPollutionCopyWith<$Res> get main;
  $AirPollutionComponentsCopyWith<$Res> get components;
}

/// @nodoc
class _$AirPollutionElementForecastCopyWithImpl<$Res, $Val extends AirPollutionElementForecast>
    implements $AirPollutionElementForecastCopyWith<$Res> {
  _$AirPollutionElementForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? components = null,
    Object? dt = null,
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
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$AirPollutionElementForecast$ImplCopyWith<$Res> implements $AirPollutionElementForecastCopyWith<$Res> {
  factory _$$AirPollutionElementForecast$ImplCopyWith(
          _$AirPollutionElementForecast$Impl value, $Res Function(_$AirPollutionElementForecast$Impl) then) =
      __$$AirPollutionElementForecast$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainPollution main, AirPollutionComponents components, int dt});

  @override
  $MainPollutionCopyWith<$Res> get main;
  @override
  $AirPollutionComponentsCopyWith<$Res> get components;
}

/// @nodoc
class __$$AirPollutionElementForecast$ImplCopyWithImpl<$Res>
    extends _$AirPollutionElementForecastCopyWithImpl<$Res, _$AirPollutionElementForecast$Impl>
    implements _$$AirPollutionElementForecast$ImplCopyWith<$Res> {
  __$$AirPollutionElementForecast$ImplCopyWithImpl(
      _$AirPollutionElementForecast$Impl _value, $Res Function(_$AirPollutionElementForecast$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? components = null,
    Object? dt = null,
  }) {
    return _then(_$AirPollutionElementForecast$Impl(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainPollution,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as AirPollutionComponents,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AirPollutionElementForecast$Impl implements AirPollutionElementForecast$ {
  const _$AirPollutionElementForecast$Impl({required this.main, required this.components, this.dt = 0});

  factory _$AirPollutionElementForecast$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AirPollutionElementForecast$ImplFromJson(json);

  @override
  final MainPollution main;
  @override
  final AirPollutionComponents components;
  @override
  @JsonKey()
  final int dt;

  @override
  String toString() {
    return 'AirPollutionElementForecast(main: $main, components: $components, dt: $dt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirPollutionElementForecast$Impl &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.components, components) || other.components == components) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, components, dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AirPollutionElementForecast$ImplCopyWith<_$AirPollutionElementForecast$Impl> get copyWith =>
      __$$AirPollutionElementForecast$ImplCopyWithImpl<_$AirPollutionElementForecast$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirPollutionElementForecast$ImplToJson(
      this,
    );
  }
}

abstract class AirPollutionElementForecast$ implements AirPollutionElementForecast {
  const factory AirPollutionElementForecast$(
      {required final MainPollution main,
      required final AirPollutionComponents components,
      final int dt}) = _$AirPollutionElementForecast$Impl;

  factory AirPollutionElementForecast$.fromJson(Map<String, dynamic> json) =
      _$AirPollutionElementForecast$Impl.fromJson;

  @override
  MainPollution get main;
  @override
  AirPollutionComponents get components;
  @override
  int get dt;
  @override
  @JsonKey(ignore: true)
  _$$AirPollutionElementForecast$ImplCopyWith<_$AirPollutionElementForecast$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
