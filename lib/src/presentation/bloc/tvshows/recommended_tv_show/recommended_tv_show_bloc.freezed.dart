// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_tv_show_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RecommendedTvShowState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get recommendedTvShows =>
      throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get tvShowId => throw _privateConstructorUsedError;

  /// Create a copy of RecommendedTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecommendedTvShowStateCopyWith<RecommendedTvShowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedTvShowStateCopyWith<$Res> {
  factory $RecommendedTvShowStateCopyWith(
    RecommendedTvShowState value,
    $Res Function(RecommendedTvShowState) then,
  ) = _$RecommendedTvShowStateCopyWithImpl<$Res, RecommendedTvShowState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> recommendedTvShows,
    int pageNumber,
    int tvShowId,
  });
}

/// @nodoc
class _$RecommendedTvShowStateCopyWithImpl<
  $Res,
  $Val extends RecommendedTvShowState
>
    implements $RecommendedTvShowStateCopyWith<$Res> {
  _$RecommendedTvShowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendedTvShows = null,
    Object? pageNumber = null,
    Object? tvShowId = null,
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
            recommendedTvShows: null == recommendedTvShows
                ? _value.recommendedTvShows
                : recommendedTvShows // ignore: cast_nullable_to_non_nullable
                      as List<TvShowsResult>,
            pageNumber: null == pageNumber
                ? _value.pageNumber
                : pageNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            tvShowId: null == tvShowId
                ? _value.tvShowId
                : tvShowId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecommendedTvShowStateImplCopyWith<$Res>
    implements $RecommendedTvShowStateCopyWith<$Res> {
  factory _$$RecommendedTvShowStateImplCopyWith(
    _$RecommendedTvShowStateImpl value,
    $Res Function(_$RecommendedTvShowStateImpl) then,
  ) = __$$RecommendedTvShowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> recommendedTvShows,
    int pageNumber,
    int tvShowId,
  });
}

/// @nodoc
class __$$RecommendedTvShowStateImplCopyWithImpl<$Res>
    extends
        _$RecommendedTvShowStateCopyWithImpl<$Res, _$RecommendedTvShowStateImpl>
    implements _$$RecommendedTvShowStateImplCopyWith<$Res> {
  __$$RecommendedTvShowStateImplCopyWithImpl(
    _$RecommendedTvShowStateImpl _value,
    $Res Function(_$RecommendedTvShowStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? recommendedTvShows = null,
    Object? pageNumber = null,
    Object? tvShowId = null,
  }) {
    return _then(
      _$RecommendedTvShowStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        recommendedTvShows: null == recommendedTvShows
            ? _value._recommendedTvShows
            : recommendedTvShows // ignore: cast_nullable_to_non_nullable
                  as List<TvShowsResult>,
        pageNumber: null == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        tvShowId: null == tvShowId
            ? _value.tvShowId
            : tvShowId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RecommendedTvShowStateImpl implements _RecommendedTvShowState {
  const _$RecommendedTvShowStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> recommendedTvShows,
    required this.pageNumber,
    required this.tvShowId,
  }) : _recommendedTvShows = recommendedTvShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _recommendedTvShows;
  @override
  List<TvShowsResult> get recommendedTvShows {
    if (_recommendedTvShows is EqualUnmodifiableListView)
      return _recommendedTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedTvShows);
  }

  @override
  final int pageNumber;
  @override
  final int tvShowId;

  @override
  String toString() {
    return 'RecommendedTvShowState(state: $state, message: $message, recommendedTvShows: $recommendedTvShows, pageNumber: $pageNumber, tvShowId: $tvShowId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedTvShowStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._recommendedTvShows,
              _recommendedTvShows,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.tvShowId, tvShowId) ||
                other.tvShowId == tvShowId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_recommendedTvShows),
    pageNumber,
    tvShowId,
  );

  /// Create a copy of RecommendedTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedTvShowStateImplCopyWith<_$RecommendedTvShowStateImpl>
  get copyWith =>
      __$$RecommendedTvShowStateImplCopyWithImpl<_$RecommendedTvShowStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RecommendedTvShowState implements RecommendedTvShowState {
  const factory _RecommendedTvShowState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> recommendedTvShows,
    required final int pageNumber,
    required final int tvShowId,
  }) = _$RecommendedTvShowStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get recommendedTvShows;
  @override
  int get pageNumber;
  @override
  int get tvShowId;

  /// Create a copy of RecommendedTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecommendedTvShowStateImplCopyWith<_$RecommendedTvShowStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendedTvShowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedTvShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRecommendedTvShows value)
    fetchRecommendedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedTvShowEventCopyWith<$Res> {
  factory $RecommendedTvShowEventCopyWith(
    RecommendedTvShowEvent value,
    $Res Function(RecommendedTvShowEvent) then,
  ) = _$RecommendedTvShowEventCopyWithImpl<$Res, RecommendedTvShowEvent>;
}

/// @nodoc
class _$RecommendedTvShowEventCopyWithImpl<
  $Res,
  $Val extends RecommendedTvShowEvent
>
    implements $RecommendedTvShowEventCopyWith<$Res> {
  _$RecommendedTvShowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecommendedTvShowEvent
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
    extends _$RecommendedTvShowEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RecommendedTvShowEvent.initial()';
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
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
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
    required TResult Function(_FetchRecommendedTvShows value)
    fetchRecommendedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecommendedTvShowEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchRecommendedTvShowsImplCopyWith<$Res> {
  factory _$$FetchRecommendedTvShowsImplCopyWith(
    _$FetchRecommendedTvShowsImpl value,
    $Res Function(_$FetchRecommendedTvShowsImpl) then,
  ) = __$$FetchRecommendedTvShowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tvShowId, bool isLoadingMore, int? pageNumber});
}

/// @nodoc
class __$$FetchRecommendedTvShowsImplCopyWithImpl<$Res>
    extends
        _$RecommendedTvShowEventCopyWithImpl<
          $Res,
          _$FetchRecommendedTvShowsImpl
        >
    implements _$$FetchRecommendedTvShowsImplCopyWith<$Res> {
  __$$FetchRecommendedTvShowsImplCopyWithImpl(
    _$FetchRecommendedTvShowsImpl _value,
    $Res Function(_$FetchRecommendedTvShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShowId = null,
    Object? isLoadingMore = null,
    Object? pageNumber = freezed,
  }) {
    return _then(
      _$FetchRecommendedTvShowsImpl(
        tvShowId: null == tvShowId
            ? _value.tvShowId
            : tvShowId // ignore: cast_nullable_to_non_nullable
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

class _$FetchRecommendedTvShowsImpl implements _FetchRecommendedTvShows {
  const _$FetchRecommendedTvShowsImpl({
    required this.tvShowId,
    this.isLoadingMore = false,
    this.pageNumber,
  });

  @override
  final int tvShowId;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  final int? pageNumber;

  @override
  String toString() {
    return 'RecommendedTvShowEvent.fetchRecommendedTvShows(tvShowId: $tvShowId, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecommendedTvShowsImpl &&
            (identical(other.tvShowId, tvShowId) ||
                other.tvShowId == tvShowId) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tvShowId, isLoadingMore, pageNumber);

  /// Create a copy of RecommendedTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecommendedTvShowsImplCopyWith<_$FetchRecommendedTvShowsImpl>
  get copyWith =>
      __$$FetchRecommendedTvShowsImplCopyWithImpl<
        _$FetchRecommendedTvShowsImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchRecommendedTvShows(tvShowId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchRecommendedTvShows?.call(tvShowId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchRecommendedTvShows != null) {
      return fetchRecommendedTvShows(tvShowId, isLoadingMore, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchRecommendedTvShows value)
    fetchRecommendedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchRecommendedTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchRecommendedTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchRecommendedTvShows != null) {
      return fetchRecommendedTvShows(this);
    }
    return orElse();
  }
}

abstract class _FetchRecommendedTvShows implements RecommendedTvShowEvent {
  const factory _FetchRecommendedTvShows({
    required final int tvShowId,
    final bool isLoadingMore,
    final int? pageNumber,
  }) = _$FetchRecommendedTvShowsImpl;

  int get tvShowId;
  bool get isLoadingMore;
  int? get pageNumber;

  /// Create a copy of RecommendedTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchRecommendedTvShowsImplCopyWith<_$FetchRecommendedTvShowsImpl>
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
    extends
        _$RecommendedTvShowEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecommendedTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'RecommendedTvShowEvent.incrementPageNumber()';
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
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchRecommendedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchRecommendedTvShows,
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
    required TResult Function(_FetchRecommendedTvShows value)
    fetchRecommendedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchRecommendedTvShows value)? fetchRecommendedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements RecommendedTvShowEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
