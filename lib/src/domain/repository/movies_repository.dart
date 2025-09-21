import 'package:dartz/dartz.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/domain/entity/movies_model.dart';
import 'package:moviesbox/src/core/exception/failure.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';

abstract class MovieRepository {
  Future<Either<Failure, MovieModel?>> getTrendingMovies({
    required TrendingBy trendingBy,
  });

  Future<Either<Failure, MovieModel?>> getPopularMovies({
    required int pageNumber,
  });

  Future<Either<Failure, MovieModel?>> getTopRatedMovies({
    required int pageNumber,
  });

  Future<Either<Failure, MovieModel?>> getUpcomingMovies({
    required int pageNumber,
  });

  Future<Either<Failure, MovieModel?>> getNowPlayingMovies({
    required int pageNumber,
  });

  Future<Either<Failure, MovieDetailsModel?>> getMovieDetails({
    required int movieId,
  });

  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int movieId,
  });

  Future<Either<Failure, VideosModel?>> getMovieVideos({required int movieId});

  Future<Either<Failure, MovieModel?>> getSimilarMovies({
    required int movieId,
    required int pageNumber,
  });

  Future<Either<Failure, MovieModel?>> getRecommendedMovies({
    required int movieId,
    required int pageNumber,
  });
}
