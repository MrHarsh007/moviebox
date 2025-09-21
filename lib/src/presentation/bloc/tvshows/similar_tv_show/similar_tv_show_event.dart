part of 'similar_tv_show_bloc.dart';

@freezed
class SimilarTvShowEvent with _$SimilarTvShowEvent {
  // Intial
  const factory SimilarTvShowEvent.initial() = _Initial;

  // Fetch Similar TV Shows
  const factory SimilarTvShowEvent.fetchSimilarTvShows({
    required int tvShowId,
    @Default(false) bool isLoadingMore,
    int? pageNumber,
  }) = _FetchSimilarTvShows;

  // Increment Page Number
  const factory SimilarTvShowEvent.incrementPageNumber() = _IncrementPageNumber;
}
