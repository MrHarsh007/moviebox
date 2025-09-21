part of 'tv_show_details_bloc.dart';

@freezed
class TvShowDetailsState with _$TvShowDetailsState {
  const factory TvShowDetailsState({
    required RequestState state,
    required String message,
    required TvShowDetailsModel? tvShowDetails,
    required List<VideoResult> youtubeVideos,
    required MovieCastCreditModel? castAndCrew,
    required int tvShowId,
    required bool isWatchlist,
    required bool isLiked,
  }) = _TvShowDetailsState;

  factory TvShowDetailsState.initial() {
    return TvShowDetailsState(
      state: RequestState.initial,
      message: '',
      tvShowDetails: null,
      youtubeVideos: [],
      castAndCrew: null,
      tvShowId: 0,
      isWatchlist: false,
      isLiked: false,
    );
  }
}
