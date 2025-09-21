import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/usecase/tv_shows_usecase.dart';
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart';

part 'tv_show_details_state.dart';
part 'tv_show_details_event.dart';
part 'tv_show_details_bloc.freezed.dart';

@singleton
class TvShowDetailsBloc extends Bloc<TvShowDetailsEvent, TvShowDetailsState> {
  final TvShowsUsecase _tvShowsUsecase;
  final WatchilistLikeOfflineBloc _watchilistLikeOfflineBloc;
  TvShowDetailsBloc(this._tvShowsUsecase, this._watchilistLikeOfflineBloc)
    : super(TvShowDetailsState.initial()) {
    on<TvShowDetailsEvent>((event, emit) async {
      await event.map(
        fetchTvShowDetails: (e) async {
          final bool isWatchList = await WatchlistMovieDatabaseHelper()
              .existsById(
                e.tvShowId,
                LocalStorageConstants.watchlistTvShowsTableName,
              );

          final bool isLiked = await WatchlistMovieDatabaseHelper().existsById(
            e.tvShowId,
            LocalStorageConstants.likedTvShowsTableName,
          );
          emit(
            state.copyWith(state: RequestState.loading, tvShowId: e.tvShowId),
          );
          final result = await _tvShowsUsecase.getTvShowDetails(
            tvShowId: e.tvShowId,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (tvShowDetails) {
              add(TvShowDetailsEvent.fetchCastAndCrew(tvShowId: e.tvShowId));
              add(TvShowDetailsEvent.fetchVideos(tvShowId: e.tvShowId));
              emit(
                state.copyWith(
                  isLiked: isLiked,
                  isWatchlist: isWatchList,
                  message: "Tv Show details fetched successfully",
                  tvShowDetails: tvShowDetails,
                ),
              );
            },
          );
        },
        fetchVideos: (e) async {
          final result = await _tvShowsUsecase.getTvShowVideos(
            tvShowId: e.tvShowId,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (videos) => emit(
              state.copyWith(
                state: RequestState.initial,
                message: "Youtube videos fetched successfully",
                youtubeVideos: videos?.results ?? [],
              ),
            ),
          );
        },
        initial: (_Initial value) {
          emit(TvShowDetailsState.initial());
        },
        fetchCastAndCrew: (_FetchCastAndCrew value) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Loading cast and crew...",
            ),
          );
          final result = await _tvShowsUsecase.getCastAndCrew(
            tvShowId: value.tvShowId,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (castAndCrew) {
              emit(
                state.copyWith(
                  state: RequestState.loaded,
                  message: "Cast and crew loaded successfully",
                  castAndCrew: castAndCrew,
                ),
              );
            },
          );
        },
        watchListToggle: (_WatchListToggle value) async {
          final isWatchList = value.isWatchList;
          final movie = value.movie;

          if (isWatchList) {
            await WatchlistMovieDatabaseHelper().insertMovie(
              movie,
              LocalStorageConstants.watchlistTvShowsTableName,
            );
          } else {
            await WatchlistMovieDatabaseHelper().deleteMovieById(
              movie.id,
              LocalStorageConstants.watchlistTvShowsTableName,
            );
          }

          final bool isExist = await WatchlistMovieDatabaseHelper().existsById(
            movie.id,
            LocalStorageConstants.watchlistTvShowsTableName,
          );

          emit(
            state.copyWith(
              state: RequestState.initial,
              isWatchlist: isExist,
              message: isWatchList
                  ? "Added to watchlist"
                  : "Removed from watchlist",
            ),
          );

          _watchilistLikeOfflineBloc.add(
            WatchilistLikeOfflineEvent.toggleWatchlist(isWatchlistMovie: false),
          );
        },
        likedToggle: (_LikedToggle value) async {
          final isLiked = value.isLiked;
          final movie = value.movie;

          if (isLiked) {
            await WatchlistMovieDatabaseHelper().insertMovie(
              movie,
              LocalStorageConstants.likedTvShowsTableName,
            );
          } else {
            await WatchlistMovieDatabaseHelper().deleteMovieById(
              movie.id,
              LocalStorageConstants.likedTvShowsTableName,
            );
          }

          final bool isExist = await WatchlistMovieDatabaseHelper().existsById(
            movie.id,
            LocalStorageConstants.likedTvShowsTableName,
          );

          emit(
            state.copyWith(
              state: RequestState.initial,
              isLiked: isExist,
              message: isLiked ? "Added to liked" : "Removed from liked",
            ),
          );

          _watchilistLikeOfflineBloc.add(
            WatchilistLikeOfflineEvent.toggleLiked(isLikedMovie: false),
          );
        },
      );
    });
  }
}
