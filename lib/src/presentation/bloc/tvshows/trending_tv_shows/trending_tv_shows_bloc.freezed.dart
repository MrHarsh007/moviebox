// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_tv_shows_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TrendingTvShowsState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get trendingTvShows => throw _privateConstructorUsedError;
  TrendingBy get trendingBy => throw _privateConstructorUsedError;
  int get numberOfTrendingTvShows => throw _privateConstructorUsedError;

  /// Create a copy of TrendingTvShowsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingTvShowsStateCopyWith<TrendingTvShowsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTvShowsStateCopyWith<$Res> {
  factory $TrendingTvShowsStateCopyWith(
    TrendingTvShowsState value,
    $Res Function(TrendingTvShowsState) then,
  ) = _$TrendingTvShowsStateCopyWithImpl<$Res, TrendingTvShowsState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> trendingTvShows,
    TrendingBy trendingBy,
    int numberOfTrendingTvShows,
  });
}

/// @nodoc
class _$TrendingTvShowsStateCopyWithImpl<
  $Res,
  $Val extends TrendingTvShowsState
>
    implements $TrendingTvShowsStateCopyWith<$Res> {
  _$TrendingTvShowsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingTvShowsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? trendingTvShows = null,
    Object? trendingBy = null,
    Object? numberOfTrendingTvShows = null,
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
            trendingTvShows: null == trendingTvShows
                ? _value.trendingTvShows
                : trendingTvShows // ignore: cast_nullable_to_non_nullable
                      as List<TvShowsResult>,
            trendingBy: null == trendingBy
                ? _value.trendingBy
                : trendingBy // ignore: cast_nullable_to_non_nullable
                      as TrendingBy,
            numberOfTrendingTvShows: null == numberOfTrendingTvShows
                ? _value.numberOfTrendingTvShows
                : numberOfTrendingTvShows // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TrendingTvShowsStateImplCopyWith<$Res>
    implements $TrendingTvShowsStateCopyWith<$Res> {
  factory _$$TrendingTvShowsStateImplCopyWith(
    _$TrendingTvShowsStateImpl value,
    $Res Function(_$TrendingTvShowsStateImpl) then,
  ) = __$$TrendingTvShowsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> trendingTvShows,
    TrendingBy trendingBy,
    int numberOfTrendingTvShows,
  });
}

/// @nodoc
class __$$TrendingTvShowsStateImplCopyWithImpl<$Res>
    extends _$TrendingTvShowsStateCopyWithImpl<$Res, _$TrendingTvShowsStateImpl>
    implements _$$TrendingTvShowsStateImplCopyWith<$Res> {
  __$$TrendingTvShowsStateImplCopyWithImpl(
    _$TrendingTvShowsStateImpl _value,
    $Res Function(_$TrendingTvShowsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingTvShowsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? trendingTvShows = null,
    Object? trendingBy = null,
    Object? numberOfTrendingTvShows = null,
  }) {
    return _then(
      _$TrendingTvShowsStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        trendingTvShows: null == trendingTvShows
            ? _value._trendingTvShows
            : trendingTvShows // ignore: cast_nullable_to_non_nullable
                  as List<TvShowsResult>,
        trendingBy: null == trendingBy
            ? _value.trendingBy
            : trendingBy // ignore: cast_nullable_to_non_nullable
                  as TrendingBy,
        numberOfTrendingTvShows: null == numberOfTrendingTvShows
            ? _value.numberOfTrendingTvShows
            : numberOfTrendingTvShows // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TrendingTvShowsStateImpl implements _TrendingTvShowsState {
  const _$TrendingTvShowsStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> trendingTvShows,
    required this.trendingBy,
    required this.numberOfTrendingTvShows,
  }) : _trendingTvShows = trendingTvShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _trendingTvShows;
  @override
  List<TvShowsResult> get trendingTvShows {
    if (_trendingTvShows is EqualUnmodifiableListView) return _trendingTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingTvShows);
  }

  @override
  final TrendingBy trendingBy;
  @override
  final int numberOfTrendingTvShows;

  @override
  String toString() {
    return 'TrendingTvShowsState(state: $state, message: $message, trendingTvShows: $trendingTvShows, trendingBy: $trendingBy, numberOfTrendingTvShows: $numberOfTrendingTvShows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingTvShowsStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._trendingTvShows,
              _trendingTvShows,
            ) &&
            (identical(other.trendingBy, trendingBy) ||
                other.trendingBy == trendingBy) &&
            (identical(
                  other.numberOfTrendingTvShows,
                  numberOfTrendingTvShows,
                ) ||
                other.numberOfTrendingTvShows == numberOfTrendingTvShows));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_trendingTvShows),
    trendingBy,
    numberOfTrendingTvShows,
  );

  /// Create a copy of TrendingTvShowsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingTvShowsStateImplCopyWith<_$TrendingTvShowsStateImpl>
  get copyWith =>
      __$$TrendingTvShowsStateImplCopyWithImpl<_$TrendingTvShowsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TrendingTvShowsState implements TrendingTvShowsState {
  const factory _TrendingTvShowsState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> trendingTvShows,
    required final TrendingBy trendingBy,
    required final int numberOfTrendingTvShows,
  }) = _$TrendingTvShowsStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get trendingTvShows;
  @override
  TrendingBy get trendingBy;
  @override
  int get numberOfTrendingTvShows;

  /// Create a copy of TrendingTvShowsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingTvShowsStateImplCopyWith<_$TrendingTvShowsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrendingTvShowsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchTrendingTvShows,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingTvShows,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingTvShows,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTrendingTvShows value) fetchTrendingTvShows,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingTvShowsEventCopyWith<$Res> {
  factory $TrendingTvShowsEventCopyWith(
    TrendingTvShowsEvent value,
    $Res Function(TrendingTvShowsEvent) then,
  ) = _$TrendingTvShowsEventCopyWithImpl<$Res, TrendingTvShowsEvent>;
}

/// @nodoc
class _$TrendingTvShowsEventCopyWithImpl<
  $Res,
  $Val extends TrendingTvShowsEvent
>
    implements $TrendingTvShowsEventCopyWith<$Res> {
  _$TrendingTvShowsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingTvShowsEvent
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
    extends _$TrendingTvShowsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingTvShowsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TrendingTvShowsEvent.initial()';
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
    required TResult Function() fetchTrendingTvShows,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingTvShows,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingTvShows,
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
    required TResult Function(_FetchTrendingTvShows value) fetchTrendingTvShows,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrendingTvShowsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchTrendingTvShowsImplCopyWith<$Res> {
  factory _$$FetchTrendingTvShowsImplCopyWith(
    _$FetchTrendingTvShowsImpl value,
    $Res Function(_$FetchTrendingTvShowsImpl) then,
  ) = __$$FetchTrendingTvShowsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTrendingTvShowsImplCopyWithImpl<$Res>
    extends _$TrendingTvShowsEventCopyWithImpl<$Res, _$FetchTrendingTvShowsImpl>
    implements _$$FetchTrendingTvShowsImplCopyWith<$Res> {
  __$$FetchTrendingTvShowsImplCopyWithImpl(
    _$FetchTrendingTvShowsImpl _value,
    $Res Function(_$FetchTrendingTvShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingTvShowsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTrendingTvShowsImpl implements _FetchTrendingTvShows {
  const _$FetchTrendingTvShowsImpl();

  @override
  String toString() {
    return 'TrendingTvShowsEvent.fetchTrendingTvShows()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTrendingTvShowsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchTrendingTvShows,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return fetchTrendingTvShows();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingTvShows,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return fetchTrendingTvShows?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingTvShows,
    TResult Function(TrendingBy trendingBy)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (fetchTrendingTvShows != null) {
      return fetchTrendingTvShows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTrendingTvShows value) fetchTrendingTvShows,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return fetchTrendingTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return fetchTrendingTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (fetchTrendingTvShows != null) {
      return fetchTrendingTvShows(this);
    }
    return orElse();
  }
}

abstract class _FetchTrendingTvShows implements TrendingTvShowsEvent {
  const factory _FetchTrendingTvShows() = _$FetchTrendingTvShowsImpl;
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
    extends _$TrendingTvShowsEventCopyWithImpl<$Res, _$ChangeTrendingByImpl>
    implements _$$ChangeTrendingByImplCopyWith<$Res> {
  __$$ChangeTrendingByImplCopyWithImpl(
    _$ChangeTrendingByImpl _value,
    $Res Function(_$ChangeTrendingByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TrendingTvShowsEvent
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
    return 'TrendingTvShowsEvent.changeTrendingBy(trendingBy: $trendingBy)';
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

  /// Create a copy of TrendingTvShowsEvent
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
    required TResult Function() fetchTrendingTvShows,
    required TResult Function(TrendingBy trendingBy) changeTrendingBy,
  }) {
    return changeTrendingBy(trendingBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchTrendingTvShows,
    TResult? Function(TrendingBy trendingBy)? changeTrendingBy,
  }) {
    return changeTrendingBy?.call(trendingBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchTrendingTvShows,
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
    required TResult Function(_FetchTrendingTvShows value) fetchTrendingTvShows,
    required TResult Function(_ChangeTrendingBy value) changeTrendingBy,
  }) {
    return changeTrendingBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult? Function(_ChangeTrendingBy value)? changeTrendingBy,
  }) {
    return changeTrendingBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTrendingTvShows value)? fetchTrendingTvShows,
    TResult Function(_ChangeTrendingBy value)? changeTrendingBy,
    required TResult orElse(),
  }) {
    if (changeTrendingBy != null) {
      return changeTrendingBy(this);
    }
    return orElse();
  }
}

abstract class _ChangeTrendingBy implements TrendingTvShowsEvent {
  const factory _ChangeTrendingBy({required final TrendingBy trendingBy}) =
      _$ChangeTrendingByImpl;

  TrendingBy get trendingBy;

  /// Create a copy of TrendingTvShowsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTrendingByImplCopyWith<_$ChangeTrendingByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
