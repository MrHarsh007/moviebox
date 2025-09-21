import 'package:intl/intl.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/tv_show_details_model.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class TvSeasonWidget extends StatelessWidget {
  final TextTheme textTheme;
  final List<Season> seasons;
  final Size size;
  final String tvShowId;
  final String title;
  const TvSeasonWidget({
    super.key,
    required this.textTheme,
    required this.seasons,
    required this.size,
    required this.tvShowId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Seasons",
            style: textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          15.hx,
          // Show in listview builder horizontally with cast image ciecle avatar and name and character name
          SizedBox(
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: seasons.length,
              itemBuilder: (context, index) {
                final season = seasons[index];
                return InkWell(
                  onTap: () => goWithInterstitialAd(
                    context,
                    AppRoutes.seasonDetailsName,
                    queryParams: {
                      'id': tvShowId.toString(),
                      'season': season.seasonNumber.toString(),
                      "title": title,
                    },
                  ),
                  //  context.pushNamed(
                  //   AppRoutes.seasonDetailsName,
                  //   queryParameters: {
                  //     'id': tvShowId.toString(),
                  //     'season': season.seasonNumber.toString(),
                  //     "title": title,
                  //   },
                  // ),
                  child: Container(
                    width: size.width * 0.4,
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TMBDCachedImage(
                            isFullUrl: false,
                            borderRadius: BorderRadius.circular(RADIUS),
                            imagePath: season.posterPath ?? '',
                            height: double.infinity,
                            width: size.width * 0.4,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          season.name ?? 'Unknown',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Episodes: ${season.episodeCount ?? 0}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        if (season.airDate != null) ...[
                          Text(
                            DateFormat.yMMMMd().format(
                              season.airDate ?? DateTime.now(),
                            ),
                            style: textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
