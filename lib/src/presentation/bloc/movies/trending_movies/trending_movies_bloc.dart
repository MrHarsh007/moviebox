import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'trending_movies_state.dart';
part 'trending_movies_event.dart';
part 'trending_movies_bloc.freezed.dart';

/// Bloc responsible for handling trending movies state and events.
@singleton
class TrendingMoviesBloc
    extends Bloc<TrendingMoviesEvent, TrendingMoviesState> {
  final MovieUsecase movieUsecase;

  /// Constructor with dependency injection for [MovieUsecase].
  TrendingMoviesBloc(this.movieUsecase) : super(TrendingMoviesState.initial()) {
    // Register event handler for TrendingMoviesEvent.
    on<TrendingMoviesEvent>((event, emit) async {
      await event.map(
        // Handles the initial event, resets the state.
        initial: (_) async {
          emit(TrendingMoviesState.initial());
        },
        // Handles fetching trending movies.
        fetchTrendingMovies: (event) async {
          // Emit loading state before fetching.
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Fetching Trending Movies...",
            ),
          );
          // Fetch trending movies using the usecase.
          final result = await movieUsecase.getTrendingMovies(
            trendingBy: state.trendingBy,
          );
          // Handle result: emit error or loaded state.
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (movies) => emit(
              state.copyWith(
                state: RequestState.loaded,
                trendingMovies:
                    movies?.results
                        ?.toList()
                        .take(state.numberOfTrendingMovies)
                        .toList() ??
                    [],
              ),
            ),
          );
        },
        changeTrendingBy: (_ChangeTrendingBy value) {
          // Update the trendingBy and emit loading state.
          emit(
            state.copyWith(
              trendingBy: value.trendingBy,
              state: RequestState.loading,
            ),
          );
          // Trigger fetching of trending movies with the new trendingBy.
          add(const TrendingMoviesEvent.fetchTrendingMovies());
        },
      );
    });
  }
}
