part of 'upcoming_movies_bloc.dart';

@freezed
class UpcomingMoviesEvent with _$UpcomingMoviesEvent {
  // Intial
  const factory UpcomingMoviesEvent.initial() = _Initial;

  // Fetch Upcoming Movies
  const factory UpcomingMoviesEvent.fetchUpcomingMovies({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchUpcomingMovies;

  // Change Page Number and Fetch more Upcoming Movies
  const factory UpcomingMoviesEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
