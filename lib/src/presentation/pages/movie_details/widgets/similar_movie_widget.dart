import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/presentation/pages/movie_details/widgets/movie_poster_widget.dart';
import 'package:moviesbox/src/utilities/go_router_init.dart';

class SimilarMovieWidget extends StatelessWidget {
  final String title;
  final TextTheme textTheme;
  final List<MovieResult> similarMovies;
  final bool isLoading;
  final Size size;
  const SimilarMovieWidget({
    super.key,
    required this.title,
    required this.textTheme,
    required this.similarMovies,
    required this.isLoading,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          15.hx,
          Skeletonizer(
            enabled: isLoading,
            child: SizedBox(
              height: size.height * 0.28,

              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                cacheExtent: size.width * 0.5,
                itemCount: similarMovies.length,
                itemBuilder: (context, index) {
                  final current = similarMovies[index];
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    child: MoviePosterWidget(
                      height: size.height * 0.22,
                      width: size.width * 0.35,
                      textTheme: textTheme,
                      title: current.title ?? "N/A",
                      voteCount: current.voteCount ?? 0,
                      voteAverage: current.voteAverage ?? 0.0,
                      posterPath:
                          current.posterPath ?? current.backdropPath ?? '',
                      onTap: () {
                        goWithInterstitialAd(
                          context,
                          AppRoutes.movieDetailsName,
                          queryParams: {'id': current.id.toString()},
                        );
                        // GoRouter.of(context).pushNamed(
                        //   AppRoutes.movieDetailsName,
                        //   queryParameters: {'id': current.id.toString()},
                        // );
                      },
                    ),
                  );
                },
              ),
            ),
          ),

          Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
