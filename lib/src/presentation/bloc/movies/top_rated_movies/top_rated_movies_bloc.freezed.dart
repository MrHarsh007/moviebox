// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TopRatedMoviesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get topRatedMovies => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopRatedMoviesStateCopyWith<TopRatedMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMoviesStateCopyWith<$Res> {
  factory $TopRatedMoviesStateCopyWith(
    TopRatedMoviesState value,
    $Res Function(TopRatedMoviesState) then,
  ) = _$TopRatedMoviesStateCopyWithImpl<$Res, TopRatedMoviesState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> topRatedMovies,
    int pageNumber,
  });
}

/// @nodoc
class _$TopRatedMoviesStateCopyWithImpl<$Res, $Val extends TopRatedMoviesState>
    implements $TopRatedMoviesStateCopyWith<$Res> {
  _$TopRatedMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? topRatedMovies = null,
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
            topRatedMovies: null == topRatedMovies
                ? _value.topRatedMovies
                : topRatedMovies // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TopRatedMoviesStateImplCopyWith<$Res>
    implements $TopRatedMoviesStateCopyWith<$Res> {
  factory _$$TopRatedMoviesStateImplCopyWith(
    _$TopRatedMoviesStateImpl value,
    $Res Function(_$TopRatedMoviesStateImpl) then,
  ) = __$$TopRatedMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> topRatedMovies,
    int pageNumber,
  });
}

/// @nodoc
class __$$TopRatedMoviesStateImplCopyWithImpl<$Res>
    extends _$TopRatedMoviesStateCopyWithImpl<$Res, _$TopRatedMoviesStateImpl>
    implements _$$TopRatedMoviesStateImplCopyWith<$Res> {
  __$$TopRatedMoviesStateImplCopyWithImpl(
    _$TopRatedMoviesStateImpl _value,
    $Res Function(_$TopRatedMoviesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? topRatedMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$TopRatedMoviesStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        topRatedMovies: null == topRatedMovies
            ? _value._topRatedMovies
            : topRatedMovies // ignore: cast_nullable_to_non_nullable
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

class _$TopRatedMoviesStateImpl implements _TopRatedMoviesState {
  const _$TopRatedMoviesStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> topRatedMovies,
    required this.pageNumber,
  }) : _topRatedMovies = topRatedMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _topRatedMovies;
  @override
  List<MovieResult> get topRatedMovies {
    if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedMovies);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'TopRatedMoviesState(state: $state, message: $message, topRatedMovies: $topRatedMovies, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopRatedMoviesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._topRatedMovies,
              _topRatedMovies,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_topRatedMovies),
    pageNumber,
  );

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopRatedMoviesStateImplCopyWith<_$TopRatedMoviesStateImpl> get copyWith =>
      __$$TopRatedMoviesStateImplCopyWithImpl<_$TopRatedMoviesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TopRatedMoviesState implements TopRatedMoviesState {
  const factory _TopRatedMoviesState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> topRatedMovies,
    required final int pageNumber,
  }) = _$TopRatedMoviesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get topRatedMovies;
  @override
  int get pageNumber;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopRatedMoviesStateImplCopyWith<_$TopRatedMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopRatedMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedMovies,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTopRatedMovies value) fetchTopRatedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMoviesEventCopyWith<$Res> {
  factory $TopRatedMoviesEventCopyWith(
    TopRatedMoviesEvent value,
    $Res Function(TopRatedMoviesEvent) then,
  ) = _$TopRatedMoviesEventCopyWithImpl<$Res, TopRatedMoviesEvent>;
}

/// @nodoc
class _$TopRatedMoviesEventCopyWithImpl<$Res, $Val extends TopRatedMoviesEvent>
    implements $TopRatedMoviesEventCopyWith<$Res> {
  _$TopRatedMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopRatedMoviesEvent
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
    extends _$TopRatedMoviesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TopRatedMoviesEvent.initial()';
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
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
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
    required TResult Function(_FetchTopRatedMovies value) fetchTopRatedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TopRatedMoviesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchTopRatedMoviesImplCopyWith<$Res> {
  factory _$$FetchTopRatedMoviesImplCopyWith(
    _$FetchTopRatedMoviesImpl value,
    $Res Function(_$FetchTopRatedMoviesImpl) then,
  ) = __$$FetchTopRatedMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchTopRatedMoviesImplCopyWithImpl<$Res>
    extends _$TopRatedMoviesEventCopyWithImpl<$Res, _$FetchTopRatedMoviesImpl>
    implements _$$FetchTopRatedMoviesImplCopyWith<$Res> {
  __$$FetchTopRatedMoviesImplCopyWithImpl(
    _$FetchTopRatedMoviesImpl _value,
    $Res Function(_$FetchTopRatedMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchTopRatedMoviesImpl(
        pageNumber: freezed == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        isLoadingMore: null == isLoadingMore
            ? _value.isLoadingMore
            : isLoadingMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FetchTopRatedMoviesImpl implements _FetchTopRatedMovies {
  const _$FetchTopRatedMoviesImpl({
    this.pageNumber,
    this.isLoadingMore = false,
  });

  @override
  final int? pageNumber;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'TopRatedMoviesEvent.fetchTopRatedMovies(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopRatedMoviesImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of TopRatedMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTopRatedMoviesImplCopyWith<_$FetchTopRatedMoviesImpl> get copyWith =>
      __$$FetchTopRatedMoviesImplCopyWithImpl<_$FetchTopRatedMoviesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchTopRatedMovies(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchTopRatedMovies?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchTopRatedMovies != null) {
      return fetchTopRatedMovies(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTopRatedMovies value) fetchTopRatedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchTopRatedMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchTopRatedMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchTopRatedMovies != null) {
      return fetchTopRatedMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchTopRatedMovies implements TopRatedMoviesEvent {
  const factory _FetchTopRatedMovies({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchTopRatedMoviesImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of TopRatedMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTopRatedMoviesImplCopyWith<_$FetchTopRatedMoviesImpl> get copyWith =>
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
    extends _$TopRatedMoviesEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'TopRatedMoviesEvent.incrementPageNumber()';
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
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedMovies,
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
    required TResult Function(_FetchTopRatedMovies value) fetchTopRatedMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedMovies value)? fetchTopRatedMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements TopRatedMoviesEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
