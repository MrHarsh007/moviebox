import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'upcoming_movies_state.dart';
part 'upcoming_movies_event.dart';
part 'upcoming_movies_bloc.freezed.dart';

@singleton
class UpcomingMoviesBloc
    extends Bloc<UpcomingMoviesEvent, UpcomingMoviesState> {
  final MovieUsecase _movieUsecase;
  UpcomingMoviesBloc(this._movieUsecase)
    : super(UpcomingMoviesState.initial()) {
    on<UpcomingMoviesEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(UpcomingMoviesState.initial());
        },
        fetchUpcomingMovies: (event) async {
          emit(
            state.copyWith(
              state: event.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching Upcoming Movies...",
            ),
          );
          final result = await _movieUsecase.getUpcomingMovies(
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
            (upcomingMovies) {
              final oldMovies = List<MovieResult>.from(state.upcomingMovies);
              if (event.isLoadingMore == false) {
                oldMovies.clear();
              }
              oldMovies.addAll(upcomingMovies?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  upcomingMovies: oldMovies,
                ),
              );
            },
          );
        },
        incrementPageNumber: (_) async {
          final nextPage = state.pageNumber + 1;
          emit(state.copyWith(pageNumber: nextPage));
          add(UpcomingMoviesEvent.fetchUpcomingMovies(isLoadingMore: true));
        },
      );
    });
  }
}
