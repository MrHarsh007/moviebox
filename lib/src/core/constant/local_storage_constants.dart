class LocalStorageConstants {
  LocalStorageConstants._privateConstructor();

  static final LocalStorageConstants instance =
      LocalStorageConstants._privateConstructor();

  // Key for storing is first time launch status
  static const String isFirstTimeLaunch = 'isFirstTimeLaunch';

  // Keys for storing user preferences for trending movies and TV shows "day" or "week"
  static const String trendingMoviesTimeWindow = 'trendingMoviesTimeWindow';
  static const String trendingTvShowsTimeWindow = 'trendingTvShowsTimeWindow';

  // Keys For Movies Local Storage
  static const String trendingMoviesTableName = "trending_movies_table";
  static const String nowPlayingMoviesTableName = "now_playing_movies_table";
  static const String popularMoviesTableName = "popular_movies_table";
  static const String topRatedMoviesTableName = "top_rated_movies_table";
  static const String upcomingMoviesTableName = "upcoming_movies_table";

  // Keys For TvShows Local Storage
  static const String trendingTvShowsTableName = "trending_tv_shows_table";
  static const String airingTodayTvShowsTableName =
      "airing_today_tv_shows_table";
  static const String onTheAirTvShowsTableName = "on_the_air_tv_shows_table";
  static const String popularTvShowsTableName = "popular_tv_shows_table";
  static const String topRatedTvShowsTableName = "top_rated_tv_shows_table";

  // Keys For Stroing Movies in Watchlist
  static const String watchlistMoviesTableName = "watchlist_movies_table";
  static const String watchlistTvShowsTableName = "watchlist_tv_shows_table";

  // Liked Movies and Tv Shows
  static const String likedMoviesTableName = "liked_movies_table";
  static const String likedTvShowsTableName = "liked_tv_shows_table";

  // Table for saved notes
  static const String savedNotesTableName = "notes";
}
