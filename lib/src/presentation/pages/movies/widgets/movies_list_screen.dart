import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/presentation/bloc/movies/now_playing_movies/now_playing_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/popular_movies/popular_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/movies/upcoming_movies/upcoming_movies_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movies/widgets/card_poster_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class MoviesListScreen extends StatefulWidget {
  final String title;
  final MoviesEnum movieType;

  const MoviesListScreen({
    super.key,
    required this.title,
    required this.movieType,
  });

  @override
  State<MoviesListScreen> createState() => _MoviesListScreenState();
}

class _MoviesListScreenState extends State<MoviesListScreen> {
  late ScrollController _scrollController;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_isRefreshing) return;
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        _getIsLoadingMore(widget.movieType) == false) {
      _loadMore(widget.movieType);
    }
  }

  void _loadMore(MoviesEnum type) {
    switch (type) {
      case MoviesEnum.popularMovies:
        context.read<PopularMoviesBloc>().add(
          const PopularMoviesEvent.incrementPageNumber(),
        );
        break;
      case MoviesEnum.nowPlayingMovies:
        context.read<NowPlayingMoviesBloc>().add(
          const NowPlayingMoviesEvent.incrementPageNumber(),
        );
        break;
      case MoviesEnum.topRatedMovies:
        context.read<TopRatedMoviesBloc>().add(
          const TopRatedMoviesEvent.incrementPageNumber(),
        );
        break;
      case MoviesEnum.upcomingMovies:
        context.read<UpcomingMoviesBloc>().add(
          const UpcomingMoviesEvent.incrementPageNumber(),
        );
        break;
    }
  }

  bool _getIsLoadingMore(MoviesEnum type) {
    switch (type) {
      case MoviesEnum.popularMovies:
        return context.read<PopularMoviesBloc>().state.state.isLoadingMore;
      case MoviesEnum.nowPlayingMovies:
        return context.read<NowPlayingMoviesBloc>().state.state.isLoadingMore;
      case MoviesEnum.topRatedMovies:
        return context.read<TopRatedMoviesBloc>().state.state.isLoadingMore;
      case MoviesEnum.upcomingMovies:
        return context.read<UpcomingMoviesBloc>().state.state.isLoadingMore;
    }
  }

  void _refreshDataBasedOnMovieType(MoviesEnum type) {
    switch (type) {
      case MoviesEnum.popularMovies:
        context.read<PopularMoviesBloc>().add(
          const PopularMoviesEvent.fetchPopularMovies(pageNumber: 1),
        );
        break;
      case MoviesEnum.nowPlayingMovies:
        context.read<NowPlayingMoviesBloc>().add(
          const NowPlayingMoviesEvent.fetchNowPlayingMovies(pageNumber: 1),
        );
        break;
      case MoviesEnum.topRatedMovies:
        context.read<TopRatedMoviesBloc>().add(
          const TopRatedMoviesEvent.fetchTopRatedMovies(pageNumber: 1),
        );
        break;
      case MoviesEnum.upcomingMovies:
        context.read<UpcomingMoviesBloc>().add(
          const UpcomingMoviesEvent.fetchUpcomingMovies(pageNumber: 1),
        );
        break;
    }
  }

  Future<void> _onRefresh() async {
    _isRefreshing = true;
    _refreshDataBasedOnMovieType(widget.movieType);
    await Future.delayed(const Duration(milliseconds: 800));
    _isRefreshing = false;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator.adaptive(
          onRefresh: _onRefresh,
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: Colors.black,
                surfaceTintColor: Colors.black,
                title: Text(
                  widget.title,
                  style: textTheme.titleLarge?.copyWith(fontSize: 22),
                ),
                centerTitle: false,
              ),
              _buildMovieSliverList(widget.movieType),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMovieSliverList(MoviesEnum movieType) {
    switch (movieType) {
      case MoviesEnum.popularMovies:
        return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.popularMovies,
            isLoadingMore: state.state.isLoadingMore,
            isLoading: state.state.isLoading,
          ),
        );
      case MoviesEnum.nowPlayingMovies:
        return BlocBuilder<NowPlayingMoviesBloc, NowPlayingMoviesState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.nowPlayingMovies,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
      case MoviesEnum.topRatedMovies:
        return BlocBuilder<TopRatedMoviesBloc, TopRatedMoviesState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.topRatedMovies,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
      case MoviesEnum.upcomingMovies:
        return BlocBuilder<UpcomingMoviesBloc, UpcomingMoviesState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.upcomingMovies,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
    }
  }

  Widget _buildSliverGrid({
    required List<MovieResult> movies,
    bool isLoading = false,
    bool isLoadingMore = false,
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
                  goWithInterstitialAd(
                    context,
                    AppRoutes.movieDetailsName,
                    queryParams: {'id': movie.id.toString()},
                  );
                  // GoRouter.of(context).pushNamed(
                  //   AppRoutes.movieDetailsName,
                  //   queryParameters: {'id': movie.id.toString()},
                  // );
                },
                child: CardPosterWidget(
                  textTheme: Theme.of(context).textTheme,
                  height: itemHeight - 70,
                  moviePosterPath: movie.posterPath ?? "",
                  title: movie.title ?? "N/A",
                  voteAverage: movie.voteAverage ?? 0.0,
                  voteCount: movie.voteCount ?? 0,
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
