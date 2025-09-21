part of 'season_details_bloc.dart';

@freezed
class SeasonDetailsState with _$SeasonDetailsState {
  const factory SeasonDetailsState({
    required RequestState state,
    required String message,
    required TvShowSeasonDetailsModel? seasonDetails,

    required int id,
  }) = _SeasonDetailsState;

  factory SeasonDetailsState.initial() {
    return SeasonDetailsState(
      state: RequestState.initial,
      message: '',
      seasonDetails: null,

      id: 0,
    );
  }
}
