import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'recommended_movie_state.dart';
part 'recommended_movie_event.dart';
part 'recommended_movie_bloc.freezed.dart';

@singleton
class RecommendedMovieBloc
    extends Bloc<RecommendedMovieEvent, RecommendedMovieState> {
  final MovieUsecase movieUsecase;
  RecommendedMovieBloc(this.movieUsecase)
    : super(RecommendedMovieState.initial()) {
    on<RecommendedMovieEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(RecommendedMovieState.initial());
        },
        fetchRecommendedMovies: (event) async {
          emit(
            state.copyWith(
              state: event.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
            ),
          );
          final result = await movieUsecase.getRecommendedMovies(
            movieId: event.movieId,
            pageNumber: event.pageNumber ?? state.pageNumber,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (movies) {
              final newMovies = List<MovieResult>.from(state.recommendedMovies);
              if (event.isLoadingMore == false) {
                newMovies.clear();
              }
              newMovies.addAll(movies?.results?.toList() ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  recommendedMovies: newMovies,
                ),
              );
            },
          );
        },
        incrementPageNumber: (_) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
        },
      );
    });
  }
}
