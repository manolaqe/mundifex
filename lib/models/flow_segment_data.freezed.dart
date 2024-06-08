// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flow_segment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlowSegmentData _$FlowSegmentDataFromJson(Map<String, dynamic> json) {
  return FlowSegmentData$.fromJson(json);
}

/// @nodoc
mixin _$FlowSegmentData {
  String get frc => throw _privateConstructorUsedError;
  double get currentSpeed => throw _privateConstructorUsedError;
  double get freeFlowSpeed => throw _privateConstructorUsedError;
  double get currentTravelTime => throw _privateConstructorUsedError;
  double get freeFlowTravelTime => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  bool get roadClosure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowSegmentDataCopyWith<FlowSegmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowSegmentDataCopyWith<$Res> {
  factory $FlowSegmentDataCopyWith(
          FlowSegmentData value, $Res Function(FlowSegmentData) then) =
      _$FlowSegmentDataCopyWithImpl<$Res, FlowSegmentData>;
  @useResult
  $Res call(
      {String frc,
      double currentSpeed,
      double freeFlowSpeed,
      double currentTravelTime,
      double freeFlowTravelTime,
      double confidence,
      bool roadClosure});
}

/// @nodoc
class _$FlowSegmentDataCopyWithImpl<$Res, $Val extends FlowSegmentData>
    implements $FlowSegmentDataCopyWith<$Res> {
  _$FlowSegmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frc = null,
    Object? currentSpeed = null,
    Object? freeFlowSpeed = null,
    Object? currentTravelTime = null,
    Object? freeFlowTravelTime = null,
    Object? confidence = null,
    Object? roadClosure = null,
  }) {
    return _then(_value.copyWith(
      frc: null == frc
          ? _value.frc
          : frc // ignore: cast_nullable_to_non_nullable
              as String,
      currentSpeed: null == currentSpeed
          ? _value.currentSpeed
          : currentSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      freeFlowSpeed: null == freeFlowSpeed
          ? _value.freeFlowSpeed
          : freeFlowSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      currentTravelTime: null == currentTravelTime
          ? _value.currentTravelTime
          : currentTravelTime // ignore: cast_nullable_to_non_nullable
              as double,
      freeFlowTravelTime: null == freeFlowTravelTime
          ? _value.freeFlowTravelTime
          : freeFlowTravelTime // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      roadClosure: null == roadClosure
          ? _value.roadClosure
          : roadClosure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowSegmentData$ImplCopyWith<$Res>
    implements $FlowSegmentDataCopyWith<$Res> {
  factory _$$FlowSegmentData$ImplCopyWith(_$FlowSegmentData$Impl value,
          $Res Function(_$FlowSegmentData$Impl) then) =
      __$$FlowSegmentData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String frc,
      double currentSpeed,
      double freeFlowSpeed,
      double currentTravelTime,
      double freeFlowTravelTime,
      double confidence,
      bool roadClosure});
}

/// @nodoc
class __$$FlowSegmentData$ImplCopyWithImpl<$Res>
    extends _$FlowSegmentDataCopyWithImpl<$Res, _$FlowSegmentData$Impl>
    implements _$$FlowSegmentData$ImplCopyWith<$Res> {
  __$$FlowSegmentData$ImplCopyWithImpl(_$FlowSegmentData$Impl _value,
      $Res Function(_$FlowSegmentData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frc = null,
    Object? currentSpeed = null,
    Object? freeFlowSpeed = null,
    Object? currentTravelTime = null,
    Object? freeFlowTravelTime = null,
    Object? confidence = null,
    Object? roadClosure = null,
  }) {
    return _then(_$FlowSegmentData$Impl(
      frc: null == frc
          ? _value.frc
          : frc // ignore: cast_nullable_to_non_nullable
              as String,
      currentSpeed: null == currentSpeed
          ? _value.currentSpeed
          : currentSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      freeFlowSpeed: null == freeFlowSpeed
          ? _value.freeFlowSpeed
          : freeFlowSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      currentTravelTime: null == currentTravelTime
          ? _value.currentTravelTime
          : currentTravelTime // ignore: cast_nullable_to_non_nullable
              as double,
      freeFlowTravelTime: null == freeFlowTravelTime
          ? _value.freeFlowTravelTime
          : freeFlowTravelTime // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      roadClosure: null == roadClosure
          ? _value.roadClosure
          : roadClosure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowSegmentData$Impl implements FlowSegmentData$ {
  const _$FlowSegmentData$Impl(
      {this.frc = '',
      this.currentSpeed = 0,
      this.freeFlowSpeed = 0,
      this.currentTravelTime = 0,
      this.freeFlowTravelTime = 0,
      this.confidence = 0,
      this.roadClosure = false});

  factory _$FlowSegmentData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$FlowSegmentData$ImplFromJson(json);

  @override
  @JsonKey()
  final String frc;
  @override
  @JsonKey()
  final double currentSpeed;
  @override
  @JsonKey()
  final double freeFlowSpeed;
  @override
  @JsonKey()
  final double currentTravelTime;
  @override
  @JsonKey()
  final double freeFlowTravelTime;
  @override
  @JsonKey()
  final double confidence;
  @override
  @JsonKey()
  final bool roadClosure;

  @override
  String toString() {
    return 'FlowSegmentData(frc: $frc, currentSpeed: $currentSpeed, freeFlowSpeed: $freeFlowSpeed, currentTravelTime: $currentTravelTime, freeFlowTravelTime: $freeFlowTravelTime, confidence: $confidence, roadClosure: $roadClosure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowSegmentData$Impl &&
            (identical(other.frc, frc) || other.frc == frc) &&
            (identical(other.currentSpeed, currentSpeed) ||
                other.currentSpeed == currentSpeed) &&
            (identical(other.freeFlowSpeed, freeFlowSpeed) ||
                other.freeFlowSpeed == freeFlowSpeed) &&
            (identical(other.currentTravelTime, currentTravelTime) ||
                other.currentTravelTime == currentTravelTime) &&
            (identical(other.freeFlowTravelTime, freeFlowTravelTime) ||
                other.freeFlowTravelTime == freeFlowTravelTime) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.roadClosure, roadClosure) ||
                other.roadClosure == roadClosure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, frc, currentSpeed, freeFlowSpeed,
      currentTravelTime, freeFlowTravelTime, confidence, roadClosure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowSegmentData$ImplCopyWith<_$FlowSegmentData$Impl> get copyWith =>
      __$$FlowSegmentData$ImplCopyWithImpl<_$FlowSegmentData$Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowSegmentData$ImplToJson(
      this,
    );
  }
}

abstract class FlowSegmentData$ implements FlowSegmentData {
  const factory FlowSegmentData$(
      {final String frc,
      final double currentSpeed,
      final double freeFlowSpeed,
      final double currentTravelTime,
      final double freeFlowTravelTime,
      final double confidence,
      final bool roadClosure}) = _$FlowSegmentData$Impl;

  factory FlowSegmentData$.fromJson(Map<String, dynamic> json) =
      _$FlowSegmentData$Impl.fromJson;

  @override
  String get frc;
  @override
  double get currentSpeed;
  @override
  double get freeFlowSpeed;
  @override
  double get currentTravelTime;
  @override
  double get freeFlowTravelTime;
  @override
  double get confidence;
  @override
  bool get roadClosure;
  @override
  @JsonKey(ignore: true)
  _$$FlowSegmentData$ImplCopyWith<_$FlowSegmentData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
