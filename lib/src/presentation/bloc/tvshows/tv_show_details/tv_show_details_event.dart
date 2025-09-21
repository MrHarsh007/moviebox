part of 'tv_show_details_bloc.dart';

@freezed
class TvShowDetailsEvent with _$TvShowDetailsEvent {
  // Initial
  const factory TvShowDetailsEvent.initial() = _Initial;

  // Fetch Tv Show Details
  const factory TvShowDetailsEvent.fetchTvShowDetails({required int tvShowId}) =
      _FetchTvShowDetails;

  // Fetch Videos
  const factory TvShowDetailsEvent.fetchVideos({required int tvShowId}) =
      _FetchVideos;

  // Fetch Cast and Crew
  const factory TvShowDetailsEvent.fetchCastAndCrew({required int tvShowId}) =
      _FetchCastAndCrew;

  const factory TvShowDetailsEvent.watchListToggle({
    required SavedMovie movie,
    @Default(false) bool isWatchList,
  }) = _WatchListToggle;

  // Remove from Watchlist
  const factory TvShowDetailsEvent.likedToggle({
    required SavedMovie movie,
    @Default(false) bool isLiked,
  }) = _LikedToggle;
}
