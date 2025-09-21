import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tv_show_season_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';

part 'season_details_state.dart';
part 'season_details_event.dart';
part 'season_details_bloc.freezed.dart';

@singleton
class SeasonDetailsBloc extends Bloc<SeasonDetailsEvent, SeasonDetailsState> {
  final TvShowsUsecase _tvShowsUsecase;
  SeasonDetailsBloc(this._tvShowsUsecase)
    : super(SeasonDetailsState.initial()) {
    on<SeasonDetailsEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(SeasonDetailsState.initial());
        },
        fetchSeasonDetails: (event) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _tvShowsUsecase.getTvShowSeasonDetails(
            tvShowId: event.tvShowId,
            seasonNumber: event.seasonNumber,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (seasonDetails) => emit(
              state.copyWith(
                state: RequestState.loaded,
                seasonDetails: seasonDetails,
                id: event.tvShowId,
              ),
            ),
          );
        },
      );
    });
  }
}
