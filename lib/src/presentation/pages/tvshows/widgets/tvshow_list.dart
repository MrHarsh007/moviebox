import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/airing_today_tvshow/airing_today_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/on_the_air_tvshow/on_the_air_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/popular_tvshows/popular_tvshows_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/top_rated_tvshow/top_rated_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movies/widgets/card_poster_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class TvshowListScreen extends StatefulWidget {
  final String title;
  final TvShowsEnum movieType;

  const TvshowListScreen({
    super.key,
    required this.title,
    required this.movieType,
  });

  @override
  State<TvshowListScreen> createState() => _TvshowListScreenState();
}

class _TvshowListScreenState extends State<TvshowListScreen> {
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

  void _loadMore(TvShowsEnum type) {
    switch (type) {
      case TvShowsEnum.popularTvShows:
        context.read<PopularTvshowsBloc>().add(
          const PopularTvshowsEvent.incrementPageNumber(),
        );
        break;
      case TvShowsEnum.airingTodayShows:
        context.read<AiringTodayBloc>().add(
          const AiringTodayEvent.incrementPageNumber(),
        );
        break;
      case TvShowsEnum.onTheAirShows:
        context.read<OnTheAirBloc>().add(
          const OnTheAirEvent.incrementPageNumber(),
        );
        break;
      case TvShowsEnum.topRatedTvShows:
        context.read<TopRatedTvshowBloc>().add(
          const TopRatedTvshowEvent.incrementPageNumber(),
        );
        break;
    }
  }

  bool _getIsLoadingMore(TvShowsEnum type) {
    switch (type) {
      case TvShowsEnum.popularTvShows:
        return context.read<PopularTvshowsBloc>().state.state.isLoadingMore;
      case TvShowsEnum.airingTodayShows:
        return context.read<AiringTodayBloc>().state.state.isLoadingMore;
      case TvShowsEnum.onTheAirShows:
        return context.read<OnTheAirBloc>().state.state.isLoadingMore;
      case TvShowsEnum.topRatedTvShows:
        return context.read<TopRatedTvshowBloc>().state.state.isLoadingMore;
    }
  }

  void _refreshDataBasedOnMovieType(TvShowsEnum type) {
    switch (type) {
      case TvShowsEnum.popularTvShows:
        context.read<PopularTvshowsBloc>().add(
          const PopularTvshowsEvent.fetchPopularTvShows(pageNumber: 1),
        );
        break;
      case TvShowsEnum.airingTodayShows:
        context.read<AiringTodayBloc>().add(
          const AiringTodayEvent.fetchAiringTodayShows(pageNumber: 1),
        );
        break;
      case TvShowsEnum.topRatedTvShows:
        context.read<TopRatedTvshowBloc>().add(
          const TopRatedTvshowEvent.fetchTopRatedTvShows(pageNumber: 1),
        );
        break;
      case TvShowsEnum.onTheAirShows:
        context.read<OnTheAirBloc>().add(
          const OnTheAirEvent.fetchOnTheAirShows(pageNumber: 1),
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

  Widget _buildMovieSliverList(TvShowsEnum movieType) {
    switch (movieType) {
      case TvShowsEnum.popularTvShows:
        return BlocBuilder<PopularTvshowsBloc, PopularTvshowsState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.popularTvShows,
            isLoadingMore: state.state.isLoadingMore,
            isLoading: state.state.isLoading,
          ),
        );
      case TvShowsEnum.airingTodayShows:
        return BlocBuilder<AiringTodayBloc, AiringTodayState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.airingTodayShows,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
      case TvShowsEnum.topRatedTvShows:
        return BlocBuilder<TopRatedTvshowBloc, TopRatedTvshowState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.topRatedTvShow,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
      case TvShowsEnum.onTheAirShows:
        return BlocBuilder<OnTheAirBloc, OnTheAirState>(
          builder: (context, state) => _buildSliverGrid(
            movies: state.onTheAirShows,
            isLoading: state.state.isLoading,
            isLoadingMore: state.state.isLoadingMore,
          ),
        );
    }
  }

  Widget _buildSliverGrid({
    required List<TvShowsResult> movies,
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
                    AppRoutes.tvShowDetailsName,
                    queryParams: {'id': movie.id.toString()},
                  );
                  // GoRouter.of(context).pushNamed(
                  //   AppRoutes.tvShowDetailsName,
                  //   queryParameters: {'id': movie.id.toString()},
                  // );
                },
                child: CardPosterWidget(
                  textTheme: Theme.of(context).textTheme,
                  height: itemHeight - 70,
                  moviePosterPath: movie.posterPath ?? "",
                  title: movie.name ?? "N/A",
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
