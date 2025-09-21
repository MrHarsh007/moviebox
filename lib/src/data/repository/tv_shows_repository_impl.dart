import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/core/exception/failure.dart';
import 'package:moviesbox/src/data/datasource/tv_datasource.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_season_model.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/repository/tv_show_repository.dart';
import '../../core/exception/error_handler.dart';

@LazySingleton(as: TvShowRepository)
class TvShowsRepositoryImpl extends TvShowRepository {
  TvShowsRepositoryImpl(this.dataSource);
  final TvShowsDatasource dataSource;

  @override
  Future<Either<Failure, TvShowModel?>> getTrendingTvShows({
    required TrendingBy trendingBy,
  }) {
    return handleErrors(
      () => dataSource.getTrendingTvShows(trendingBy: trendingBy),
    );
  }

  @override
  Future<Either<Failure, TvShowModel?>> getAiringTodayTvShows({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getAiringTodayTvShows(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, TvShowModel?>> getOnTheAirTvShows({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getOnTheAirTvShows(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, TvShowModel?>> getPopularTvShows({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getPopularTvShows(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, TvShowModel?>> getTopRatedTvShows({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getTopRatedTvShows(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, TvShowDetailsModel?>> getTvShowDetails({
    required int tvShowId,
  }) {
    return handleErrors(() => dataSource.getTvShowDetails(tvShowId: tvShowId));
  }

  @override
  Future<Either<Failure, VideosModel?>> getTvShowVideos({
    required int tvShowId,
  }) {
    return handleErrors(() => dataSource.getTvShowVideos(tvShowId: tvShowId));
  }

  @override
  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int tvShowId,
  }) {
    return handleErrors(() => dataSource.getCastAndCrew(tvShowId: tvShowId));
  }

  @override
  Future<Either<Failure, TvShowModel?>> getRecommendedTvShows({
    required int tvShowId,
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getRecommendedTvShows(
        tvShowId: tvShowId,
        pageNumber: pageNumber,
      ),
    );
  }

  @override
  Future<Either<Failure, TvShowModel?>> getSimilarTvShows({
    required int tvShowId,
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getSimilarTvShows(
        tvShowId: tvShowId,
        pageNumber: pageNumber,
      ),
    );
  }

  @override
  Future<Either<Failure, TvShowSeasonDetailsModel?>> getTvShowSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  }) {
    return handleErrors(
      () => dataSource.getTvShowSeasonDetails(
        tvShowId: tvShowId,
        seasonNumber: seasonNumber,
      ),
    );
  }
}
