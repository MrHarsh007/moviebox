part of 'cast_crew_bloc.dart';

@freezed
class CastCrewState with _$CastCrewState {
  const factory CastCrewState({
    required RequestState state,
    required String message,
    required List<CombineCreditCast> movies,
    required List<CombineCreditCast> tvShows,
    required CreditPersonModel? person,
    required int id,
  }) = _CastCrewState;

  factory CastCrewState.initial() {
    return CastCrewState(
      state: RequestState.initial,
      message: '',
      movies: [],
      tvShows: [],
      person: null,
      id: 0,
    );
  }
}
