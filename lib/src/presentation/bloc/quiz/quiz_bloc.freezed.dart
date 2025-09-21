// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QuizState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<QuizModel> get allQuizes => throw _privateConstructorUsedError;
  QuizModel? get selectedQuiz => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;
  int get questionIndex => throw _privateConstructorUsedError;
  bool get isAnswered => throw _privateConstructorUsedError;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<QuizModel> allQuizes,
    QuizModel? selectedQuiz,
    String? selectedAnswer,
    int questionIndex,
    bool isAnswered,
  });
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? allQuizes = null,
    Object? selectedQuiz = freezed,
    Object? selectedAnswer = freezed,
    Object? questionIndex = null,
    Object? isAnswered = null,
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
            allQuizes: null == allQuizes
                ? _value.allQuizes
                : allQuizes // ignore: cast_nullable_to_non_nullable
                      as List<QuizModel>,
            selectedQuiz: freezed == selectedQuiz
                ? _value.selectedQuiz
                : selectedQuiz // ignore: cast_nullable_to_non_nullable
                      as QuizModel?,
            selectedAnswer: freezed == selectedAnswer
                ? _value.selectedAnswer
                : selectedAnswer // ignore: cast_nullable_to_non_nullable
                      as String?,
            questionIndex: null == questionIndex
                ? _value.questionIndex
                : questionIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            isAnswered: null == isAnswered
                ? _value.isAnswered
                : isAnswered // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
    _$QuizStateImpl value,
    $Res Function(_$QuizStateImpl) then,
  ) = __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequestState state,
    String message,
    List<QuizModel> allQuizes,
    QuizModel? selectedQuiz,
    String? selectedAnswer,
    int questionIndex,
    bool isAnswered,
  });
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
    _$QuizStateImpl _value,
    $Res Function(_$QuizStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? allQuizes = null,
    Object? selectedQuiz = freezed,
    Object? selectedAnswer = freezed,
    Object? questionIndex = null,
    Object? isAnswered = null,
  }) {
    return _then(
      _$QuizStateImpl(
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as RequestState,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        allQuizes: null == allQuizes
            ? _value._allQuizes
            : allQuizes // ignore: cast_nullable_to_non_nullable
                  as List<QuizModel>,
        selectedQuiz: freezed == selectedQuiz
            ? _value.selectedQuiz
            : selectedQuiz // ignore: cast_nullable_to_non_nullable
                  as QuizModel?,
        selectedAnswer: freezed == selectedAnswer
            ? _value.selectedAnswer
            : selectedAnswer // ignore: cast_nullable_to_non_nullable
                  as String?,
        questionIndex: null == questionIndex
            ? _value.questionIndex
            : questionIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        isAnswered: null == isAnswered
            ? _value.isAnswered
            : isAnswered // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$QuizStateImpl implements _QuizState {
  const _$QuizStateImpl({
    required this.state,
    required this.message,
    required final List<QuizModel> allQuizes,
    required this.selectedQuiz,
    required this.selectedAnswer,
    required this.questionIndex,
    required this.isAnswered,
  }) : _allQuizes = allQuizes;

  @override
  final RequestState state;
  @override
  final String message;
  final List<QuizModel> _allQuizes;
  @override
  List<QuizModel> get allQuizes {
    if (_allQuizes is EqualUnmodifiableListView) return _allQuizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allQuizes);
  }

  @override
  final QuizModel? selectedQuiz;
  @override
  final String? selectedAnswer;
  @override
  final int questionIndex;
  @override
  final bool isAnswered;

  @override
  String toString() {
    return 'QuizState(state: $state, message: $message, allQuizes: $allQuizes, selectedQuiz: $selectedQuiz, selectedAnswer: $selectedAnswer, questionIndex: $questionIndex, isAnswered: $isAnswered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._allQuizes,
              _allQuizes,
            ) &&
            (identical(other.selectedQuiz, selectedQuiz) ||
                other.selectedQuiz == selectedQuiz) &&
            (identical(other.selectedAnswer, selectedAnswer) ||
                other.selectedAnswer == selectedAnswer) &&
            (identical(other.questionIndex, questionIndex) ||
                other.questionIndex == questionIndex) &&
            (identical(other.isAnswered, isAnswered) ||
                other.isAnswered == isAnswered));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    state,
    message,
    const DeepCollectionEquality().hash(_allQuizes),
    selectedQuiz,
    selectedAnswer,
    questionIndex,
    isAnswered,
  );

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState({
    required final RequestState state,
    required final String message,
    required final List<QuizModel> allQuizes,
    required final QuizModel? selectedQuiz,
    required final String? selectedAnswer,
    required final int questionIndex,
    required final bool isAnswered,
  }) = _$QuizStateImpl;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<QuizModel> get allQuizes;
  @override
  QuizModel? get selectedQuiz;
  @override
  String? get selectedAnswer;
  @override
  int get questionIndex;
  @override
  bool get isAnswered;

  /// Create a copy of QuizState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res, QuizEvent>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res, $Val extends QuizEvent>
    implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QuizInitialImplCopyWith<$Res> {
  factory _$$QuizInitialImplCopyWith(
    _$QuizInitialImpl value,
    $Res Function(_$QuizInitialImpl) then,
  ) = __$$QuizInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuizInitialImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$QuizInitialImpl>
    implements _$$QuizInitialImplCopyWith<$Res> {
  __$$QuizInitialImplCopyWithImpl(
    _$QuizInitialImpl _value,
    $Res Function(_$QuizInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$QuizInitialImpl implements _QuizInitial {
  const _$QuizInitialImpl();

  @override
  String toString() {
    return 'QuizEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuizInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
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
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuizInitial implements QuizEvent {
  const factory _QuizInitial() = _$QuizInitialImpl;
}

/// @nodoc
abstract class _$$FetchQuizQuestionsImplCopyWith<$Res> {
  factory _$$FetchQuizQuestionsImplCopyWith(
    _$FetchQuizQuestionsImpl value,
    $Res Function(_$FetchQuizQuestionsImpl) then,
  ) = __$$FetchQuizQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuizQuestionsImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$FetchQuizQuestionsImpl>
    implements _$$FetchQuizQuestionsImplCopyWith<$Res> {
  __$$FetchQuizQuestionsImplCopyWithImpl(
    _$FetchQuizQuestionsImpl _value,
    $Res Function(_$FetchQuizQuestionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchQuizQuestionsImpl implements _FetchQuizQuestions {
  const _$FetchQuizQuestionsImpl();

  @override
  String toString() {
    return 'QuizEvent.fetchQuizQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchQuizQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return fetchQuizQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return fetchQuizQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuizQuestions != null) {
      return fetchQuizQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return fetchQuizQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return fetchQuizQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuizQuestions != null) {
      return fetchQuizQuestions(this);
    }
    return orElse();
  }
}

abstract class _FetchQuizQuestions implements QuizEvent {
  const factory _FetchQuizQuestions() = _$FetchQuizQuestionsImpl;
}

/// @nodoc
abstract class _$$SelectedQuizImplCopyWith<$Res> {
  factory _$$SelectedQuizImplCopyWith(
    _$SelectedQuizImpl value,
    $Res Function(_$SelectedQuizImpl) then,
  ) = __$$SelectedQuizImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizModel selectedQuestion});
}

/// @nodoc
class __$$SelectedQuizImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$SelectedQuizImpl>
    implements _$$SelectedQuizImplCopyWith<$Res> {
  __$$SelectedQuizImplCopyWithImpl(
    _$SelectedQuizImpl _value,
    $Res Function(_$SelectedQuizImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedQuestion = null}) {
    return _then(
      _$SelectedQuizImpl(
        selectedQuestion: null == selectedQuestion
            ? _value.selectedQuestion
            : selectedQuestion // ignore: cast_nullable_to_non_nullable
                  as QuizModel,
      ),
    );
  }
}

/// @nodoc

class _$SelectedQuizImpl implements _SelectedQuiz {
  const _$SelectedQuizImpl({required this.selectedQuestion});

  @override
  final QuizModel selectedQuestion;

  @override
  String toString() {
    return 'QuizEvent.selectedQuiz(selectedQuestion: $selectedQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedQuizImpl &&
            (identical(other.selectedQuestion, selectedQuestion) ||
                other.selectedQuestion == selectedQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedQuestion);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedQuizImplCopyWith<_$SelectedQuizImpl> get copyWith =>
      __$$SelectedQuizImplCopyWithImpl<_$SelectedQuizImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return selectedQuiz(selectedQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return selectedQuiz?.call(selectedQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (selectedQuiz != null) {
      return selectedQuiz(selectedQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return selectedQuiz(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return selectedQuiz?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (selectedQuiz != null) {
      return selectedQuiz(this);
    }
    return orElse();
  }
}

abstract class _SelectedQuiz implements QuizEvent {
  const factory _SelectedQuiz({required final QuizModel selectedQuestion}) =
      _$SelectedQuizImpl;

  QuizModel get selectedQuestion;

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedQuizImplCopyWith<_$SelectedQuizImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedAnswerImplCopyWith<$Res> {
  factory _$$SelectedAnswerImplCopyWith(
    _$SelectedAnswerImpl value,
    $Res Function(_$SelectedAnswerImpl) then,
  ) = __$$SelectedAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$SelectedAnswerImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$SelectedAnswerImpl>
    implements _$$SelectedAnswerImplCopyWith<$Res> {
  __$$SelectedAnswerImplCopyWithImpl(
    _$SelectedAnswerImpl _value,
    $Res Function(_$SelectedAnswerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answer = null}) {
    return _then(
      _$SelectedAnswerImpl(
        answer: null == answer
            ? _value.answer
            : answer // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectedAnswerImpl implements _SelectedAnswer {
  const _$SelectedAnswerImpl({required this.answer});

  @override
  final String answer;

  @override
  String toString() {
    return 'QuizEvent.selectedAnswer(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedAnswerImplCopyWith<_$SelectedAnswerImpl> get copyWith =>
      __$$SelectedAnswerImplCopyWithImpl<_$SelectedAnswerImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return selectedAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return selectedAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (selectedAnswer != null) {
      return selectedAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return selectedAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return selectedAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (selectedAnswer != null) {
      return selectedAnswer(this);
    }
    return orElse();
  }
}

abstract class _SelectedAnswer implements QuizEvent {
  const factory _SelectedAnswer({required final String answer}) =
      _$SelectedAnswerImpl;

  String get answer;

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedAnswerImplCopyWith<_$SelectedAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAnswerImplCopyWith<$Res> {
  factory _$$CheckAnswerImplCopyWith(
    _$CheckAnswerImpl value,
    $Res Function(_$CheckAnswerImpl) then,
  ) = __$$CheckAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$CheckAnswerImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$CheckAnswerImpl>
    implements _$$CheckAnswerImplCopyWith<$Res> {
  __$$CheckAnswerImplCopyWithImpl(
    _$CheckAnswerImpl _value,
    $Res Function(_$CheckAnswerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? answer = null}) {
    return _then(
      _$CheckAnswerImpl(
        answer: null == answer
            ? _value.answer
            : answer // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CheckAnswerImpl implements _CheckAnswer {
  const _$CheckAnswerImpl({required this.answer});

  @override
  final String answer;

  @override
  String toString() {
    return 'QuizEvent.checkAnswer(answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAnswerImpl &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      __$$CheckAnswerImplCopyWithImpl<_$CheckAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return checkAnswer(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return checkAnswer?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return checkAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return checkAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(this);
    }
    return orElse();
  }
}

abstract class _CheckAnswer implements QuizEvent {
  const factory _CheckAnswer({required final String answer}) =
      _$CheckAnswerImpl;

  String get answer;

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextQuestionImplCopyWith<$Res> {
  factory _$$NextQuestionImplCopyWith(
    _$NextQuestionImpl value,
    $Res Function(_$NextQuestionImpl) then,
  ) = __$$NextQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextQuestionImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$NextQuestionImpl>
    implements _$$NextQuestionImplCopyWith<$Res> {
  __$$NextQuestionImplCopyWithImpl(
    _$NextQuestionImpl _value,
    $Res Function(_$NextQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextQuestionImpl implements _NextQuestion {
  const _$NextQuestionImpl();

  @override
  String toString() {
    return 'QuizEvent.nextQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return nextQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return nextQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return nextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return nextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (nextQuestion != null) {
      return nextQuestion(this);
    }
    return orElse();
  }
}

abstract class _NextQuestion implements QuizEvent {
  const factory _NextQuestion() = _$NextQuestionImpl;
}

/// @nodoc
abstract class _$$PreviousQuestionImplCopyWith<$Res> {
  factory _$$PreviousQuestionImplCopyWith(
    _$PreviousQuestionImpl value,
    $Res Function(_$PreviousQuestionImpl) then,
  ) = __$$PreviousQuestionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousQuestionImplCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res, _$PreviousQuestionImpl>
    implements _$$PreviousQuestionImplCopyWith<$Res> {
  __$$PreviousQuestionImplCopyWithImpl(
    _$PreviousQuestionImpl _value,
    $Res Function(_$PreviousQuestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousQuestionImpl implements _PreviousQuestion {
  const _$PreviousQuestionImpl();

  @override
  String toString() {
    return 'QuizEvent.previousQuestion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousQuestionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchQuizQuestions,
    required TResult Function(QuizModel selectedQuestion) selectedQuiz,
    required TResult Function(String answer) selectedAnswer,
    required TResult Function(String answer) checkAnswer,
    required TResult Function() nextQuestion,
    required TResult Function() previousQuestion,
  }) {
    return previousQuestion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchQuizQuestions,
    TResult? Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult? Function(String answer)? selectedAnswer,
    TResult? Function(String answer)? checkAnswer,
    TResult? Function()? nextQuestion,
    TResult? Function()? previousQuestion,
  }) {
    return previousQuestion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchQuizQuestions,
    TResult Function(QuizModel selectedQuestion)? selectedQuiz,
    TResult Function(String answer)? selectedAnswer,
    TResult Function(String answer)? checkAnswer,
    TResult Function()? nextQuestion,
    TResult Function()? previousQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizInitial value) initial,
    required TResult Function(_FetchQuizQuestions value) fetchQuizQuestions,
    required TResult Function(_SelectedQuiz value) selectedQuiz,
    required TResult Function(_SelectedAnswer value) selectedAnswer,
    required TResult Function(_CheckAnswer value) checkAnswer,
    required TResult Function(_NextQuestion value) nextQuestion,
    required TResult Function(_PreviousQuestion value) previousQuestion,
  }) {
    return previousQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizInitial value)? initial,
    TResult? Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult? Function(_SelectedQuiz value)? selectedQuiz,
    TResult? Function(_SelectedAnswer value)? selectedAnswer,
    TResult? Function(_CheckAnswer value)? checkAnswer,
    TResult? Function(_NextQuestion value)? nextQuestion,
    TResult? Function(_PreviousQuestion value)? previousQuestion,
  }) {
    return previousQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizInitial value)? initial,
    TResult Function(_FetchQuizQuestions value)? fetchQuizQuestions,
    TResult Function(_SelectedQuiz value)? selectedQuiz,
    TResult Function(_SelectedAnswer value)? selectedAnswer,
    TResult Function(_CheckAnswer value)? checkAnswer,
    TResult Function(_NextQuestion value)? nextQuestion,
    TResult Function(_PreviousQuestion value)? previousQuestion,
    required TResult orElse(),
  }) {
    if (previousQuestion != null) {
      return previousQuestion(this);
    }
    return orElse();
  }
}

abstract class _PreviousQuestion implements QuizEvent {
  const factory _PreviousQuestion() = _$PreviousQuestionImpl;
}
