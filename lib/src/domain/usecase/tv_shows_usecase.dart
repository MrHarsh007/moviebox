import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_season_model.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/repository/tv_show_repository.dart';

import '../../core/exception/failure.dart';

@injectable
class TvShowsUsecase {
  TvShowsUsecase(this._repository);
  final TvShowRepository _repository;

  Future<Either<Failure, TvShowModel?>> getTrendingTvShows({
    required TrendingBy trendingBy,
  }) async {
    return _repository.getTrendingTvShows(trendingBy: trendingBy);
  }

  Future<Either<Failure, TvShowModel?>> getAiringTodayTvShows({
    required int pageNumber,
  }) async {
    return _repository.getAiringTodayTvShows(pageNumber: pageNumber);
  }

  Future<Either<Failure, TvShowModel?>> getOnTheAirTvShows({
    required int pageNumber,
  }) async {
    return _repository.getOnTheAirTvShows(pageNumber: pageNumber);
  }

  Future<Either<Failure, TvShowModel?>> getPopularTvShows({
    required int pageNumber,
  }) async {
    return _repository.getPopularTvShows(pageNumber: pageNumber);
  }

  Future<Either<Failure, TvShowModel?>> getTopRatedTvShows({
    required int pageNumber,
  }) async {
    return _repository.getTopRatedTvShows(pageNumber: pageNumber);
  }

  Future<Either<Failure, TvShowDetailsModel?>> getTvShowDetails({
    required int tvShowId,
  }) async {
    return _repository.getTvShowDetails(tvShowId: tvShowId);
  }

  Future<Either<Failure, VideosModel?>> getTvShowVideos({
    required int tvShowId,
  }) async {
    return _repository.getTvShowVideos(tvShowId: tvShowId);
  }

  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int tvShowId,
  }) async {
    return _repository.getCastAndCrew(tvShowId: tvShowId);
  }

  Future<Either<Failure, TvShowModel?>> getSimilarTvShows({
    required int tvShowId,
    required int pageNumber,
  }) async {
    return _repository.getSimilarTvShows(
      tvShowId: tvShowId,
      pageNumber: pageNumber,
    );
  }

  Future<Either<Failure, TvShowModel?>> getRecommendedTvShows({
    required int tvShowId,
    required int pageNumber,
  }) async {
    return _repository.getRecommendedTvShows(
      tvShowId: tvShowId,
      pageNumber: pageNumber,
    );
  }

  Future<Either<Failure, TvShowSeasonDetailsModel?>> getTvShowSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  }) async {
    return _repository.getTvShowSeasonDetails(
      tvShowId: tvShowId,
      seasonNumber: seasonNumber,
    );
  }
}
