import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/domain/entity/movies_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/repository/movies_repository.dart';

import '../../core/exception/failure.dart';

@injectable
class MovieUsecase {
  MovieUsecase(this._repository);
  final MovieRepository _repository;

  Future<Either<Failure, MovieModel?>> getTrendingMovies({
    required TrendingBy trendingBy,
  }) async {
    return _repository.getTrendingMovies(trendingBy: trendingBy);
  }

  Future<Either<Failure, MovieModel?>> getPopularMovies({
    required int pageNumber,
  }) async {
    return _repository.getPopularMovies(pageNumber: pageNumber);
  }

  Future<Either<Failure, MovieModel?>> getTopRatedMovies({
    required int pageNumber,
  }) async {
    return _repository.getTopRatedMovies(pageNumber: pageNumber);
  }

  Future<Either<Failure, MovieModel?>> getUpcomingMovies({
    required int pageNumber,
  }) async {
    return _repository.getUpcomingMovies(pageNumber: pageNumber);
  }

  Future<Either<Failure, MovieModel?>> getNowPlayingMovies({
    required int pageNumber,
  }) async {
    return _repository.getNowPlayingMovies(pageNumber: pageNumber);
  }

  Future<Either<Failure, MovieDetailsModel?>> getMovieDetails({
    required int movieId,
  }) async {
    return _repository.getMovieDetails(movieId: movieId);
  }

  Future<Either<Failure, MovieCastCreditModel?>> getCastAndCrew({
    required int movieId,
  }) async {
    return _repository.getCastAndCrew(movieId: movieId);
  }

  Future<Either<Failure, VideosModel?>> getMovieVideos({
    required int movieId,
  }) async {
    return _repository.getMovieVideos(movieId: movieId);
  }

  Future<Either<Failure, MovieModel?>> getSimilarMovies({
    required int movieId,
    required int pageNumber,
  }) async {
    return _repository.getSimilarMovies(
      movieId: movieId,
      pageNumber: pageNumber,
    );
  }

  Future<Either<Failure, MovieModel?>> getRecommendedMovies({
    required int movieId,
    required int pageNumber,
  }) async {
    return _repository.getRecommendedMovies(
      movieId: movieId,
      pageNumber: pageNumber,
    );
  }
}
