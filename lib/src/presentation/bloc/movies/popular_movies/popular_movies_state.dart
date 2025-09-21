part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> popularMovies,

    required int pageNumber,
  }) = _PopularMoviesState;

  factory PopularMoviesState.initial() {
    return PopularMoviesState(
      state: RequestState.initial,
      message: '',
      popularMovies: [],
      pageNumber: 1,
    );
  }
}
