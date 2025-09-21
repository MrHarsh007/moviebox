import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/trending_model.dart';

/// A widget that displays a carousel of trending movies.
/// Shows a skeleton loader when [isLoading] is true.
class TrendingMoviesWidget extends StatelessWidget {
  /// List of trending movies to display.
  final List<TrendingModel> trendingMovies;

  /// Callback when a movie is tapped (currently unused).
  final Function(int id)? onMovieTap;

  /// Text theme for styling movie titles and overviews.
  final TextTheme textTheme;

  /// Whether to show loading skeletons.
  final bool isLoading;

  const TrendingMoviesWidget({
    super.key,
    required this.trendingMovies,
    this.onMovieTap,
    this.isLoading = false,
    required this.textTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: CarouselSlider(
        options: CarouselOptions(
          height:
              MediaQuery.of(context).size.height *
              0.4, // Height of the carousel
          aspectRatio: 16 / 9, // Aspect ratio for carousel items
          viewportFraction: 1, // Each item takes full width
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true, // Automatically scrolls the carousel
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.ease,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        // Map each movie to a carousel item
        items: trendingMovies.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: () => onMovieTap?.call(i.id),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(RADIUS * 2),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        // Movie poster image
                        TMBDCachedImage(
                          imagePath: i.imageUrl,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                        // Movie details positioned at the bottom left
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Container(
                            width: MediaQuery.of(context).size.width - 20,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(color: Colors.grey.shade500),
                              borderRadius: BorderRadius.circular(RADIUS),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Movie title
                                Text(i.title, style: textTheme.titleMedium),
                                5.hx, // Vertical spacing
                                // Movie overview
                                Text(
                                  i.description,
                                  style: textTheme.bodyMedium,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
