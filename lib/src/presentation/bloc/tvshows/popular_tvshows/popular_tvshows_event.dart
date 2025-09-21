part of 'popular_tvshows_bloc.dart';

@freezed
class PopularTvshowsEvent with _$PopularTvshowsEvent {
  // Intial
  const factory PopularTvshowsEvent.initial() = _Initial;

  // Fetch Popular TV Shows
  const factory PopularTvshowsEvent.fetchPopularTvShows({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchPopularTvshows;

  // Change Page Number and Fetch more Popular TV Shows
  const factory PopularTvshowsEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
