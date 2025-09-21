import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';
import 'package:moviesbox/src/presentation/ads/banner_ads_widget.dart';
import 'package:moviesbox/src/presentation/bloc/quiz/quiz_bloc.dart';
import 'dart:async';

import 'package:moviesbox/src/utilities/go_router_init.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  void initState() {
    super.initState();
    context.read<QuizBloc>().add(QuizEvent.fetchQuizQuestions());
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(' Quiz', style: textTheme.headlineSmall),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      bottomNavigationBar: BannerAdWidget(),

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
          return Skeletonizer(
            enabled: state.state.isLoading,
            child: RefreshIndicator.adaptive(
              onRefresh: () {
                context.read<QuizBloc>().add(QuizEvent.fetchQuizQuestions());
                return Future.value();
              },
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: state.state.isLoading ? 5 : state.allQuizes.length,
                itemBuilder: (context, index) {
                  final quiz = state.state.isLoading
                      ? QuizModel(
                          title: "Loading...",
                          description: "Please wait...",
                          type: "general",
                          questions: [],
                          createdAt: 0,
                        )
                      : state.allQuizes[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 16.0,
                    ),
                    margin: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(RADIUS),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(_getIconData(quiz.type ?? "")),
                      title: Text(
                        quiz.title ?? "",
                        style: textTheme.titleLarge,
                      ),
                      subtitle: Text(
                        quiz.description ?? "",
                        style: textTheme.bodyMedium,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        context.read<QuizBloc>().add(
                          QuizEvent.selectedQuiz(selectedQuestion: quiz),
                        );

                        goWithInterstitialAd(context, AppRoutes.queAnswersName);

                        // GoRouter.of(
                        //   context,
                        // ).pushNamed(AppRoutes.queAnswersName);
                      },
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      backgroundColor: Color(0XFF010100),
    );
  }

  // Switch function which returns icondata based on string type
  IconData _getIconData(String type) {
    switch (type.toLowerCase()) {
      case "entertainment":
        return EvaIcons.filmOutline;
      case "history":
        return EvaIcons.bookOutline;
      case "science":
        return Icons.device_hub;
      case "technology":
        return EvaIcons.monitorOutline;
      case "general":
        return EvaIcons.globe;
      default:
        return EvaIcons.questionMarkCircleOutline;
    }
  }
}
