import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/datasource/movies_datasource.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/domain/entity/movies_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/repository/movies_repository.dart';

import '../../core/exception/error_handler.dart';
import '../../core/exception/failure.dart' show Failure;

@LazySingleton(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  MovieRepositoryImpl(this.dataSource);
  final MoviesDatasource dataSource;

  @override
  Future<Either<Failure, MovieModel?>> getTrendingMovies({
    required TrendingBy trendingBy,
  }) {
    return handleErrors(
      () => dataSource.getTrendingMovies(trendingBy: trendingBy),
    );
  }

  @override
  Future<Either<Failure, MovieModel?>> getPopularMovies({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getPopularMovies(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, MovieModel?>> getTopRatedMovies({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getTopRatedMovies(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, MovieModel?>> getUpcomingMovies({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getUpcomingMovies(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, MovieModel?>> getNowPlayingMovies({
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getNowPlayingMovies(pageNumber: pageNumber),
    );
  }

  @override
  Future<Either<Failure, MovieDetailsModel?>> getMovieDetails({
    required int movieId,
  }) {
    return handleErrors(() => dataSource.getMovieDetails(movieId: movieId));
  }

  @override
  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int movieId,
  }) {
    return handleErrors(() => dataSource.getCastAndCrew(movieId: movieId));
  }

  @override
  Future<Either<Failure, VideosModel?>> getMovieVideos({required int movieId}) {
    return handleErrors(() => dataSource.getMovieVideos(movieId: movieId));
  }

  @override
  Future<Either<Failure, MovieModel?>> getRecommendedMovies({
    required int movieId,
    required int pageNumber,
  }) {
    return handleErrors(
      () => dataSource.getRecommendedMovies(
        movieId: movieId,
        pageNumber: pageNumber,
      ),
    );
  }

  @override
  Future<Either<Failure, MovieModel?>> getSimilarMovies({
    required int movieId,
    required int pageNumber,
  }) {
    return handleErrors(
      () =>
          dataSource.getSimilarMovies(movieId: movieId, pageNumber: pageNumber),
    );
  }
}
