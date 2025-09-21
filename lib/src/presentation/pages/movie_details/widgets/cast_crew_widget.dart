import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/movie_cast_credit_model.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class CastCrewWidget extends StatelessWidget {
  final TextTheme textTheme;
  final List<CastModel> castAndCrew;
  const CastCrewWidget({
    super.key,
    required this.textTheme,
    required this.castAndCrew,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          15.hx,
          // Show in listview builder horizontally with cast image ciecle avatar and name and character name
          SizedBox(
            height: 165,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: castAndCrew.length,
              itemBuilder: (context, index) {
                final cast = castAndCrew[index];
                return InkWell(
                  onTap: () => goWithInterstitialAd(
                    context,
                    AppRoutes.castCrewName,
                    queryParams: {
                      'id': cast.id.toString(),
                      'title': cast.name ?? 'Unknown',
                    },
                  ),

                  // context.pushNamed(
                  //   AppRoutes.castCrewName,
                  //   queryParameters: {
                  //     'id': cast.id.toString(),
                  //     'title': cast.name,
                  //   },
                  // ),
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TMBDCachedImage(
                          isFullUrl: false,
                          borderRadius: BorderRadius.circular(RADIUS),
                          imagePath: cast.profilePath ?? '',
                          height: 120,
                          width: 150,
                        ),
                        SizedBox(height: 5),
                        Text(
                          cast.name ?? 'Unknown',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          cast.character ?? 'Unknown',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
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
