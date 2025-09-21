part of 'recommended_tv_show_bloc.dart';

@freezed
class RecommendedTvShowState with _$RecommendedTvShowState {
  const factory RecommendedTvShowState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> recommendedTvShows,
    required int pageNumber,
    required int tvShowId,
  }) = _RecommendedTvShowState;

  factory RecommendedTvShowState.initial() {
    return RecommendedTvShowState(
      state: RequestState.initial,
      message: '',
      recommendedTvShows: [],
      pageNumber: 1,
      tvShowId: 0,
    );
  }
}
