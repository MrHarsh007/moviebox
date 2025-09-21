part of 'trending_movies_bloc.dart';

/// Represents the state for trending movies in the BLoC.
///
/// Contains information about the current request state, any message,
/// the list of trending movies, the trending period, and the number of movies.
///
/// - [state]: The current state of the request (e.g., loading, success, error).
/// - [message]: Any message associated with the state (e.g., error message).
/// - [trendingMovies]: The list of trending movies.
/// - [trendingBy]: The period by which movies are trending (e.g., day, week).
/// - [numberOfTrendingMovies]: The number of trending movies to display.
///
/// The [TrendingMoviesState.initial] factory provides the initial default state.

@freezed
class TrendingMoviesState with _$TrendingMoviesState {
  const factory TrendingMoviesState({
    required RequestState state,
    required String message,
    required List<MovieResult> trendingMovies,
    required TrendingBy trendingBy,
    required int numberOfTrendingMovies,
  }) = _TrendingMoviesState;

  factory TrendingMoviesState.initial() {
    debugPrint(
      "TrendingMoviesState.initial called: ${SharedPreferenceHelper().getdata(LocalStorageConstants.trendingMoviesTimeWindow)}",
    );
    final TrendingBy initialTrendingBy =
        SharedPreferenceHelper().getdata(
              LocalStorageConstants.trendingMoviesTimeWindow,
            ) ==
            TrendingBy.day.name
        ? TrendingBy.day
        : TrendingBy.week;
    return TrendingMoviesState(
      state: RequestState.initial,
      message: '',
      trendingMovies: [],
      trendingBy: initialTrendingBy,
      numberOfTrendingMovies: 10,
    );
  }
}
