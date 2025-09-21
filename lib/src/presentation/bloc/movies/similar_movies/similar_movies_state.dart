part of 'similar_movies_bloc.dart';

@freezed
class SimilarMoviesState with _$SimilarMoviesState {
  const factory SimilarMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> similarMovies,
    required int pageNumber,
  }) = _SimilarMoviesState;

  factory SimilarMoviesState.initial() {
    return SimilarMoviesState(
      state: RequestState.initial,
      message: '',
      similarMovies: [],
      pageNumber: 1,
    );
  }
}
