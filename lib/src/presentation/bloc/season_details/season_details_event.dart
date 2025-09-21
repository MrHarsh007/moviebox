part of 'season_details_bloc.dart';

@freezed
class SeasonDetailsEvent with _$SeasonDetailsEvent {
  // Initial
  const factory SeasonDetailsEvent.initial() = _Initial;

  // Fetch Season Details
  const factory SeasonDetailsEvent.fetchSeasonDetails({
    required int tvShowId,
    required int seasonNumber,
  }) = _FetchSeasonDetails;
}
