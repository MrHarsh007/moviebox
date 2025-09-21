import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/exception/failure.dart';
import 'package:moviesbox/src/data/datasource/quiz_datasource.dart';
import 'package:moviesbox/src/domain/entity/quiz_model.dart';
import 'package:moviesbox/src/domain/repository/quiz_respository.dart';
import '../../core/exception/error_handler.dart';

@LazySingleton(as: QuizRepository)
class TvShowsRepositoryImpl extends QuizRepository {
  TvShowsRepositoryImpl(this.dataSource);
  final QuizDatasource dataSource;

  @override
  Future<Either<Failure, List<QuizModel>>> getQuizQuestions() {
    return handleErrors(() => dataSource.getQuizQuestions());
  }
}
