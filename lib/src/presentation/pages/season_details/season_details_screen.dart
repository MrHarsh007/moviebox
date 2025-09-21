import 'package:intl/intl.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/common_componenet/common_snackbar.dart';
import 'package:moviesbox/src/presentation/bloc/season_details/season_details_bloc.dart';

class SeasonDetailsScreen extends StatefulWidget {
  final int seriesId;
  final int seasonNumber;
  final String title;
  const SeasonDetailsScreen({
    super.key,
    required this.seriesId,
    required this.seasonNumber,
    required this.title,
  });

  @override
  State<SeasonDetailsScreen> createState() => _SeasonDetailsScreenState();
}

class _SeasonDetailsScreenState extends State<SeasonDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SeasonDetailsBloc>().add(
      SeasonDetailsEvent.fetchSeasonDetails(
        tvShowId: widget.seriesId,
        seasonNumber: widget.seasonNumber,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocConsumer<SeasonDetailsBloc, SeasonDetailsState>(
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
          return Skeletonizer(
            enabled: state.state.isLoading,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text(
                    widget.title.toString(),
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
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.hx,
                        TMBDCachedImage(
                          imagePath: state.seasonDetails?.posterPath ?? "",
                          width: size.width,
                          height: size.height * 0.3,

                          borderRadius: BorderRadius.circular(RADIUS),
                        ),
                        10.hx,
                        Text(widget.title, style: textTheme.headlineSmall),
                        5.hx,
                        Text(
                          state.seasonDetails?.name ?? '',
                          style: textTheme.titleLarge?.copyWith(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                        5.hx,
                        if (state.seasonDetails?.overview?.isNotEmpty ??
                            false) ...[
                          Text(
                            state.seasonDetails?.overview ?? '',
                            style: textTheme.bodyMedium,
                            textAlign: TextAlign.justify,
                          ),
                          10.hx,
                        ],

                        if (state.seasonDetails?.airDate != null) ...[
                          Text(
                            "Air Date: ${DateFormat.yMMMMd().format(state.seasonDetails?.airDate ?? DateTime.now())}",
                            style: textTheme.bodyLarge,
                          ),
                          5.hx,
                        ],
                        // vote average
                        if (state.seasonDetails?.voteAverage != null) ...[
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber),
                              5.wx,
                              Text(
                                "${state.seasonDetails?.voteAverage?.toStringAsFixed(1)}",
                                style: textTheme.bodyLarge,
                              ),
                            ],
                          ),
                          5.hx,
                        ],
                        Divider(color: Colors.grey),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 0,
                    ),
                    child: Text(
                      "Episodes",
                      style: textTheme.titleLarge?.copyWith(fontSize: 22),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: 15.hx),
                SliverList.builder(
                  itemCount: state.seasonDetails?.episodes?.length ?? 0,

                  itemBuilder: (context, index) {
                    final episode = state.seasonDetails?.episodes?[index];
                    return IntrinsicHeight(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TMBDCachedImage(
                                      imagePath: episode?.stillPath ?? "",
                                      width: size.width * 0.4,
                                      height: size.height * 0.1,
                                      borderRadius: BorderRadius.circular(
                                        RADIUS / 2,
                                      ),
                                    ),
                                    20.wx,
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Episode ${episode?.episodeNumber ?? ''}",
                                            style: textTheme.titleLarge,
                                          ),
                                          5.hx,
                                          Text(
                                            episode?.name ?? '',
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: textTheme.bodyLarge,
                                          ),
                                          2.hx,

                                          if (episode?.airDate != null) ...[
                                            Text(
                                              DateFormat.yMMMMd().format(
                                                episode?.airDate ??
                                                    DateTime.now(),
                                              ),
                                              style: textTheme.bodyMedium,
                                            ),
                                          ],
                                          2.hx,

                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 22,
                                                color: Colors.amber,
                                              ),
                                              5.wx,
                                              Text(
                                                episode?.voteAverage
                                                        ?.toString() ??
                                                    '0.0',
                                              ),
                                              Text(
                                                episode?.voteCount != null
                                                    ? " (${episode?.voteCount})"
                                                    : "",
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                if (episode?.overview?.isNotEmpty ?? false) ...[
                                  15.hx,

                                  Text(
                                    episode?.overview ?? '',

                                    style: textTheme.bodyMedium,
                                  ),
                                  5.hx,
                                ],
                              ],
                            ),
                          ),

                          Divider(color: Colors.grey),
                          10.hx,
                        ],
                      ),
                    );
                  },
                ),
                SliverToBoxAdapter(child: 50.hx),
              ],
            ),
          );
        },
      ),
    );
  }
}
