// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NoteState {
  RequestState get state => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contentJson => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  List<MarkdownNote> get notes => throw _privateConstructorUsedError;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call({
    RequestState state,
    String uid,
    String title,
    String contentJson,
    bool isNew,
    bool isSaving,
    String? error,
    int createdAt,
    List<MarkdownNote> notes,
  });
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? uid = null,
    Object? title = null,
    Object? contentJson = null,
    Object? isNew = null,
    Object? isSaving = null,
    Object? error = freezed,
    Object? createdAt = null,
    Object? notes = null,
  }) {
    return _then(
      _value.copyWith(
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as RequestState,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            contentJson: null == contentJson
                ? _value.contentJson
                : contentJson // ignore: cast_nullable_to_non_nullable
                      as String,
            isNew: null == isNew
                ? _value.isNew
                : isNew // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSaving: null == isSaving
                ? _value.isSaving
                : isSaving // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as int,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as List<MarkdownNote>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NoteStateImplCopyWith<$Res>
    implements $NoteStateCopyWith<$Res> {
  factory _$$NoteStateImplCopyWith(
    _$NoteStateImpl value,
    $Res Function(_$NoteStateImpl) then,
  ) = __$$NoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String uid,
    String title,
    String contentJson,
    bool isNew,
    bool isSaving,
    String? error,
    int createdAt,
    List<MarkdownNote> notes,
  });
}

/// @nodoc
class __$$NoteStateImplCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$NoteStateImpl>
    implements _$$NoteStateImplCopyWith<$Res> {
  __$$NoteStateImplCopyWithImpl(
    _$NoteStateImpl _value,
    $Res Function(_$NoteStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? uid = null,
    Object? title = null,
    Object? contentJson = null,
    Object? isNew = null,
    Object? isSaving = null,
    Object? error = freezed,
    Object? createdAt = null,
    Object? notes = null,
  }) {
    return _then(
      _$NoteStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        contentJson: null == contentJson
            ? _value.contentJson
            : contentJson // ignore: cast_nullable_to_non_nullable
                  as String,
        isNew: null == isNew
            ? _value.isNew
            : isNew // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSaving: null == isSaving
            ? _value.isSaving
            : isSaving // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as int,
        notes: null == notes
            ? _value._notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as List<MarkdownNote>,
      ),
    );
  }
}

/// @nodoc

class _$NoteStateImpl implements _NoteState {
  const _$NoteStateImpl({
    required this.state,
    required this.uid,
    required this.title,
    required this.contentJson,
    required this.isNew,
    required this.isSaving,
    required this.error,
    required this.createdAt,
    required final List<MarkdownNote> notes,
  }) : _notes = notes;

  @override
  final RequestState state;
  @override
  final String uid;
  @override
  final String title;
  @override
  final String contentJson;
  @override
  final bool isNew;
  @override
  final bool isSaving;
  @override
  final String? error;
  @override
  final int createdAt;
  final List<MarkdownNote> _notes;
  @override
  List<MarkdownNote> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'NoteState(state: $state, uid: $uid, title: $title, contentJson: $contentJson, isNew: $isNew, isSaving: $isSaving, error: $error, createdAt: $createdAt, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.contentJson, contentJson) ||
                other.contentJson == contentJson) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    uid,
    title,
    contentJson,
    isNew,
    isSaving,
    error,
    createdAt,
    const DeepCollectionEquality().hash(_notes),
  );

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      __$$NoteStateImplCopyWithImpl<_$NoteStateImpl>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  const factory _NoteState({
    required final RequestState state,
    required final String uid,
    required final String title,
    required final String contentJson,
    required final bool isNew,
    required final bool isSaving,
    required final String? error,
    required final int createdAt,
    required final List<MarkdownNote> notes,
  }) = _$NoteStateImpl;

  @override
  RequestState get state;
  @override
  String get uid;
  @override
  String get title;
  @override
  String get contentJson;
  @override
  bool get isNew;
  @override
  bool get isSaving;
  @override
  String? get error;
  @override
  int get createdAt;
  @override
  List<MarkdownNote> get notes;

  /// Create a copy of NoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteStateImplCopyWith<_$NoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ResetContentImplCopyWith<$Res> {
  factory _$$ResetContentImplCopyWith(
    _$ResetContentImpl value,
    $Res Function(_$ResetContentImpl) then,
  ) = __$$ResetContentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetContentImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$ResetContentImpl>
    implements _$$ResetContentImplCopyWith<$Res> {
  __$$ResetContentImplCopyWithImpl(
    _$ResetContentImpl _value,
    $Res Function(_$ResetContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetContentImpl implements _ResetContent {
  const _$ResetContentImpl();

  @override
  String toString() {
    return 'NoteEvent.resetContent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetContentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return resetContent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return resetContent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (resetContent != null) {
      return resetContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return resetContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return resetContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (resetContent != null) {
      return resetContent(this);
    }
    return orElse();
  }
}

abstract class _ResetContent implements NoteEvent {
  const factory _ResetContent() = _$ResetContentImpl;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
    _$LoadImpl value,
    $Res Function(_$LoadImpl) then,
  ) = __$$LoadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
    : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null}) {
    return _then(
      _$LoadImpl(
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'NoteEvent.load(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return load(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return load?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements NoteEvent {
  const factory _Load({required final String uid}) = _$LoadImpl;

  String get uid;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
    _$TitleChangedImpl value,
    $Res Function(_$TitleChangedImpl) then,
  ) = __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
    _$TitleChangedImpl _value,
    $Res Function(_$TitleChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null}) {
    return _then(
      _$TitleChangedImpl(
        null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NoteEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements NoteEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentChangedImplCopyWith<$Res> {
  factory _$$ContentChangedImplCopyWith(
    _$ContentChangedImpl value,
    $Res Function(_$ContentChangedImpl) then,
  ) = __$$ContentChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String jsonContent});
}

/// @nodoc
class __$$ContentChangedImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$ContentChangedImpl>
    implements _$$ContentChangedImplCopyWith<$Res> {
  __$$ContentChangedImplCopyWithImpl(
    _$ContentChangedImpl _value,
    $Res Function(_$ContentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? jsonContent = null}) {
    return _then(
      _$ContentChangedImpl(
        null == jsonContent
            ? _value.jsonContent
            : jsonContent // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ContentChangedImpl implements _ContentChanged {
  const _$ContentChangedImpl(this.jsonContent);

  @override
  final String jsonContent;

  @override
  String toString() {
    return 'NoteEvent.contentChanged(jsonContent: $jsonContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentChangedImpl &&
            (identical(other.jsonContent, jsonContent) ||
                other.jsonContent == jsonContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, jsonContent);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentChangedImplCopyWith<_$ContentChangedImpl> get copyWith =>
      __$$ContentChangedImplCopyWithImpl<_$ContentChangedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return contentChanged(jsonContent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return contentChanged?.call(jsonContent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(jsonContent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return contentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements NoteEvent {
  const factory _ContentChanged(final String jsonContent) =
      _$ContentChangedImpl;

  String get jsonContent;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentChangedImplCopyWith<_$ContentChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveNoteImplCopyWith<$Res> {
  factory _$$SaveNoteImplCopyWith(
    _$SaveNoteImpl value,
    $Res Function(_$SaveNoteImpl) then,
  ) = __$$SaveNoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data, String? type, int? movieId});
}

/// @nodoc
class __$$SaveNoteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$SaveNoteImpl>
    implements _$$SaveNoteImplCopyWith<$Res> {
  __$$SaveNoteImplCopyWithImpl(
    _$SaveNoteImpl _value,
    $Res Function(_$SaveNoteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = freezed,
    Object? movieId = freezed,
  }) {
    return _then(
      _$SaveNoteImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as String,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        movieId: freezed == movieId
            ? _value.movieId
            : movieId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$SaveNoteImpl implements _SaveNote {
  const _$SaveNoteImpl({required this.data, this.type, this.movieId});

  @override
  final String data;
  @override
  final String? type;
  @override
  final int? movieId;

  @override
  String toString() {
    return 'NoteEvent.saveNote(data: $data, type: $type, movieId: $movieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNoteImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, type, movieId);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNoteImplCopyWith<_$SaveNoteImpl> get copyWith =>
      __$$SaveNoteImplCopyWithImpl<_$SaveNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return saveNote(data, type, movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return saveNote?.call(data, type, movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(data, type, movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class _SaveNote implements NoteEvent {
  const factory _SaveNote({
    required final String data,
    final String? type,
    final int? movieId,
  }) = _$SaveNoteImpl;

  String get data;
  String? get type;
  int? get movieId;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveNoteImplCopyWith<_$SaveNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllImplCopyWith<$Res> {
  factory _$$FetchAllImplCopyWith(
    _$FetchAllImpl value,
    $Res Function(_$FetchAllImpl) then,
  ) = __$$FetchAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$FetchAllImpl>
    implements _$$FetchAllImplCopyWith<$Res> {
  __$$FetchAllImplCopyWithImpl(
    _$FetchAllImpl _value,
    $Res Function(_$FetchAllImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllImpl implements _FetchAll {
  const _$FetchAllImpl();

  @override
  String toString() {
    return 'NoteEvent.fetchAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return fetchAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return fetchAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return fetchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return fetchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (fetchAll != null) {
      return fetchAll(this);
    }
    return orElse();
  }
}

abstract class _FetchAll implements NoteEvent {
  const factory _FetchAll() = _$FetchAllImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
    _$DeleteImpl value,
    $Res Function(_$DeleteImpl) then,
  ) = __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
    _$DeleteImpl _value,
    $Res Function(_$DeleteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uid = null}) {
    return _then(
      _$DeleteImpl(
        null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.uid);

  @override
  final String uid;

  @override
  String toString() {
    return 'NoteEvent.delete(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetContent,
    required TResult Function(String uid) load,
    required TResult Function(String title) titleChanged,
    required TResult Function(String jsonContent) contentChanged,
    required TResult Function(String data, String? type, int? movieId) saveNote,
    required TResult Function() fetchAll,
    required TResult Function(String uid) delete,
  }) {
    return delete(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetContent,
    TResult? Function(String uid)? load,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String jsonContent)? contentChanged,
    TResult? Function(String data, String? type, int? movieId)? saveNote,
    TResult? Function()? fetchAll,
    TResult? Function(String uid)? delete,
  }) {
    return delete?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetContent,
    TResult Function(String uid)? load,
    TResult Function(String title)? titleChanged,
    TResult Function(String jsonContent)? contentChanged,
    TResult Function(String data, String? type, int? movieId)? saveNote,
    TResult Function()? fetchAll,
    TResult Function(String uid)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetContent value) resetContent,
    required TResult Function(_Load value) load,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_ContentChanged value) contentChanged,
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_FetchAll value) fetchAll,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetContent value)? resetContent,
    TResult? Function(_Load value)? load,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_ContentChanged value)? contentChanged,
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_FetchAll value)? fetchAll,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetContent value)? resetContent,
    TResult Function(_Load value)? load,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_ContentChanged value)? contentChanged,
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_FetchAll value)? fetchAll,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NoteEvent {
  const factory _Delete(final String uid) = _$DeleteImpl;

  String get uid;

  /// Create a copy of NoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
