import 'package:moviesbox/src/core/enums/custom_enums.dart';

class ApiPath {
  /// Trending movies: /trending/movie/day or /trending/movie/week
  static String trendingMovies({required TrendingBy trendBy}) {
    return '/trending/movie/${trendBy.isDay ? "day" : "week"}';
  }

  /// Trending TV shows: /trending/tv/day or /trending/tv/week
  static String trendingTVShows({required TrendingBy trendBy}) {
    return '/trending/tv/${trendBy.isDay ? "day" : "week"}';
  }

  /// Popular movies: /movie/popular
  static String popularMovies({required int pageNumber}) =>
      '/movie/popular?page=$pageNumber';

  /// Top-rated movies: /movie/top_rated
  static String topRatedMovies({required int pageNumber}) =>
      '/movie/top_rated?page=$pageNumber';

  /// Upcoming movies: /movie/upcoming
  static String upcomingMovies({required int pageNumber}) =>
      '/movie/upcoming?page=$pageNumber';

  /// Now playing movies: /movie/now_playing
  static String nowPlayingMovies({required int pageNumber}) =>
      '/movie/now_playing?page=$pageNumber';

  /// Movie details: /movie/{movieId}
  static String movieDetails(int movieId) => '/movie/$movieId';

  // Credits for a movie: /movie/{movieId}/credits
  static String movieCredits(int movieId) => '/movie/$movieId/credits';

  // Videos for a movie: /movie/{movieId}/videos
  static String movieVideos(int movieId) => '/movie/$movieId/videos';

  // Similar movies: /movie/{movieId}/similar
  static String similarMovies(int movieId, {required int pageNumber}) =>
      '/movie/$movieId/similar?page=$pageNumber';

  // Recommendations for a movie: /movie/{movieId}/recommendations
  static String movieRecommendations(int movieId, {required int pageNumber}) =>
      '/movie/$movieId/recommendations?page=$pageNumber';

  // Person Details: /person/{personId}
  static String personDetails(int personId) => '/person/$personId';

  // Similar Movies and Tv Shows Combined: /person/{personId}/combined_credits
  static String personCombinedCredits(int personId) =>
      '/person/$personId/combined_credits';

  // Airing today TV shows: /tv/airing_today
  static String airingTodayTvShows({required int pageNumber}) =>
      '/tv/airing_today?page=$pageNumber';

  // On the air TV shows: /tv/on_the_air
  static String onTheAirTvShows({required int pageNumber}) =>
      '/tv/on_the_air?page=$pageNumber';

  // Popular TV shows: /tv/popular
  static String popularTvShows({required int pageNumber}) =>
      '/tv/popular?page=$pageNumber';

  // Top-rated TV shows: /tv/top_rated
  static String topRatedTvShows({required int pageNumber}) =>
      '/tv/top_rated?page=$pageNumber';

  // TV show details: /tv/{tvShowId}
  static String tvShowDetails(int tvShowId) => '/tv/$tvShowId';

  // Credits for a TV show: /tv/{tvShowId}/credits
  static String tvShowCredits(int tvShowId) => '/tv/$tvShowId/credits';

  // Videos for a TV show: /tv/{tvShowId}/videos
  static String tvShowVideos(int tvShowId) => '/tv/$tvShowId/videos';

  // Similar TV shows: /tv/{tvShowId}/similar
  static String similarTvShows(int tvShowId, {required int pageNumber}) =>
      '/tv/$tvShowId/similar?page=$pageNumber';

  // Recommendations for a TV show: /tv/{tvShowId}/recommendations
  static String tvShowRecommendations(
    int tvShowId, {
    required int pageNumber,
  }) => '/tv/$tvShowId/recommendations?page=$pageNumber';

  // Season details: /tv/{tvShowId}/season/{seasonNumber}
  static String tvShowSeasonDetails(int tvShowId, int seasonNumber) =>
      '/tv/$tvShowId/season/$seasonNumber';
}
