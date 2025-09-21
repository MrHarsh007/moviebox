import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/trending_model.dart';
import 'package:moviesbox/src/presentation/ads/banner_ads_widget.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/airing_today_tvshow/airing_today_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/on_the_air_tvshow/on_the_air_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/popular_tvshows/popular_tvshows_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/top_rated_tvshow/top_rated_tvshow_bloc.dart';
import 'package:moviesbox/src/presentation/bloc/tvshows/trending_tv_shows/trending_tv_shows_bloc.dart';
import 'package:moviesbox/src/presentation/pages/tvshows/widgets/tvshow_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class TvShowScreen extends StatefulWidget {
  const TvShowScreen({super.key});

  @override
  State<TvShowScreen> createState() => _TvShowScreenState();
}

class _TvShowScreenState extends State<TvShowScreen> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _fetchData() {
    final tvShowBloc = context.read<TrendingTvShowsBloc>();
    if (tvShowBloc.state.trendingTvShows.isEmpty) {
      tvShowBloc.add(const TrendingTvShowsEvent.fetchTrendingTvShows());
    }

    final airingTodayBloc = context.read<AiringTodayBloc>();
    if (airingTodayBloc.state.airingTodayShows.isEmpty) {
      airingTodayBloc.add(const AiringTodayEvent.fetchAiringTodayShows());
    }

    final onTheAirBloc = context.read<OnTheAirBloc>();
    if (onTheAirBloc.state.onTheAirShows.isEmpty) {
      onTheAirBloc.add(const OnTheAirEvent.fetchOnTheAirShows());
    }

    final popularTvBloc = context.read<PopularTvshowsBloc>();
    if (popularTvBloc.state.popularTvShows.isEmpty) {
      popularTvBloc.add(const PopularTvshowsEvent.fetchPopularTvShows());
    }

    final topRatedTvBloc = context.read<TopRatedTvshowBloc>();
    if (topRatedTvBloc.state.topRatedTvShow.isEmpty) {
      topRatedTvBloc.add(const TopRatedTvshowEvent.fetchTopRatedTvShows());
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              spacing: 10,
              children: [
                BlocBuilder<TrendingTvShowsBloc, TrendingTvShowsState>(
                  buildWhen: (previous, current) =>
                      previous.state != current.state,
                  builder: (context, state) {
                    return TrendingMoviesWidget(
                      trendingMovies: state.trendingTvShows
                          .map(
                            (t) => TrendingModel(
                              title: t.name ?? "No Title",
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
                          AppRoutes.tvShowDetailsName,
                          queryParams: {'id': id.toString()},
                        );
                        // GoRouter.of(context).pushNamed(
                        //   AppRoutes.tvShowDetailsName,
                        //   queryParameters: {'id': id.toString()},
                        // );
                      },
                    );
                  },
                ),

                // Airing Today TV Shows Section
                BlocBuilder<AiringTodayBloc, AiringTodayState>(
                  buildWhen: (previous, current) =>
                      previous.state != current.state,
                  builder: (context, state) {
                    return TvshowWidget(
                      title: "Airing Today",
                      tvshows: state.airingTodayShows,
                      isLoading: state.state.isLoading,
                      textTheme: textTheme,
                      movieType: TvShowsEnum.airingTodayShows,
                    );
                  },
                ),

                // On The Air TV Shows Section
                BlocBuilder<OnTheAirBloc, OnTheAirState>(
                  buildWhen: (previous, current) =>
                      previous.state != current.state,
                  builder: (context, state) {
                    return TvshowWidget(
                      title: "On The Air",
                      tvshows: state.onTheAirShows,
                      isLoading: state.state.isLoading,
                      textTheme: textTheme,
                      movieType: TvShowsEnum.onTheAirShows,
                    );
                  },
                ),

                // Banner Ad
                BannerAdWidget(),
                // Popular TV Shows Section
                BlocBuilder<PopularTvshowsBloc, PopularTvshowsState>(
                  buildWhen: (previous, current) =>
                      previous.state != current.state,
                  builder: (context, state) {
                    return TvshowWidget(
                      title: "Popular TV Shows",
                      tvshows: state.popularTvShows,
                      isLoading: state.state.isLoading,
                      textTheme: textTheme,
                      movieType: TvShowsEnum.popularTvShows,
                    );
                  },
                ),

                // Top Rated TV Shows Section
                BlocBuilder<TopRatedTvshowBloc, TopRatedTvshowState>(
                  buildWhen: (previous, current) =>
                      previous.state != current.state,
                  builder: (context, state) {
                    return TvshowWidget(
                      title: "Top Rated TV Shows",
                      tvshows: state.topRatedTvShow,
                      isLoading: state.state.isLoading,
                      textTheme: textTheme,
                      movieType: TvShowsEnum.topRatedTvShows,
                    );
                  },
                ),
              ],
            ),
          ),

          // Add more sections using SliverToBoxAdapter or SliverList
          SliverToBoxAdapter(child: 20.hx),
        ],
      ),
    );
  }
}
