// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'similar_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SimilarMoviesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get similarMovies => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of SimilarMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimilarMoviesStateCopyWith<SimilarMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarMoviesStateCopyWith<$Res> {
  factory $SimilarMoviesStateCopyWith(
    SimilarMoviesState value,
    $Res Function(SimilarMoviesState) then,
  ) = _$SimilarMoviesStateCopyWithImpl<$Res, SimilarMoviesState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> similarMovies,
    int pageNumber,
  });
}

/// @nodoc
class _$SimilarMoviesStateCopyWithImpl<$Res, $Val extends SimilarMoviesState>
    implements $SimilarMoviesStateCopyWith<$Res> {
  _$SimilarMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? similarMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _value.copyWith(
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as RequestState,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            similarMovies: null == similarMovies
                ? _value.similarMovies
                : similarMovies // ignore: cast_nullable_to_non_nullable
                      as List<MovieResult>,
            pageNumber: null == pageNumber
                ? _value.pageNumber
                : pageNumber // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SimilarMoviesStateImplCopyWith<$Res>
    implements $SimilarMoviesStateCopyWith<$Res> {
  factory _$$SimilarMoviesStateImplCopyWith(
    _$SimilarMoviesStateImpl value,
    $Res Function(_$SimilarMoviesStateImpl) then,
  ) = __$$SimilarMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> similarMovies,
    int pageNumber,
  });
}

/// @nodoc
class __$$SimilarMoviesStateImplCopyWithImpl<$Res>
    extends _$SimilarMoviesStateCopyWithImpl<$Res, _$SimilarMoviesStateImpl>
    implements _$$SimilarMoviesStateImplCopyWith<$Res> {
  __$$SimilarMoviesStateImplCopyWithImpl(
    _$SimilarMoviesStateImpl _value,
    $Res Function(_$SimilarMoviesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? similarMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$SimilarMoviesStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        similarMovies: null == similarMovies
            ? _value._similarMovies
            : similarMovies // ignore: cast_nullable_to_non_nullable
                  as List<MovieResult>,
        pageNumber: null == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SimilarMoviesStateImpl implements _SimilarMoviesState {
  const _$SimilarMoviesStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> similarMovies,
    required this.pageNumber,
  }) : _similarMovies = similarMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _similarMovies;
  @override
  List<MovieResult> get similarMovies {
    if (_similarMovies is EqualUnmodifiableListView) return _similarMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similarMovies);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'SimilarMoviesState(state: $state, message: $message, similarMovies: $similarMovies, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarMoviesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._similarMovies,
              _similarMovies,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_similarMovies),
    pageNumber,
  );

  /// Create a copy of SimilarMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarMoviesStateImplCopyWith<_$SimilarMoviesStateImpl> get copyWith =>
      __$$SimilarMoviesStateImplCopyWithImpl<_$SimilarMoviesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SimilarMoviesState implements SimilarMoviesState {
  const factory _SimilarMoviesState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> similarMovies,
    required final int pageNumber,
  }) = _$SimilarMoviesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get similarMovies;
  @override
  int get pageNumber;

  /// Create a copy of SimilarMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimilarMoviesStateImplCopyWith<_$SimilarMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimilarMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchSimilarMovies,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarMovies value) fetchSimilarMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarMoviesEventCopyWith<$Res> {
  factory $SimilarMoviesEventCopyWith(
    SimilarMoviesEvent value,
    $Res Function(SimilarMoviesEvent) then,
  ) = _$SimilarMoviesEventCopyWithImpl<$Res, SimilarMoviesEvent>;
}

/// @nodoc
class _$SimilarMoviesEventCopyWithImpl<$Res, $Val extends SimilarMoviesEvent>
    implements $SimilarMoviesEventCopyWith<$Res> {
  _$SimilarMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SimilarMoviesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SimilarMoviesEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchSimilarMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult Function()? incrementPageNumber,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarMovies value) fetchSimilarMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SimilarMoviesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchSimilarMoviesImplCopyWith<$Res> {
  factory _$$FetchSimilarMoviesImplCopyWith(
    _$FetchSimilarMoviesImpl value,
    $Res Function(_$FetchSimilarMoviesImpl) then,
  ) = __$$FetchSimilarMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId, bool isLoadingMore, int? pageNumber});
}

/// @nodoc
class __$$FetchSimilarMoviesImplCopyWithImpl<$Res>
    extends _$SimilarMoviesEventCopyWithImpl<$Res, _$FetchSimilarMoviesImpl>
    implements _$$FetchSimilarMoviesImplCopyWith<$Res> {
  __$$FetchSimilarMoviesImplCopyWithImpl(
    _$FetchSimilarMoviesImpl _value,
    $Res Function(_$FetchSimilarMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? isLoadingMore = null,
    Object? pageNumber = freezed,
  }) {
    return _then(
      _$FetchSimilarMoviesImpl(
        movieId: null == movieId
            ? _value.movieId
            : movieId // ignore: cast_nullable_to_non_nullable
                  as int,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        pageNumber: freezed == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$FetchSimilarMoviesImpl implements _FetchSimilarMovies {
  const _$FetchSimilarMoviesImpl({
    required this.movieId,
    this.isLoadingMore = false,
    this.pageNumber,
  });

  @override
  final int movieId;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'SimilarMoviesEvent.fetchSimilarMovies(movieId: $movieId, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSimilarMoviesImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movieId, isLoadingMore, pageNumber);

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSimilarMoviesImplCopyWith<_$FetchSimilarMoviesImpl> get copyWith =>
      __$$FetchSimilarMoviesImplCopyWithImpl<_$FetchSimilarMoviesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchSimilarMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchSimilarMovies(movieId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchSimilarMovies?.call(movieId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchSimilarMovies != null) {
      return fetchSimilarMovies(movieId, isLoadingMore, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarMovies value) fetchSimilarMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchSimilarMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchSimilarMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchSimilarMovies != null) {
      return fetchSimilarMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchSimilarMovies implements SimilarMoviesEvent {
  const factory _FetchSimilarMovies({
    required final int movieId,
    final bool isLoadingMore,
    final int? pageNumber,
  }) = _$FetchSimilarMoviesImpl;

  int get movieId;
  bool get isLoadingMore;
  int? get pageNumber;

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSimilarMoviesImplCopyWith<_$FetchSimilarMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementPageNumberImplCopyWith<$Res> {
  factory _$$IncrementPageNumberImplCopyWith(
    _$IncrementPageNumberImpl value,
    $Res Function(_$IncrementPageNumberImpl) then,
  ) = __$$IncrementPageNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementPageNumberImplCopyWithImpl<$Res>
    extends _$SimilarMoviesEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'SimilarMoviesEvent.incrementPageNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementPageNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchSimilarMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarMovies value) fetchSimilarMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarMovies value)? fetchSimilarMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements SimilarMoviesEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
