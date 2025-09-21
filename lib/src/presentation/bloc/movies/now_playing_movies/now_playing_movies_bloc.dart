import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';

part 'now_playing_movies_state.dart';
part 'now_playing_movies_event.dart';
part 'now_playing_movies_bloc.freezed.dart';

@singleton
class NowPlayingMoviesBloc
    extends Bloc<NowPlayingMoviesEvent, NowPlayingMoviesState> {
  final MovieUsecase _movieUsecase;
  NowPlayingMoviesBloc(this._movieUsecase)
    : super(NowPlayingMoviesState.initial()) {
    on<NowPlayingMoviesEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(NowPlayingMoviesState.initial());
        },
        fetchNowPlayingMovies: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching Now Playing Movies...",
            ),
          );
          final result = await _movieUsecase.getNowPlayingMovies(
            pageNumber: e.pageNumber ?? state.pageNumber,
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
            (movies) {
              final oldMovies = List<MovieResult>.from(state.nowPlayingMovies);
              if (e.isLoadingMore == false) {
                oldMovies.clear();
              }
              oldMovies.addAll(movies?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  nowPlayingMovies: oldMovies,
                ),
              );
            },
          );
        },
        incrementPageNumber: (_) async {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(NowPlayingMoviesEvent.fetchNowPlayingMovies(isLoadingMore: true));
        },
      );
    });
  }
}
