import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/empty_widget.dart';
import 'package:moviesbox/src/data/offline_database/watchlist_movie_database.dart';
import 'package:moviesbox/src/presentation/bloc/watchilist_like_offline/watchilist_like_offline_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movies/widgets/card_poster_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<WatchilistLikeOfflineBloc>();
    if (bloc.state.isLikedMovie) {
      bloc.add(WatchilistLikeOfflineEvent.toggleLiked(isLikedMovie: true));
    } else if (!bloc.state.isLikedMovie) {
      bloc.add(WatchilistLikeOfflineEvent.toggleLiked(isLikedMovie: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(' Favorites', style: context.textTheme.headlineSmall),
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      body: BlocBuilder<WatchilistLikeOfflineBloc, WatchilistLikeOfflineState>(
        buildWhen: (previous, current) =>
            previous.isLikedMovie != current.isLikedMovie ||
            previous.likedMovies != current.likedMovies ||
            previous.likedTvShows != current.likedTvShows,
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, left: 12),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () =>
                            context.read<WatchilistLikeOfflineBloc>().add(
                              WatchilistLikeOfflineEvent.toggleLiked(
                                isLikedMovie: true,
                              ),
                            ),
                        child: Chip(
                          label: Text('Movies', style: textTheme.titleSmall),
                          backgroundColor: state.isLikedMovie
                              ? Colors.red
                              : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(RADIUS),
                            side: BorderSide(
                              color: state.isLikedMovie
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),

                          labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () =>
                            context.read<WatchilistLikeOfflineBloc>().add(
                              WatchilistLikeOfflineEvent.toggleLiked(
                                isLikedMovie: false,
                              ),
                            ),
                        child: Chip(
                          label: Text('TV Shows', style: textTheme.titleSmall),
                          labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          backgroundColor: state.isLikedMovie == false
                              ? Colors.red
                              : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(RADIUS),
                            side: BorderSide(
                              color: state.isLikedMovie == false
                                  ? Colors.transparent
                                  : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Sliver for Watchlist Movies
              if (state.isLikedMovie && state.likedMovies.isNotEmpty)
                _buildSliverGrid(
                  movies: state.likedMovies,
                  onTap: (id) {
                    goWithInterstitialAd(
                      context,
                      AppRoutes.movieDetailsName,
                      queryParams: {'id': id.toString()},
                    );

                    // GoRouter.of(context).pushNamed(
                    //   AppRoutes.movieDetailsName,
                    //   queryParameters: {'id': id.toString()},
                    // );
                  },
                ),
              if (state.isLikedMovie && state.likedMovies.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 50,
                    ),
                    child: EmptyWidget(
                      title: 'No movies in favorites',
                      subtitle:
                          'Add movies to your favorites to see them here.',
                      textTheme: textTheme,
                      icon: Icons.movie_creation_outlined,
                    ),
                  ),
                ),
              // Sliver for Watchlist TV Shows
              if (!state.isLikedMovie && state.likedTvShows.isNotEmpty)
                _buildSliverGrid(
                  movies: state.likedTvShows,
                  onTap: (id) {
                    goWithInterstitialAd(
                      context,
                      AppRoutes.tvShowDetailsName,
                      queryParams: {'id': id.toString()},
                    );
                    // GoRouter.of(context).pushNamed(
                    //   AppRoutes.tvShowDetailsName,
                    //   queryParameters: {'id': id.toString()},
                    // );
                  },
                ),
              if (!state.isLikedMovie && state.likedTvShows.isEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 50,
                    ),
                    child: EmptyWidget(
                      title: 'No TV shows in favorites',
                      subtitle:
                          'Add TV shows to your favorites to see them here.',
                      textTheme: textTheme,
                      icon: Icons.tv_outlined,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSliverGrid({
    required List<SavedMovie> movies,
    bool isLoading = false,
    bool isLoadingMore = false,
    required void Function(int id) onTap,
  }) {
    if (isLoading) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(child: CommonLoader()),
        ),
      );
    }

    if (movies.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(child: Text("No movies found")),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.crossAxisExtent;
          const crossAxisCount = 2;
          const spacing = 15.0;
          final itemWidth =
              (width - (spacing * (crossAxisCount - 1))) / crossAxisCount;
          final itemHeight = itemWidth * 1.5; // you can tweak this
          final aspectRatio = itemWidth / itemHeight;

          return SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (index == movies.length) {
                return const Center(child: CommonLoader());
              }

              final movie = movies[index];

              return InkWell(
                onTap: () {
                  onTap(movie.id);
                },
                child: CardPosterWidget(
                  textTheme: Theme.of(context).textTheme,
                  height: itemHeight - 70,
                  moviePosterPath: movie.poster ?? "",
                  title: movie.name ?? "N/A",
                  voteAverage: movie.rating ?? 0.0,
                  voteCount: movie.voteCount?.toInt() ?? 0,
                ),
              );
            }, childCount: isLoadingMore ? movies.length + 1 : movies.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: spacing,
              crossAxisSpacing: spacing,
              childAspectRatio: aspectRatio,
            ),
          );
        },
      ),
    );
  }
}
