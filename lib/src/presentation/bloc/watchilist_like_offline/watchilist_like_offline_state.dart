part of 'watchilist_like_offline_bloc.dart';

@freezed
class WatchilistLikeOfflineState with _$WatchilistLikeOfflineState {
  const factory WatchilistLikeOfflineState({
    required RequestState state,
    required String message,
    required List<SavedMovie> watchListMovies,
    required List<SavedMovie> watchListTvShows,
    required List<SavedMovie> likedMovies,
    required List<SavedMovie> likedTvShows,
    required bool isWatchlistMovie,
    required bool isLikedMovie,
  }) = _WatchilistLikeOfflineState;

  factory WatchilistLikeOfflineState.initial() {
    return WatchilistLikeOfflineState(
      state: RequestState.initial,
      message: '',
      watchListMovies: [],
      watchListTvShows: [],
      likedMovies: [],
      likedTvShows: [],
      isWatchlistMovie: true,
      isLikedMovie: true,
    );
  }
}
