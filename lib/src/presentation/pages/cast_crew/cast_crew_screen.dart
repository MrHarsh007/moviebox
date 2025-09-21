import 'package:intl/intl.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/presentation/ads/banner_ads_widget.dart';
import 'package:moviesbox/src/presentation/bloc/cast_crew/cast_crew_bloc.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/movie_poster_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class CastCrewScreen extends StatefulWidget {
  final int id;
  final String title;
  const CastCrewScreen({super.key, required this.id, required this.title});

  @override
  State<CastCrewScreen> createState() => _CastCrewScreenState();
}

class _CastCrewScreenState extends State<CastCrewScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CastCrewBloc>().add(CastCrewEvent.fetchPerson(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              widget.title,
              style: textTheme.titleLarge?.copyWith(fontSize: 20),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: false,
            pinned: true,
            primary: true,
          ),
          SliverFillRemaining(
            hasScrollBody: false,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocConsumer<CastCrewBloc, CastCrewState>(
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
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.hx,
                      SizedBox(
                        height: size.width * 0.55,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TMBDCachedImage(
                              imagePath: state.person?.profilePath ?? '',
                              width: size.width * 0.35,
                              height: double.infinity,
                              borderRadius: BorderRadius.circular(RADIUS),
                            ),
                            20.wx,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.person?.name ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: textTheme.headlineSmall,
                                  ),
                                  5.hx,
                                  if (state.person?.knownForDepartment !=
                                      null) ...[
                                    Text(
                                      "Known For",
                                      style: textTheme.bodyLarge,
                                    ),
                                    Text(
                                      state.person?.knownForDepartment ?? '',
                                      style: textTheme.titleLarge,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    5.hx,
                                  ],

                                  if (state.person?.placeOfBirth != null) ...[
                                    Text(
                                      "Place of Birth",
                                      style: textTheme.bodyLarge,
                                    ),
                                    Text(
                                      state.person?.placeOfBirth ?? '',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: textTheme.titleLarge,
                                    ),
                                    5.hx,
                                  ],
                                  if (state.person?.birthday != null) ...[
                                    Text(
                                      "Birthday",
                                      style: textTheme.bodyLarge,
                                    ),
                                    FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                        DateFormat.yMMMMd().format(
                                          state.person?.birthday ??
                                              DateTime.now(),
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: textTheme.titleLarge,
                                      ),
                                    ),
                                    5.hx,
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.hx,
                      Divider(color: Colors.grey),

                      10.hx,
                      if (state.person?.biography?.isNotEmpty ?? false) ...[
                        Text("Biography", style: textTheme.titleLarge),
                        5.hx,
                        Text(
                          state.person?.biography ?? '',
                          style: textTheme.bodyMedium,
                          textAlign: TextAlign.justify,
                        ),
                        10.hx,
                        Divider(color: Colors.grey),
                        10.hx,
                      ],

                      Center(child: BannerAdWidget()),
                      10.hx,

                      if (state.movies.isNotEmpty) ...[
                        Text("Similar Movies", style: textTheme.titleLarge),
                        15.hx,
                        Skeletonizer(
                          enabled: state.state.isLoading,
                          child: SizedBox(
                            height: size.height * 0.28,

                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              cacheExtent: size.width * 0.5,
                              itemCount: state.movies.length,
                              itemBuilder: (context, index) {
                                final current = state.movies[index];
                                return Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: MoviePosterWidget(
                                    height: size.height * 0.22,
                                    width: size.width * 0.35,
                                    textTheme: textTheme,
                                    title:
                                        current.title ??
                                        current.originalTitle ??
                                        "N/A",
                                    voteCount: current.voteCount ?? 0,
                                    voteAverage: current.voteAverage ?? 0.0,
                                    posterPath:
                                        current.posterPath ??
                                        current.backdropPath ??
                                        '',
                                    onTap: () {
                                      goWithInterstitialAd(
                                        context,
                                        AppRoutes.movieDetailsName,
                                        queryParams: {
                                          'id': current.id.toString(),
                                        },
                                      );
                                      // GoRouter.of(context).pushNamed(
                                      //   AppRoutes.movieDetailsName,
                                      //   queryParameters: {
                                      //     'id': current.id.toString(),
                                      //   },
                                      // );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        10.hx,
                        Divider(color: Colors.grey),
                        10.hx,
                      ],
                      if (state.tvShows.isNotEmpty) ...[
                        Text("Similar TV Shows", style: textTheme.titleLarge),
                        15.hx,
                        Skeletonizer(
                          enabled: state.state.isLoading,
                          child: SizedBox(
                            height: size.height * 0.28,

                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              cacheExtent: size.width * 0.5,
                              itemCount: state.tvShows.length,
                              itemBuilder: (context, index) {
                                final current = state.tvShows[index];
                                return Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: MoviePosterWidget(
                                    height: size.height * 0.22,
                                    width: size.width * 0.35,
                                    textTheme: textTheme,
                                    title:
                                        current.name ??
                                        current.originalName ??
                                        "N/A",
                                    voteCount: current.voteCount ?? 0,
                                    voteAverage: current.voteAverage ?? 0.0,
                                    posterPath:
                                        current.posterPath ??
                                        current.backdropPath ??
                                        '',
                                    onTap: () {
                                      goWithInterstitialAd(
                                        context,
                                        AppRoutes.tvShowDetailsName,
                                        queryParams: {
                                          'id': current.id.toString(),
                                        },
                                      );
                                      // GoRouter.of(context).pushNamed(
                                      //   AppRoutes.tvShowDetailsName,
                                      //   queryParameters: {
                                      //     'id': current.id.toString(),
                                      //   },
                                      // );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        10.hx,
                        Divider(color: Colors.grey),
                        10.hx,
                      ],

                      50.hx,
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
