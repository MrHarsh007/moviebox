import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'on_the_air_tvshow_state.dart';
part 'on_the_air_tvshow_event.dart';
part 'on_the_air_tvshow_bloc.freezed.dart';

@singleton
class OnTheAirBloc extends Bloc<OnTheAirEvent, OnTheAirState> {
  final TvShowsUsecase _tvShowsUsecase;
  OnTheAirBloc(this._tvShowsUsecase) : super(OnTheAirState.initial()) {
    on<OnTheAirEvent>((event, emit) async {
      await event.map(
        fetchOnTheAirShows: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Fetching On The Air TV Shows...",
            ),
          );
          final result = await _tvShowsUsecase.getOnTheAirTvShows(
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
                state.onTheAirShows,
              );
              if (e.isLoadingMore == false) {
                currentShows.clear();
              }
              currentShows.addAll(shows?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  onTheAirShows: currentShows,
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(OnTheAirState.initial());
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(OnTheAirEvent.fetchOnTheAirShows(isLoadingMore: true));
        },
      );
    });
  }
}
