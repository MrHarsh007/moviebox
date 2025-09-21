// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_tvshows_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PopularTvshowsState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get popularTvShows => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of PopularTvshowsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularTvshowsStateCopyWith<PopularTvshowsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularTvshowsStateCopyWith<$Res> {
  factory $PopularTvshowsStateCopyWith(
    PopularTvshowsState value,
    $Res Function(PopularTvshowsState) then,
  ) = _$PopularTvshowsStateCopyWithImpl<$Res, PopularTvshowsState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> popularTvShows,
    int pageNumber,
  });
}

/// @nodoc
class _$PopularTvshowsStateCopyWithImpl<$Res, $Val extends PopularTvshowsState>
    implements $PopularTvshowsStateCopyWith<$Res> {
  _$PopularTvshowsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularTvshowsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? popularTvShows = null,
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
            popularTvShows: null == popularTvShows
                ? _value.popularTvShows
                : popularTvShows // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PopularTvshowsStateImplCopyWith<$Res>
    implements $PopularTvshowsStateCopyWith<$Res> {
  factory _$$PopularTvshowsStateImplCopyWith(
    _$PopularTvshowsStateImpl value,
    $Res Function(_$PopularTvshowsStateImpl) then,
  ) = __$$PopularTvshowsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> popularTvShows,
    int pageNumber,
  });
}

/// @nodoc
class __$$PopularTvshowsStateImplCopyWithImpl<$Res>
    extends _$PopularTvshowsStateCopyWithImpl<$Res, _$PopularTvshowsStateImpl>
    implements _$$PopularTvshowsStateImplCopyWith<$Res> {
  __$$PopularTvshowsStateImplCopyWithImpl(
    _$PopularTvshowsStateImpl _value,
    $Res Function(_$PopularTvshowsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularTvshowsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? popularTvShows = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$PopularTvshowsStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        popularTvShows: null == popularTvShows
            ? _value._popularTvShows
            : popularTvShows // ignore: cast_nullable_to_non_nullable
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

class _$PopularTvshowsStateImpl implements _PopularTvshowsState {
  const _$PopularTvshowsStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> popularTvShows,
    required this.pageNumber,
  }) : _popularTvShows = popularTvShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _popularTvShows;
  @override
  List<TvShowsResult> get popularTvShows {
    if (_popularTvShows is EqualUnmodifiableListView) return _popularTvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTvShows);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'PopularTvshowsState(state: $state, message: $message, popularTvShows: $popularTvShows, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularTvshowsStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._popularTvShows,
              _popularTvShows,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_popularTvShows),
    pageNumber,
  );

  /// Create a copy of PopularTvshowsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularTvshowsStateImplCopyWith<_$PopularTvshowsStateImpl> get copyWith =>
      __$$PopularTvshowsStateImplCopyWithImpl<_$PopularTvshowsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PopularTvshowsState implements PopularTvshowsState {
  const factory _PopularTvshowsState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> popularTvShows,
    required final int pageNumber,
  }) = _$PopularTvshowsStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get popularTvShows;
  @override
  int get pageNumber;

  /// Create a copy of PopularTvshowsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularTvshowsStateImplCopyWith<_$PopularTvshowsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PopularTvshowsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchPopularTvShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPopularTvshows value) fetchPopularTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularTvshowsEventCopyWith<$Res> {
  factory $PopularTvshowsEventCopyWith(
    PopularTvshowsEvent value,
    $Res Function(PopularTvshowsEvent) then,
  ) = _$PopularTvshowsEventCopyWithImpl<$Res, PopularTvshowsEvent>;
}

/// @nodoc
class _$PopularTvshowsEventCopyWithImpl<$Res, $Val extends PopularTvshowsEvent>
    implements $PopularTvshowsEventCopyWith<$Res> {
  _$PopularTvshowsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularTvshowsEvent
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
    extends _$PopularTvshowsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularTvshowsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PopularTvshowsEvent.initial()';
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
    fetchPopularTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
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
    required TResult Function(_FetchPopularTvshows value) fetchPopularTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PopularTvshowsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchPopularTvshowsImplCopyWith<$Res> {
  factory _$$FetchPopularTvshowsImplCopyWith(
    _$FetchPopularTvshowsImpl value,
    $Res Function(_$FetchPopularTvshowsImpl) then,
  ) = __$$FetchPopularTvshowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchPopularTvshowsImplCopyWithImpl<$Res>
    extends _$PopularTvshowsEventCopyWithImpl<$Res, _$FetchPopularTvshowsImpl>
    implements _$$FetchPopularTvshowsImplCopyWith<$Res> {
  __$$FetchPopularTvshowsImplCopyWithImpl(
    _$FetchPopularTvshowsImpl _value,
    $Res Function(_$FetchPopularTvshowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularTvshowsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchPopularTvshowsImpl(
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

class _$FetchPopularTvshowsImpl implements _FetchPopularTvshows {
  const _$FetchPopularTvshowsImpl({
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
    return 'PopularTvshowsEvent.fetchPopularTvShows(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPopularTvshowsImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of PopularTvshowsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPopularTvshowsImplCopyWith<_$FetchPopularTvshowsImpl> get copyWith =>
      __$$FetchPopularTvshowsImplCopyWithImpl<_$FetchPopularTvshowsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchPopularTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchPopularTvShows(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchPopularTvShows?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchPopularTvShows != null) {
      return fetchPopularTvShows(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPopularTvshows value) fetchPopularTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchPopularTvShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchPopularTvShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchPopularTvShows != null) {
      return fetchPopularTvShows(this);
    }
    return orElse();
  }
}

abstract class _FetchPopularTvshows implements PopularTvshowsEvent {
  const factory _FetchPopularTvshows({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchPopularTvshowsImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of PopularTvshowsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPopularTvshowsImplCopyWith<_$FetchPopularTvshowsImpl> get copyWith =>
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
    extends _$PopularTvshowsEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularTvshowsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'PopularTvshowsEvent.incrementPageNumber()';
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
    fetchPopularTvShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularTvShows,
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
    required TResult Function(_FetchPopularTvshows value) fetchPopularTvShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularTvshows value)? fetchPopularTvShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements PopularTvshowsEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
