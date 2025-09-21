enum RequestState {
  initial,
  loading,
  loadingMore,
  updating,
  error,
  loaded;

  bool get isInitial => this == RequestState.initial;
  bool get isLoading => this == RequestState.loading;
  bool get isLoadingMore => this == RequestState.loadingMore;
  bool get isUpdating => this == RequestState.updating;
  bool get isLoaded => this == RequestState.loaded;
  bool get isError => this == RequestState.error;
}

enum TrendingBy {
  day,
  week;

  bool get isDay => this == TrendingBy.day;
  bool get isWeek => this == TrendingBy.week;
}

enum MoviesEnum {
  popularMovies,
  topRatedMovies,
  upcomingMovies,
  nowPlayingMovies;

  bool get isPopular => this == MoviesEnum.popularMovies;
  bool get isTopRated => this == MoviesEnum.topRatedMovies;
  bool get isUpcoming => this == MoviesEnum.upcomingMovies;
  bool get isNowPlaying => this == MoviesEnum.nowPlayingMovies;
}

enum TvShowsEnum {
  airingTodayShows,
  onTheAirShows,
  popularTvShows,
  topRatedTvShows;

  bool get isAiringToday => this == TvShowsEnum.airingTodayShows;
  bool get isOnTheAir => this == TvShowsEnum.onTheAirShows;
  bool get isPopular => this == TvShowsEnum.popularTvShows;
  bool get isTopRated => this == TvShowsEnum.topRatedTvShows;
}
