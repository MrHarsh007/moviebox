part of 'now_playing_movies_bloc.dart';

@freezed
class NowPlayingMoviesState with _$NowPlayingMoviesState {
  const factory NowPlayingMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> nowPlayingMovies,
    required int pageNumber,
  }) = _NowPlayingMoviesState;

  factory NowPlayingMoviesState.initial() {
    return NowPlayingMoviesState(
      state: RequestState.initial,
      message: '',
      nowPlayingMovies: [],
      pageNumber: 1,
    );
  }
}
