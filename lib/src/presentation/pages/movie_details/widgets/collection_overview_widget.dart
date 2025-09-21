import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';

class CollectionOverviewWidget extends StatelessWidget {
  final TextTheme textTheme;
  final String posterPath;
  final String name;
  final List<Genre> genres;
  const CollectionOverviewWidget({
    super.key,
    required this.textTheme,
    required this.posterPath,
    required this.name,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Collection", style: Theme.of(context).textTheme.titleLarge),
            15.hx,
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(RADIUS),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(RADIUS),
                    child: TMBDCachedImage(
                      imagePath: posterPath,
                      width: 80,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  20.wx,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                        5.hx,
                        Text(
                          genres.map((genre) => genre.name).join(', '),
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  // 20.wx,
                  // Icon(Icons.arrow_forward_ios, color: Colors.white),
                  // 10.wx,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
