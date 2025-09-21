// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_tvshow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TopRatedTvshowState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get topRatedTvShow => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of TopRatedTvshowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopRatedTvshowStateCopyWith<TopRatedTvshowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedTvshowStateCopyWith<$Res> {
  factory $TopRatedTvshowStateCopyWith(
    TopRatedTvshowState value,
    $Res Function(TopRatedTvshowState) then,
  ) = _$TopRatedTvshowStateCopyWithImpl<$Res, TopRatedTvshowState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> topRatedTvShow,
    int pageNumber,
  });
}

/// @nodoc
class _$TopRatedTvshowStateCopyWithImpl<$Res, $Val extends TopRatedTvshowState>
    implements $TopRatedTvshowStateCopyWith<$Res> {
  _$TopRatedTvshowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopRatedTvshowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? topRatedTvShow = null,
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
            topRatedTvShow: null == topRatedTvShow
                ? _value.topRatedTvShow
                : topRatedTvShow // ignore: cast_nullable_to_non_nullable
                      as List<TvShowsResult>,
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
abstract class _$$TopRatedTvshowStateImplCopyWith<$Res>
    implements $TopRatedTvshowStateCopyWith<$Res> {
  factory _$$TopRatedTvshowStateImplCopyWith(
    _$TopRatedTvshowStateImpl value,
    $Res Function(_$TopRatedTvshowStateImpl) then,
  ) = __$$TopRatedTvshowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> topRatedTvShow,
    int pageNumber,
  });
}

/// @nodoc
class __$$TopRatedTvshowStateImplCopyWithImpl<$Res>
    extends _$TopRatedTvshowStateCopyWithImpl<$Res, _$TopRatedTvshowStateImpl>
    implements _$$TopRatedTvshowStateImplCopyWith<$Res> {
  __$$TopRatedTvshowStateImplCopyWithImpl(
    _$TopRatedTvshowStateImpl _value,
    $Res Function(_$TopRatedTvshowStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedTvshowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? topRatedTvShow = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$TopRatedTvshowStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        topRatedTvShow: null == topRatedTvShow
            ? _value._topRatedTvShow
            : topRatedTvShow // ignore: cast_nullable_to_non_nullable
                  as List<TvShowsResult>,
        pageNumber: null == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TopRatedTvshowStateImpl implements _TopRatedTvshowState {
  const _$TopRatedTvshowStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> topRatedTvShow,
    required this.pageNumber,
  }) : _topRatedTvShow = topRatedTvShow;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _topRatedTvShow;
  @override
  List<TvShowsResult> get topRatedTvShow {
    if (_topRatedTvShow is EqualUnmodifiableListView) return _topRatedTvShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedTvShow);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'TopRatedTvshowState(state: $state, message: $message, topRatedTvShow: $topRatedTvShow, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopRatedTvshowStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._topRatedTvShow,
              _topRatedTvShow,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_topRatedTvShow),
    pageNumber,
  );

  /// Create a copy of TopRatedTvshowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopRatedTvshowStateImplCopyWith<_$TopRatedTvshowStateImpl> get copyWith =>
      __$$TopRatedTvshowStateImplCopyWithImpl<_$TopRatedTvshowStateImpl>(
        this,
        _$identity,
      );
}

abstract class _TopRatedTvshowState implements TopRatedTvshowState {
  const factory _TopRatedTvshowState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> topRatedTvShow,
    required final int pageNumber,
  }) = _$TopRatedTvshowStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get topRatedTvShow;
  @override
  int get pageNumber;

  /// Create a copy of TopRatedTvshowState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopRatedTvshowStateImplCopyWith<_$TopRatedTvshowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopRatedTvshowEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedTvShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchTopRatedTvShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTopRatedTvshows value) fetchTopRatedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedTvshowEventCopyWith<$Res> {
  factory $TopRatedTvshowEventCopyWith(
    TopRatedTvshowEvent value,
    $Res Function(TopRatedTvshowEvent) then,
  ) = _$TopRatedTvshowEventCopyWithImpl<$Res, TopRatedTvshowEvent>;
}

/// @nodoc
class _$TopRatedTvshowEventCopyWithImpl<$Res, $Val extends TopRatedTvshowEvent>
    implements $TopRatedTvshowEventCopyWith<$Res> {
  _$TopRatedTvshowEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopRatedTvshowEvent
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
    extends _$TopRatedTvshowEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedTvshowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TopRatedTvshowEvent.initial()';
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
    fetchTopRatedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchTopRatedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedTvShows,
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
    required TResult Function(_FetchTopRatedTvshows value) fetchTopRatedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TopRatedTvshowEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchTopRatedTvshowsImplCopyWith<$Res> {
  factory _$$FetchTopRatedTvshowsImplCopyWith(
    _$FetchTopRatedTvshowsImpl value,
    $Res Function(_$FetchTopRatedTvshowsImpl) then,
  ) = __$$FetchTopRatedTvshowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchTopRatedTvshowsImplCopyWithImpl<$Res>
    extends _$TopRatedTvshowEventCopyWithImpl<$Res, _$FetchTopRatedTvshowsImpl>
    implements _$$FetchTopRatedTvshowsImplCopyWith<$Res> {
  __$$FetchTopRatedTvshowsImplCopyWithImpl(
    _$FetchTopRatedTvshowsImpl _value,
    $Res Function(_$FetchTopRatedTvshowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedTvshowEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchTopRatedTvshowsImpl(
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

class _$FetchTopRatedTvshowsImpl implements _FetchTopRatedTvshows {
  const _$FetchTopRatedTvshowsImpl({
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
    return 'TopRatedTvshowEvent.fetchTopRatedTvShows(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopRatedTvshowsImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of TopRatedTvshowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTopRatedTvshowsImplCopyWith<_$FetchTopRatedTvshowsImpl>
  get copyWith =>
      __$$FetchTopRatedTvshowsImplCopyWithImpl<_$FetchTopRatedTvshowsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchTopRatedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchTopRatedTvShows(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchTopRatedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchTopRatedTvShows?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchTopRatedTvShows != null) {
      return fetchTopRatedTvShows(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchTopRatedTvshows value) fetchTopRatedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchTopRatedTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchTopRatedTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchTopRatedTvShows != null) {
      return fetchTopRatedTvShows(this);
    }
    return orElse();
  }
}

abstract class _FetchTopRatedTvshows implements TopRatedTvshowEvent {
  const factory _FetchTopRatedTvshows({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchTopRatedTvshowsImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of TopRatedTvshowEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTopRatedTvshowsImplCopyWith<_$FetchTopRatedTvshowsImpl>
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
    extends _$TopRatedTvshowEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopRatedTvshowEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'TopRatedTvshowEvent.incrementPageNumber()';
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
    fetchTopRatedTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchTopRatedTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchTopRatedTvShows,
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
    required TResult Function(_FetchTopRatedTvshows value) fetchTopRatedTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchTopRatedTvshows value)? fetchTopRatedTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements TopRatedTvshowEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
