part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  // Initial
  const factory MovieDetailsEvent.initial() = _Initial;

  // Fetch Movie Details
  const factory MovieDetailsEvent.fetchMovieDetails({required int movieId}) =
      _FetchMovieDetails;

  // Fetch Cast and Crew
  const factory MovieDetailsEvent.fetchCastAndCrew({required int movieId}) =
      _FetchCastAndCrew;

  // Fetch Videos
  const factory MovieDetailsEvent.fetchVideos({required int movieId}) =
      _FetchVideos;

  // Add to Watchlist
  const factory MovieDetailsEvent.watchListToggle({
    required SavedMovie movie,
    @Default(false) bool isWatchList,
  }) = _WatchListToggle;

  // Remove from Watchlist
  const factory MovieDetailsEvent.likedToggle({
    required SavedMovie movie,
    @Default(false) bool isLiked,
  }) = _LikedToggle;
}
