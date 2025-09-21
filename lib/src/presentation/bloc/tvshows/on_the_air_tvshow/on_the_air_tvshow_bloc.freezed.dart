// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_the_air_tvshow_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnTheAirState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<TvShowsResult> get onTheAirShows => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of OnTheAirState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnTheAirStateCopyWith<OnTheAirState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTheAirStateCopyWith<$Res> {
  factory $OnTheAirStateCopyWith(
    OnTheAirState value,
    $Res Function(OnTheAirState) then,
  ) = _$OnTheAirStateCopyWithImpl<$Res, OnTheAirState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> onTheAirShows,
    int pageNumber,
  });
}

/// @nodoc
class _$OnTheAirStateCopyWithImpl<$Res, $Val extends OnTheAirState>
    implements $OnTheAirStateCopyWith<$Res> {
  _$OnTheAirStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnTheAirState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? onTheAirShows = null,
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
            onTheAirShows: null == onTheAirShows
                ? _value.onTheAirShows
                : onTheAirShows // ignore: cast_nullable_to_non_nullable
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
abstract class _$$OnTheAirStateImplCopyWith<$Res>
    implements $OnTheAirStateCopyWith<$Res> {
  factory _$$OnTheAirStateImplCopyWith(
    _$OnTheAirStateImpl value,
    $Res Function(_$OnTheAirStateImpl) then,
  ) = __$$OnTheAirStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<TvShowsResult> onTheAirShows,
    int pageNumber,
  });
}

/// @nodoc
class __$$OnTheAirStateImplCopyWithImpl<$Res>
    extends _$OnTheAirStateCopyWithImpl<$Res, _$OnTheAirStateImpl>
    implements _$$OnTheAirStateImplCopyWith<$Res> {
  __$$OnTheAirStateImplCopyWithImpl(
    _$OnTheAirStateImpl _value,
    $Res Function(_$OnTheAirStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnTheAirState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? onTheAirShows = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$OnTheAirStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        onTheAirShows: null == onTheAirShows
            ? _value._onTheAirShows
            : onTheAirShows // ignore: cast_nullable_to_non_nullable
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

class _$OnTheAirStateImpl implements _OnTheAirState {
  const _$OnTheAirStateImpl({
    required this.state,
    required this.message,
    required final List<TvShowsResult> onTheAirShows,
    required this.pageNumber,
  }) : _onTheAirShows = onTheAirShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<TvShowsResult> _onTheAirShows;
  @override
  List<TvShowsResult> get onTheAirShows {
    if (_onTheAirShows is EqualUnmodifiableListView) return _onTheAirShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onTheAirShows);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'OnTheAirState(state: $state, message: $message, onTheAirShows: $onTheAirShows, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTheAirStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._onTheAirShows,
              _onTheAirShows,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_onTheAirShows),
    pageNumber,
  );

  /// Create a copy of OnTheAirState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTheAirStateImplCopyWith<_$OnTheAirStateImpl> get copyWith =>
      __$$OnTheAirStateImplCopyWithImpl<_$OnTheAirStateImpl>(this, _$identity);
}

abstract class _OnTheAirState implements OnTheAirState {
  const factory _OnTheAirState({
    required final RequestState state,
    required final String message,
    required final List<TvShowsResult> onTheAirShows,
    required final int pageNumber,
  }) = _$OnTheAirStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<TvShowsResult> get onTheAirShows;
  @override
  int get pageNumber;

  /// Create a copy of OnTheAirState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnTheAirStateImplCopyWith<_$OnTheAirStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnTheAirEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchOnTheAirShows,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchOnTheAirShows value) fetchOnTheAirShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTheAirEventCopyWith<$Res> {
  factory $OnTheAirEventCopyWith(
    OnTheAirEvent value,
    $Res Function(OnTheAirEvent) then,
  ) = _$OnTheAirEventCopyWithImpl<$Res, OnTheAirEvent>;
}

/// @nodoc
class _$OnTheAirEventCopyWithImpl<$Res, $Val extends OnTheAirEvent>
    implements $OnTheAirEventCopyWith<$Res> {
  _$OnTheAirEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnTheAirEvent
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
    extends _$OnTheAirEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnTheAirEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OnTheAirEvent.initial()';
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
    fetchOnTheAirShows,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
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
    required TResult Function(_FetchOnTheAirShows value) fetchOnTheAirShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnTheAirEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchOnTheAirShowsImplCopyWith<$Res> {
  factory _$$FetchOnTheAirShowsImplCopyWith(
    _$FetchOnTheAirShowsImpl value,
    $Res Function(_$FetchOnTheAirShowsImpl) then,
  ) = __$$FetchOnTheAirShowsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchOnTheAirShowsImplCopyWithImpl<$Res>
    extends _$OnTheAirEventCopyWithImpl<$Res, _$FetchOnTheAirShowsImpl>
    implements _$$FetchOnTheAirShowsImplCopyWith<$Res> {
  __$$FetchOnTheAirShowsImplCopyWithImpl(
    _$FetchOnTheAirShowsImpl _value,
    $Res Function(_$FetchOnTheAirShowsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnTheAirEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchOnTheAirShowsImpl(
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

class _$FetchOnTheAirShowsImpl implements _FetchOnTheAirShows {
  const _$FetchOnTheAirShowsImpl({this.pageNumber, this.isLoadingMore = false});

  @override
  final int? pageNumber;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'OnTheAirEvent.fetchOnTheAirShows(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOnTheAirShowsImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of OnTheAirEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOnTheAirShowsImplCopyWith<_$FetchOnTheAirShowsImpl> get copyWith =>
      __$$FetchOnTheAirShowsImplCopyWithImpl<_$FetchOnTheAirShowsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchOnTheAirShows,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchOnTheAirShows(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchOnTheAirShows?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchOnTheAirShows != null) {
      return fetchOnTheAirShows(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchOnTheAirShows value) fetchOnTheAirShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchOnTheAirShows(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchOnTheAirShows?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchOnTheAirShows != null) {
      return fetchOnTheAirShows(this);
    }
    return orElse();
  }
}

abstract class _FetchOnTheAirShows implements OnTheAirEvent {
  const factory _FetchOnTheAirShows({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchOnTheAirShowsImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of OnTheAirEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchOnTheAirShowsImplCopyWith<_$FetchOnTheAirShowsImpl> get copyWith =>
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
    extends _$OnTheAirEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnTheAirEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'OnTheAirEvent.incrementPageNumber()';
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
    fetchOnTheAirShows,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchOnTheAirShows,
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
    required TResult Function(_FetchOnTheAirShows value) fetchOnTheAirShows,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchOnTheAirShows value)? fetchOnTheAirShows,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements OnTheAirEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
