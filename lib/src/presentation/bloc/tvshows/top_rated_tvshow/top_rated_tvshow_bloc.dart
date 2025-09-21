import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'top_rated_tvshow_state.dart';
part 'top_rated_tvshow_event.dart';
part 'top_rated_tvshow_bloc.freezed.dart';

@singleton
class TopRatedTvshowBloc
    extends Bloc<TopRatedTvshowEvent, TopRatedTvshowState> {
  final TvShowsUsecase _tvShowsUsecase;
  TopRatedTvshowBloc(this._tvShowsUsecase)
    : super(TopRatedTvshowState.initial()) {
    on<TopRatedTvshowEvent>((event, emit) async {
      await event.map(
        fetchTopRatedTvShows: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching Top Rated TV Shows...",
            ),
          );
          final result = await _tvShowsUsecase.getTopRatedTvShows(
            pageNumber: e.pageNumber ?? state.pageNumber,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (shows) {
              final List<TvShowsResult> currentShows = List.from(
                state.topRatedTvShow,
              );
              if (e.isLoadingMore == false) {
                currentShows.clear();
              }
              currentShows.addAll(shows?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  topRatedTvShow: currentShows,
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(TopRatedTvshowState.initial());
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(TopRatedTvshowEvent.fetchTopRatedTvShows(isLoadingMore: true));
        },
      );
    });
  }
}
