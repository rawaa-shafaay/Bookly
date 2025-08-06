// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeaturedBooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? success,
    TResult? Function(String message)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeaturedInitial value) initial,
    required TResult Function(FeaturedLoading value) loading,
    required TResult Function(FeaturedSuccess value) success,
    required TResult Function(FeaturedFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeaturedInitial value)? initial,
    TResult? Function(FeaturedLoading value)? loading,
    TResult? Function(FeaturedSuccess value)? success,
    TResult? Function(FeaturedFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeaturedInitial value)? initial,
    TResult Function(FeaturedLoading value)? loading,
    TResult Function(FeaturedSuccess value)? success,
    TResult Function(FeaturedFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedBooksStateCopyWith<$Res> {
  factory $FeaturedBooksStateCopyWith(
    FeaturedBooksState value,
    $Res Function(FeaturedBooksState) then,
  ) = _$FeaturedBooksStateCopyWithImpl<$Res, FeaturedBooksState>;
}

/// @nodoc
class _$FeaturedBooksStateCopyWithImpl<$Res, $Val extends FeaturedBooksState>
    implements $FeaturedBooksStateCopyWith<$Res> {
  _$FeaturedBooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeaturedInitialImplCopyWith<$Res> {
  factory _$$FeaturedInitialImplCopyWith(
    _$FeaturedInitialImpl value,
    $Res Function(_$FeaturedInitialImpl) then,
  ) = __$$FeaturedInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedInitialImplCopyWithImpl<$Res>
    extends _$FeaturedBooksStateCopyWithImpl<$Res, _$FeaturedInitialImpl>
    implements _$$FeaturedInitialImplCopyWith<$Res> {
  __$$FeaturedInitialImplCopyWithImpl(
    _$FeaturedInitialImpl _value,
    $Res Function(_$FeaturedInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeaturedInitialImpl implements FeaturedInitial {
  const _$FeaturedInitialImpl();

  @override
  String toString() {
    return 'FeaturedBooksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeaturedInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeaturedInitial value) initial,
    required TResult Function(FeaturedLoading value) loading,
    required TResult Function(FeaturedSuccess value) success,
    required TResult Function(FeaturedFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeaturedInitial value)? initial,
    TResult? Function(FeaturedLoading value)? loading,
    TResult? Function(FeaturedSuccess value)? success,
    TResult? Function(FeaturedFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeaturedInitial value)? initial,
    TResult Function(FeaturedLoading value)? loading,
    TResult Function(FeaturedSuccess value)? success,
    TResult Function(FeaturedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FeaturedInitial implements FeaturedBooksState {
  const factory FeaturedInitial() = _$FeaturedInitialImpl;
}

/// @nodoc
abstract class _$$FeaturedLoadingImplCopyWith<$Res> {
  factory _$$FeaturedLoadingImplCopyWith(
    _$FeaturedLoadingImpl value,
    $Res Function(_$FeaturedLoadingImpl) then,
  ) = __$$FeaturedLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedLoadingImplCopyWithImpl<$Res>
    extends _$FeaturedBooksStateCopyWithImpl<$Res, _$FeaturedLoadingImpl>
    implements _$$FeaturedLoadingImplCopyWith<$Res> {
  __$$FeaturedLoadingImplCopyWithImpl(
    _$FeaturedLoadingImpl _value,
    $Res Function(_$FeaturedLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeaturedLoadingImpl implements FeaturedLoading {
  const _$FeaturedLoadingImpl();

  @override
  String toString() {
    return 'FeaturedBooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FeaturedLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeaturedInitial value) initial,
    required TResult Function(FeaturedLoading value) loading,
    required TResult Function(FeaturedSuccess value) success,
    required TResult Function(FeaturedFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeaturedInitial value)? initial,
    TResult? Function(FeaturedLoading value)? loading,
    TResult? Function(FeaturedSuccess value)? success,
    TResult? Function(FeaturedFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeaturedInitial value)? initial,
    TResult Function(FeaturedLoading value)? loading,
    TResult Function(FeaturedSuccess value)? success,
    TResult Function(FeaturedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FeaturedLoading implements FeaturedBooksState {
  const factory FeaturedLoading() = _$FeaturedLoadingImpl;
}

/// @nodoc
abstract class _$$FeaturedSuccessImplCopyWith<$Res> {
  factory _$$FeaturedSuccessImplCopyWith(
    _$FeaturedSuccessImpl value,
    $Res Function(_$FeaturedSuccessImpl) then,
  ) = __$$FeaturedSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$FeaturedSuccessImplCopyWithImpl<$Res>
    extends _$FeaturedBooksStateCopyWithImpl<$Res, _$FeaturedSuccessImpl>
    implements _$$FeaturedSuccessImplCopyWith<$Res> {
  __$$FeaturedSuccessImplCopyWithImpl(
    _$FeaturedSuccessImpl _value,
    $Res Function(_$FeaturedSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? books = null}) {
    return _then(
      _$FeaturedSuccessImpl(
        null == books
            ? _value._books
            : books // ignore: cast_nullable_to_non_nullable
                as List<Book>,
      ),
    );
  }
}

/// @nodoc

class _$FeaturedSuccessImpl implements FeaturedSuccess {
  const _$FeaturedSuccessImpl(final List<Book> books) : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'FeaturedBooksState.success(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedSuccessImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedSuccessImplCopyWith<_$FeaturedSuccessImpl> get copyWith =>
      __$$FeaturedSuccessImplCopyWithImpl<_$FeaturedSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return success(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeaturedInitial value) initial,
    required TResult Function(FeaturedLoading value) loading,
    required TResult Function(FeaturedSuccess value) success,
    required TResult Function(FeaturedFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeaturedInitial value)? initial,
    TResult? Function(FeaturedLoading value)? loading,
    TResult? Function(FeaturedSuccess value)? success,
    TResult? Function(FeaturedFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeaturedInitial value)? initial,
    TResult Function(FeaturedLoading value)? loading,
    TResult Function(FeaturedSuccess value)? success,
    TResult Function(FeaturedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FeaturedSuccess implements FeaturedBooksState {
  const factory FeaturedSuccess(final List<Book> books) = _$FeaturedSuccessImpl;

  List<Book> get books;

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedSuccessImplCopyWith<_$FeaturedSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeaturedFailureImplCopyWith<$Res> {
  factory _$$FeaturedFailureImplCopyWith(
    _$FeaturedFailureImpl value,
    $Res Function(_$FeaturedFailureImpl) then,
  ) = __$$FeaturedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FeaturedFailureImplCopyWithImpl<$Res>
    extends _$FeaturedBooksStateCopyWithImpl<$Res, _$FeaturedFailureImpl>
    implements _$$FeaturedFailureImplCopyWith<$Res> {
  __$$FeaturedFailureImplCopyWithImpl(
    _$FeaturedFailureImpl _value,
    $Res Function(_$FeaturedFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$FeaturedFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$FeaturedFailureImpl implements FeaturedFailure {
  const _$FeaturedFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FeaturedBooksState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedFailureImplCopyWith<_$FeaturedFailureImpl> get copyWith =>
      __$$FeaturedFailureImplCopyWithImpl<_$FeaturedFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Book> books) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Book> books)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Book> books)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FeaturedInitial value) initial,
    required TResult Function(FeaturedLoading value) loading,
    required TResult Function(FeaturedSuccess value) success,
    required TResult Function(FeaturedFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FeaturedInitial value)? initial,
    TResult? Function(FeaturedLoading value)? loading,
    TResult? Function(FeaturedSuccess value)? success,
    TResult? Function(FeaturedFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FeaturedInitial value)? initial,
    TResult Function(FeaturedLoading value)? loading,
    TResult Function(FeaturedSuccess value)? success,
    TResult Function(FeaturedFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FeaturedFailure implements FeaturedBooksState {
  const factory FeaturedFailure(final String message) = _$FeaturedFailureImpl;

  String get message;

  /// Create a copy of FeaturedBooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeaturedFailureImplCopyWith<_$FeaturedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
