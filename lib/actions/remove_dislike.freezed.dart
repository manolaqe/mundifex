// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_dislike.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoveDislike {
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
    TResult Function(RemoveDislikeStart value) $default, {
    required TResult Function(RemoveDislikeSuccessful value) successful,
    required TResult Function(RemoveDislikeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveDislikeStart value)? $default, {
    TResult? Function(RemoveDislikeSuccessful value)? successful,
    TResult? Function(RemoveDislikeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveDislikeStart value)? $default, {
    TResult Function(RemoveDislikeSuccessful value)? successful,
    TResult Function(RemoveDislikeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveDislikeCopyWith<$Res> {
  factory $RemoveDislikeCopyWith(RemoveDislike value, $Res Function(RemoveDislike) then) =
      _$RemoveDislikeCopyWithImpl<$Res, RemoveDislike>;
}

/// @nodoc
class _$RemoveDislikeCopyWithImpl<$Res, $Val extends RemoveDislike> implements $RemoveDislikeCopyWith<$Res> {
  _$RemoveDislikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemoveDislikeStartImplCopyWith<$Res> {
  factory _$$RemoveDislikeStartImplCopyWith(
          _$RemoveDislikeStartImpl value, $Res Function(_$RemoveDislikeStartImpl) then) =
      __$$RemoveDislikeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedPostId});
}

/// @nodoc
class __$$RemoveDislikeStartImplCopyWithImpl<$Res> extends _$RemoveDislikeCopyWithImpl<$Res, _$RemoveDislikeStartImpl>
    implements _$$RemoveDislikeStartImplCopyWith<$Res> {
  __$$RemoveDislikeStartImplCopyWithImpl(_$RemoveDislikeStartImpl _value, $Res Function(_$RemoveDislikeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPostId = null,
  }) {
    return _then(_$RemoveDislikeStartImpl(
      selectedPostId: null == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveDislikeStartImpl implements RemoveDislikeStart {
  const _$RemoveDislikeStartImpl({required this.selectedPostId});

  @override
  final String selectedPostId;

  @override
  String toString() {
    return 'RemoveDislike(selectedPostId: $selectedPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDislikeStartImpl &&
            (identical(other.selectedPostId, selectedPostId) || other.selectedPostId == selectedPostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDislikeStartImplCopyWith<_$RemoveDislikeStartImpl> get copyWith =>
      __$$RemoveDislikeStartImplCopyWithImpl<_$RemoveDislikeStartImpl>(this, _$identity);

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
    TResult Function(RemoveDislikeStart value) $default, {
    required TResult Function(RemoveDislikeSuccessful value) successful,
    required TResult Function(RemoveDislikeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveDislikeStart value)? $default, {
    TResult? Function(RemoveDislikeSuccessful value)? successful,
    TResult? Function(RemoveDislikeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveDislikeStart value)? $default, {
    TResult Function(RemoveDislikeSuccessful value)? successful,
    TResult Function(RemoveDislikeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveDislikeStart implements RemoveDislike {
  const factory RemoveDislikeStart({required final String selectedPostId}) = _$RemoveDislikeStartImpl;

  String get selectedPostId;
  @JsonKey(ignore: true)
  _$$RemoveDislikeStartImplCopyWith<_$RemoveDislikeStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDislikeSuccessfulImplCopyWith<$Res> {
  factory _$$RemoveDislikeSuccessfulImplCopyWith(
          _$RemoveDislikeSuccessfulImpl value, $Res Function(_$RemoveDislikeSuccessfulImpl) then) =
      __$$RemoveDislikeSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$RemoveDislikeSuccessfulImplCopyWithImpl<$Res>
    extends _$RemoveDislikeCopyWithImpl<$Res, _$RemoveDislikeSuccessfulImpl>
    implements _$$RemoveDislikeSuccessfulImplCopyWith<$Res> {
  __$$RemoveDislikeSuccessfulImplCopyWithImpl(
      _$RemoveDislikeSuccessfulImpl _value, $Res Function(_$RemoveDislikeSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$RemoveDislikeSuccessfulImpl(
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

class _$RemoveDislikeSuccessfulImpl implements RemoveDislikeSuccessful {
  const _$RemoveDislikeSuccessfulImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'RemoveDislike.successful(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDislikeSuccessfulImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDislikeSuccessfulImplCopyWith<_$RemoveDislikeSuccessfulImpl> get copyWith =>
      __$$RemoveDislikeSuccessfulImplCopyWithImpl<_$RemoveDislikeSuccessfulImpl>(this, _$identity);

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
    TResult Function(RemoveDislikeStart value) $default, {
    required TResult Function(RemoveDislikeSuccessful value) successful,
    required TResult Function(RemoveDislikeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveDislikeStart value)? $default, {
    TResult? Function(RemoveDislikeSuccessful value)? successful,
    TResult? Function(RemoveDislikeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveDislikeStart value)? $default, {
    TResult Function(RemoveDislikeSuccessful value)? successful,
    TResult Function(RemoveDislikeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveDislikeSuccessful implements RemoveDislike {
  const factory RemoveDislikeSuccessful(final Post post) = _$RemoveDislikeSuccessfulImpl;

  Post get post;
  @JsonKey(ignore: true)
  _$$RemoveDislikeSuccessfulImplCopyWith<_$RemoveDislikeSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDislikeErrorImplCopyWith<$Res> {
  factory _$$RemoveDislikeErrorImplCopyWith(
          _$RemoveDislikeErrorImpl value, $Res Function(_$RemoveDislikeErrorImpl) then) =
      __$$RemoveDislikeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RemoveDislikeErrorImplCopyWithImpl<$Res> extends _$RemoveDislikeCopyWithImpl<$Res, _$RemoveDislikeErrorImpl>
    implements _$$RemoveDislikeErrorImplCopyWith<$Res> {
  __$$RemoveDislikeErrorImplCopyWithImpl(_$RemoveDislikeErrorImpl _value, $Res Function(_$RemoveDislikeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RemoveDislikeErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RemoveDislikeErrorImpl implements RemoveDislikeError {
  const _$RemoveDislikeErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RemoveDislike.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveDislikeErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveDislikeErrorImplCopyWith<_$RemoveDislikeErrorImpl> get copyWith =>
      __$$RemoveDislikeErrorImplCopyWithImpl<_$RemoveDislikeErrorImpl>(this, _$identity);

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
    TResult Function(RemoveDislikeStart value) $default, {
    required TResult Function(RemoveDislikeSuccessful value) successful,
    required TResult Function(RemoveDislikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RemoveDislikeStart value)? $default, {
    TResult? Function(RemoveDislikeSuccessful value)? successful,
    TResult? Function(RemoveDislikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveDislikeStart value)? $default, {
    TResult Function(RemoveDislikeSuccessful value)? successful,
    TResult Function(RemoveDislikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveDislikeError implements RemoveDislike, ErrorAction {
  const factory RemoveDislikeError(final Object error, final StackTrace stackTrace) = _$RemoveDislikeErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RemoveDislikeErrorImplCopyWith<_$RemoveDislikeErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
