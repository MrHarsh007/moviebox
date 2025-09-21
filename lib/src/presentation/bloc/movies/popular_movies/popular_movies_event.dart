part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesEvent with _$PopularMoviesEvent {
  // Initial
  const factory PopularMoviesEvent.initial() = _Initial;

  // Fetch Popular Movies
  const factory PopularMoviesEvent.fetchPopularMovies({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchPopularMovies;

  // Change Page Number
  const factory PopularMoviesEvent.incrementPageNumber() = _IncrementPageNumber;
}
