import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'top_rated_movies_state.dart';
part 'top_rated_movies_event.dart';
part 'top_rated_movies_bloc.freezed.dart';

@singleton
class TopRatedMoviesBloc
    extends Bloc<TopRatedMoviesEvent, TopRatedMoviesState> {
  final MovieUsecase _movieUsecase;
  TopRatedMoviesBloc(this._movieUsecase)
    : super(TopRatedMoviesState.initial()) {
    on<TopRatedMoviesEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(TopRatedMoviesState.initial());
        },
        fetchTopRatedMovies: (event) async {
          emit(
            state.copyWith(
              state: event.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching Top Rated Movies...",
            ),
          );
          final result = await _movieUsecase.getTopRatedMovies(
            pageNumber: event.pageNumber ?? state.pageNumber,
          );
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: failure.message,
                ),
              );
            },
            (topRatedMovies) {
              final oldMovies = List<MovieResult>.from(state.topRatedMovies);
              if (event.isLoadingMore == false) {
                oldMovies.clear();
              }
              oldMovies.addAll(topRatedMovies?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  topRatedMovies: oldMovies,
                ),
              );
            },
          );
        },
        incrementPageNumber: (_) async {
          final nextPage = state.pageNumber + 1;
          emit(state.copyWith(pageNumber: nextPage));
          add(TopRatedMoviesEvent.fetchTopRatedMovies(isLoadingMore: true));
        },
      );
    });
  }
}
