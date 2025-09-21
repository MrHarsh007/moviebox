// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PopularMoviesState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<MovieResult> get popularMovies => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopularMoviesStateCopyWith<PopularMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
    PopularMoviesState value,
    $Res Function(PopularMoviesState) then,
  ) = _$PopularMoviesStateCopyWithImpl<$Res, PopularMoviesState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> popularMovies,
    int pageNumber,
  });
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res, $Val extends PopularMoviesState>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? popularMovies = null,
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
            popularMovies: null == popularMovies
                ? _value.popularMovies
                : popularMovies // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PopularMoviesStateImplCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$PopularMoviesStateImplCopyWith(
    _$PopularMoviesStateImpl value,
    $Res Function(_$PopularMoviesStateImpl) then,
  ) = __$$PopularMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<MovieResult> popularMovies,
    int pageNumber,
  });
}

/// @nodoc
class __$$PopularMoviesStateImplCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$PopularMoviesStateImpl>
    implements _$$PopularMoviesStateImplCopyWith<$Res> {
  __$$PopularMoviesStateImplCopyWithImpl(
    _$PopularMoviesStateImpl _value,
    $Res Function(_$PopularMoviesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? popularMovies = null,
    Object? pageNumber = null,
  }) {
    return _then(
      _$PopularMoviesStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        popularMovies: null == popularMovies
            ? _value._popularMovies
            : popularMovies // ignore: cast_nullable_to_non_nullable
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

class _$PopularMoviesStateImpl implements _PopularMoviesState {
  const _$PopularMoviesStateImpl({
    required this.state,
    required this.message,
    required final List<MovieResult> popularMovies,
    required this.pageNumber,
  }) : _popularMovies = popularMovies;

  @override
  final RequestState state;
  @override
  final String message;
  final List<MovieResult> _popularMovies;
  @override
  List<MovieResult> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'PopularMoviesState(state: $state, message: $message, popularMovies: $popularMovies, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._popularMovies,
              _popularMovies,
            ) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_popularMovies),
    pageNumber,
  );

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesStateImplCopyWith<_$PopularMoviesStateImpl> get copyWith =>
      __$$PopularMoviesStateImplCopyWithImpl<_$PopularMoviesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PopularMoviesState implements PopularMoviesState {
  const factory _PopularMoviesState({
    required final RequestState state,
    required final String message,
    required final List<MovieResult> popularMovies,
    required final int pageNumber,
  }) = _$PopularMoviesStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<MovieResult> get popularMovies;
  @override
  int get pageNumber;

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopularMoviesStateImplCopyWith<_$PopularMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PopularMoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchPopularMovies,
    required TResult Function() incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult? Function()? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesEventCopyWith<$Res> {
  factory $PopularMoviesEventCopyWith(
    PopularMoviesEvent value,
    $Res Function(PopularMoviesEvent) then,
  ) = _$PopularMoviesEventCopyWithImpl<$Res, PopularMoviesEvent>;
}

/// @nodoc
class _$PopularMoviesEventCopyWithImpl<$Res, $Val extends PopularMoviesEvent>
    implements $PopularMoviesEventCopyWith<$Res> {
  _$PopularMoviesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PopularMoviesEvent
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
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PopularMoviesEvent.initial()';
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
    fetchPopularMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
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
    required TResult Function(_FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PopularMoviesEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchPopularMoviesImplCopyWith<$Res> {
  factory _$$FetchPopularMoviesImplCopyWith(
    _$FetchPopularMoviesImpl value,
    $Res Function(_$FetchPopularMoviesImpl) then,
  ) = __$$FetchPopularMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? pageNumber, bool isLoadingMore});
}

/// @nodoc
class __$$FetchPopularMoviesImplCopyWithImpl<$Res>
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$FetchPopularMoviesImpl>
    implements _$$FetchPopularMoviesImplCopyWith<$Res> {
  __$$FetchPopularMoviesImplCopyWithImpl(
    _$FetchPopularMoviesImpl _value,
    $Res Function(_$FetchPopularMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageNumber = freezed, Object? isLoadingMore = null}) {
    return _then(
      _$FetchPopularMoviesImpl(
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

class _$FetchPopularMoviesImpl implements _FetchPopularMovies {
  const _$FetchPopularMoviesImpl({this.pageNumber, this.isLoadingMore = false});

  @override
  final int? pageNumber;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'PopularMoviesEvent.fetchPopularMovies(pageNumber: $pageNumber, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPopularMoviesImpl &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNumber, isLoadingMore);

  /// Create a copy of PopularMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPopularMoviesImplCopyWith<_$FetchPopularMoviesImpl> get copyWith =>
      __$$FetchPopularMoviesImplCopyWithImpl<_$FetchPopularMoviesImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? pageNumber, bool isLoadingMore)
    fetchPopularMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return fetchPopularMovies(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return fetchPopularMovies?.call(pageNumber, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult Function()? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchPopularMovies != null) {
      return fetchPopularMovies(pageNumber, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return fetchPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return fetchPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (fetchPopularMovies != null) {
      return fetchPopularMovies(this);
    }
    return orElse();
  }
}

abstract class _FetchPopularMovies implements PopularMoviesEvent {
  const factory _FetchPopularMovies({
    final int? pageNumber,
    final bool isLoadingMore,
  }) = _$FetchPopularMoviesImpl;

  int? get pageNumber;
  bool get isLoadingMore;

  /// Create a copy of PopularMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPopularMoviesImplCopyWith<_$FetchPopularMoviesImpl> get copyWith =>
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
    extends _$PopularMoviesEventCopyWithImpl<$Res, _$IncrementPageNumberImpl>
    implements _$$IncrementPageNumberImplCopyWith<$Res> {
  __$$IncrementPageNumberImplCopyWithImpl(
    _$IncrementPageNumberImpl _value,
    $Res Function(_$IncrementPageNumberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PopularMoviesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementPageNumberImpl implements _IncrementPageNumber {
  const _$IncrementPageNumberImpl();

  @override
  String toString() {
    return 'PopularMoviesEvent.incrementPageNumber()';
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
    fetchPopularMovies,
    required TResult Function() incrementPageNumber,
  }) {
    return incrementPageNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
    TResult? Function()? incrementPageNumber,
  }) {
    return incrementPageNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? pageNumber, bool isLoadingMore)? fetchPopularMovies,
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
    required TResult Function(_FetchPopularMovies value) fetchPopularMovies,
    required TResult Function(_IncrementPageNumber value) incrementPageNumber,
  }) {
    return incrementPageNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult? Function(_IncrementPageNumber value)? incrementPageNumber,
  }) {
    return incrementPageNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPopularMovies value)? fetchPopularMovies,
    TResult Function(_IncrementPageNumber value)? incrementPageNumber,
    required TResult orElse(),
  }) {
    if (incrementPageNumber != null) {
      return incrementPageNumber(this);
    }
    return orElse();
  }
}

abstract class _IncrementPageNumber implements PopularMoviesEvent {
  const factory _IncrementPageNumber() = _$IncrementPageNumberImpl;
}
