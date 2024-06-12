// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetSelectedPost {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedPostCopyWith<SetSelectedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPostCopyWith<$Res> {
  factory $SetSelectedPostCopyWith(
          SetSelectedPost value, $Res Function(SetSelectedPost) then) =
      _$SetSelectedPostCopyWithImpl<$Res, SetSelectedPost>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$SetSelectedPostCopyWithImpl<$Res, $Val extends SetSelectedPost>
    implements $SetSelectedPostCopyWith<$Res> {
  _$SetSelectedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetSelectedPost$ImplCopyWith<$Res>
    implements $SetSelectedPostCopyWith<$Res> {
  factory _$$SetSelectedPost$ImplCopyWith(_$SetSelectedPost$Impl value,
          $Res Function(_$SetSelectedPost$Impl) then) =
      __$$SetSelectedPost$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SetSelectedPost$ImplCopyWithImpl<$Res>
    extends _$SetSelectedPostCopyWithImpl<$Res, _$SetSelectedPost$Impl>
    implements _$$SetSelectedPost$ImplCopyWith<$Res> {
  __$$SetSelectedPost$ImplCopyWithImpl(_$SetSelectedPost$Impl _value,
      $Res Function(_$SetSelectedPost$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetSelectedPost$Impl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSelectedPost$Impl implements SetSelectedPost$ {
  const _$SetSelectedPost$Impl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SetSelectedPost(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedPost$Impl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedPost$ImplCopyWith<_$SetSelectedPost$Impl> get copyWith =>
      __$$SetSelectedPost$ImplCopyWithImpl<_$SetSelectedPost$Impl>(
          this, _$identity);
}

abstract class SetSelectedPost$ implements SetSelectedPost {
  const factory SetSelectedPost$(final String id) = _$SetSelectedPost$Impl;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedPost$ImplCopyWith<_$SetSelectedPost$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
