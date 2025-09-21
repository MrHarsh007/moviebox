part of 'recommended_movie_bloc.dart';

@freezed
class RecommendedMovieEvent with _$RecommendedMovieEvent {
  // Initial
  const factory RecommendedMovieEvent.initial() = _Initial;

  // Fetch Recommended Movies
  const factory RecommendedMovieEvent.fetchRecommendedMovies({
    required int movieId,
    @Default(false) bool isLoadingMore,
    int? pageNumber,
  }) = _FetchRecommendedMovies;

  // Increment Page Number
  const factory RecommendedMovieEvent.incrementPageNumber() =
      _IncrementPageNumber;
}
