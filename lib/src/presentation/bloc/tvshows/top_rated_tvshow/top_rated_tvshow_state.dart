part of 'top_rated_tvshow_bloc.dart';

@freezed
class TopRatedTvshowState with _$TopRatedTvshowState {
  const factory TopRatedTvshowState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> topRatedTvShow,
    required int pageNumber,
  }) = _TopRatedTvshowState;

  factory TopRatedTvshowState.initial() {
    return TopRatedTvshowState(
      state: RequestState.initial,
      message: '',
      topRatedTvShow: [],
      pageNumber: 1,
    );
  }
}
