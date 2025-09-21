import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/api/basedatacenter.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';

abstract class QuizDatasource {
  Future<List<QuizModel>> getQuizQuestions();
}

@LazySingleton(as: QuizDatasource)
class QuizDatasourceImpl extends Basedatacenter implements QuizDatasource {
  final firestore = FirebaseFirestore.instance;

  @override
  Future<List<QuizModel>> getQuizQuestions() async {
    try {
      final quizzes = await fetchAllQuizzes(firestore);
      return quizzes;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<QuizModel>> fetchAllQuizzes(FirebaseFirestore firestore) async {
    List<QuizModel> quizzes = [];

    final quizSnapshot = await firestore.collection('quiz').get();

    for (final quizDoc in quizSnapshot.docs) {
      final quizData = quizDoc.data();

      // Fetch questions subcollection
      final questionsSnapshot = await quizDoc.reference
          .collection('questions')
          .get();

      List<QuestionModel> questions = questionsSnapshot.docs
          .map((q) => QuestionModel.fromFirestore(q.data()))
          .toList();

      // Create QuizModel with questions
      final quizModel = QuizModel.fromFirestore(quizData, questions);

      quizzes.add(quizModel);
    }

    return quizzes;
  }
}
