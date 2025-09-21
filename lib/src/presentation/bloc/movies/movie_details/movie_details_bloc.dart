import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviesbox/src/core/constant/local_storage_constants.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:moviesbox/src/domain/usecase/movie_usecase.dart';
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart';

part 'movie_details_state.dart';
part 'movie_details_event.dart';
part 'movie_details_bloc.freezed.dart';

@singleton
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MovieUsecase _movieUsecase;
  final WatchilistLikeOfflineBloc _watchilistLikeOfflineBloc;
  MovieDetailsBloc(this._movieUsecase, this._watchilistLikeOfflineBloc)
    : super(MovieDetailsState.initial()) {
    on<MovieDetailsEvent>((event, emit) async {
      await event.map(
        initial: (_) async {
          emit(MovieDetailsState.initial());
        },
        fetchMovieDetails: (e) async {
          final bool exist = await WatchlistMovieDatabaseHelper().existsById(
            e.movieId,
            LocalStorageConstants.watchlistMoviesTableName,
          );

          final bool isLiked = await WatchlistMovieDatabaseHelper().existsById(
            e.movieId,
            LocalStorageConstants.likedMoviesTableName,
          );
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Loading movie details...",
              movieId: e.movieId,
            ),
          );
          final result = await _movieUsecase.getMovieDetails(
            movieId: e.movieId,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (movieDetails) {
              emit(
                state.copyWith(
                  isLiked: isLiked,
                  isWatchlist: exist,
                  state: RequestState.loaded,
                  message: "Movie details loaded successfully",
                  movieDetails: movieDetails,
                ),
              );
              add(MovieDetailsEvent.fetchCastAndCrew(movieId: e.movieId));
            },
          );
        },
        fetchCastAndCrew: (_FetchCastAndCrew value) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Loading cast and crew...",
            ),
          );
          final result = await _movieUsecase.getCastAndCrew(
            movieId: value.movieId,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (castAndCrew) {
              add(MovieDetailsEvent.fetchVideos(movieId: value.movieId));
              emit(
                state.copyWith(
                  message: "Cast and crew loaded successfully",
                  castAndCrew: castAndCrew,
                ),
              );
            },
          );
        },
        fetchVideos: (_FetchVideos value) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              message: "Loading videos...",
            ),
          );
          final result = await _movieUsecase.getMovieVideos(
            movieId: value.movieId,
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
                state: RequestState.loaded,
                message: "Videos loaded successfully",
                videos: videos,
              ),
            ),
          );
        },
        watchListToggle: (value) async {
          final isWatchList = value.isWatchList;
          final movie = value.movie;

          if (isWatchList) {
            await WatchlistMovieDatabaseHelper().insertMovie(
              movie,
              LocalStorageConstants.watchlistMoviesTableName,
            );
          } else {
            await WatchlistMovieDatabaseHelper().deleteMovieById(
              movie.id,
              LocalStorageConstants.watchlistMoviesTableName,
            );
          }

          final bool isExist = await WatchlistMovieDatabaseHelper().existsById(
            movie.id,
            LocalStorageConstants.watchlistMoviesTableName,
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
            WatchilistLikeOfflineEvent.toggleWatchlist(isWatchlistMovie: true),
          );
        },
        likedToggle: (_LikedToggle value) async {
          final isLiked = value.isLiked;
          final movie = value.movie;

          if (isLiked) {
            await WatchlistMovieDatabaseHelper().insertMovie(
              movie,
              LocalStorageConstants.likedMoviesTableName,
            );
          } else {
            await WatchlistMovieDatabaseHelper().deleteMovieById(
              movie.id,
              LocalStorageConstants.likedMoviesTableName,
            );
          }

          final bool isExist = await WatchlistMovieDatabaseHelper().existsById(
            movie.id,
            LocalStorageConstants.likedMoviesTableName,
          );

          emit(
            state.copyWith(
              state: RequestState.initial,
              isLiked: isExist,
              message: isLiked ? "Added to liked" : "Removed from liked",
            ),
          );
          _watchilistLikeOfflineBloc.add(
            WatchilistLikeOfflineEvent.toggleLiked(isLikedMovie: true),
          );
        },
      );
    });
  }
}
