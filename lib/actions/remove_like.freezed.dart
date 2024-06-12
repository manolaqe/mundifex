// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveLike {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String selectedPostId) $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String selectedPostId)? $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String selectedPostId)? $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveLikeStart value) $default, {
    required TResult Function(RemoveLikeSuccessful value) successful,
    required TResult Function(RemoveLikeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveLikeStart value)? $default, {
    TResult? Function(RemoveLikeSuccessful value)? successful,
    TResult? Function(RemoveLikeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveLikeStart value)? $default, {
    TResult Function(RemoveLikeSuccessful value)? successful,
    TResult Function(RemoveLikeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveLikeCopyWith<$Res> {
  factory $RemoveLikeCopyWith(
          RemoveLike value, $Res Function(RemoveLike) then) =
      _$RemoveLikeCopyWithImpl<$Res, RemoveLike>;
}

/// @nodoc
class _$RemoveLikeCopyWithImpl<$Res, $Val extends RemoveLike>
    implements $RemoveLikeCopyWith<$Res> {
  _$RemoveLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoveLikeStartImplCopyWith<$Res> {
  factory _$$RemoveLikeStartImplCopyWith(_$RemoveLikeStartImpl value,
          $Res Function(_$RemoveLikeStartImpl) then) =
      __$$RemoveLikeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedPostId});
}

/// @nodoc
class __$$RemoveLikeStartImplCopyWithImpl<$Res>
    extends _$RemoveLikeCopyWithImpl<$Res, _$RemoveLikeStartImpl>
    implements _$$RemoveLikeStartImplCopyWith<$Res> {
  __$$RemoveLikeStartImplCopyWithImpl(
      _$RemoveLikeStartImpl _value, $Res Function(_$RemoveLikeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPostId = null,
  }) {
    return _then(_$RemoveLikeStartImpl(
      selectedPostId: null == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveLikeStartImpl implements RemoveLikeStart {
  const _$RemoveLikeStartImpl({required this.selectedPostId});

  @override
  final String selectedPostId;

  @override
  String toString() {
    return 'RemoveLike(selectedPostId: $selectedPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveLikeStartImpl &&
            (identical(other.selectedPostId, selectedPostId) ||
                other.selectedPostId == selectedPostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveLikeStartImplCopyWith<_$RemoveLikeStartImpl> get copyWith =>
      __$$RemoveLikeStartImplCopyWithImpl<_$RemoveLikeStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String selectedPostId) $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(selectedPostId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String selectedPostId)? $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(selectedPostId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String selectedPostId)? $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(selectedPostId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveLikeStart value) $default, {
    required TResult Function(RemoveLikeSuccessful value) successful,
    required TResult Function(RemoveLikeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveLikeStart value)? $default, {
    TResult? Function(RemoveLikeSuccessful value)? successful,
    TResult? Function(RemoveLikeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveLikeStart value)? $default, {
    TResult Function(RemoveLikeSuccessful value)? successful,
    TResult Function(RemoveLikeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveLikeStart implements RemoveLike {
  const factory RemoveLikeStart({required final String selectedPostId}) =
      _$RemoveLikeStartImpl;

  String get selectedPostId;
  @JsonKey(ignore: true)
  _$$RemoveLikeStartImplCopyWith<_$RemoveLikeStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveLikeSuccessfulImplCopyWith<$Res> {
  factory _$$RemoveLikeSuccessfulImplCopyWith(_$RemoveLikeSuccessfulImpl value,
          $Res Function(_$RemoveLikeSuccessfulImpl) then) =
      __$$RemoveLikeSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$RemoveLikeSuccessfulImplCopyWithImpl<$Res>
    extends _$RemoveLikeCopyWithImpl<$Res, _$RemoveLikeSuccessfulImpl>
    implements _$$RemoveLikeSuccessfulImplCopyWith<$Res> {
  __$$RemoveLikeSuccessfulImplCopyWithImpl(_$RemoveLikeSuccessfulImpl _value,
      $Res Function(_$RemoveLikeSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$RemoveLikeSuccessfulImpl(
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$RemoveLikeSuccessfulImpl implements RemoveLikeSuccessful {
  const _$RemoveLikeSuccessfulImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'RemoveLike.successful(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveLikeSuccessfulImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveLikeSuccessfulImplCopyWith<_$RemoveLikeSuccessfulImpl>
      get copyWith =>
          __$$RemoveLikeSuccessfulImplCopyWithImpl<_$RemoveLikeSuccessfulImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String selectedPostId) $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String selectedPostId)? $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String selectedPostId)? $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveLikeStart value) $default, {
    required TResult Function(RemoveLikeSuccessful value) successful,
    required TResult Function(RemoveLikeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveLikeStart value)? $default, {
    TResult? Function(RemoveLikeSuccessful value)? successful,
    TResult? Function(RemoveLikeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveLikeStart value)? $default, {
    TResult Function(RemoveLikeSuccessful value)? successful,
    TResult Function(RemoveLikeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveLikeSuccessful implements RemoveLike {
  const factory RemoveLikeSuccessful(final Post post) =
      _$RemoveLikeSuccessfulImpl;

  Post get post;
  @JsonKey(ignore: true)
  _$$RemoveLikeSuccessfulImplCopyWith<_$RemoveLikeSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveLikeErrorImplCopyWith<$Res> {
  factory _$$RemoveLikeErrorImplCopyWith(_$RemoveLikeErrorImpl value,
          $Res Function(_$RemoveLikeErrorImpl) then) =
      __$$RemoveLikeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RemoveLikeErrorImplCopyWithImpl<$Res>
    extends _$RemoveLikeCopyWithImpl<$Res, _$RemoveLikeErrorImpl>
    implements _$$RemoveLikeErrorImplCopyWith<$Res> {
  __$$RemoveLikeErrorImplCopyWithImpl(
      _$RemoveLikeErrorImpl _value, $Res Function(_$RemoveLikeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RemoveLikeErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RemoveLikeErrorImpl implements RemoveLikeError {
  const _$RemoveLikeErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RemoveLike.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveLikeErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveLikeErrorImplCopyWith<_$RemoveLikeErrorImpl> get copyWith =>
      __$$RemoveLikeErrorImplCopyWithImpl<_$RemoveLikeErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String selectedPostId) $default, {
    required TResult Function(Post post) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String selectedPostId)? $default, {
    TResult? Function(Post post)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String selectedPostId)? $default, {
    TResult Function(Post post)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveLikeStart value) $default, {
    required TResult Function(RemoveLikeSuccessful value) successful,
    required TResult Function(RemoveLikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveLikeStart value)? $default, {
    TResult? Function(RemoveLikeSuccessful value)? successful,
    TResult? Function(RemoveLikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveLikeStart value)? $default, {
    TResult Function(RemoveLikeSuccessful value)? successful,
    TResult Function(RemoveLikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveLikeError implements RemoveLike, ErrorAction {
  const factory RemoveLikeError(
      final Object error, final StackTrace stackTrace) = _$RemoveLikeErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RemoveLikeErrorImplCopyWith<_$RemoveLikeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
