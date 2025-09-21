import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:moviesbox/export.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback onBackPressed;
  final VoidCallback onFavoritePressed;
  final VoidCallback onBookmarkPressed;
  final String? homePageUrl;
  final bool isWatchlist;
  final bool isLiked;
  const AppBarButton({
    super.key,
    required this.onBackPressed,
    required this.onFavoritePressed,
    required this.onBookmarkPressed,
    this.homePageUrl,
    required this.isWatchlist,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Colors.grey.shade900;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,

          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(RADIUS),
          ),
          child: InkWell(
            onTap: onBackPressed,
            child: Icon(EvaIcons.arrowBackOutline, color: Colors.white),
          ),
        ),
        Row(
          spacing: 10,
          children: [
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(RADIUS),
              ),
              child: InkWell(
                onTap: onFavoritePressed,
                child: Icon(
                  isLiked ? EvaIcons.heart : EvaIcons.heartOutline,
                  color: isLiked ? Colors.red : Colors.white,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(RADIUS),
              ),
              child: InkWell(
                onTap: onBookmarkPressed,
                child: Icon(
                  isWatchlist ? EvaIcons.bookmark : EvaIcons.bookmarkOutline,
                  color: isWatchlist ? Colors.red : Colors.white,
                ),
              ),
            ),
            if (homePageUrl != null)
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(RADIUS),
                ),
                child: InkWell(
                  onTap: () {
                    if (homePageUrl != null) {
                      launchUrl(
                        Uri.parse(homePageUrl ?? ""),
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  child: Icon(
                    EvaIcons.externalLinkOutline,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
