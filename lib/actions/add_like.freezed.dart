// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddLike {
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
    TResult Function(AddLikeStart value) $default, {
    required TResult Function(AddLikeSuccessful value) successful,
    required TResult Function(AddLikeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddLikeStart value)? $default, {
    TResult? Function(AddLikeSuccessful value)? successful,
    TResult? Function(AddLikeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddLikeStart value)? $default, {
    TResult Function(AddLikeSuccessful value)? successful,
    TResult Function(AddLikeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLikeCopyWith<$Res> {
  factory $AddLikeCopyWith(AddLike value, $Res Function(AddLike) then) = _$AddLikeCopyWithImpl<$Res, AddLike>;
}

/// @nodoc
class _$AddLikeCopyWithImpl<$Res, $Val extends AddLike> implements $AddLikeCopyWith<$Res> {
  _$AddLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddLikeStartImplCopyWith<$Res> {
  factory _$$AddLikeStartImplCopyWith(_$AddLikeStartImpl value, $Res Function(_$AddLikeStartImpl) then) =
      __$$AddLikeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedPostId});
}

/// @nodoc
class __$$AddLikeStartImplCopyWithImpl<$Res> extends _$AddLikeCopyWithImpl<$Res, _$AddLikeStartImpl>
    implements _$$AddLikeStartImplCopyWith<$Res> {
  __$$AddLikeStartImplCopyWithImpl(_$AddLikeStartImpl _value, $Res Function(_$AddLikeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPostId = null,
  }) {
    return _then(_$AddLikeStartImpl(
      selectedPostId: null == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddLikeStartImpl implements AddLikeStart {
  const _$AddLikeStartImpl({required this.selectedPostId});

  @override
  final String selectedPostId;

  @override
  String toString() {
    return 'AddLike(selectedPostId: $selectedPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLikeStartImpl &&
            (identical(other.selectedPostId, selectedPostId) || other.selectedPostId == selectedPostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLikeStartImplCopyWith<_$AddLikeStartImpl> get copyWith =>
      __$$AddLikeStartImplCopyWithImpl<_$AddLikeStartImpl>(this, _$identity);

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
    TResult Function(AddLikeStart value) $default, {
    required TResult Function(AddLikeSuccessful value) successful,
    required TResult Function(AddLikeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddLikeStart value)? $default, {
    TResult? Function(AddLikeSuccessful value)? successful,
    TResult? Function(AddLikeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddLikeStart value)? $default, {
    TResult Function(AddLikeSuccessful value)? successful,
    TResult Function(AddLikeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddLikeStart implements AddLike {
  const factory AddLikeStart({required final String selectedPostId}) = _$AddLikeStartImpl;

  String get selectedPostId;
  @JsonKey(ignore: true)
  _$$AddLikeStartImplCopyWith<_$AddLikeStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLikeSuccessfulImplCopyWith<$Res> {
  factory _$$AddLikeSuccessfulImplCopyWith(_$AddLikeSuccessfulImpl value, $Res Function(_$AddLikeSuccessfulImpl) then) =
      __$$AddLikeSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$AddLikeSuccessfulImplCopyWithImpl<$Res> extends _$AddLikeCopyWithImpl<$Res, _$AddLikeSuccessfulImpl>
    implements _$$AddLikeSuccessfulImplCopyWith<$Res> {
  __$$AddLikeSuccessfulImplCopyWithImpl(_$AddLikeSuccessfulImpl _value, $Res Function(_$AddLikeSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$AddLikeSuccessfulImpl(
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

class _$AddLikeSuccessfulImpl implements AddLikeSuccessful {
  const _$AddLikeSuccessfulImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'AddLike.successful(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLikeSuccessfulImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLikeSuccessfulImplCopyWith<_$AddLikeSuccessfulImpl> get copyWith =>
      __$$AddLikeSuccessfulImplCopyWithImpl<_$AddLikeSuccessfulImpl>(this, _$identity);

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
    TResult Function(AddLikeStart value) $default, {
    required TResult Function(AddLikeSuccessful value) successful,
    required TResult Function(AddLikeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddLikeStart value)? $default, {
    TResult? Function(AddLikeSuccessful value)? successful,
    TResult? Function(AddLikeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddLikeStart value)? $default, {
    TResult Function(AddLikeSuccessful value)? successful,
    TResult Function(AddLikeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddLikeSuccessful implements AddLike {
  const factory AddLikeSuccessful(final Post post) = _$AddLikeSuccessfulImpl;

  Post get post;
  @JsonKey(ignore: true)
  _$$AddLikeSuccessfulImplCopyWith<_$AddLikeSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLikeErrorImplCopyWith<$Res> {
  factory _$$AddLikeErrorImplCopyWith(_$AddLikeErrorImpl value, $Res Function(_$AddLikeErrorImpl) then) =
      __$$AddLikeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddLikeErrorImplCopyWithImpl<$Res> extends _$AddLikeCopyWithImpl<$Res, _$AddLikeErrorImpl>
    implements _$$AddLikeErrorImplCopyWith<$Res> {
  __$$AddLikeErrorImplCopyWithImpl(_$AddLikeErrorImpl _value, $Res Function(_$AddLikeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddLikeErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddLikeErrorImpl implements AddLikeError {
  const _$AddLikeErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddLike.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLikeErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLikeErrorImplCopyWith<_$AddLikeErrorImpl> get copyWith =>
      __$$AddLikeErrorImplCopyWithImpl<_$AddLikeErrorImpl>(this, _$identity);

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
    TResult Function(AddLikeStart value) $default, {
    required TResult Function(AddLikeSuccessful value) successful,
    required TResult Function(AddLikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddLikeStart value)? $default, {
    TResult? Function(AddLikeSuccessful value)? successful,
    TResult? Function(AddLikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddLikeStart value)? $default, {
    TResult Function(AddLikeSuccessful value)? successful,
    TResult Function(AddLikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddLikeError implements AddLike, ErrorAction {
  const factory AddLikeError(final Object error, final StackTrace stackTrace) = _$AddLikeErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddLikeErrorImplCopyWith<_$AddLikeErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
