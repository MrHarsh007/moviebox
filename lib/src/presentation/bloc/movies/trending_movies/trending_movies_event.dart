part of 'trending_movies_bloc.dart';

@freezed
class TrendingMoviesEvent with _$TrendingMoviesEvent {
  // Initial Evenet
  const factory TrendingMoviesEvent.initial() = _Initial;

  // Fetch Trending Movies Event
  const factory TrendingMoviesEvent.fetchTrendingMovies() =
      _FetchTrendingMovies;

  // Change Trending By Event and fetch new trending movies
  const factory TrendingMoviesEvent.changeTrendingBy({
    required TrendingBy trendingBy,
  }) = _ChangeTrendingBy;
}
