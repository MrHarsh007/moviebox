// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TrendingMoviesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get trendingMovies => throw _privateConstructorUsedError;
  TrendingBy get trendingBy => throw _privateConstructorUsedError;
  int get numberOfTrendingMovies => throw _privateConstructorUsedError;

  /// Create a copy of TrendingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingMoviesStateCopyWith<TrendingMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingMoviesStateCopyWith<$Res> {
  factory $TrendingMoviesStateCopyWith(
    TrendingMoviesState value,
    $Res Function(TrendingMoviesState) then,
  ) = _$TrendingMoviesStateCopyWithImpl<$Res, TrendingMoviesState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> trendingMovies,
    TrendingBy trendingBy,
    int numberOfTrendingMovies,
  });
}

/// @nodoc
class _$TrendingMoviesStateCopyWithImpl<$Res, $Val extends TrendingMoviesState>
    implements $TrendingMoviesStateCopyWith<$Res> {
  _$TrendingMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? trendingMovies = null,
    Object? trendingBy = null,
    Object? numberOfTrendingMovies = null,
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
            trendingMovies: null == trendingMovies
                ? _value.trendingMovies
                : trendingMovies // ignore: cast_nullable_to_non_nullable
                      as List<MovieResult>,
            trendingBy: null == trendingBy
                ? _value.trendingBy
                : trendingBy // ignore: cast_nullable_to_non_nullable
                      as TrendingBy,
            numberOfTrendingMovies: null == numberOfTrendingMovies
                ? _value.numberOfTrendingMovies
                : numberOfTrendingMovies // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TrendingMoviesStateImplCopyWith<$Res>
    implements $TrendingMoviesStateCopyWith<$Res> {
  factory _$$TrendingMoviesStateImplCopyWith(
    _$TrendingMoviesStateImpl value,
    $Res Function(_$TrendingMoviesStateImpl) then,
  ) = __$$TrendingMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> trendingMovies,
    TrendingBy trendingBy,
    int numberOfTrendingMovies,
  });
}

/// @nodoc
class __$$TrendingMoviesStateImplCopyWithImpl<$Res>
    extends _$TrendingMoviesStateCopyWithImpl<$Res, _$TrendingMoviesStateImpl>
    implements _$$TrendingMoviesStateImplCopyWith<$Res> {
  __$$TrendingMoviesStateImplCopyWithImpl(
    _$TrendingMoviesStateImpl _value,
    $Res Function(_$TrendingMoviesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? trendingMovies = null,
    Object? trendingBy = null,
    Object? numberOfTrendingMovies = null,
  }) {
    return _then(
      _$TrendingMoviesStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        trendingMovies: null == trendingMovies
            ? _value._trendingMovies
            : trendingMovies // ignore: cast_nullable_to_non_nullable
                  as List<MovieResult>,
        trendingBy: null == trendingBy
            ? _value.trendingBy
            : trendingBy // ignore: cast_nullable_to_non_nullable
                  as TrendingBy,
        numberOfTrendingMovies: null == numberOfTrendingMovies
            ? _value.numberOfTrendingMovies
            : numberOfTrendingMovies // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TrendingMoviesStateImpl implements _TrendingMoviesState {
  const _$TrendingMoviesStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> trendingMovies,
    required this.trendingBy,
    required this.numberOfTrendingMovies,
  }) : _trendingMovies = trendingMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _trendingMovies;
  @override
  List<MovieResult> get trendingMovies {
    if (_trendingMovies is EqualUnmodifiableListView) return _trendingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMovies);
  }

  @override
  final TrendingBy trendingBy;
  @override
  final int numberOfTrendingMovies;

  @override
  String toString() {
    return 'TrendingMoviesState(state: $state, message: $message, trendingMovies: $trendingMovies, trendingBy: $trendingBy, numberOfTrendingMovies: $numberOfTrendingMovies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingMoviesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._trendingMovies,
              _trendingMovies,
            ) &&
            (identical(other.trendingBy, trendingBy) ||
                other.trendingBy == trendingBy) &&
            (identical(other.numberOfTrendingMovies, numberOfTrendingMovies) ||
                other.numberOfTrendingMovies == numberOfTrendingMovies));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_trendingMovies),
    trendingBy,
    numberOfTrendingMovies,
  );

  /// Create a copy of TrendingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingMoviesStateImplCopyWith<_$TrendingMoviesStateImpl> get copyWith =>
      __$$TrendingMoviesStateImplCopyWithImpl<_$TrendingMoviesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TrendingMoviesState implements TrendingMoviesState {
  const factory _TrendingMoviesState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> trendingMovies,
    required final TrendingBy trendingBy,
    required final int numberOfTrendingMovies,
  }) = _$TrendingMoviesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get trendingMovies;
  @override
  TrendingBy get trendingBy;
  @override
  int get numberOfTrendingMovies;

  /// Create a copy of TrendingMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingMoviesStateImplCopyWith<_$TrendingMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrendingMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchTrendingMovies,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingMovies,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingMovies,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTrendingMovies value) fetchTrendingMovies,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingMoviesEventCopyWith<$Res> {
  factory $TrendingMoviesEventCopyWith(
    TrendingMoviesEvent value,
    $Res Function(TrendingMoviesEvent) then,
  ) = _$TrendingMoviesEventCopyWithImpl<$Res, TrendingMoviesEvent>;
}

/// @nodoc
class _$TrendingMoviesEventCopyWithImpl<$Res, $Val extends TrendingMoviesEvent>
    implements $TrendingMoviesEventCopyWith<$Res> {
  _$TrendingMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingMoviesEvent
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
    extends _$TrendingMoviesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TrendingMoviesEvent.initial()';
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
    required TResult Function() fetchTrendingMovies,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingMovies,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingMovies,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
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
    required TResult Function(_FetchTrendingMovies value) fetchTrendingMovies,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrendingMoviesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchTrendingMoviesImplCopyWith<$Res> {
  factory _$$FetchTrendingMoviesImplCopyWith(
    _$FetchTrendingMoviesImpl value,
    $Res Function(_$FetchTrendingMoviesImpl) then,
  ) = __$$FetchTrendingMoviesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTrendingMoviesImplCopyWithImpl<$Res>
    extends _$TrendingMoviesEventCopyWithImpl<$Res, _$FetchTrendingMoviesImpl>
    implements _$$FetchTrendingMoviesImplCopyWith<$Res> {
  __$$FetchTrendingMoviesImplCopyWithImpl(
    _$FetchTrendingMoviesImpl _value,
    $Res Function(_$FetchTrendingMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTrendingMoviesImpl implements _FetchTrendingMovies {
  const _$FetchTrendingMoviesImpl();

  @override
  String toString() {
    return 'TrendingMoviesEvent.fetchTrendingMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTrendingMoviesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchTrendingMovies,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return fetchTrendingMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingMovies,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return fetchTrendingMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingMovies,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (fetchTrendingMovies != null) {
      return fetchTrendingMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTrendingMovies value) fetchTrendingMovies,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return fetchTrendingMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return fetchTrendingMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (fetchTrendingMovies != null) {
      return fetchTrendingMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchTrendingMovies implements TrendingMoviesEvent {
  const factory _FetchTrendingMovies() = _$FetchTrendingMoviesImpl;
}

/// @nodoc
abstract class _$$ChangeTrendingByImplCopyWith<$Res> {
  factory _$$ChangeTrendingByImplCopyWith(
    _$ChangeTrendingByImpl value,
    $Res Function(_$ChangeTrendingByImpl) then,
  ) = __$$ChangeTrendingByImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrendingBy trendingBy});
}

/// @nodoc
class __$$ChangeTrendingByImplCopyWithImpl<$Res>
    extends _$TrendingMoviesEventCopyWithImpl<$Res, _$ChangeTrendingByImpl>
    implements _$$ChangeTrendingByImplCopyWith<$Res> {
  __$$ChangeTrendingByImplCopyWithImpl(
    _$ChangeTrendingByImpl _value,
    $Res Function(_$ChangeTrendingByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? trendingBy = null}) {
    return _then(
      _$ChangeTrendingByImpl(
        trendingBy: null == trendingBy
            ? _value.trendingBy
            : trendingBy // ignore: cast_nullable_to_non_nullable
                  as TrendingBy,
      ),
    );
  }
}

/// @nodoc

class _$ChangeTrendingByImpl implements _ChangeTrendingBy {
  const _$ChangeTrendingByImpl({required this.trendingBy});

  @override
  final TrendingBy trendingBy;

  @override
  String toString() {
    return 'TrendingMoviesEvent.changeTrendingBy(trendingBy: $trendingBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTrendingByImpl &&
            (identical(other.trendingBy, trendingBy) ||
                other.trendingBy == trendingBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trendingBy);

  /// Create a copy of TrendingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTrendingByImplCopyWith<_$ChangeTrendingByImpl> get copyWith =>
      __$$ChangeTrendingByImplCopyWithImpl<_$ChangeTrendingByImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchTrendingMovies,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return changeTrendingBy(trendingBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingMovies,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return changeTrendingBy?.call(trendingBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingMovies,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (changeTrendingBy != null) {
      return changeTrendingBy(trendingBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTrendingMovies value) fetchTrendingMovies,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return changeTrendingBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return changeTrendingBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingMovies value)? fetchTrendingMovies,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (changeTrendingBy != null) {
      return changeTrendingBy(this);
    }
    return orElse();
  }
}

abstract class _ChangeTrendingBy implements TrendingMoviesEvent {
  const factory _ChangeTrendingBy({required final TrendingBy trendingBy}) =
      _$ChangeTrendingByImpl;

  TrendingBy get trendingBy;

  /// Create a copy of TrendingMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTrendingByImplCopyWith<_$ChangeTrendingByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
