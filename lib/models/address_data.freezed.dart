// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressData _$AddressDataFromJson(Map<String, dynamic> json) {
  return AddressData$.fromJson(json);
}

/// @nodoc
mixin _$AddressData {
  List<AddressResult> get results => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDataCopyWith<AddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDataCopyWith<$Res> {
  factory $AddressDataCopyWith(
          AddressData value, $Res Function(AddressData) then) =
      _$AddressDataCopyWithImpl<$Res, AddressData>;
  @useResult
  $Res call({List<AddressResult> results, String status});
}

/// @nodoc
class _$AddressDataCopyWithImpl<$Res, $Val extends AddressData>
    implements $AddressDataCopyWith<$Res> {
  _$AddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AddressResult>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressData$ImplCopyWith<$Res>
    implements $AddressDataCopyWith<$Res> {
  factory _$$AddressData$ImplCopyWith(
          _$AddressData$Impl value, $Res Function(_$AddressData$Impl) then) =
      __$$AddressData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddressResult> results, String status});
}

/// @nodoc
class __$$AddressData$ImplCopyWithImpl<$Res>
    extends _$AddressDataCopyWithImpl<$Res, _$AddressData$Impl>
    implements _$$AddressData$ImplCopyWith<$Res> {
  __$$AddressData$ImplCopyWithImpl(
      _$AddressData$Impl _value, $Res Function(_$AddressData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? status = null,
  }) {
    return _then(_$AddressData$Impl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AddressResult>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressData$Impl implements AddressData$ {
  const _$AddressData$Impl(
      {final List<AddressResult> results = const <AddressResult>[],
      this.status = ''})
      : _results = results;

  factory _$AddressData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AddressData$ImplFromJson(json);

  final List<AddressResult> _results;
  @override
  @JsonKey()
  List<AddressResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'AddressData(results: $results, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressData$Impl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressData$ImplCopyWith<_$AddressData$Impl> get copyWith =>
      __$$AddressData$ImplCopyWithImpl<_$AddressData$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressData$ImplToJson(
      this,
    );
  }
}

abstract class AddressData$ implements AddressData {
  const factory AddressData$(
      {final List<AddressResult> results,
      final String status}) = _$AddressData$Impl;

  factory AddressData$.fromJson(Map<String, dynamic> json) =
      _$AddressData$Impl.fromJson;

  @override
  List<AddressResult> get results;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$AddressData$ImplCopyWith<_$AddressData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
