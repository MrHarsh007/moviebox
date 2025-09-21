import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/constant/local_storage_constants.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';

part 'watchilist_like_offline_state.dart';
part 'watchilist_like_offline_event.dart';
part 'watchilist_like_offline_bloc.freezed.dart';

@singleton
class WatchilistLikeOfflineBloc
    extends Bloc<WatchilistLikeOfflineEvent, WatchilistLikeOfflineState> {
  final WatchlistMovieDatabaseHelper _databaseHelper;
  WatchilistLikeOfflineBloc(this._databaseHelper)
    : super(WatchilistLikeOfflineState.initial()) {
    on<WatchilistLikeOfflineEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(WatchilistLikeOfflineState.initial());
        },
        toggleWatchlist: (_ToggleWatchlist value) async {
          emit(state.copyWith(isWatchlistMovie: value.isWatchlistMovie));
          final List<SavedMovie> movies = value.isWatchlistMovie
              ? await _databaseHelper.getAllMovies(
                  LocalStorageConstants.watchlistMoviesTableName,
                )
              : await _databaseHelper.getAllMovies(
                  LocalStorageConstants.watchlistTvShowsTableName,
                );

          if (value.isWatchlistMovie) {
            emit(
              state.copyWith(
                watchListMovies: movies,
                state: RequestState.loaded,
              ),
            );
          } else {
            emit(
              state.copyWith(
                watchListTvShows: movies,
                state: RequestState.loaded,
              ),
            );
          }
        },
        toggleLiked: (_ToggleLiked value) async {
          emit(state.copyWith(isLikedMovie: value.isLikedMovie));
          final List<SavedMovie> movies = value.isLikedMovie
              ? await _databaseHelper.getAllMovies(
                  LocalStorageConstants.likedMoviesTableName,
                )
              : await _databaseHelper.getAllMovies(
                  LocalStorageConstants.likedTvShowsTableName,
                );

          if (value.isLikedMovie) {
            emit(
              state.copyWith(likedMovies: movies, state: RequestState.loaded),
            );
          } else {
            emit(
              state.copyWith(likedTvShows: movies, state: RequestState.loaded),
            );
          }
        },
        deleteWatchList: (_DeleteWatchListMovie value) {},
        deleteLiked: (_DeleteLikedMovie value) {},
      );
    });
  }
}
