import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'airing_today_tvshow_state.dart';
part 'airing_today_tvshow_event.dart';
part 'airing_today_tvshow_bloc.freezed.dart';

@singleton
class AiringTodayBloc extends Bloc<AiringTodayEvent, AiringTodayState> {
  final TvShowsUsecase _tvShowsUsecase;
  AiringTodayBloc(this._tvShowsUsecase) : super(AiringTodayState.initial()) {
    on<AiringTodayEvent>((event, emit) async {
      await event.map(
        fetchAiringTodayShows: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
            ),
          );
          final result = await _tvShowsUsecase.getAiringTodayTvShows(
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
                state.airingTodayShows,
              );
              if (e.isLoadingMore == false) {
                currentShows.clear();
              }
              currentShows.addAll(shows?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  airingTodayShows: currentShows,
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(AiringTodayState.initial());
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(AiringTodayEvent.fetchAiringTodayShows(isLoadingMore: true));
        },
      );
    });
  }
}
