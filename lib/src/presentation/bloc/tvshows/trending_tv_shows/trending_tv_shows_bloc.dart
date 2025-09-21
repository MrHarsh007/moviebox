import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'trending_tv_shows_state.dart';
part 'trending_tv_shows_event.dart';
part 'trending_tv_shows_bloc.freezed.dart';

@singleton
class TrendingTvShowsBloc
    extends Bloc<TrendingTvShowsEvent, TrendingTvShowsState> {
  final TvShowsUsecase tvShowsUsecase;
  TrendingTvShowsBloc(this.tvShowsUsecase)
    : super(TrendingTvShowsState.initial()) {
    on<TrendingTvShowsEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(state.copyWith(state: RequestState.initial));
        },
        fetchTrendingTvShows: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await tvShowsUsecase.getTrendingTvShows(
            trendingBy: state.trendingBy,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (tvShows) => emit(
              state.copyWith(
                state: RequestState.loaded,
                trendingTvShows: tvShows?.results?.toList() ?? [],
              ),
            ),
          );
        },
        changeTrendingBy: (_ChangeTrendingBy value) {
          emit(
            state.copyWith(
              trendingBy: value.trendingBy,
              state: RequestState.loading,
            ),
          );
          add(const TrendingTvShowsEvent.fetchTrendingTvShows());
        },
      );
    });
  }
}
