// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'similar_tv_show_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SimilarTvShowState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get similiarTvShows => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get tvShowId => throw _privateConstructorUsedError;

  /// Create a copy of SimilarTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimilarTvShowStateCopyWith<SimilarTvShowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarTvShowStateCopyWith<$Res> {
  factory $SimilarTvShowStateCopyWith(
    SimilarTvShowState value,
    $Res Function(SimilarTvShowState) then,
  ) = _$SimilarTvShowStateCopyWithImpl<$Res, SimilarTvShowState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> similiarTvShows,
    int pageNumber,
    int tvShowId,
  });
}

/// @nodoc
class _$SimilarTvShowStateCopyWithImpl<$Res, $Val extends SimilarTvShowState>
    implements $SimilarTvShowStateCopyWith<$Res> {
  _$SimilarTvShowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? similiarTvShows = null,
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
            similiarTvShows: null == similiarTvShows
                ? _value.similiarTvShows
                : similiarTvShows // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SimilarTvShowStateImplCopyWith<$Res>
    implements $SimilarTvShowStateCopyWith<$Res> {
  factory _$$SimilarTvShowStateImplCopyWith(
    _$SimilarTvShowStateImpl value,
    $Res Function(_$SimilarTvShowStateImpl) then,
  ) = __$$SimilarTvShowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> similiarTvShows,
    int pageNumber,
    int tvShowId,
  });
}

/// @nodoc
class __$$SimilarTvShowStateImplCopyWithImpl<$Res>
    extends _$SimilarTvShowStateCopyWithImpl<$Res, _$SimilarTvShowStateImpl>
    implements _$$SimilarTvShowStateImplCopyWith<$Res> {
  __$$SimilarTvShowStateImplCopyWithImpl(
    _$SimilarTvShowStateImpl _value,
    $Res Function(_$SimilarTvShowStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? similiarTvShows = null,
    Object? pageNumber = null,
    Object? tvShowId = null,
  }) {
    return _then(
      _$SimilarTvShowStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        similiarTvShows: null == similiarTvShows
            ? _value._similiarTvShows
            : similiarTvShows // ignore: cast_nullable_to_non_nullable
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

class _$SimilarTvShowStateImpl implements _SimilarTvShowState {
  const _$SimilarTvShowStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> similiarTvShows,
    required this.pageNumber,
    required this.tvShowId,
  }) : _similiarTvShows = similiarTvShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _similiarTvShows;
  @override
  List<TvShowsResult> get similiarTvShows {
    if (_similiarTvShows is EqualUnmodifiableListView) return _similiarTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_similiarTvShows);
  }

  @override
  final int pageNumber;
  @override
  final int tvShowId;

  @override
  String toString() {
    return 'SimilarTvShowState(state: $state, message: $message, similiarTvShows: $similiarTvShows, pageNumber: $pageNumber, tvShowId: $tvShowId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarTvShowStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._similiarTvShows,
              _similiarTvShows,
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
    const DeepCollectionEquality().hash(_similiarTvShows),
    pageNumber,
    tvShowId,
  );

  /// Create a copy of SimilarTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarTvShowStateImplCopyWith<_$SimilarTvShowStateImpl> get copyWith =>
      __$$SimilarTvShowStateImplCopyWithImpl<_$SimilarTvShowStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SimilarTvShowState implements SimilarTvShowState {
  const factory _SimilarTvShowState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> similiarTvShows,
    required final int pageNumber,
    required final int tvShowId,
  }) = _$SimilarTvShowStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get similiarTvShows;
  @override
  int get pageNumber;
  @override
  int get tvShowId;

  /// Create a copy of SimilarTvShowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimilarTvShowStateImplCopyWith<_$SimilarTvShowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimilarTvShowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchSimilarTvShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarTvShows value) fetchSimilarTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarTvShowEventCopyWith<$Res> {
  factory $SimilarTvShowEventCopyWith(
    SimilarTvShowEvent value,
    $Res Function(SimilarTvShowEvent) then,
  ) = _$SimilarTvShowEventCopyWithImpl<$Res, SimilarTvShowEvent>;
}

/// @nodoc
class _$SimilarTvShowEventCopyWithImpl<$Res, $Val extends SimilarTvShowEvent>
    implements $SimilarTvShowEventCopyWith<$Res> {
  _$SimilarTvShowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarTvShowEvent
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
    extends _$SimilarTvShowEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SimilarTvShowEvent.initial()';
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
    fetchSimilarTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
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
    required TResult Function(_FetchSimilarTvShows value) fetchSimilarTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SimilarTvShowEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchSimilarTvShowsImplCopyWith<$Res> {
  factory _$$FetchSimilarTvShowsImplCopyWith(
    _$FetchSimilarTvShowsImpl value,
    $Res Function(_$FetchSimilarTvShowsImpl) then,
  ) = __$$FetchSimilarTvShowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tvShowId, bool isLoadingMore, int? pageNumber});
}

/// @nodoc
class __$$FetchSimilarTvShowsImplCopyWithImpl<$Res>
    extends _$SimilarTvShowEventCopyWithImpl<$Res, _$FetchSimilarTvShowsImpl>
    implements _$$FetchSimilarTvShowsImplCopyWith<$Res> {
  __$$FetchSimilarTvShowsImplCopyWithImpl(
    _$FetchSimilarTvShowsImpl _value,
    $Res Function(_$FetchSimilarTvShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvShowId = null,
    Object? isLoadingMore = null,
    Object? pageNumber = freezed,
  }) {
    return _then(
      _$FetchSimilarTvShowsImpl(
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

class _$FetchSimilarTvShowsImpl implements _FetchSimilarTvShows {
  const _$FetchSimilarTvShowsImpl({
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
    return 'SimilarTvShowEvent.fetchSimilarTvShows(tvShowId: $tvShowId, isLoadingMore: $isLoadingMore, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSimilarTvShowsImpl &&
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

  /// Create a copy of SimilarTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSimilarTvShowsImplCopyWith<_$FetchSimilarTvShowsImpl> get copyWith =>
      __$$FetchSimilarTvShowsImplCopyWithImpl<_$FetchSimilarTvShowsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)
    fetchSimilarTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchSimilarTvShows(tvShowId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchSimilarTvShows?.call(tvShowId, isLoadingMore, pageNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchSimilarTvShows != null) {
      return fetchSimilarTvShows(tvShowId, isLoadingMore, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSimilarTvShows value) fetchSimilarTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchSimilarTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchSimilarTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchSimilarTvShows != null) {
      return fetchSimilarTvShows(this);
    }
    return orElse();
  }
}

abstract class _FetchSimilarTvShows implements SimilarTvShowEvent {
  const factory _FetchSimilarTvShows({
    required final int tvShowId,
    final bool isLoadingMore,
    final int? pageNumber,
  }) = _$FetchSimilarTvShowsImpl;

  int get tvShowId;
  bool get isLoadingMore;
  int? get pageNumber;

  /// Create a copy of SimilarTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSimilarTvShowsImplCopyWith<_$FetchSimilarTvShowsImpl> get copyWith =>
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
    extends _$SimilarTvShowEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SimilarTvShowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'SimilarTvShowEvent.incrementPageNumber()';
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
    fetchSimilarTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, bool isLoadingMore, int? pageNumber)?
    fetchSimilarTvShows,
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
    required TResult Function(_FetchSimilarTvShows value) fetchSimilarTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSimilarTvShows value)? fetchSimilarTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements SimilarTvShowEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
