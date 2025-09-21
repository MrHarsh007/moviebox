import 'package:dartz/dartz.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/core/exception/failure.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_season_model.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';

abstract class TvShowRepository {
  Future<Either<Failure, TvShowModel?>> getTrendingTvShows({
    required TrendingBy trendingBy,
  });

  Future<Either<Failure, TvShowModel?>> getAiringTodayTvShows({
    required int pageNumber,
  });

  Future<Either<Failure, TvShowModel?>> getOnTheAirTvShows({
    required int pageNumber,
  });

  Future<Either<Failure, TvShowModel?>> getPopularTvShows({
    required int pageNumber,
  });

  Future<Either<Failure, TvShowModel?>> getTopRatedTvShows({
    required int pageNumber,
  });

  Future<Either<Failure, TvShowDetailsModel?>> getTvShowDetails({
    required int tvShowId,
  });

  Future<Either<Failure, VideosModel?>> getTvShowVideos({
    required int tvShowId,
  });

  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int tvShowId,
  });

  Future<Either<Failure, TvShowModel?>> getSimilarTvShows({
    required int tvShowId,
    required int pageNumber,
  });

  Future<Either<Failure, TvShowModel?>> getRecommendedTvShows({
    required int tvShowId,
    required int pageNumber,
  });

  Future<Either<Failure, TvShowSeasonDetailsModel?>> getTvShowSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  });
}
