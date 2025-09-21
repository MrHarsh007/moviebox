part of 'watchilist_like_offline_bloc.dart';

@freezed
class WatchilistLikeOfflineEvent with _$WatchilistLikeOfflineEvent {
  // Intial
  const factory WatchilistLikeOfflineEvent.initial() = _Initial;

  // Change Watchlist selection
  const factory WatchilistLikeOfflineEvent.toggleWatchlist({
    required bool isWatchlistMovie,
  }) = _ToggleWatchlist;

  // Change Liked selection
  const factory WatchilistLikeOfflineEvent.toggleLiked({
    required bool isLikedMovie,
  }) = _ToggleLiked;

  // Delete Watchlist Movie
  const factory WatchilistLikeOfflineEvent.deleteWatchList({required int id}) =
      _DeleteWatchListMovie;

  // Delete Liked Movie
  const factory WatchilistLikeOfflineEvent.deleteLiked({required int id}) =
      _DeleteLikedMovie;
}
