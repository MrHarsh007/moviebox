import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'popular_tvshows_state.dart';
part 'popular_tvshows_event.dart';
part 'popular_tvshows_bloc.freezed.dart';

@singleton
class PopularTvshowsBloc
    extends Bloc<PopularTvshowsEvent, PopularTvshowsState> {
  final TvShowsUsecase _tvShowsUsecase;
  PopularTvshowsBloc(this._tvShowsUsecase)
    : super(PopularTvshowsState.initial()) {
    on<PopularTvshowsEvent>((event, emit) async {
      await event.map(
        fetchPopularTvShows: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
            ),
          );
          final result = await _tvShowsUsecase.getPopularTvShows(
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
                state.popularTvShows,
              );
              if (e.isLoadingMore == false) {
                currentShows.clear();
              }
              currentShows.addAll(shows?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  popularTvShows: currentShows,
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(PopularTvshowsState.initial());
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(PopularTvshowsEvent.fetchPopularTvShows(isLoadingMore: true));
        },
      );
    });
  }
}
