part of 'on_the_air_tvshow_bloc.dart';

@freezed
class OnTheAirState with _$OnTheAirState {
  const factory OnTheAirState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> onTheAirShows,
    required int pageNumber,
  }) = _OnTheAirState;

  factory OnTheAirState.initial() {
    return OnTheAirState(
      state: RequestState.initial,
      message: '',
      onTheAirShows: [],
      pageNumber: 1,
    );
  }
}
