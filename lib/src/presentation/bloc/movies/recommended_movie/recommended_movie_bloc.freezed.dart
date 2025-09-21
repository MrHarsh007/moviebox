// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RecommendedMovieState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get recommendedMovies => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedMovieStateCopyWith<RecommendedMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedMovieStateCopyWith<$Res> {
  factory $RecommendedMovieStateCopyWith(
    RecommendedMovieState value,
    $Res Function(RecommendedMovieState) then,
  ) = _$RecommendedMovieStateCopyWithImpl<$Res, RecommendedMovieState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> recommendedMovies,
    int pageNumber,
  });
}

/// @nodoc
class _$RecommendedMovieStateCopyWithImpl<
  $Res,
  $Val extends RecommendedMovieState
>
    implements $RecommendedMovieStateCopyWith<$Res> {
  _$RecommendedMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedMovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendedMovies = null,
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
            recommendedMovies: null == recommendedMovies
                ? _value.recommendedMovies
                : recommendedMovies // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RecommendedMovieStateImplCopyWith<$Res>
    implements $RecommendedMovieStateCopyWith<$Res> {
  factory _$$RecommendedMovieStateImplCopyWith(
    _$RecommendedMovieStateImpl value,
    $Res Function(_$RecommendedMovieStateImpl) then,
  ) = __$$RecommendedMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> recommendedMovies,
    int pageNumber,
  });
}

/// @nodoc
class __$$RecommendedMovieStateImplCopyWithImpl<$Res>
    extends
        _$RecommendedMovieStateCopyWithImpl<$Res, _$RecommendedMovieStateImpl>
    implements _$$RecommendedMovieStateImplCopyWith<$Res> {
  __$$RecommendedMovieStateImplCopyWithImpl(
    _$RecommendedMovieStateImpl _value,
    $Res Function(_$RecommendedMovieStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedMovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendedMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$RecommendedMovieStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        recommendedMovies: null == recommendedMovies
            ? _value._recommendedMovies
            : recommendedMovies // ignore: cast_nullable_to_non_nullable
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

class _$RecommendedMovieStateImpl implements _RecommendedMovieState {
  const _$RecommendedMovieStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> recommendedMovies,
    required this.pageNumber,
  }) : _recommendedMovies = recommendedMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _recommendedMovies;
  @override
  List<MovieResult> get recommendedMovies {
    if (_recommendedMovies is EqualUnmodifiableListView)
      return _recommendedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedMovies);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'RecommendedMovieState(state: $state, message: $message, recommendedMovies: $recommendedMovies, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedMovieStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._recommendedMovies,
              _recommendedMovies,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_recommendedMovies),
    pageNumber,
  );

  /// Create a copy of RecommendedMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedMovieStateImplCopyWith<_$RecommendedMovieStateImpl>
  get copyWith =>
      __$$RecommendedMovieStateImplCopyWithImpl<_$RecommendedMovieStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RecommendedMovieState implements RecommendedMovieState {
  const factory _RecommendedMovieState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> recommendedMovies,
    required final int pageNumber,
  }) = _$RecommendedMovieStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get recommendedMovies;
  @override
  int get pageNumber;

  /// Create a copy of RecommendedMovieState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedMovieStateImplCopyWith<_$RecommendedMovieStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendedMovieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedMovies,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRecommendedMovies value)
    fetchRecommendedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedMovieEventCopyWith<$Res> {
  factory $RecommendedMovieEventCopyWith(
    RecommendedMovieEvent value,
    $Res Function(RecommendedMovieEvent) then,
  ) = _$RecommendedMovieEventCopyWithImpl<$Res, RecommendedMovieEvent>;
}

/// @nodoc
class _$RecommendedMovieEventCopyWithImpl<
  $Res,
  $Val extends RecommendedMovieEvent
>
    implements $RecommendedMovieEventCopyWith<$Res> {
  _$RecommendedMovieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedMovieEvent
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
    extends _$RecommendedMovieEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedMovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RecommendedMovieEvent.initial()';
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
    fetchRecommendedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
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
    required TResult Function(_FetchRecommendedMovies value)
    fetchRecommendedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecommendedMovieEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchRecommendedMoviesImplCopyWith<$Res> {
  factory _$$FetchRecommendedMoviesImplCopyWith(
    _$FetchRecommendedMoviesImpl value,
    $Res Function(_$FetchRecommendedMoviesImpl) then,
  ) = __$$FetchRecommendedMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId, bool isLoadingMore, int? pageNumber});
}

/// @nodoc
class __$$FetchRecommendedMoviesImplCopyWithImpl<$Res>
    extends
        _$RecommendedMovieEventCopyWithImpl<$Res, _$FetchRecommendedMoviesImpl>
    implements _$$FetchRecommendedMoviesImplCopyWith<$Res> {
  __$$FetchRecommendedMoviesImplCopyWithImpl(
    _$FetchRecommendedMoviesImpl _value,
    $Res Function(_$FetchRecommendedMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? isLoadingMore = null,
    Object? pageNumber = freezed,
  }) {
    return _then(
      _$FetchRecommendedMoviesImpl(
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

class _$FetchRecommendedMoviesImpl implements _FetchRecommendedMovies {
  const _$FetchRecommendedMoviesImpl({
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
    return 'RecommendedMovieEvent.fetchRecommendedMovies(movieId: $movieId, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedMoviesImpl &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, movieId, isLoadingMore, pageNumber);

  /// Create a copy of RecommendedMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecommendedMoviesImplCopyWith<_$FetchRecommendedMoviesImpl>
  get copyWith =>
      __$$FetchRecommendedMoviesImplCopyWithImpl<_$FetchRecommendedMoviesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int movieId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchRecommendedMovies(movieId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchRecommendedMovies?.call(movieId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchRecommendedMovies != null) {
      return fetchRecommendedMovies(movieId, isLoadingMore, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRecommendedMovies value)
    fetchRecommendedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchRecommendedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchRecommendedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchRecommendedMovies != null) {
      return fetchRecommendedMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchRecommendedMovies implements RecommendedMovieEvent {
  const factory _FetchRecommendedMovies({
    required final int movieId,
    final bool isLoadingMore,
    final int? pageNumber,
  }) = _$FetchRecommendedMoviesImpl;

  int get movieId;
  bool get isLoadingMore;
  int? get pageNumber;

  /// Create a copy of RecommendedMovieEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRecommendedMoviesImplCopyWith<_$FetchRecommendedMoviesImpl>
  get copyWith => throw _privateConstructorUsedError;
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
    extends _$RecommendedMovieEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedMovieEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'RecommendedMovieEvent.incrementPageNumber()';
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
    fetchRecommendedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int movieId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedMovies,
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
    required TResult Function(_FetchRecommendedMovies value)
    fetchRecommendedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedMovies value)? fetchRecommendedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements RecommendedMovieEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
