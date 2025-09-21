part of 'similar_movies_bloc.dart';

@freezed
class SimilarMoviesEvent with _$SimilarMoviesEvent {
  // Initial
  const factory SimilarMoviesEvent.initial() = _Initial;

  // Fetch Similar Movies
  const factory SimilarMoviesEvent.fetchSimilarMovies({
    required int movieId,
    @Default(false) bool isLoadingMore,
    int? pageNumber,
  }) = _FetchSimilarMovies;

  // Increment Page Number
  const factory SimilarMoviesEvent.incrementPageNumber() = _IncrementPageNumber;
}
