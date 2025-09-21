import 'package:dartz/dartz.dart';
import 'package:moviesbox/src/domain/entity/credit_person_model.dart';
import 'package:moviesbox/src/domain/entity/movie_from_credit.dart';
import 'package:moviesbox/src/core/exception/failure.dart';

abstract class CastRepository {
  Future<Either<Failure, CreditPersonModel?>> getCreditDetails({
    required int personId,
  });

  Future<Either<Failure, CombineCreditFromPerson?>> getMoviesTvShowFromCast({
    required int personId,
  });
}
