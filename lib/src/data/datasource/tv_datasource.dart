import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/api/api_path.dart';
import 'package:moviesbox/src/core/api/basedatacenter.dart';
import 'package:moviesbox/src/core/constant/local_storage_constants.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/tv_shows_database.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_season_model.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';

abstract class TvShowsDatasource {
  Future<TvShowModel?> getTrendingTvShows({required TrendingBy trendingBy});

  // Get Airing Today TV Shows
  Future<TvShowModel?> getAiringTodayTvShows({required int pageNumber});

  // Get On The Air TV Shows
  Future<TvShowModel?> getOnTheAirTvShows({required int pageNumber});

  // Get Popular TV Shows
  Future<TvShowModel?> getPopularTvShows({required int pageNumber});

  // Get Top Rated TV Shows
  Future<TvShowModel?> getTopRatedTvShows({required int pageNumber});

  // Fetch Show Details
  Future<TvShowDetailsModel?> getTvShowDetails({required int tvShowId});

  // Fetch Youtube Youtube Videos
  Future<VideosModel?> getTvShowVideos({required int tvShowId});

  // Fetch Cast and Crew
  Future<MovieCastCreditModel?> getCastAndCrew({required int tvShowId});

  // Fetch Similar TV Shows
  Future<TvShowModel?> getSimilarTvShows({
    required int tvShowId,
    required int pageNumber,
  });

  // Fetch Recommended TV Shows
  Future<TvShowModel?> getRecommendedTvShows({
    required int tvShowId,
    required int pageNumber,
  });

  // Get Season Details
  Future<TvShowSeasonDetailsModel?> getTvShowSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  });
}

@LazySingleton(as: TvShowsDatasource)
class TvShowsDatasourceImpl extends Basedatacenter
    implements TvShowsDatasource {
  final tvDb = TvShowsDatabase();

  @override
  Future<TvShowModel?> getTrendingTvShows({
    required TrendingBy trendingBy,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.trendingTVShows(trendBy: trendingBy),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      tvDb.insertTvShows(
        shows: tvShow.results ?? [],
        tableName: LocalStorageConstants.trendingTvShowsTableName,
        isDeleteOld: true,
      );
      return tvShow;
    } catch (e) {
      List<TvShowsResult> localTvShows = await tvDb.getStoredTvShows(
        tableName: LocalStorageConstants.trendingTvShowsTableName,
      );
      if (localTvShows.isNotEmpty) {
        return TvShowModel(results: localTvShows);
      }
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getAiringTodayTvShows({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.airingTodayTvShows(pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      tvDb.insertTvShows(
        shows: tvShow.results ?? [],
        tableName: LocalStorageConstants.airingTodayTvShowsTableName,
        isDeleteOld: true,
      );
      return tvShow;
    } catch (e) {
      List<TvShowsResult> localTvShows = await tvDb.getStoredTvShows(
        tableName: LocalStorageConstants.airingTodayTvShowsTableName,
      );
      if (localTvShows.isNotEmpty) {
        return TvShowModel(results: localTvShows);
      }
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getOnTheAirTvShows({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.onTheAirTvShows(pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      tvDb.insertTvShows(
        shows: tvShow.results ?? [],
        tableName: LocalStorageConstants.onTheAirTvShowsTableName,
        isDeleteOld: true,
      );
      return tvShow;
    } catch (e) {
      List<TvShowsResult> localTvShows = await tvDb.getStoredTvShows(
        tableName: LocalStorageConstants.onTheAirTvShowsTableName,
      );
      if (localTvShows.isNotEmpty) {
        return TvShowModel(results: localTvShows);
      }
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getPopularTvShows({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.popularTvShows(pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      tvDb.insertTvShows(
        shows: tvShow.results ?? [],
        tableName: LocalStorageConstants.popularTvShowsTableName,
        isDeleteOld: true,
      );
      return tvShow;
    } catch (e) {
      List<TvShowsResult> localTvShows = await tvDb.getStoredTvShows(
        tableName: LocalStorageConstants.popularTvShowsTableName,
      );
      if (localTvShows.isNotEmpty) {
        return TvShowModel(results: localTvShows);
      }
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getTopRatedTvShows({required int pageNumber}) async {
    try {
      var response = await dio.get(
        ApiPath.topRatedTvShows(pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      tvDb.insertTvShows(
        shows: tvShow.results ?? [],
        tableName: LocalStorageConstants.topRatedTvShowsTableName,
        isDeleteOld: true,
      );
      return tvShow;
    } catch (e) {
      List<TvShowsResult> localTvShows = await tvDb.getStoredTvShows(
        tableName: LocalStorageConstants.topRatedTvShowsTableName,
      );
      if (localTvShows.isNotEmpty) {
        return TvShowModel(results: localTvShows);
      }
      rethrow;
    }
  }

  @override
  Future<TvShowDetailsModel?> getTvShowDetails({required int tvShowId}) async {
    try {
      var response = await dio.get(ApiPath.tvShowDetails(tvShowId));
      final tvShowDetails = TvShowDetailsModel.fromJson(response.data);
      return tvShowDetails;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<VideosModel?> getTvShowVideos({required int tvShowId}) async {
    try {
      var response = await dio.get(ApiPath.tvShowVideos(tvShowId));
      final videos = VideosModel.fromJson(response.data);
      return videos;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MovieCastCreditModel?> getCastAndCrew({required int tvShowId}) async {
    try {
      var response = await dio.get(ApiPath.tvShowCredits(tvShowId));
      final castAndCrew = MovieCastCreditModel.fromJson(response.data);
      return castAndCrew;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getRecommendedTvShows({
    required int tvShowId,
    required int pageNumber,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.tvShowRecommendations(tvShowId, pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      return tvShow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TvShowModel?> getSimilarTvShows({
    required int tvShowId,
    required int pageNumber,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.similarTvShows(tvShowId, pageNumber: pageNumber),
      );
      final tvShow = TvShowModel.fromJson(response.data);
      return tvShow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TvShowSeasonDetailsModel?> getTvShowSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  }) async {
    try {
      var response = await dio.get(
        ApiPath.tvShowSeasonDetails(tvShowId, seasonNumber),
      );
      final tvShowSeasonDetails = TvShowSeasonDetailsModel.fromJson(
        response.data,
      );
      return tvShowSeasonDetails;
    } catch (e) {
      rethrow;
    }
  }
}
