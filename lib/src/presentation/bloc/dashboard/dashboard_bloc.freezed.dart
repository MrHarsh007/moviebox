// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DashboardState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  String? get privacyPolicy => throw _privateConstructorUsedError;
  String? get termsOfService => throw _privateConstructorUsedError;
  String? get aboutUs => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
    DashboardState value,
    $Res Function(DashboardState) then,
  ) = _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    int index,
    String? privacyPolicy,
    String? termsOfService,
    String? aboutUs,
    bool isChecked,
  });
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? index = null,
    Object? privacyPolicy = freezed,
    Object? termsOfService = freezed,
    Object? aboutUs = freezed,
    Object? isChecked = null,
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
            index: null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                      as int,
            privacyPolicy: freezed == privacyPolicy
                ? _value.privacyPolicy
                : privacyPolicy // ignore: cast_nullable_to_non_nullable
                      as String?,
            termsOfService: freezed == termsOfService
                ? _value.termsOfService
                : termsOfService // ignore: cast_nullable_to_non_nullable
                      as String?,
            aboutUs: freezed == aboutUs
                ? _value.aboutUs
                : aboutUs // ignore: cast_nullable_to_non_nullable
                      as String?,
            isChecked: null == isChecked
                ? _value.isChecked
                : isChecked // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(
    _$DashboardStateImpl value,
    $Res Function(_$DashboardStateImpl) then,
  ) = __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    int index,
    String? privacyPolicy,
    String? termsOfService,
    String? aboutUs,
    bool isChecked,
  });
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
    _$DashboardStateImpl _value,
    $Res Function(_$DashboardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? index = null,
    Object? privacyPolicy = freezed,
    Object? termsOfService = freezed,
    Object? aboutUs = freezed,
    Object? isChecked = null,
  }) {
    return _then(
      _$DashboardStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
        privacyPolicy: freezed == privacyPolicy
            ? _value.privacyPolicy
            : privacyPolicy // ignore: cast_nullable_to_non_nullable
                  as String?,
        termsOfService: freezed == termsOfService
            ? _value.termsOfService
            : termsOfService // ignore: cast_nullable_to_non_nullable
                  as String?,
        aboutUs: freezed == aboutUs
            ? _value.aboutUs
            : aboutUs // ignore: cast_nullable_to_non_nullable
                  as String?,
        isChecked: null == isChecked
            ? _value.isChecked
            : isChecked // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl({
    required this.state,
    required this.message,
    required this.index,
    required this.privacyPolicy,
    required this.termsOfService,
    required this.aboutUs,
    required this.isChecked,
  });

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final int index;
  @override
  final String? privacyPolicy;
  @override
  final String? termsOfService;
  @override
  final String? aboutUs;
  @override
  final bool isChecked;

  @override
  String toString() {
    return 'DashboardState(state: $state, message: $message, index: $index, privacyPolicy: $privacyPolicy, termsOfService: $termsOfService, aboutUs: $aboutUs, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy) &&
            (identical(other.termsOfService, termsOfService) ||
                other.termsOfService == termsOfService) &&
            (identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    index,
    privacyPolicy,
    termsOfService,
    aboutUs,
    isChecked,
  );

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState({
    required final RequestState state,
    required final String message,
    required final int index,
    required final String? privacyPolicy,
    required final String? termsOfService,
    required final String? aboutUs,
    required final bool isChecked,
  }) = _$DashboardStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  int get index;
  @override
  String? get privacyPolicy;
  @override
  String? get termsOfService;
  @override
  String? get aboutUs;
  @override
  bool get isChecked;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) setIndex,
    required TResult Function() fetchSettingData,
    required TResult Function() updateCheckboxState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? setIndex,
    TResult? Function()? fetchSettingData,
    TResult? Function()? updateCheckboxState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? setIndex,
    TResult Function()? fetchSettingData,
    TResult Function()? updateCheckboxState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_FetchSettingData value) fetchSettingData,
    required TResult Function(_UpdateCheckboxState value) updateCheckboxState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_FetchSettingData value)? fetchSettingData,
    TResult? Function(_UpdateCheckboxState value)? updateCheckboxState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_FetchSettingData value)? fetchSettingData,
    TResult Function(_UpdateCheckboxState value)? updateCheckboxState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
    DashboardEvent value,
    $Res Function(DashboardEvent) then,
  ) = _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
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
    extends _$DashboardEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DashboardEvent.initial()';
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
    required TResult Function(int index) setIndex,
    required TResult Function() fetchSettingData,
    required TResult Function() updateCheckboxState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? setIndex,
    TResult? Function()? fetchSettingData,
    TResult? Function()? updateCheckboxState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? setIndex,
    TResult Function()? fetchSettingData,
    TResult Function()? updateCheckboxState,
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
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_FetchSettingData value) fetchSettingData,
    required TResult Function(_UpdateCheckboxState value) updateCheckboxState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_FetchSettingData value)? fetchSettingData,
    TResult? Function(_UpdateCheckboxState value)? updateCheckboxState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_FetchSettingData value)? fetchSettingData,
    TResult Function(_UpdateCheckboxState value)? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SetIndexImplCopyWith<$Res> {
  factory _$$SetIndexImplCopyWith(
    _$SetIndexImpl value,
    $Res Function(_$SetIndexImpl) then,
  ) = __$$SetIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetIndexImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$SetIndexImpl>
    implements _$$SetIndexImplCopyWith<$Res> {
  __$$SetIndexImplCopyWithImpl(
    _$SetIndexImpl _value,
    $Res Function(_$SetIndexImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$SetIndexImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SetIndexImpl implements _SetIndex {
  const _$SetIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'DashboardEvent.setIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      __$$SetIndexImplCopyWithImpl<_$SetIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) setIndex,
    required TResult Function() fetchSettingData,
    required TResult Function() updateCheckboxState,
  }) {
    return setIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? setIndex,
    TResult? Function()? fetchSettingData,
    TResult? Function()? updateCheckboxState,
  }) {
    return setIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? setIndex,
    TResult Function()? fetchSettingData,
    TResult Function()? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_FetchSettingData value) fetchSettingData,
    required TResult Function(_UpdateCheckboxState value) updateCheckboxState,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_FetchSettingData value)? fetchSettingData,
    TResult? Function(_UpdateCheckboxState value)? updateCheckboxState,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_FetchSettingData value)? fetchSettingData,
    TResult Function(_UpdateCheckboxState value)? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class _SetIndex implements DashboardEvent {
  const factory _SetIndex(final int index) = _$SetIndexImpl;

  int get index;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetIndexImplCopyWith<_$SetIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSettingDataImplCopyWith<$Res> {
  factory _$$FetchSettingDataImplCopyWith(
    _$FetchSettingDataImpl value,
    $Res Function(_$FetchSettingDataImpl) then,
  ) = __$$FetchSettingDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSettingDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$FetchSettingDataImpl>
    implements _$$FetchSettingDataImplCopyWith<$Res> {
  __$$FetchSettingDataImplCopyWithImpl(
    _$FetchSettingDataImpl _value,
    $Res Function(_$FetchSettingDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchSettingDataImpl implements _FetchSettingData {
  const _$FetchSettingDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.fetchSettingData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchSettingDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) setIndex,
    required TResult Function() fetchSettingData,
    required TResult Function() updateCheckboxState,
  }) {
    return fetchSettingData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? setIndex,
    TResult? Function()? fetchSettingData,
    TResult? Function()? updateCheckboxState,
  }) {
    return fetchSettingData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? setIndex,
    TResult Function()? fetchSettingData,
    TResult Function()? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (fetchSettingData != null) {
      return fetchSettingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_FetchSettingData value) fetchSettingData,
    required TResult Function(_UpdateCheckboxState value) updateCheckboxState,
  }) {
    return fetchSettingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_FetchSettingData value)? fetchSettingData,
    TResult? Function(_UpdateCheckboxState value)? updateCheckboxState,
  }) {
    return fetchSettingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_FetchSettingData value)? fetchSettingData,
    TResult Function(_UpdateCheckboxState value)? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (fetchSettingData != null) {
      return fetchSettingData(this);
    }
    return orElse();
  }
}

abstract class _FetchSettingData implements DashboardEvent {
  const factory _FetchSettingData() = _$FetchSettingDataImpl;
}

/// @nodoc
abstract class _$$UpdateCheckboxStateImplCopyWith<$Res> {
  factory _$$UpdateCheckboxStateImplCopyWith(
    _$UpdateCheckboxStateImpl value,
    $Res Function(_$UpdateCheckboxStateImpl) then,
  ) = __$$UpdateCheckboxStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCheckboxStateImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$UpdateCheckboxStateImpl>
    implements _$$UpdateCheckboxStateImplCopyWith<$Res> {
  __$$UpdateCheckboxStateImplCopyWithImpl(
    _$UpdateCheckboxStateImpl _value,
    $Res Function(_$UpdateCheckboxStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateCheckboxStateImpl implements _UpdateCheckboxState {
  const _$UpdateCheckboxStateImpl();

  @override
  String toString() {
    return 'DashboardEvent.updateCheckboxState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCheckboxStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) setIndex,
    required TResult Function() fetchSettingData,
    required TResult Function() updateCheckboxState,
  }) {
    return updateCheckboxState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? setIndex,
    TResult? Function()? fetchSettingData,
    TResult? Function()? updateCheckboxState,
  }) {
    return updateCheckboxState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? setIndex,
    TResult Function()? fetchSettingData,
    TResult Function()? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (updateCheckboxState != null) {
      return updateCheckboxState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SetIndex value) setIndex,
    required TResult Function(_FetchSettingData value) fetchSettingData,
    required TResult Function(_UpdateCheckboxState value) updateCheckboxState,
  }) {
    return updateCheckboxState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SetIndex value)? setIndex,
    TResult? Function(_FetchSettingData value)? fetchSettingData,
    TResult? Function(_UpdateCheckboxState value)? updateCheckboxState,
  }) {
    return updateCheckboxState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SetIndex value)? setIndex,
    TResult Function(_FetchSettingData value)? fetchSettingData,
    TResult Function(_UpdateCheckboxState value)? updateCheckboxState,
    required TResult orElse(),
  }) {
    if (updateCheckboxState != null) {
      return updateCheckboxState(this);
    }
    return orElse();
  }
}

abstract class _UpdateCheckboxState implements DashboardEvent {
  const factory _UpdateCheckboxState() = _$UpdateCheckboxStateImpl;
}
