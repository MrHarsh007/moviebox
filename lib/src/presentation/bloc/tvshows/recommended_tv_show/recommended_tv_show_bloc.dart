import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'recommended_tv_show_state.dart';
part 'recommended_tv_show_event.dart';
part 'recommended_tv_show_bloc.freezed.dart';

@singleton
class RecommendedTvShowBloc
    extends Bloc<RecommendedTvShowEvent, RecommendedTvShowState> {
  final TvShowsUsecase tvShowsUsecase;
  RecommendedTvShowBloc(this.tvShowsUsecase)
    : super(RecommendedTvShowState.initial()) {
    on<RecommendedTvShowEvent>((event, emit) async {
      await event.map(
        fetchRecommendedTvShows: (event) async {
          emit(
            state.copyWith(
              message: "Fetching Recommended TV Shows...",
              state: event.isLoadingMore == false
                  ? RequestState.loadingMore
                  : RequestState.loading,
            ),
          );
          final result = await tvShowsUsecase.getRecommendedTvShows(
            tvShowId: event.tvShowId,
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
            (tvShows) {
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  recommendedTvShows: tvShows?.results ?? [],
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(RecommendedTvShowState.initial());
        },
        incrementPageNumber: (_IncrementPageNumber value) {
          emit(state.copyWith(pageNumber: state.pageNumber + 1));
          add(
            RecommendedTvShowEvent.fetchRecommendedTvShows(
              tvShowId: state.tvShowId,
              isLoadingMore: true,
            ),
          );
        },
      );
    });
  }
}
