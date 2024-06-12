// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_dislike.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddDislike {
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
    TResult Function(AddDislikeStart value) $default, {
    required TResult Function(AddDislikeSuccessful value) successful,
    required TResult Function(AddDislikeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddDislikeStart value)? $default, {
    TResult? Function(AddDislikeSuccessful value)? successful,
    TResult? Function(AddDislikeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddDislikeStart value)? $default, {
    TResult Function(AddDislikeSuccessful value)? successful,
    TResult Function(AddDislikeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDislikeCopyWith<$Res> {
  factory $AddDislikeCopyWith(
          AddDislike value, $Res Function(AddDislike) then) =
      _$AddDislikeCopyWithImpl<$Res, AddDislike>;
}

/// @nodoc
class _$AddDislikeCopyWithImpl<$Res, $Val extends AddDislike>
    implements $AddDislikeCopyWith<$Res> {
  _$AddDislikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddDislikeStartImplCopyWith<$Res> {
  factory _$$AddDislikeStartImplCopyWith(_$AddDislikeStartImpl value,
          $Res Function(_$AddDislikeStartImpl) then) =
      __$$AddDislikeStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedPostId});
}

/// @nodoc
class __$$AddDislikeStartImplCopyWithImpl<$Res>
    extends _$AddDislikeCopyWithImpl<$Res, _$AddDislikeStartImpl>
    implements _$$AddDislikeStartImplCopyWith<$Res> {
  __$$AddDislikeStartImplCopyWithImpl(
      _$AddDislikeStartImpl _value, $Res Function(_$AddDislikeStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPostId = null,
  }) {
    return _then(_$AddDislikeStartImpl(
      selectedPostId: null == selectedPostId
          ? _value.selectedPostId
          : selectedPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddDislikeStartImpl implements AddDislikeStart {
  const _$AddDislikeStartImpl({required this.selectedPostId});

  @override
  final String selectedPostId;

  @override
  String toString() {
    return 'AddDislike(selectedPostId: $selectedPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDislikeStartImpl &&
            (identical(other.selectedPostId, selectedPostId) ||
                other.selectedPostId == selectedPostId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPostId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDislikeStartImplCopyWith<_$AddDislikeStartImpl> get copyWith =>
      __$$AddDislikeStartImplCopyWithImpl<_$AddDislikeStartImpl>(
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
    TResult Function(AddDislikeStart value) $default, {
    required TResult Function(AddDislikeSuccessful value) successful,
    required TResult Function(AddDislikeError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddDislikeStart value)? $default, {
    TResult? Function(AddDislikeSuccessful value)? successful,
    TResult? Function(AddDislikeError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddDislikeStart value)? $default, {
    TResult Function(AddDislikeSuccessful value)? successful,
    TResult Function(AddDislikeError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddDislikeStart implements AddDislike {
  const factory AddDislikeStart({required final String selectedPostId}) =
      _$AddDislikeStartImpl;

  String get selectedPostId;
  @JsonKey(ignore: true)
  _$$AddDislikeStartImplCopyWith<_$AddDislikeStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDislikeSuccessfulImplCopyWith<$Res> {
  factory _$$AddDislikeSuccessfulImplCopyWith(_$AddDislikeSuccessfulImpl value,
          $Res Function(_$AddDislikeSuccessfulImpl) then) =
      __$$AddDislikeSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$AddDislikeSuccessfulImplCopyWithImpl<$Res>
    extends _$AddDislikeCopyWithImpl<$Res, _$AddDislikeSuccessfulImpl>
    implements _$$AddDislikeSuccessfulImplCopyWith<$Res> {
  __$$AddDislikeSuccessfulImplCopyWithImpl(_$AddDislikeSuccessfulImpl _value,
      $Res Function(_$AddDislikeSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
  }) {
    return _then(_$AddDislikeSuccessfulImpl(
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

class _$AddDislikeSuccessfulImpl implements AddDislikeSuccessful {
  const _$AddDislikeSuccessfulImpl(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'AddDislike.successful(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDislikeSuccessfulImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDislikeSuccessfulImplCopyWith<_$AddDislikeSuccessfulImpl>
      get copyWith =>
          __$$AddDislikeSuccessfulImplCopyWithImpl<_$AddDislikeSuccessfulImpl>(
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
    TResult Function(AddDislikeStart value) $default, {
    required TResult Function(AddDislikeSuccessful value) successful,
    required TResult Function(AddDislikeError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddDislikeStart value)? $default, {
    TResult? Function(AddDislikeSuccessful value)? successful,
    TResult? Function(AddDislikeError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddDislikeStart value)? $default, {
    TResult Function(AddDislikeSuccessful value)? successful,
    TResult Function(AddDislikeError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddDislikeSuccessful implements AddDislike {
  const factory AddDislikeSuccessful(final Post post) =
      _$AddDislikeSuccessfulImpl;

  Post get post;
  @JsonKey(ignore: true)
  _$$AddDislikeSuccessfulImplCopyWith<_$AddDislikeSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDislikeErrorImplCopyWith<$Res> {
  factory _$$AddDislikeErrorImplCopyWith(_$AddDislikeErrorImpl value,
          $Res Function(_$AddDislikeErrorImpl) then) =
      __$$AddDislikeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddDislikeErrorImplCopyWithImpl<$Res>
    extends _$AddDislikeCopyWithImpl<$Res, _$AddDislikeErrorImpl>
    implements _$$AddDislikeErrorImplCopyWith<$Res> {
  __$$AddDislikeErrorImplCopyWithImpl(
      _$AddDislikeErrorImpl _value, $Res Function(_$AddDislikeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddDislikeErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddDislikeErrorImpl implements AddDislikeError {
  const _$AddDislikeErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddDislike.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDislikeErrorImpl &&
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
  _$$AddDislikeErrorImplCopyWith<_$AddDislikeErrorImpl> get copyWith =>
      __$$AddDislikeErrorImplCopyWithImpl<_$AddDislikeErrorImpl>(
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
    TResult Function(AddDislikeStart value) $default, {
    required TResult Function(AddDislikeSuccessful value) successful,
    required TResult Function(AddDislikeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddDislikeStart value)? $default, {
    TResult? Function(AddDislikeSuccessful value)? successful,
    TResult? Function(AddDislikeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddDislikeStart value)? $default, {
    TResult Function(AddDislikeSuccessful value)? successful,
    TResult Function(AddDislikeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddDislikeError implements AddDislike, ErrorAction {
  const factory AddDislikeError(
      final Object error, final StackTrace stackTrace) = _$AddDislikeErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddDislikeErrorImplCopyWith<_$AddDislikeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
