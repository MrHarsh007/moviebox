part of 'quiz_bloc.dart';

@freezed
class QuizEvent with _$QuizEvent {
  // Initial
  const factory QuizEvent.initial() = _QuizInitial;

  // Fetch Quiz Questions
  const factory QuizEvent.fetchQuizQuestions() = _FetchQuizQuestions;

  // Selected Quiz
  const factory QuizEvent.selectedQuiz({required QuizModel selectedQuestion}) =
      _SelectedQuiz;

  // Selected Answer
  const factory QuizEvent.selectedAnswer({required String answer}) =
      _SelectedAnswer;

  // Check Answer
  const factory QuizEvent.checkAnswer({required String answer}) = _CheckAnswer;

  // Go to next question
  const factory QuizEvent.nextQuestion() = _NextQuestion;

  // Go to previous question
  const factory QuizEvent.previousQuestion() = _PreviousQuestion;
}
