// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_crew_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CastCrewState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CombineCreditCast> get movies => throw _privateConstructorUsedError;
  List<CombineCreditCast> get tvShows => throw _privateConstructorUsedError;
  CreditPersonModel? get person => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of CastCrewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CastCrewStateCopyWith<CastCrewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCrewStateCopyWith<$Res> {
  factory $CastCrewStateCopyWith(
    CastCrewState value,
    $Res Function(CastCrewState) then,
  ) = _$CastCrewStateCopyWithImpl<$Res, CastCrewState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<CombineCreditCast> movies,
    List<CombineCreditCast> tvShows,
    CreditPersonModel? person,
    int id,
  });
}

/// @nodoc
class _$CastCrewStateCopyWithImpl<$Res, $Val extends CastCrewState>
    implements $CastCrewStateCopyWith<$Res> {
  _$CastCrewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CastCrewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? movies = null,
    Object? tvShows = null,
    Object? person = freezed,
    Object? id = null,
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
            movies: null == movies
                ? _value.movies
                : movies // ignore: cast_nullable_to_non_nullable
                      as List<CombineCreditCast>,
            tvShows: null == tvShows
                ? _value.tvShows
                : tvShows // ignore: cast_nullable_to_non_nullable
                      as List<CombineCreditCast>,
            person: freezed == person
                ? _value.person
                : person // ignore: cast_nullable_to_non_nullable
                      as CreditPersonModel?,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CastCrewStateImplCopyWith<$Res>
    implements $CastCrewStateCopyWith<$Res> {
  factory _$$CastCrewStateImplCopyWith(
    _$CastCrewStateImpl value,
    $Res Function(_$CastCrewStateImpl) then,
  ) = __$$CastCrewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<CombineCreditCast> movies,
    List<CombineCreditCast> tvShows,
    CreditPersonModel? person,
    int id,
  });
}

/// @nodoc
class __$$CastCrewStateImplCopyWithImpl<$Res>
    extends _$CastCrewStateCopyWithImpl<$Res, _$CastCrewStateImpl>
    implements _$$CastCrewStateImplCopyWith<$Res> {
  __$$CastCrewStateImplCopyWithImpl(
    _$CastCrewStateImpl _value,
    $Res Function(_$CastCrewStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CastCrewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? movies = null,
    Object? tvShows = null,
    Object? person = freezed,
    Object? id = null,
  }) {
    return _then(
      _$CastCrewStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        movies: null == movies
            ? _value._movies
            : movies // ignore: cast_nullable_to_non_nullable
                  as List<CombineCreditCast>,
        tvShows: null == tvShows
            ? _value._tvShows
            : tvShows // ignore: cast_nullable_to_non_nullable
                  as List<CombineCreditCast>,
        person: freezed == person
            ? _value.person
            : person // ignore: cast_nullable_to_non_nullable
                  as CreditPersonModel?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CastCrewStateImpl implements _CastCrewState {
  const _$CastCrewStateImpl({
    required this.state,
    required this.message,
    required final List<CombineCreditCast> movies,
    required final List<CombineCreditCast> tvShows,
    required this.person,
    required this.id,
  }) : _movies = movies,
       _tvShows = tvShows;

  @override
  final RequestState state;
  @override
  final String message;
  final List<CombineCreditCast> _movies;
  @override
  List<CombineCreditCast> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  final List<CombineCreditCast> _tvShows;
  @override
  List<CombineCreditCast> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  @override
  final CreditPersonModel? person;
  @override
  final int id;

  @override
  String toString() {
    return 'CastCrewState(state: $state, message: $message, movies: $movies, tvShows: $tvShows, person: $person, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastCrewStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_movies),
    const DeepCollectionEquality().hash(_tvShows),
    person,
    id,
  );

  /// Create a copy of CastCrewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CastCrewStateImplCopyWith<_$CastCrewStateImpl> get copyWith =>
      __$$CastCrewStateImplCopyWithImpl<_$CastCrewStateImpl>(this, _$identity);
}

abstract class _CastCrewState implements CastCrewState {
  const factory _CastCrewState({
    required final RequestState state,
    required final String message,
    required final List<CombineCreditCast> movies,
    required final List<CombineCreditCast> tvShows,
    required final CreditPersonModel? person,
    required final int id,
  }) = _$CastCrewStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<CombineCreditCast> get movies;
  @override
  List<CombineCreditCast> get tvShows;
  @override
  CreditPersonModel? get person;
  @override
  int get id;

  /// Create a copy of CastCrewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastCrewStateImplCopyWith<_$CastCrewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CastCrewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) fetchPerson,
    required TResult Function(int id) fetchCombineMovieTvShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? fetchPerson,
    TResult? Function(int id)? fetchCombineMovieTvShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? fetchPerson,
    TResult Function(int id)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPerson value) fetchPerson,
    required TResult Function(_FetchMovies value) fetchCombineMovieTvShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPerson value)? fetchPerson,
    TResult? Function(_FetchMovies value)? fetchCombineMovieTvShow,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPerson value)? fetchPerson,
    TResult Function(_FetchMovies value)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCrewEventCopyWith<$Res> {
  factory $CastCrewEventCopyWith(
    CastCrewEvent value,
    $Res Function(CastCrewEvent) then,
  ) = _$CastCrewEventCopyWithImpl<$Res, CastCrewEvent>;
}

/// @nodoc
class _$CastCrewEventCopyWithImpl<$Res, $Val extends CastCrewEvent>
    implements $CastCrewEventCopyWith<$Res> {
  _$CastCrewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CastCrewEvent
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
    extends _$CastCrewEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CastCrewEvent.initial()';
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
    required TResult Function(int id) fetchPerson,
    required TResult Function(int id) fetchCombineMovieTvShow,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? fetchPerson,
    TResult? Function(int id)? fetchCombineMovieTvShow,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? fetchPerson,
    TResult Function(int id)? fetchCombineMovieTvShow,
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
    required TResult Function(_FetchPerson value) fetchPerson,
    required TResult Function(_FetchMovies value) fetchCombineMovieTvShow,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPerson value)? fetchPerson,
    TResult? Function(_FetchMovies value)? fetchCombineMovieTvShow,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPerson value)? fetchPerson,
    TResult Function(_FetchMovies value)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CastCrewEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchPersonImplCopyWith<$Res> {
  factory _$$FetchPersonImplCopyWith(
    _$FetchPersonImpl value,
    $Res Function(_$FetchPersonImpl) then,
  ) = __$$FetchPersonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchPersonImplCopyWithImpl<$Res>
    extends _$CastCrewEventCopyWithImpl<$Res, _$FetchPersonImpl>
    implements _$$FetchPersonImplCopyWith<$Res> {
  __$$FetchPersonImplCopyWithImpl(
    _$FetchPersonImpl _value,
    $Res Function(_$FetchPersonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$FetchPersonImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchPersonImpl implements _FetchPerson {
  const _$FetchPersonImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CastCrewEvent.fetchPerson(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPersonImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPersonImplCopyWith<_$FetchPersonImpl> get copyWith =>
      __$$FetchPersonImplCopyWithImpl<_$FetchPersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) fetchPerson,
    required TResult Function(int id) fetchCombineMovieTvShow,
  }) {
    return fetchPerson(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? fetchPerson,
    TResult? Function(int id)? fetchCombineMovieTvShow,
  }) {
    return fetchPerson?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? fetchPerson,
    TResult Function(int id)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) {
    if (fetchPerson != null) {
      return fetchPerson(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPerson value) fetchPerson,
    required TResult Function(_FetchMovies value) fetchCombineMovieTvShow,
  }) {
    return fetchPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPerson value)? fetchPerson,
    TResult? Function(_FetchMovies value)? fetchCombineMovieTvShow,
  }) {
    return fetchPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPerson value)? fetchPerson,
    TResult Function(_FetchMovies value)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) {
    if (fetchPerson != null) {
      return fetchPerson(this);
    }
    return orElse();
  }
}

abstract class _FetchPerson implements CastCrewEvent {
  const factory _FetchPerson({required final int id}) = _$FetchPersonImpl;

  int get id;

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPersonImplCopyWith<_$FetchPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoviesImplCopyWith<$Res> {
  factory _$$FetchMoviesImplCopyWith(
    _$FetchMoviesImpl value,
    $Res Function(_$FetchMoviesImpl) then,
  ) = __$$FetchMoviesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchMoviesImplCopyWithImpl<$Res>
    extends _$CastCrewEventCopyWithImpl<$Res, _$FetchMoviesImpl>
    implements _$$FetchMoviesImplCopyWith<$Res> {
  __$$FetchMoviesImplCopyWithImpl(
    _$FetchMoviesImpl _value,
    $Res Function(_$FetchMoviesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$FetchMoviesImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchMoviesImpl implements _FetchMovies {
  const _$FetchMoviesImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CastCrewEvent.fetchCombineMovieTvShow(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMoviesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMoviesImplCopyWith<_$FetchMoviesImpl> get copyWith =>
      __$$FetchMoviesImplCopyWithImpl<_$FetchMoviesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) fetchPerson,
    required TResult Function(int id) fetchCombineMovieTvShow,
  }) {
    return fetchCombineMovieTvShow(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? fetchPerson,
    TResult? Function(int id)? fetchCombineMovieTvShow,
  }) {
    return fetchCombineMovieTvShow?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? fetchPerson,
    TResult Function(int id)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) {
    if (fetchCombineMovieTvShow != null) {
      return fetchCombineMovieTvShow(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchPerson value) fetchPerson,
    required TResult Function(_FetchMovies value) fetchCombineMovieTvShow,
  }) {
    return fetchCombineMovieTvShow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchPerson value)? fetchPerson,
    TResult? Function(_FetchMovies value)? fetchCombineMovieTvShow,
  }) {
    return fetchCombineMovieTvShow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchPerson value)? fetchPerson,
    TResult Function(_FetchMovies value)? fetchCombineMovieTvShow,
    required TResult orElse(),
  }) {
    if (fetchCombineMovieTvShow != null) {
      return fetchCombineMovieTvShow(this);
    }
    return orElse();
  }
}

abstract class _FetchMovies implements CastCrewEvent {
  const factory _FetchMovies({required final int id}) = _$FetchMoviesImpl;

  int get id;

  /// Create a copy of CastCrewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchMoviesImplCopyWith<_$FetchMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
