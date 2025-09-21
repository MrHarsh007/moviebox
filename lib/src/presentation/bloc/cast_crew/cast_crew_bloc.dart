import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/credit_person_model.dart';
import 'package:moviesbox/src/domain/entity/movie_from_credit.dart';
import 'package:moviesbox/src/domain/usecase/cast_usecase.dart';

part 'cast_crew_state.dart';
part 'cast_crew_event.dart';
part 'cast_crew_bloc.freezed.dart';

@singleton
class CastCrewBloc extends Bloc<CastCrewEvent, CastCrewState> {
  final CastUsecase _castUsecase;
  CastCrewBloc(this._castUsecase) : super(CastCrewState.initial()) {
    on<CastCrewEvent>((event, emit) async {
      await event.map(
        fetchPerson: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              id: e.id,
              message: "Fetching Person Details",
            ),
          );
          final result = await _castUsecase.getCreditDetails(personId: e.id);
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: failure.message,
                ),
              );
            },
            (creditDetails) {
              add(CastCrewEvent.fetchCombineMovieTvShow(id: state.id));
              emit(
                state.copyWith(
                  person: creditDetails,
                  message: "Person Details Fetched Successfully",
                ),
              );
            },
          );
        },
        fetchCombineMovieTvShow: (e) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Fetching Movies and TV Shows",
            ),
          );
          final result = await _castUsecase.getMoviesTvShowFromCast(
            personId: e.id,
          );
          result.fold(
            (failure) {
              emit(
                state.copyWith(
                  state: RequestState.error,
                  message: failure.message,
                ),
              );
            },
            (moviesTvShow) {
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  movies: [
                    ...moviesTvShow?.cast
                            ?.where((t) => t.mediaType == MediaType.MOVIE)
                            .toList() ??
                        [],
                    ...moviesTvShow?.crew
                            ?.where((t) => t.mediaType == MediaType.MOVIE)
                            .toList() ??
                        [],
                  ],
                  tvShows: [
                    ...moviesTvShow?.cast
                            ?.where((t) => t.mediaType == MediaType.TV)
                            .toList() ??
                        [],
                    ...moviesTvShow?.crew
                            ?.where((t) => t.mediaType == MediaType.TV)
                            .toList() ??
                        [],
                  ],
                  message: "Movies and TV Shows Fetched Successfully",
                ),
              );
            },
          );
        },
        initial: (_Initial value) {
          emit(CastCrewState.initial());
        },
      );
    });
  }
}
