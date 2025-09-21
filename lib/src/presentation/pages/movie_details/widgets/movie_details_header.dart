import 'package:intl/intl.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/movie_details_model.dart';
import 'package:moviesbox/src/presentation/ads/native_ads_widget.dart';

class MovieDetailsHeader extends StatelessWidget {
  final String title;
  final String overview;
  final DateTime releaseDate;
  final double voteAverage;
  final int voteCount;
  final List<Genre> genres;
  final List<ProductionCompany> productionCompanies;
  final int? budget;
  final int? revenue;

  const MovieDetailsHeader({
    super.key,
    required this.title,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
    required this.voteCount,
    required this.genres,
    required this.productionCompanies,
    this.budget,
    this.revenue,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.headlineSmall?.copyWith(color: Colors.white),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                DateFormat.yMMMMd().format(releaseDate),
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              5.hx,
              NativeAdWidget(),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  5.wx,
                  Text(
                    voteAverage.toStringAsFixed(2),
                    style: textTheme.titleSmall,
                  ),
                  5.wx,
                  Text("($voteCount)", style: textTheme.titleSmall),
                ],
              ),
              5.hx,

              Text(
                overview,
                style: textTheme.bodyMedium?.copyWith(color: Colors.white70),
              ),

              5.hx,
              if (productionCompanies.isNotEmpty) ...[
                Text(
                  "Production Companies:",
                  style: textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
                Text(
                  productionCompanies.map((e) => e.name).join(', '),
                  style: textTheme.bodyMedium?.copyWith(color: Colors.white70),
                ),
                5.hx,
              ],
            ],
          ),
          if (budget != null) ...[
            Text(
              "Budget: \$${NumberFormat('#,##0').format(budget)}", // Placeholder for budget
              style: textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
            2.hx,
          ],

          if (revenue != null) ...[
            Text(
              "Revenue: \$${NumberFormat('#,##0').format(revenue)}", // Placeholder for revenue
              style: textTheme.titleMedium?.copyWith(color: Colors.white),
            ),
            2.hx,
          ],

          10.hx,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: genres
                  .map(
                    (genre) => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(RADIUS),
                      ),
                      child: Text(
                        genre.name ?? "",
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
