import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/data/datasource/cast_datasource.dart';
import 'package:moviesbox/src/domain/entity/credit_person_model.dart';
import 'package:moviesbox/src/domain/entity/movie_from_credit.dart';
import 'package:moviesbox/src/domain/repository/cast_repository.dart';

import '../../core/exception/error_handler.dart';
import '../../core/exception/failure.dart' show Failure;

@LazySingleton(as: CastRepository)
class CastRepositoryImpl extends CastRepository {
  CastRepositoryImpl(this.dataSource);
  final CastDatasource dataSource;

  @override
  Future<Either<Failure, CreditPersonModel?>> getCreditDetails({
    required int personId,
  }) {
    return handleErrors(() => dataSource.getCreditDetails(personId: personId));
  }

  @override
  Future<Either<Failure, CombineCreditFromPerson?>> getMoviesTvShowFromCast({
    required int personId,
  }) {
    return handleErrors(
      () => dataSource.getMoviesTvShowFromCast(personId: personId),
    );
  }
}
