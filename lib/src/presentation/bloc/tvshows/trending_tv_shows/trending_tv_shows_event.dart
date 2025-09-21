part of 'trending_tv_shows_bloc.dart';

@freezed
class TrendingTvShowsEvent with _$TrendingTvShowsEvent {
  // Initial Evenet
  const factory TrendingTvShowsEvent.initial() = _Initial;

  // Fetch Trending Movies Event
  const factory TrendingTvShowsEvent.fetchTrendingTvShows() =
      _FetchTrendingTvShows;

  // Change Trending By Event and fetch new trending tv shows
  const factory TrendingTvShowsEvent.changeTrendingBy({
    required TrendingBy trendingBy,
  }) = _ChangeTrendingBy;
}
