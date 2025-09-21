import 'package:dartz/dartz.dart';
import 'package:moviesbox/src/core/exception/failure.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<QuizModel>>> getQuizQuestions();
}
