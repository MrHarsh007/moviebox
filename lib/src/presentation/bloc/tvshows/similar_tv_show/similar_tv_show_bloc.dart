import 'dart:core';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'similar_tv_show_state.dart';
part 'similar_tv_show_event.dart';
part 'similar_tv_show_bloc.freezed.dart';

@singleton
class SimilarTvShowBloc extends Bloc<SimilarTvShowEvent, SimilarTvShowState> {
  final TvShowsUsecase tvShowsUsecase;
  SimilarTvShowBloc(this.tvShowsUsecase) : super(SimilarTvShowState.initial()) {
    on<SimilarTvShowEvent>((event, emit) async {
      await event.map(
        initial: (e) async {
          emit(SimilarTvShowState.initial());
        },
        fetchSimilarTvShows: (e) async {
          emit(
            state.copyWith(
              state: e.isLoadingMore
                  ? RequestState.loadingMore
                  : RequestState.loading,
              message: "Loading...",
            ),
          );
          final result = await tvShowsUsecase.getSimilarTvShows(
            tvShowId: e.tvShowId,
            pageNumber: e.pageNumber ?? state.pageNumber,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (tvShows) {
              final updatedList = List<TvShowsResult>.from(
                state.similiarTvShows,
              );
              if (e.isLoadingMore == false) {
                updatedList.clear();
              }
              updatedList.addAll(tvShows?.results ?? []);
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  similiarTvShows: updatedList,
                  pageNumber: e.isLoadingMore ? state.pageNumber + 1 : 1,
                ),
              );
            },
          );
        },
        incrementPageNumber: (e) async {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(
            SimilarTvShowEvent.fetchSimilarTvShows(
              tvShowId: state.tvShowId,

              isLoadingMore: true,
            ),
          );
        },
      );
    });
  }
}
