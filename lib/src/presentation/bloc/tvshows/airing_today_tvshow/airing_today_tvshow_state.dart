part of 'airing_today_tvshow_bloc.dart';

@freezed
class AiringTodayState with _$AiringTodayState {
  const factory AiringTodayState({
    required RequestState state,
    required String message,
    required List<TvShowsResult> airingTodayShows,
    required int pageNumber,
  }) = _AiringTodayState;

  factory AiringTodayState.initial() {
    return AiringTodayState(
      state: RequestState.initial,
      message: '',
      airingTodayShows: [],
      pageNumber: 1,
    );
  }
}
