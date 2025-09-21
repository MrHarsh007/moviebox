part of 'cast_crew_bloc.dart';

@freezed
class CastCrewEvent with _$CastCrewEvent {
  // Initial
  const factory CastCrewEvent.initial() = _Initial;

  // Fetch Person Details
  const factory CastCrewEvent.fetchPerson({required int id}) = _FetchPerson;

  // Fetch Movies
  const factory CastCrewEvent.fetchCombineMovieTvShow({required int id}) =
      _FetchMovies;
}
