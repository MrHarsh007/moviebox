// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SeasonDetailsState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  TvShowSeasonDetailsModel? get seasonDetails =>
      throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of SeasonDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonDetailsStateCopyWith<SeasonDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonDetailsStateCopyWith<$Res> {
  factory $SeasonDetailsStateCopyWith(
    SeasonDetailsState value,
    $Res Function(SeasonDetailsState) then,
  ) = _$SeasonDetailsStateCopyWithImpl<$Res, SeasonDetailsState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    TvShowSeasonDetailsModel? seasonDetails,
    int id,
  });
}

/// @nodoc
class _$SeasonDetailsStateCopyWithImpl<$Res, $Val extends SeasonDetailsState>
    implements $SeasonDetailsStateCopyWith<$Res> {
  _$SeasonDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? seasonDetails = freezed,
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
            seasonDetails: freezed == seasonDetails
                ? _value.seasonDetails
                : seasonDetails // ignore: cast_nullable_to_non_nullable
                      as TvShowSeasonDetailsModel?,
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
abstract class _$$SeasonDetailsStateImplCopyWith<$Res>
    implements $SeasonDetailsStateCopyWith<$Res> {
  factory _$$SeasonDetailsStateImplCopyWith(
    _$SeasonDetailsStateImpl value,
    $Res Function(_$SeasonDetailsStateImpl) then,
  ) = __$$SeasonDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    TvShowSeasonDetailsModel? seasonDetails,
    int id,
  });
}

/// @nodoc
class __$$SeasonDetailsStateImplCopyWithImpl<$Res>
    extends _$SeasonDetailsStateCopyWithImpl<$Res, _$SeasonDetailsStateImpl>
    implements _$$SeasonDetailsStateImplCopyWith<$Res> {
  __$$SeasonDetailsStateImplCopyWithImpl(
    _$SeasonDetailsStateImpl _value,
    $Res Function(_$SeasonDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? seasonDetails = freezed,
    Object? id = null,
  }) {
    return _then(
      _$SeasonDetailsStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        seasonDetails: freezed == seasonDetails
            ? _value.seasonDetails
            : seasonDetails // ignore: cast_nullable_to_non_nullable
                  as TvShowSeasonDetailsModel?,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SeasonDetailsStateImpl implements _SeasonDetailsState {
  const _$SeasonDetailsStateImpl({
    required this.state,
    required this.message,
    required this.seasonDetails,
    required this.id,
  });

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final TvShowSeasonDetailsModel? seasonDetails;
  @override
  final int id;

  @override
  String toString() {
    return 'SeasonDetailsState(state: $state, message: $message, seasonDetails: $seasonDetails, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonDetailsStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.seasonDetails, seasonDetails) ||
                other.seasonDetails == seasonDetails) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, state, message, seasonDetails, id);

  /// Create a copy of SeasonDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonDetailsStateImplCopyWith<_$SeasonDetailsStateImpl> get copyWith =>
      __$$SeasonDetailsStateImplCopyWithImpl<_$SeasonDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _SeasonDetailsState implements SeasonDetailsState {
  const factory _SeasonDetailsState({
    required final RequestState state,
    required final String message,
    required final TvShowSeasonDetailsModel? seasonDetails,
    required final int id,
  }) = _$SeasonDetailsStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  TvShowSeasonDetailsModel? get seasonDetails;
  @override
  int get id;

  /// Create a copy of SeasonDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonDetailsStateImplCopyWith<_$SeasonDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeasonDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, int seasonNumber)
    fetchSeasonDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSeasonDetails value) fetchSeasonDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSeasonDetails value)? fetchSeasonDetails,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSeasonDetails value)? fetchSeasonDetails,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonDetailsEventCopyWith<$Res> {
  factory $SeasonDetailsEventCopyWith(
    SeasonDetailsEvent value,
    $Res Function(SeasonDetailsEvent) then,
  ) = _$SeasonDetailsEventCopyWithImpl<$Res, SeasonDetailsEvent>;
}

/// @nodoc
class _$SeasonDetailsEventCopyWithImpl<$Res, $Val extends SeasonDetailsEvent>
    implements $SeasonDetailsEventCopyWith<$Res> {
  _$SeasonDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonDetailsEvent
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
    extends _$SeasonDetailsEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SeasonDetailsEvent.initial()';
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
    required TResult Function(int tvShowId, int seasonNumber)
    fetchSeasonDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
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
    required TResult Function(_FetchSeasonDetails value) fetchSeasonDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSeasonDetails value)? fetchSeasonDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSeasonDetails value)? fetchSeasonDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SeasonDetailsEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchSeasonDetailsImplCopyWith<$Res> {
  factory _$$FetchSeasonDetailsImplCopyWith(
    _$FetchSeasonDetailsImpl value,
    $Res Function(_$FetchSeasonDetailsImpl) then,
  ) = __$$FetchSeasonDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tvShowId, int seasonNumber});
}

/// @nodoc
class __$$FetchSeasonDetailsImplCopyWithImpl<$Res>
    extends _$SeasonDetailsEventCopyWithImpl<$Res, _$FetchSeasonDetailsImpl>
    implements _$$FetchSeasonDetailsImplCopyWith<$Res> {
  __$$FetchSeasonDetailsImplCopyWithImpl(
    _$FetchSeasonDetailsImpl _value,
    $Res Function(_$FetchSeasonDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SeasonDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tvShowId = null, Object? seasonNumber = null}) {
    return _then(
      _$FetchSeasonDetailsImpl(
        tvShowId: null == tvShowId
            ? _value.tvShowId
            : tvShowId // ignore: cast_nullable_to_non_nullable
                  as int,
        seasonNumber: null == seasonNumber
            ? _value.seasonNumber
            : seasonNumber // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchSeasonDetailsImpl implements _FetchSeasonDetails {
  const _$FetchSeasonDetailsImpl({
    required this.tvShowId,
    required this.seasonNumber,
  });

  @override
  final int tvShowId;
  @override
  final int seasonNumber;

  @override
  String toString() {
    return 'SeasonDetailsEvent.fetchSeasonDetails(tvShowId: $tvShowId, seasonNumber: $seasonNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSeasonDetailsImpl &&
            (identical(other.tvShowId, tvShowId) ||
                other.tvShowId == tvShowId) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tvShowId, seasonNumber);

  /// Create a copy of SeasonDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSeasonDetailsImplCopyWith<_$FetchSeasonDetailsImpl> get copyWith =>
      __$$FetchSeasonDetailsImplCopyWithImpl<_$FetchSeasonDetailsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int tvShowId, int seasonNumber)
    fetchSeasonDetails,
  }) {
    return fetchSeasonDetails(tvShowId, seasonNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
  }) {
    return fetchSeasonDetails?.call(tvShowId, seasonNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int tvShowId, int seasonNumber)? fetchSeasonDetails,
    required TResult orElse(),
  }) {
    if (fetchSeasonDetails != null) {
      return fetchSeasonDetails(tvShowId, seasonNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchSeasonDetails value) fetchSeasonDetails,
  }) {
    return fetchSeasonDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchSeasonDetails value)? fetchSeasonDetails,
  }) {
    return fetchSeasonDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchSeasonDetails value)? fetchSeasonDetails,
    required TResult orElse(),
  }) {
    if (fetchSeasonDetails != null) {
      return fetchSeasonDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchSeasonDetails implements SeasonDetailsEvent {
  const factory _FetchSeasonDetails({
    required final int tvShowId,
    required final int seasonNumber,
  }) = _$FetchSeasonDetailsImpl;

  int get tvShowId;
  int get seasonNumber;

  /// Create a copy of SeasonDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSeasonDetailsImplCopyWith<_$FetchSeasonDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
