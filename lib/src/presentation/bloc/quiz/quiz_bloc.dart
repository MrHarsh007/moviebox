import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';
import 'package:moviesbox/src/domain/usecase/quiz_usecase.dart';

part 'quiz_state.dart';
part 'quiz_event.dart';
part 'quiz_bloc.freezed.dart';

@singleton
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizUsecase quizUsecase;
  QuizBloc(this.quizUsecase) : super(QuizState.initial()) {
    on<QuizEvent>((event, emit) async {
      await event.map(
        initial: (e) async {
          emit(QuizState.initial());
        },
        fetchQuizQuestions: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Fetching Quiz Questions...",
            ),
          );
          final result = await quizUsecase.getQuizQuestions();
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: failure.message,
                ),
              );
            },
            (quizQuestions) {
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  allQuizes: quizQuestions,
                ),
              );
            },
          );
        },
        selectedQuiz: (_SelectedQuiz value) {
          emit(
            state.copyWith(
              selectedQuiz: value.selectedQuestion,
              selectedAnswer: null,
              isAnswered: false,
              questionIndex: 0,

              state: RequestState.initial,
            ),
          );
        },
        selectedAnswer: (_SelectedAnswer value) {
          emit(
            state.copyWith(
              selectedAnswer: value.answer,
              state: RequestState.initial,
            ),
          );
        },
        checkAnswer: (_CheckAnswer value) async {
          if (state.selectedAnswer == null) {
            emit(
              state.copyWith(
                state: RequestState.error,
                message: "Please select an answer before proceeding.",
              ),
            );
            emit(state.copyWith(state: RequestState.initial, message: ""));
            return;
          }
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Checking Answer",
            ),
          );
          await Future.delayed(Duration(seconds: 1));
          emit(
            state.copyWith(
              state: RequestState.initial,
              isAnswered: true,
              selectedAnswer: value.answer,
            ),
          );
        },
        nextQuestion: (_NextQuestion value) {
          if (state.questionIndex <
              (state.selectedQuiz?.questions?.length ?? 0) - 1) {
            emit(
              state.copyWith(
                questionIndex: state.questionIndex + 1,
                isAnswered: false,
                selectedAnswer: null,
              ),
            );
          } else {}
        },
        previousQuestion: (_PreviousQuestion value) {
          if (state.questionIndex > 0) {
            emit(
              state.copyWith(
                questionIndex: state.questionIndex - 1,
                isAnswered: false,
                selectedAnswer: null,
              ),
            );
          }
        },
      );
    });
  }
}
