import 'package:moviesbox/export.dart';

class MoviePosterWidget extends StatelessWidget {
  final TextTheme textTheme;
  final String title;
  final int voteCount;
  final double voteAverage;
  final String posterPath;
  final double height;
  final double width;
  final Function()? onTap;
  const MoviePosterWidget({
    super.key,
    required this.textTheme,
    required this.title,
    required this.voteCount,
    required this.voteAverage,
    required this.posterPath,
    this.height = 200,
    this.width = 150,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TMBDCachedImage(
                imagePath: posterPath,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(RADIUS),
              ),
            ),
            5.hx,
            Text(
              title,
              style: textTheme.titleMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                5.wx,
                Text(
                  voteAverage.toStringAsFixed(1),
                  style: textTheme.bodyMedium,
                ),
                5.wx,
                Text("($voteCount)", style: textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
