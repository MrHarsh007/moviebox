part of 'now_playing_movies_bloc.dart';

@freezed
class NowPlayingMoviesEvent with _$NowPlayingMoviesEvent {
  // Initial
  const factory NowPlayingMoviesEvent.initial() = _Initial;

  // Fetch Now Playing Movies
  const factory NowPlayingMoviesEvent.fetchNowPlayingMovies({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchNowPlayingMovies;

  // Change Page Number
  const factory NowPlayingMoviesEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
