part of 'top_rated_tvshow_bloc.dart';

@freezed
class TopRatedTvshowEvent with _$TopRatedTvshowEvent {
  // Intial
  const factory TopRatedTvshowEvent.initial() = _Initial;

  // Fetch Top Rated TV Shows
  const factory TopRatedTvshowEvent.fetchTopRatedTvShows({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchTopRatedTvshows;

  // Change Page Number and Fetch more Top Rated TV Shows
  const factory TopRatedTvshowEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
