import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/recommended_tv_show/recommended_tv_show_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/similar_tv_show/similar_tv_show_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/tv_show_details/tv_show_details_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/app_bar_button.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/cast_crew_widget.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/movie_details_header.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/youtube_videos_widget.dart';
import 'package:moviesbox/src/presentation/pages/tv_show_details/wigets/similar_tv_widget.dart';
import 'package:moviesbox/src/presentation/pages/tv_show_details/wigets/tv_season_widget.dart';
import '../../../utilities/go_router_init.dart';

class TvShowsDetailsScreen extends StatefulWidget {
  final int movieId;
  const TvShowsDetailsScreen({super.key, required this.movieId});

  @override
  State<TvShowsDetailsScreen> createState() => _TvShowsDetailsScreenState();
}

class _TvShowsDetailsScreenState extends State<TvShowsDetailsScreen>
    with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    // Called when coming back from another screen (e.g., C → B)
    debugPrint('didPopNext: Movie ID ${widget.movieId}');
    _loadData(); // 🔁 reload movie B data
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() {
    context.read<TvShowDetailsBloc>().add(
      TvShowDetailsEvent.fetchTvShowDetails(tvShowId: widget.movieId),
    );

    context.read<SimilarTvShowBloc>().add(
      SimilarTvShowEvent.fetchSimilarTvShows(tvShowId: widget.movieId),
    );

    context.read<RecommendedTvShowBloc>().add(
      RecommendedTvShowEvent.fetchRecommendedTvShows(tvShowId: widget.movieId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BlocConsumer<TvShowDetailsBloc, TvShowDetailsState>(
        buildWhen: (previous, current) => previous.state != current.state,
        listenWhen: (previous, current) => previous.state != current.state,
        listener: (context, tvShowDetailsState) {
          if (tvShowDetailsState.state.isError) {
            showCustomSnackBar(
              context,
              message: tvShowDetailsState.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, tvShowDetailsState) {
          return Skeletonizer(
            enabled: tvShowDetailsState.state.isLoading,
            child: Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          TMBDCachedImage(
                            height: size.height * 0.35,
                            width: size.width,
                            fit: BoxFit.cover,
                            imagePath:
                                tvShowDetailsState
                                    .tvShowDetails
                                    ?.backdropPath ??
                                tvShowDetailsState.tvShowDetails?.posterPath ??
                                '',
                          ),
                          MovieDetailsHeader(
                            productionCompanies: [],
                            title:
                                tvShowDetailsState.tvShowDetails?.name ??
                                tvShowDetailsState
                                    .tvShowDetails
                                    ?.originalName ??
                                '',
                            overview:
                                tvShowDetailsState.tvShowDetails?.overview ??
                                '',

                            releaseDate:
                                tvShowDetailsState
                                    .tvShowDetails
                                    ?.firstAirDate ??
                                DateTime.now(),
                            voteAverage:
                                tvShowDetailsState.tvShowDetails?.voteAverage ??
                                0.0,
                            voteCount:
                                tvShowDetailsState.tvShowDetails?.voteCount ??
                                0,
                            genres:
                                tvShowDetailsState.tvShowDetails?.genres ?? [],
                          ),
                        ],
                      ),
                    ),

                    SliverToBoxAdapter(child: Divider(color: Colors.grey)),

                    if (tvShowDetailsState.tvShowDetails?.seasons?.isNotEmpty ??
                        false) ...[
                      SliverToBoxAdapter(
                        child: TvSeasonWidget(
                          textTheme: textTheme,
                          title:
                              tvShowDetailsState.tvShowDetails?.name ??
                              tvShowDetailsState.tvShowDetails?.originalName ??
                              '',
                          tvShowId: widget.movieId.toString(),
                          size: size,
                          seasons:
                              tvShowDetailsState.tvShowDetails?.seasons ?? [],
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],

                    // Cast and Crew
                    if ((tvShowDetailsState.castAndCrew?.cast?.isNotEmpty ??
                            false) ||
                        (tvShowDetailsState.castAndCrew?.crew?.isNotEmpty ??
                            false)) ...[
                      SliverToBoxAdapter(
                        child: CastCrewWidget(
                          textTheme: textTheme,
                          castAndCrew: [
                            ...tvShowDetailsState.castAndCrew?.cast ?? [],
                            ...tvShowDetailsState.castAndCrew?.crew ?? [],
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],

                    // Videos
                    if (tvShowDetailsState.youtubeVideos.isNotEmpty) ...[
                      SliverToBoxAdapter(
                        child: YoutubeVideosWidget(
                          textTheme: textTheme,
                          videos: tvShowDetailsState.youtubeVideos,
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],

                    // Similar TvShows
                    SliverToBoxAdapter(
                      child:
                          BlocConsumer<SimilarTvShowBloc, SimilarTvShowState>(
                            listenWhen: (previous, current) =>
                                previous.state != current.state,
                            buildWhen: (previous, current) =>
                                previous.state != current.state,
                            listener: (context, similarTvShowState) {
                              if (similarTvShowState.state.isError) {
                                showCustomSnackBar(
                                  context,
                                  message: similarTvShowState.message,
                                  type: SnackBarType.error,
                                );
                              }
                            },
                            builder: (context, similarTvShowState) {
                              if (similarTvShowState.similiarTvShows.isEmpty &&
                                  similarTvShowState.state.isLoading == false) {
                                return SizedBox.shrink();
                              }
                              return SimilarTvShowWidget(
                                title: "Similar TV Shows",

                                textTheme: textTheme,
                                similarTvShows:
                                    similarTvShowState.similiarTvShows,
                                isLoading: similarTvShowState.state.isLoading,
                                size: size,
                              );
                            },
                          ),
                    ),

                    // Recommended Movies
                    SliverToBoxAdapter(
                      child:
                          BlocConsumer<
                            RecommendedTvShowBloc,
                            RecommendedTvShowState
                          >(
                            listenWhen: (previous, current) =>
                                previous.state != current.state,
                            buildWhen: (previous, current) =>
                                previous.state != current.state,
                            listener: (context, recommendedTvShowState) {
                              if (recommendedTvShowState.state.isError) {
                                showCustomSnackBar(
                                  context,
                                  message: recommendedTvShowState.message,
                                  type: SnackBarType.error,
                                );
                              }
                            },
                            builder: (context, recommendedTvShowState) {
                              if (recommendedTvShowState
                                      .recommendedTvShows
                                      .isEmpty &&
                                  recommendedTvShowState.state.isLoading ==
                                      false) {
                                return SizedBox.shrink();
                              }
                              return SimilarTvShowWidget(
                                title: "Recommended TV Shows",

                                textTheme: textTheme,
                                similarTvShows:
                                    recommendedTvShowState.recommendedTvShows,
                                isLoading:
                                    recommendedTvShowState.state.isLoading,
                                size: size,
                              );
                            },
                          ),
                    ),

                    SliverToBoxAdapter(child: SizedBox(height: 50)),
                  ],
                ),
                Positioned(
                  top: 60,
                  right: 10,
                  left: 10,
                  child: BlocBuilder<TvShowDetailsBloc, TvShowDetailsState>(
                    buildWhen: (previous, current) =>
                        previous.isWatchlist != current.isWatchlist ||
                        previous.isLiked != current.isLiked,
                    builder: (context, state) {
                      return AppBarButton(
                        isWatchlist: state.isWatchlist,
                        isLiked: state.isLiked,
                        onBackPressed: () => GoRouter.of(context).pop(),
                        onFavoritePressed: () => _toggleLikeButton(
                          tvShowDetailsState: tvShowDetailsState,
                        ),
                        onBookmarkPressed: () =>
                            _toggleWatchList(tvShowDetailsState: state),
                        homePageUrl: state.tvShowDetails?.homepage,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _toggleLikeButton({required TvShowDetailsState tvShowDetailsState}) {
    showCustomSnackBar(
      context,
      message: !tvShowDetailsState.isWatchlist
          ? 'Added to favorites'
          : 'Removed from favorites',
      type: SnackBarType.success,
    );
    context.read<TvShowDetailsBloc>().add(
      TvShowDetailsEvent.likedToggle(
        isLiked: !tvShowDetailsState.isLiked,
        movie: SavedMovie(
          id: tvShowDetailsState.tvShowId,
          name:
              tvShowDetailsState.tvShowDetails?.name ??
              tvShowDetailsState.tvShowDetails?.originalName ??
              '',
          overview: tvShowDetailsState.tvShowDetails?.overview ?? '',
          poster:
              tvShowDetailsState.tvShowDetails?.posterPath ??
              tvShowDetailsState.tvShowDetails?.backdropPath ??
              '',
          rating: tvShowDetailsState.tvShowDetails?.voteAverage ?? 0.0,
          voteCount:
              tvShowDetailsState.tvShowDetails?.voteCount?.toDouble() ?? 0.0,
          date: tvShowDetailsState.tvShowDetails?.firstAirDate,
        ),
      ),
    );
  }

  void _toggleWatchList({required TvShowDetailsState tvShowDetailsState}) {
    showCustomSnackBar(
      context,
      message: !tvShowDetailsState.isWatchlist
          ? 'Added to watchlist'
          : 'Removed from watchlist',
      type: SnackBarType.success,
    );
    context.read<TvShowDetailsBloc>().add(
      TvShowDetailsEvent.watchListToggle(
        isWatchList: !tvShowDetailsState.isWatchlist,
        movie: SavedMovie(
          id: tvShowDetailsState.tvShowId,
          name:
              tvShowDetailsState.tvShowDetails?.name ??
              tvShowDetailsState.tvShowDetails?.originalName ??
              '',
          overview: tvShowDetailsState.tvShowDetails?.overview ?? '',
          poster:
              tvShowDetailsState.tvShowDetails?.posterPath ??
              tvShowDetailsState.tvShowDetails?.backdropPath ??
              '',
          rating: tvShowDetailsState.tvShowDetails?.voteAverage ?? 0.0,
          voteCount:
              tvShowDetailsState.tvShowDetails?.voteCount?.toDouble() ?? 0.0,
          date: tvShowDetailsState.tvShowDetails?.firstAirDate,
        ),
      ),
    );
  }
}
