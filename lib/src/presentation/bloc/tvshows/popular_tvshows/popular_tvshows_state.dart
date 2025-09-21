part of 'popular_tvshows_bloc.dart';

@freezed
class PopularTvshowsState with _$PopularTvshowsState {
  const factory PopularTvshowsState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> popularTvShows,
    required int pageNumber,
  }) = _PopularTvshowsState;

  factory PopularTvshowsState.initial() {
    return PopularTvshowsState(
      state: RequestState.initial,
      message: '',
      popularTvShows: [],
      pageNumber: 1,
    );
  }
}
