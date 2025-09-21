part of 'airing_today_tvshow_bloc.dart';

@freezed
class AiringTodayEvent with _$AiringTodayEvent {
  // Intial
  const factory AiringTodayEvent.initial() = _Initial;

  // Fetch Airing Today Shows
  const factory AiringTodayEvent.fetchAiringTodayShows({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchAiringTodayShows;

  // Change Page Number and Fetch more Airing Today Shows
  const factory AiringTodayEvent.incrementPageNumber() = _IncrementPageNumber;
}
