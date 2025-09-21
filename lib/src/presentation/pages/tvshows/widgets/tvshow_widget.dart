import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/core/enums/custom_enums.dart';
import 'package:moviesbox/src/domain/entity/tvshows_model.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class TvshowWidget extends StatelessWidget {
  final String title;
  final List<TvShowsResult> tvshows;
  final bool isLoading;
  final TextTheme textTheme;
  final TvShowsEnum movieType;

  const TvshowWidget({
    super.key,
    required this.title,
    required this.tvshows,
    required this.isLoading,
    required this.movieType,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.25;
    final width = MediaQuery.of(context).size.width * 0.4;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 10.hx,
        Container(
          margin: (tvshows.isNotEmpty && tvshows[0].posterPath != null)
              ? const EdgeInsets.only(left: 16, right: 16)
              : EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: textTheme.headlineSmall?.copyWith(fontSize: 18),
                ),
              ),
              InkWell(
                onTap: () => goWithInterstitialAd(
                  context,
                  AppRoutes.tvShowsName,
                  queryParams: {'title': title, 'type': movieType.name},
                ),

                // GoRouter.of(context).pushNamed(
                //   AppRoutes.tvShowsName,
                // queryParameters: {'title': title, 'type': movieType.name},
                // ),
                child: Text(
                  "See All",
                  style: textTheme.titleSmall?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        15.hx,
        if (isLoading)
          const Center(child: CommonLoader())
        else if (tvshows.isEmpty)
          Center(child: Text("No TV shows found", style: textTheme.bodyMedium))
        else
          SizedBox(
            height: height,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: tvshows.length,
              cacheExtent: width * 5,
              itemBuilder: (context, index) {
                final tvshow = tvshows[index];

                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: RepaintBoundary(
                    // Avoid unnecessary rebuilds
                    child: InkWell(
                      onTap: () => goWithInterstitialAd(
                        context,
                        AppRoutes.tvShowDetailsName,
                        queryParams: {'id': tvshow.id.toString()},
                      ),

                      // GoRouter.of(context).pushNamed(
                      //   AppRoutes.tvShowDetailsName,
                      //   queryParameters: {'id': tvshow.id.toString()},
                      // ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(RADIUS / 1.5),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        child: TMBDCachedImage(
                          height: height,
                          width: width,
                          borderRadius: BorderRadius.circular(RADIUS / 1.5),

                          imagePath: tvshow.posterPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
