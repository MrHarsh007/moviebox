import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/api/api_path.dart';
import 'package:moviesbox/src/core/api/basedatacenter.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/movies_database.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';

abstract class MoviesDatasource {
  Future<MovieModel?> getTrendingMovies({required TrendingBy trendingBy});

  Future<MovieModel?> getPopularMovies({required int pageNumber});

  Future<MovieModel?> getTopRatedMovies({required int pageNumber});

  Future<MovieModel?> getUpcomingMovies({required int pageNumber});

  Future<MovieModel?> getNowPlayingMovies({required int pageNumber});

  Future<MovieDetailsModel?> getMovieDetails({required int movieId});

  // Fetch Cast and Crew
  Future<MovieCastCreditModel?> getCastAndCrew({required int movieId});

  // Fetch Videos
  Future<VideosModel?> getMovieVideos({required int movieId});

  // Fetch Similar Movies
  Future<MovieModel?> getSimilarMovies({
    required int movieId,
    required int pageNumber,
  });

  // Fetch Recommendations
  Future<MovieModel?> getRecommendedMovies({
    required int movieId,
    required int pageNumber,
  });
}

@LazySingleton(as: MoviesDatasource)
class MoviesDatasourceImpl extends Basedatacenter implements MoviesDatasource {
  final db = MoviesDatabase();

  @override
  Future<MovieModel?> getTrendingMovies({
    required TrendingBy trendingBy,
  }) async {
    try {
      var response = await dio.get(ApiPath.trendingMovies(trendBy: trendingBy));
      final movieModel = MovieModel.fromJson(response.data);
      await db.insertMovies(
        movies: movieModel.results ?? [],
        tableName: LocalStorageConstants.trendingMoviesTableName,
        isDeleteOld: true,
      );
      return movieModel;
    } catch (e) {
      List<MovieResult> localMovies = await db.getMovies(
        tableName: LocalStorageConstants.trendingMoviesTableName,
      );
      if (localMovies.isNotEmpty) {
        return MovieModel(results: localMovies);
      }
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getNowPlayingMovies({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.nowPlayingMovies(pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      await db.insertMovies(
        movies: movieModel.results ?? [],
        tableName: LocalStorageConstants.nowPlayingMoviesTableName,
      );
      return movieModel;
    } catch (e) {
      List<MovieResult> localMovies = await db.getMovies(
        tableName: LocalStorageConstants.nowPlayingMoviesTableName,
      );
      if (localMovies.isNotEmpty) {
        return MovieModel(results: localMovies);
      }
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getPopularMovies({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.popularMovies(pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      db.insertMovies(
        movies: movieModel.results ?? [],
        tableName: LocalStorageConstants.popularMoviesTableName,
      );
      return movieModel;
    } catch (e) {
      List<MovieResult> localMovies = await db.getMovies(
        tableName: LocalStorageConstants.popularMoviesTableName,
      );
      if (localMovies.isNotEmpty) {
        return Future.value(MovieModel(results: localMovies));
      }
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getTopRatedMovies({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.topRatedMovies(pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      db.insertMovies(
        movies: movieModel.results ?? [],
        tableName: LocalStorageConstants.topRatedMoviesTableName,
      );
      return movieModel;
    } catch (e) {
      List<MovieResult> localMovies = await db.getMovies(
        tableName: LocalStorageConstants.topRatedMoviesTableName,
      );
      if (localMovies.isNotEmpty) {
        return Future.value(MovieModel(results: localMovies));
      }
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getUpcomingMovies({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.upcomingMovies(pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      db.insertMovies(
        movies: movieModel.results ?? [],
        tableName: LocalStorageConstants.upcomingMoviesTableName,
      );
      return movieModel;
    } catch (e) {
      List<MovieResult> localMovies = await db.getMovies(
        tableName: LocalStorageConstants.upcomingMoviesTableName,
      );
      if (localMovies.isNotEmpty) {
        return Future.value(MovieModel(results: localMovies));
      }
      rethrow;
    }
  }

  @override
  Future<MovieDetailsModel?> getMovieDetails({required int movieId}) async {
    try {
      var response = await dio.get(ApiPath.movieDetails(movieId));
      final movieDetailsModel = MovieDetailsModel.fromJson(response.data);
      return movieDetailsModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MovieCastCreditModel?> getCastAndCrew({required int movieId}) async {
    try {
      var response = await dio.get(ApiPath.movieCredits(movieId));
      final castModel = MovieCastCreditModel.fromJson(response.data);
      return castModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VideosModel?> getMovieVideos({required int movieId}) async {
    try {
      var response = await dio.get(ApiPath.movieVideos(movieId));
      final videosModel = VideosModel.fromJson(response.data);
      return videosModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getRecommendedMovies({
    required int movieId,
    required int pageNumber,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.movieRecommendations(movieId, pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      return movieModel;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MovieModel?> getSimilarMovies({
    required int movieId,
    required int pageNumber,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.similarMovies(movieId, pageNumber: pageNumber),
      );
      final movieModel = MovieModel.fromJson(response.data);
      return movieModel;
    } catch (e) {
      rethrow;
    }
  }
}
