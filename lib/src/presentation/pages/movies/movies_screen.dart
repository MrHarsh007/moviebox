import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/trending_model.dart';
import 'package:moviesbox/src/presentation/ads/banner_ads_widget.dart';
import 'package:moviesbox/src/presentation/bloc/movies/now_playing_movies/now_playing_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/popular_movies/popular_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movies/widgets/category_section.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() async {
    // Trending Movies
    final trendingMovieBloc = context.read<TrendingMoviesBloc>();
    if (trendingMovieBloc.state.trendingMovies.isEmpty) {
      trendingMovieBloc.add(const TrendingMoviesEvent.fetchTrendingMovies());
    }

    // Popular Movies
    final popularMovieBloc = context.read<PopularMoviesBloc>();
    if (popularMovieBloc.state.popularMovies.isEmpty) {
      popularMovieBloc.add(const PopularMoviesEvent.fetchPopularMovies());
    }

    // Upcoming Movies
    final upcomingMovieBloc = context.read<UpcomingMoviesBloc>();
    if (upcomingMovieBloc.state.upcomingMovies.isEmpty) {
      upcomingMovieBloc.add(const UpcomingMoviesEvent.fetchUpcomingMovies());
    }

    // Now Playing Movies
    final nowPlayingMovieBloc = context.read<NowPlayingMoviesBloc>();
    if (nowPlayingMovieBloc.state.nowPlayingMovies.isEmpty) {
      nowPlayingMovieBloc.add(
        const NowPlayingMoviesEvent.fetchNowPlayingMovies(),
      );
    }

    // Top Rated Movies
    final topRatedMovieBloc = context.read<TopRatedMoviesBloc>();
    if (topRatedMovieBloc.state.topRatedMovies.isEmpty) {
      topRatedMovieBloc.add(const TopRatedMoviesEvent.fetchTopRatedMovies());
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<TrendingMoviesBloc, TrendingMoviesState>(
        listener: (context, state) {
          if (state.state.isError) {
            showCustomSnackBar(
              context,
              message: state.message,
              type: SnackBarType.error,
            );
          }
        },
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: TrendingMoviesWidget(
                  trendingMovies: state.trendingMovies
                      .map(
                        (t) => TrendingModel(
                          title: t.title ?? "No Title",
                          description: t.overview ?? "No Description",
                          imageUrl: t.posterPath ?? "",
                          id: t.id ?? 0,
                        ),
                      )
                      .toList(),
                  isLoading: state.state.isLoading,
                  textTheme: textTheme,
                  onMovieTap: (id) {
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
              ),
              SliverToBoxAdapter(child: 5.hx),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  child: Column(
                    spacing: 10,
                    children: [
                      // Now Playing Movies
                      BlocConsumer<NowPlayingMoviesBloc, NowPlayingMoviesState>(
                        listener: (context, state) {},
                        buildWhen: (previous, current) =>
                            previous.state != current.state,
                        builder: (context, nowPlayingState) {
                          return CategorySection(
                            title: "Now Playing Movies",
                            movies: nowPlayingState.nowPlayingMovies,
                            isLoading: nowPlayingState.state.isLoading,
                            textTheme: textTheme,
                            movieType: MoviesEnum.nowPlayingMovies,
                          );
                        },
                      ),
                      BannerAdWidget(),

                      // Popular Movies
                      BlocConsumer<PopularMoviesBloc, PopularMoviesState>(
                        listener: (context, state) {},
                        buildWhen: (previous, current) =>
                            previous.state != current.state,
                        builder: (context, popularState) {
                          return CategorySection(
                            title: "Popular Movies",
                            movies: popularState.popularMovies,
                            isLoading: popularState.state.isLoading,
                            textTheme: textTheme,
                            movieType: MoviesEnum.popularMovies,
                          );
                        },
                      ),

                      // Top Rated Movies
                      BlocConsumer<TopRatedMoviesBloc, TopRatedMoviesState>(
                        listener: (context, state) {},
                        buildWhen: (previous, current) =>
                            previous.state != current.state,
                        builder: (context, topRatedState) {
                          return CategorySection(
                            title: "Top Rated Movies",
                            movies: topRatedState.topRatedMovies,
                            isLoading: topRatedState.state.isLoading,
                            textTheme: textTheme,
                            movieType: MoviesEnum.topRatedMovies,
                          );
                        },
                      ),

                      // Upcoming Movies
                      BlocConsumer<UpcomingMoviesBloc, UpcomingMoviesState>(
                        listener: (context, state) {},
                        buildWhen: (previous, current) =>
                            previous.state != current.state,
                        builder: (context, upcomingState) {
                          return CategorySection(
                            title: "Upcoming Movies",
                            movieType: MoviesEnum.upcomingMovies,
                            movies: upcomingState.upcomingMovies,
                            isLoading: upcomingState.state.isLoading,
                            textTheme: textTheme,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
