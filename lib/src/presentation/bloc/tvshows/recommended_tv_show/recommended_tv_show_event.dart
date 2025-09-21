part of 'recommended_tv_show_bloc.dart';

@freezed
class RecommendedTvShowEvent with _$RecommendedTvShowEvent {
  // Intial
  const factory RecommendedTvShowEvent.initial() = _Initial;

  // Fetch Recommended TV Shows
  const factory RecommendedTvShowEvent.fetchRecommendedTvShows({
    required int tvShowId,
    @Default(false) bool isLoadingMore,
    int? pageNumber,
  }) = _FetchRecommendedTvShows;

  // Increment Page Number
  const factory RecommendedTvShowEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
