import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_dialog.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:moviesbox/src/presentation/pages/quiz/widgets/que_widget.dart';

class QueAnsScreen extends StatelessWidget {
  const QueAnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<QuizBloc, QuizState>(
          buildWhen: (previous, current) =>
              previous.selectedQuiz != current.selectedQuiz,
          builder: (context, state) {
            return Text(
              ' ${state.selectedQuiz?.title ?? ""}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.titleLarge?.copyWith(fontSize: 20),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(5),
          child: BlocBuilder<QuizBloc, QuizState>(
            buildWhen: (previous, current) =>
                previous.questionIndex != current.questionIndex,
            builder: (context, state) {
              final totalQuestions = state.selectedQuiz?.questions?.length ?? 1;
              final currentIndex = state.questionIndex;

              return LinearProgressIndicator(
                value: (currentIndex + 1) / totalQuestions,
                borderRadius: BorderRadius.circular(RADIUS),
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                minHeight: 5,
              );
            },
          ),
        ),
      ),

      body: BlocConsumer<QuizBloc, QuizState>(
        listener: (context, state) {
          if (state.state.isError) {
            showCustomSnackBar(
              context,
              message: state.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, state) {
          if (state.selectedQuiz == null) {
            return Center(
              child: Text(
                "No Quiz Selected",
                style: textTheme.titleLarge?.copyWith(fontSize: 20),
              ),
            );
          }
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: QueWidget(
                    queNumber: state.questionIndex + 1,
                    question:
                        state
                            .selectedQuiz
                            ?.questions?[state.questionIndex]
                            .question ??
                        "What is the capital of France?",
                    options:
                        state
                            .selectedQuiz
                            ?.questions?[state.questionIndex]
                            .options ??
                        ['Berlin', 'Madrid', 'Paris', 'Rome'],
                    correctAnswer: state.isAnswered == false
                        ? ""
                        : state
                                  .selectedQuiz
                                  ?.questions?[state.questionIndex]
                                  .correctAnswer ??
                              '',
                    isMultipleAnswer: false,
                    isAnswered: state.isAnswered,
                    isLoading: state.state.isLoading,
                    selectedAnswer: state.selectedAnswer,

                    onAnswerSelect: (answer) {
                      context.read<QuizBloc>().add(
                        QuizEvent.selectedAnswer(answer: answer),
                      );
                    },
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 25,
                ),

                child: Row(
                  children: [
                    // if (state.questionIndex > 0)
                    CustomElevatedButton(
                      width: 60,
                      height: 45,

                      onTap: () {
                        if (state.questionIndex > 0) {
                          context.read<QuizBloc>().add(
                            QuizEvent.previousQuestion(),
                          );
                        } else {
                          Navigator.pop(context);
                        }
                      },

                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                    30.wx,
                    Expanded(
                      child: CustomElevatedButton(
                        isLoading: state.state.isLoading,
                        onTap: () {
                          if (state.isAnswered) {
                            if (state.questionIndex + 1 ==
                                state.selectedQuiz?.questions?.length) {
                              showCommonAdaptiveDialog(
                                context: context,
                                title: "Quiz Completed",
                                content:
                                    "Congratulations! You’ve successfully completed the quiz! ",
                                cancelText: "Close",
                                confirmText: "Go Back",
                                onConfirm: () {
                                  Navigator.pop(context);
                                },
                              );
                            }
                            context.read<QuizBloc>().add(
                              QuizEvent.nextQuestion(),
                            );
                          } else {
                            context.read<QuizBloc>().add(
                              QuizEvent.checkAnswer(
                                answer: state.selectedAnswer ?? '',
                              ),
                            );
                          }
                        },
                        label: state.isAnswered
                            ? "Next Question"
                            : "Check Answer",

                        labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
