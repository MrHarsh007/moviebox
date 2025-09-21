import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/presentation/bloc/movies/movie_details/movie_details_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/recommended_movie/recommended_movie_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/similar_movies/similar_movies_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/app_bar_button.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/cast_crew_widget.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/collection_overview_widget.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/movie_details_header.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/similar_movie_widget.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/youtube_videos_widget.dart';
import '../../../utilities/go_router_init.dart';

class MovieDetailsScreen extends StatefulWidget {
  final int movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen>
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
    context.read<MovieDetailsBloc>().add(
      MovieDetailsEvent.fetchMovieDetails(movieId: widget.movieId),
    );

    context.read<SimilarMoviesBloc>().add(
      SimilarMoviesEvent.fetchSimilarMovies(movieId: widget.movieId),
    );

    context.read<RecommendedMovieBloc>().add(
      RecommendedMovieEvent.fetchRecommendedMovies(movieId: widget.movieId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BlocConsumer<MovieDetailsBloc, MovieDetailsState>(
        buildWhen: (previous, current) => previous.state != current.state,
        listenWhen: (previous, current) => previous.state != current.state,
        listener: (context, movieDetailsState) {
          if (movieDetailsState.state.isError) {
            showCustomSnackBar(
              context,
              message: movieDetailsState.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, movieDetailsState) {
          return Skeletonizer(
            enabled: movieDetailsState.state.isLoading,
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
                                movieDetailsState.movieDetails?.backdropPath ??
                                movieDetailsState.movieDetails?.posterPath ??
                                '',
                          ),
                          MovieDetailsHeader(
                            productionCompanies:
                                movieDetailsState
                                    .movieDetails
                                    ?.productionCompanies
                                    ?.toList() ??
                                [],
                            title: movieDetailsState.movieDetails?.title ?? '',
                            overview:
                                movieDetailsState.movieDetails?.overview ?? '',

                            releaseDate:
                                movieDetailsState.movieDetails?.releaseDate ??
                                DateTime.now(),
                            voteAverage:
                                movieDetailsState.movieDetails?.voteAverage ??
                                0.0,
                            voteCount:
                                movieDetailsState.movieDetails?.voteCount ?? 0,
                            genres:
                                movieDetailsState.movieDetails?.genres ?? [],
                            budget: movieDetailsState.movieDetails?.budget,
                            revenue: movieDetailsState.movieDetails?.revenue,
                          ),
                        ],
                      ),
                    ),

                    SliverToBoxAdapter(child: Divider(color: Colors.grey)),

                    // Collection
                    if (movieDetailsState.movieDetails?.belongsToCollection !=
                        null) ...[
                      SliverToBoxAdapter(
                        child: CollectionOverviewWidget(
                          textTheme: textTheme,
                          posterPath:
                              movieDetailsState
                                  .movieDetails
                                  ?.belongsToCollection
                                  ?.posterPath ??
                              movieDetailsState
                                  .movieDetails
                                  ?.belongsToCollection
                                  ?.backdropPath ??
                              '',
                          name:
                              movieDetailsState
                                  .movieDetails
                                  ?.belongsToCollection
                                  ?.name ??
                              'N/A',
                          genres: movieDetailsState.movieDetails?.genres ?? [],
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],
                    // Cast and Crew
                    if (movieDetailsState.castAndCrew != null) ...[
                      SliverToBoxAdapter(
                        child: CastCrewWidget(
                          textTheme: textTheme,
                          castAndCrew: [
                            ...movieDetailsState.castAndCrew?.cast ?? [],
                            ...movieDetailsState.castAndCrew?.crew ?? [],
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],

                    // Videos
                    if (movieDetailsState.videos?.results?.isNotEmpty ??
                        false) ...[
                      SliverToBoxAdapter(
                        child: YoutubeVideosWidget(
                          textTheme: textTheme,
                          videos: movieDetailsState.videos?.results ?? [],
                        ),
                      ),
                      SliverToBoxAdapter(child: Divider(color: Colors.grey)),
                    ],

                    // Similar Movies
                    SliverToBoxAdapter(
                      child:
                          BlocConsumer<SimilarMoviesBloc, SimilarMoviesState>(
                            listenWhen: (previous, current) =>
                                previous.state != current.state,
                            buildWhen: (previous, current) =>
                                previous.state != current.state,
                            listener: (context, similarMovieState) {
                              if (similarMovieState.state.isError) {
                                showCustomSnackBar(
                                  context,
                                  message: similarMovieState.message,
                                  type: SnackBarType.error,
                                );
                              }
                            },
                            builder: (context, similarMovieState) {
                              if (similarMovieState.similarMovies.isEmpty &&
                                  similarMovieState.state.isLoading == false) {
                                return SizedBox.shrink();
                              }
                              return SimilarMovieWidget(
                                title: "Similar Movies",

                                textTheme: textTheme,
                                similarMovies: similarMovieState.similarMovies,
                                isLoading: similarMovieState.state.isLoading,
                                size: size,
                              );
                            },
                          ),
                    ),

                    // Recommended Movies
                    SliverToBoxAdapter(
                      child:
                          BlocConsumer<
                            RecommendedMovieBloc,
                            RecommendedMovieState
                          >(
                            listenWhen: (previous, current) =>
                                previous.state != current.state,
                            buildWhen: (previous, current) =>
                                previous.state != current.state,
                            listener: (context, recommendedMovieState) {
                              if (recommendedMovieState.state.isError) {
                                showCustomSnackBar(
                                  context,
                                  message: recommendedMovieState.message,
                                  type: SnackBarType.error,
                                );
                              }
                            },
                            builder: (context, recommendedMovieState) {
                              if (recommendedMovieState
                                      .recommendedMovies
                                      .isEmpty &&
                                  recommendedMovieState.state.isLoading ==
                                      false) {
                                return SizedBox.shrink();
                              }
                              return SimilarMovieWidget(
                                title: "Recommended Movies",

                                textTheme: textTheme,
                                similarMovies:
                                    recommendedMovieState.recommendedMovies,
                                isLoading:
                                    recommendedMovieState.state.isLoading,
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
                  child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                    buildWhen: (previous, current) =>
                        previous.isWatchlist != current.isWatchlist ||
                        previous.isLiked != current.isLiked,
                    builder: (context, state) {
                      return AppBarButton(
                        isWatchlist: state.isWatchlist,
                        isLiked: state.isLiked,
                        onBackPressed: () => GoRouter.of(context).pop(),
                        onFavoritePressed: () =>
                            _toggleLike(movieDetailsState: state),
                        onBookmarkPressed: () =>
                            _toggleWatchList(movieDetailsState: state),
                        homePageUrl: state.movieDetails?.homepage,
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

  void _toggleLike({required MovieDetailsState movieDetailsState}) {
    context.read<MovieDetailsBloc>().add(
      MovieDetailsEvent.likedToggle(
        isLiked: !movieDetailsState.isLiked,
        movie: SavedMovie(
          id: movieDetailsState.movieId,
          name: movieDetailsState.movieDetails?.title ?? '',
          overview: movieDetailsState.movieDetails?.overview ?? '',
          poster:
              movieDetailsState.movieDetails?.posterPath ??
              movieDetailsState.movieDetails?.backdropPath ??
              '',
          rating: movieDetailsState.movieDetails?.voteAverage ?? 0.0,
          voteCount:
              movieDetailsState.movieDetails?.voteCount?.toDouble() ?? 0.0,
          date: movieDetailsState.movieDetails?.releaseDate,
        ),
      ),
    );
    showCustomSnackBar(
      context,
      message: !movieDetailsState.isLiked
          ? 'Added to favorites'
          : 'Removed from favorites',
      type: SnackBarType.success,
    );
  }

  void _toggleWatchList({required MovieDetailsState movieDetailsState}) {
    showCustomSnackBar(
      context,
      message: !movieDetailsState.isWatchlist
          ? 'Added to watchlist'
          : 'Removed from watchlist',
      type: SnackBarType.success,
    );
    context.read<MovieDetailsBloc>().add(
      MovieDetailsEvent.watchListToggle(
        isWatchList: !movieDetailsState.isWatchlist,
        movie: SavedMovie(
          id: movieDetailsState.movieId,
          name: movieDetailsState.movieDetails?.title ?? '',
          overview: movieDetailsState.movieDetails?.overview ?? '',
          poster:
              movieDetailsState.movieDetails?.posterPath ??
              movieDetailsState.movieDetails?.backdropPath ??
              '',
          rating: movieDetailsState.movieDetails?.voteAverage ?? 0.0,
          voteCount:
              movieDetailsState.movieDetails?.voteCount?.toDouble() ?? 0.0,
          date: movieDetailsState.movieDetails?.releaseDate,
        ),
      ),
    );
  }
}
