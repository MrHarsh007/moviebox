part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required RequestState state,
    required String message,
    required MovieDetailsModel? movieDetails,
    required int movieId,
    required MovieCastCreditModel? castAndCrew,
    required VideosModel? videos,
    required bool isWatchlist,
    required bool isLiked,
  }) = _MovieDetailsState;

  factory MovieDetailsState.initial() {
    return MovieDetailsState(
      state: RequestState.initial,
      message: '',
      movieDetails: null,
      movieId: 0,
      castAndCrew: null,
      videos: null,
      isWatchlist: false,
      isLiked: false,
    );
  }
}
