part of 'quiz_bloc.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required RequestState state,
    required String message,
    required List<QuizModel> allQuizes,
    required QuizModel? selectedQuiz,
    required String? selectedAnswer,
    required int questionIndex,
    required bool isAnswered,
  }) = _QuizState;

  factory QuizState.initial() {
    return QuizState(
      state: RequestState.initial,
      message: '',
      allQuizes: [],
      selectedQuiz: null,
      selectedAnswer: null,
      questionIndex: 0,
      isAnswered: false,
    );
  }
}
