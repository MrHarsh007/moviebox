part of 'upcoming_movies_bloc.dart';

@freezed
class UpcomingMoviesState with _$UpcomingMoviesState {
  const factory UpcomingMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> upcomingMovies,
    required int pageNumber,
  }) = _UpcomingMoviesState;

  factory UpcomingMoviesState.initial() {
    return UpcomingMoviesState(
      state: RequestState.initial,
      message: '',
      upcomingMovies: [],
      pageNumber: 1,
    );
  }
}
