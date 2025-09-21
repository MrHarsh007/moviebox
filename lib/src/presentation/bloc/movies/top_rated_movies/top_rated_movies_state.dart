part of 'top_rated_movies_bloc.dart';

@freezed
class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> topRatedMovies,
    required int pageNumber,
  }) = _TopRatedMoviesState;

  factory TopRatedMoviesState.initial() {
    return TopRatedMoviesState(
      state: RequestState.initial,
      message: '',
      topRatedMovies: [],
      pageNumber: 1,
    );
  }
}
