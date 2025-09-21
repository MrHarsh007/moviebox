// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airing_today_tvshow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AiringTodayState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get airingTodayShows =>
      throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of AiringTodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiringTodayStateCopyWith<AiringTodayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiringTodayStateCopyWith<$Res> {
  factory $AiringTodayStateCopyWith(
    AiringTodayState value,
    $Res Function(AiringTodayState) then,
  ) = _$AiringTodayStateCopyWithImpl<$Res, AiringTodayState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> airingTodayShows,
    int pageNumber,
  });
}

/// @nodoc
class _$AiringTodayStateCopyWithImpl<$Res, $Val extends AiringTodayState>
    implements $AiringTodayStateCopyWith<$Res> {
  _$AiringTodayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiringTodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? airingTodayShows = null,
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
            airingTodayShows: null == airingTodayShows
                ? _value.airingTodayShows
                : airingTodayShows // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AiringTodayStateImplCopyWith<$Res>
    implements $AiringTodayStateCopyWith<$Res> {
  factory _$$AiringTodayStateImplCopyWith(
    _$AiringTodayStateImpl value,
    $Res Function(_$AiringTodayStateImpl) then,
  ) = __$$AiringTodayStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> airingTodayShows,
    int pageNumber,
  });
}

/// @nodoc
class __$$AiringTodayStateImplCopyWithImpl<$Res>
    extends _$AiringTodayStateCopyWithImpl<$Res, _$AiringTodayStateImpl>
    implements _$$AiringTodayStateImplCopyWith<$Res> {
  __$$AiringTodayStateImplCopyWithImpl(
    _$AiringTodayStateImpl _value,
    $Res Function(_$AiringTodayStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AiringTodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? airingTodayShows = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$AiringTodayStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        airingTodayShows: null == airingTodayShows
            ? _value._airingTodayShows
            : airingTodayShows // ignore: cast_nullable_to_non_nullable
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

class _$AiringTodayStateImpl implements _AiringTodayState {
  const _$AiringTodayStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> airingTodayShows,
    required this.pageNumber,
  }) : _airingTodayShows = airingTodayShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _airingTodayShows;
  @override
  List<TvShowsResult> get airingTodayShows {
    if (_airingTodayShows is EqualUnmodifiableListView)
      return _airingTodayShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_airingTodayShows);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'AiringTodayState(state: $state, message: $message, airingTodayShows: $airingTodayShows, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiringTodayStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._airingTodayShows,
              _airingTodayShows,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_airingTodayShows),
    pageNumber,
  );

  /// Create a copy of AiringTodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiringTodayStateImplCopyWith<_$AiringTodayStateImpl> get copyWith =>
      __$$AiringTodayStateImplCopyWithImpl<_$AiringTodayStateImpl>(
        this,
        _$identity,
      );
}

abstract class _AiringTodayState implements AiringTodayState {
  const factory _AiringTodayState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> airingTodayShows,
    required final int pageNumber,
  }) = _$AiringTodayStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get airingTodayShows;
  @override
  int get pageNumber;

  /// Create a copy of AiringTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiringTodayStateImplCopyWith<_$AiringTodayStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AiringTodayEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchAiringTodayShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAiringTodayShows value)
    fetchAiringTodayShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiringTodayEventCopyWith<$Res> {
  factory $AiringTodayEventCopyWith(
    AiringTodayEvent value,
    $Res Function(AiringTodayEvent) then,
  ) = _$AiringTodayEventCopyWithImpl<$Res, AiringTodayEvent>;
}

/// @nodoc
class _$AiringTodayEventCopyWithImpl<$Res, $Val extends AiringTodayEvent>
    implements $AiringTodayEventCopyWith<$Res> {
  _$AiringTodayEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiringTodayEvent
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
    extends _$AiringTodayEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AiringTodayEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AiringTodayEvent.initial()';
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
    fetchAiringTodayShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
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
    required TResult Function(_FetchAiringTodayShows value)
    fetchAiringTodayShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AiringTodayEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchAiringTodayShowsImplCopyWith<$Res> {
  factory _$$FetchAiringTodayShowsImplCopyWith(
    _$FetchAiringTodayShowsImpl value,
    $Res Function(_$FetchAiringTodayShowsImpl) then,
  ) = __$$FetchAiringTodayShowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchAiringTodayShowsImplCopyWithImpl<$Res>
    extends _$AiringTodayEventCopyWithImpl<$Res, _$FetchAiringTodayShowsImpl>
    implements _$$FetchAiringTodayShowsImplCopyWith<$Res> {
  __$$FetchAiringTodayShowsImplCopyWithImpl(
    _$FetchAiringTodayShowsImpl _value,
    $Res Function(_$FetchAiringTodayShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AiringTodayEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchAiringTodayShowsImpl(
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

class _$FetchAiringTodayShowsImpl implements _FetchAiringTodayShows {
  const _$FetchAiringTodayShowsImpl({
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
    return 'AiringTodayEvent.fetchAiringTodayShows(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAiringTodayShowsImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of AiringTodayEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAiringTodayShowsImplCopyWith<_$FetchAiringTodayShowsImpl>
  get copyWith =>
      __$$FetchAiringTodayShowsImplCopyWithImpl<_$FetchAiringTodayShowsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchAiringTodayShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchAiringTodayShows(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchAiringTodayShows?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchAiringTodayShows != null) {
      return fetchAiringTodayShows(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchAiringTodayShows value)
    fetchAiringTodayShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchAiringTodayShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchAiringTodayShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchAiringTodayShows != null) {
      return fetchAiringTodayShows(this);
    }
    return orElse();
  }
}

abstract class _FetchAiringTodayShows implements AiringTodayEvent {
  const factory _FetchAiringTodayShows({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchAiringTodayShowsImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of AiringTodayEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchAiringTodayShowsImplCopyWith<_$FetchAiringTodayShowsImpl>
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
    extends _$AiringTodayEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AiringTodayEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'AiringTodayEvent.incrementPageNumber()';
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
    fetchAiringTodayShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)?
    fetchAiringTodayShows,
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
    required TResult Function(_FetchAiringTodayShows value)
    fetchAiringTodayShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchAiringTodayShows value)? fetchAiringTodayShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements AiringTodayEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
