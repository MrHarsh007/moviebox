import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'similar_movies_state.dart';
part 'similar_movies_event.dart';
part 'similar_movies_bloc.freezed.dart';

@singleton
class SimilarMoviesBloc extends Bloc<SimilarMoviesEvent, SimilarMoviesState> {
  final MovieUsecase movieUsecase;
  SimilarMoviesBloc(this.movieUsecase) : super(SimilarMoviesState.initial()) {
    on<SimilarMoviesEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(SimilarMoviesState.initial());
        },
        fetchSimilarMovies: (event) async {
          emit(
            state.copyWith(
              state: event.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
            ),
          );
          final result = await movieUsecase.getSimilarMovies(
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
              final newMovies = List<MovieResult>.from(state.similarMovies);
              if (event.isLoadingMore == false) {
                newMovies.clear();
              }
              newMovies.addAll(movies?.results?.toList() ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  similarMovies: newMovies,
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
