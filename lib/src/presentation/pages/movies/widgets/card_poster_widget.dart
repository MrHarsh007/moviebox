import 'package:moviesbox/export.dart';

class CardPosterWidget extends StatelessWidget {
  final TextTheme textTheme;
  final double height;
  final String moviePosterPath;
  final String title;
  final double voteAverage;
  final int voteCount;

  const CardPosterWidget({
    super.key,
    required this.textTheme,
    required this.height,
    required this.moviePosterPath,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RADIUS),
      ),
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TMBDCachedImage(
            height: height,
            imagePath: moviePosterPath,
            width: double.infinity,
            fit: BoxFit.cover,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(RADIUS),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    5.wx,
                    Text(
                      voteAverage.toStringAsFixed(1),
                      style: context.textTheme.bodyLarge,
                    ),
                    Text(
                      " ($voteCount)",
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
