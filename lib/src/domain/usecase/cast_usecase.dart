import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/domain/entity/credit_person_model.dart';
import 'package:moviesbox/src/domain/entity/movie_from_credit.dart';
import 'package:moviesbox/src/domain/repository/cast_repository.dart';
import '../../core/exception/failure.dart';

@injectable
class CastUsecase {
  CastUsecase(this._repository);
  final CastRepository _repository;

  Future<Either<Failure, CreditPersonModel?>> getCreditDetails({
    required int personId,
  }) async {
    return _repository.getCreditDetails(personId: personId);
  }

  Future<Either<Failure, CombineCreditFromPerson?>> getMoviesTvShowFromCast({
    required int personId,
  }) async {
    return _repository.getMoviesTvShowFromCast(personId: personId);
  }
}
