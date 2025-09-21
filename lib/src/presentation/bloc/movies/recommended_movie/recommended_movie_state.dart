part of 'recommended_movie_bloc.dart';

@freezed
class RecommendedMovieState with _$RecommendedMovieState {
  const factory RecommendedMovieState({
    required RequestState state,
    required String message,
    required List<MovieResult> recommendedMovies,
    required int pageNumber,
  }) = _RecommendedMovieState;

  factory RecommendedMovieState.initial() {
    return RecommendedMovieState(
      state: RequestState.initial,
      message: '',
      recommendedMovies: [],
      pageNumber: 1,
    );
  }
}
