part of 'on_the_air_tvshow_bloc.dart';

@freezed
class OnTheAirEvent with _$OnTheAirEvent {
  // Intial
  const factory OnTheAirEvent.initial() = _Initial;

  // Fetch On The Air Shows
  const factory OnTheAirEvent.fetchOnTheAirShows({
    int? pageNumber,
    @Default(false) bool isLoadingMore,
  }) = _FetchOnTheAirShows;

  // Change Page Number and Fetch more On The Air Shows
  const factory OnTheAirEvent.incrementPageNumber() = _IncrementPageNumber;
}
