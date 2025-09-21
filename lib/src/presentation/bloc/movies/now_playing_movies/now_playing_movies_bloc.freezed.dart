// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NowPlayingMoviesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get nowPlayingMovies => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of NowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowPlayingMoviesStateCopyWith<NowPlayingMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMoviesStateCopyWith<$Res> {
  factory $NowPlayingMoviesStateCopyWith(
    NowPlayingMoviesState value,
    $Res Function(NowPlayingMoviesState) then,
  ) = _$NowPlayingMoviesStateCopyWithImpl<$Res, NowPlayingMoviesState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> nowPlayingMovies,
    int pageNumber,
  });
}

/// @nodoc
class _$NowPlayingMoviesStateCopyWithImpl<
  $Res,
  $Val extends NowPlayingMoviesState
>
    implements $NowPlayingMoviesStateCopyWith<$Res> {
  _$NowPlayingMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? nowPlayingMovies = null,
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
            nowPlayingMovies: null == nowPlayingMovies
                ? _value.nowPlayingMovies
                : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
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
abstract class _$$NowPlayingMoviesStateImplCopyWith<$Res>
    implements $NowPlayingMoviesStateCopyWith<$Res> {
  factory _$$NowPlayingMoviesStateImplCopyWith(
    _$NowPlayingMoviesStateImpl value,
    $Res Function(_$NowPlayingMoviesStateImpl) then,
  ) = __$$NowPlayingMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> nowPlayingMovies,
    int pageNumber,
  });
}

/// @nodoc
class __$$NowPlayingMoviesStateImplCopyWithImpl<$Res>
    extends
        _$NowPlayingMoviesStateCopyWithImpl<$Res, _$NowPlayingMoviesStateImpl>
    implements _$$NowPlayingMoviesStateImplCopyWith<$Res> {
  __$$NowPlayingMoviesStateImplCopyWithImpl(
    _$NowPlayingMoviesStateImpl _value,
    $Res Function(_$NowPlayingMoviesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? nowPlayingMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$NowPlayingMoviesStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        nowPlayingMovies: null == nowPlayingMovies
            ? _value._nowPlayingMovies
            : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
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

class _$NowPlayingMoviesStateImpl implements _NowPlayingMoviesState {
  const _$NowPlayingMoviesStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> nowPlayingMovies,
    required this.pageNumber,
  }) : _nowPlayingMovies = nowPlayingMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _nowPlayingMovies;
  @override
  List<MovieResult> get nowPlayingMovies {
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovies);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'NowPlayingMoviesState(state: $state, message: $message, nowPlayingMovies: $nowPlayingMovies, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowPlayingMoviesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._nowPlayingMovies,
              _nowPlayingMovies,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_nowPlayingMovies),
    pageNumber,
  );

  /// Create a copy of NowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowPlayingMoviesStateImplCopyWith<_$NowPlayingMoviesStateImpl>
  get copyWith =>
      __$$NowPlayingMoviesStateImplCopyWithImpl<_$NowPlayingMoviesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _NowPlayingMoviesState implements NowPlayingMoviesState {
  const factory _NowPlayingMoviesState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> nowPlayingMovies,
    required final int pageNumber,
  }) = _$NowPlayingMoviesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get nowPlayingMovies;
  @override
  int get pageNumber;

  /// Create a copy of NowPlayingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowPlayingMoviesStateImplCopyWith<_$NowPlayingMoviesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NowPlayingMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchNowPlayingMovies,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchNowPlayingMovies value)
    fetchNowPlayingMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingMoviesEventCopyWith<$Res> {
  factory $NowPlayingMoviesEventCopyWith(
    NowPlayingMoviesEvent value,
    $Res Function(NowPlayingMoviesEvent) then,
  ) = _$NowPlayingMoviesEventCopyWithImpl<$Res, NowPlayingMoviesEvent>;
}

/// @nodoc
class _$NowPlayingMoviesEventCopyWithImpl<
  $Res,
  $Val extends NowPlayingMoviesEvent
>
    implements $NowPlayingMoviesEventCopyWith<$Res> {
  _$NowPlayingMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NowPlayingMoviesEvent
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
    extends _$NowPlayingMoviesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NowPlayingMoviesEvent.initial()';
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
    fetchNowPlayingMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
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
    required TResult Function(_FetchNowPlayingMovies value)
    fetchNowPlayingMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NowPlayingMoviesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchNowPlayingMoviesImplCopyWith<$Res> {
  factory _$$FetchNowPlayingMoviesImplCopyWith(
    _$FetchNowPlayingMoviesImpl value,
    $Res Function(_$FetchNowPlayingMoviesImpl) then,
  ) = __$$FetchNowPlayingMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchNowPlayingMoviesImplCopyWithImpl<$Res>
    extends
        _$NowPlayingMoviesEventCopyWithImpl<$Res, _$FetchNowPlayingMoviesImpl>
    implements _$$FetchNowPlayingMoviesImplCopyWith<$Res> {
  __$$FetchNowPlayingMoviesImplCopyWithImpl(
    _$FetchNowPlayingMoviesImpl _value,
    $Res Function(_$FetchNowPlayingMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchNowPlayingMoviesImpl(
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

class _$FetchNowPlayingMoviesImpl implements _FetchNowPlayingMovies {
  const _$FetchNowPlayingMoviesImpl({
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
    return 'NowPlayingMoviesEvent.fetchNowPlayingMovies(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNowPlayingMoviesImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of NowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchNowPlayingMoviesImplCopyWith<_$FetchNowPlayingMoviesImpl>
  get copyWith =>
      __$$FetchNowPlayingMoviesImplCopyWithImpl<_$FetchNowPlayingMoviesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchNowPlayingMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchNowPlayingMovies(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchNowPlayingMovies?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchNowPlayingMovies != null) {
      return fetchNowPlayingMovies(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchNowPlayingMovies value)
    fetchNowPlayingMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchNowPlayingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchNowPlayingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchNowPlayingMovies != null) {
      return fetchNowPlayingMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchNowPlayingMovies implements NowPlayingMoviesEvent {
  const factory _FetchNowPlayingMovies({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchNowPlayingMoviesImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of NowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchNowPlayingMoviesImplCopyWith<_$FetchNowPlayingMoviesImpl>
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
    extends _$NowPlayingMoviesEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NowPlayingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'NowPlayingMoviesEvent.incrementPageNumber()';
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
    fetchNowPlayingMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchNowPlayingMovies,
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
    required TResult Function(_FetchNowPlayingMovies value)
    fetchNowPlayingMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchNowPlayingMovies value)? fetchNowPlayingMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements NowPlayingMoviesEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
