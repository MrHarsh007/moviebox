part of 'trending_tv_shows_bloc.dart';

@freezed
class TrendingTvShowsState with _$TrendingTvShowsState {
  const factory TrendingTvShowsState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> trendingTvShows,
    required TrendingBy trendingBy,
    required int numberOfTrendingTvShows,
  }) = _TrendingTvShowsState;

  factory TrendingTvShowsState.initial() {
    final TrendingBy initialTrendingBy =
        SharedPreferenceHelper().getdata(
              LocalStorageConstants.trendingTvShowsTimeWindow,
            ) ==
            TrendingBy.day.name
        ? TrendingBy.day
        : TrendingBy.week;
    return TrendingTvShowsState(
      state: RequestState.initial,
      message: '',
      trendingTvShows: [],
      trendingBy: initialTrendingBy,
      numberOfTrendingTvShows: 10,
    );
  }
}
