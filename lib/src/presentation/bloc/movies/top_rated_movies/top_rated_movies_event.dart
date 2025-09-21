part of 'top_rated_movies_bloc.dart';

@freezed
class TopRatedMoviesEvent with _$TopRatedMoviesEvent {
  // Intital
  const factory TopRatedMoviesEvent.initial() = _Initial;

  // Fetch Top Rated Movies
  const factory TopRatedMoviesEvent.fetchTopRatedMovies({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchTopRatedMovies;

  // Change Page Number and Fetch more Top Rated Movies
  const factory TopRatedMoviesEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
