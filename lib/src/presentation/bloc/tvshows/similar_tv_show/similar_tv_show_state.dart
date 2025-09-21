part of 'similar_tv_show_bloc.dart';

@freezed
class SimilarTvShowState with _$SimilarTvShowState {
  const factory SimilarTvShowState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> similiarTvShows,
    required int pageNumber,
    required int tvShowId,
  }) = _SimilarTvShowState;

  factory SimilarTvShowState.initial() {
    return SimilarTvShowState(
      state: RequestState.initial,
      message: '',
      similiarTvShows: [],
      pageNumber: 1,
      tvShowId: 0,
    );
  }
}
