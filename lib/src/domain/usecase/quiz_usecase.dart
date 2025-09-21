import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';
import 'package:moviesbox/src/domain/repository/quiz_respository.dart';

import '../../core/exception/failure.dart';

@injectable
class QuizUsecase {
  QuizUsecase(this._repository);
  final QuizRepository _repository;

  Future<Either<Failure, List<QuizModel>>> getQuizQuestions() async {
    return _repository.getQuizQuestions();
  }
}
