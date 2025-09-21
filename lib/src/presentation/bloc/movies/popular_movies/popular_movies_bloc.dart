import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'popular_movies_state.dart';
part 'popular_movies_event.dart';
part 'popular_movies_bloc.freezed.dart';

@singleton
class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  final MovieUsecase movieUsecase;
  PopularMoviesBloc(this.movieUsecase) : super(PopularMoviesState.initial()) {
    on<PopularMoviesEvent>((event, emit) async {
      await event.map(
        initial: (_Initial value) {},

        fetchPopularMovies: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching Popular Movies...",
            ),
          );
          final result = await movieUsecase.getPopularMovies(
            pageNumber: e.pageNumber ?? state.pageNumber,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (movies) {
              final oldMovies = List<MovieResult>.from(state.popularMovies);
              if (e.isLoadingMore == false) {
                oldMovies.clear();
              }
              oldMovies.addAll(movies?.results ?? []);
              return emit(
                state.copyWith(
                  state: RequestState.loaded,
                  popularMovies: oldMovies,
                  message: "Popular Movies fetched successfully!",
                ),
              );
            },
          );
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(
            state.copyWith(
              pageNumber: state.pageNumber + 1,
              message: "Page number changed to ${state.pageNumber + 1}",
            ),
          );
          add(PopularMoviesEvent.fetchPopularMovies(isLoadingMore: true));
        },
      );
    });
  }
}
