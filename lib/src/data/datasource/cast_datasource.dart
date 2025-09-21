import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/api/api_path.dart';
import 'package:moviesbox/src/core/api/basedatacenter.dart';
import 'package:moviesbox/src/domain/entity/credit_person_model.dart';
import 'package:moviesbox/src/domain/entity/movie_from_credit.dart';

abstract class CastDatasource {
  Future<CreditPersonModel?> getCreditDetails({required int personId});

  // Fetch Movies from Cast
  Future<CombineCreditFromPerson?> getMoviesTvShowFromCast({
    required int personId,
  });
}

@LazySingleton(as: CastDatasource)
class CastDatasourceImpl extends Basedatacenter implements CastDatasource {
  @override
  Future<CreditPersonModel?> getCreditDetails({required int personId}) async {
    try {
      final response = await dio.get(ApiPath.personDetails(personId));

      return CreditPersonModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<CombineCreditFromPerson?> getMoviesTvShowFromCast({
    required int personId,
  }) async {
    try {
      final response = await dio.get(ApiPath.personCombinedCredits(personId));
      return CombineCreditFromPerson.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
