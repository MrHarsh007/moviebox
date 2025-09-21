import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/domain/entity/videos_model.dart';
import 'package:url_launcher/url_launcher.dart';

class YoutubeVideosWidget extends StatelessWidget {
  final TextTheme textTheme;
  final List<VideoResult> videos;
  const YoutubeVideosWidget({
    super.key,
    required this.textTheme,
    required this.videos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Videos",
            style: textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          15.hx,
          // Show in listview builder horizontally with cast image ciecle avatar and name and character name
          SizedBox(
            height: 150,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final current = videos[index];
                return AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade800),
                      borderRadius: BorderRadius.circular(RADIUS),
                    ),
                    child: InkWell(
                      onTap: () => _launchYoutubeVideo(current.key ?? ""),
                      child: Stack(
                        fit: StackFit.passthrough,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: [
                          TMBDCachedImage(
                            imagePath:
                                "https://img.youtube.com/vi/${current.key}/0.jpg",
                            fit: BoxFit.cover,
                            borderRadius: BorderRadius.circular(RADIUS),
                            isFullUrl: true,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 10,
                            child: Image.asset(
                              Assets.images.youtube.path,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          5.hx,
        ],
      ),
    );
  }

  Future<void> _launchYoutubeVideo(String videoKey) async {
    final url = Uri.parse('https://www.youtube.com/watch?v=$videoKey');
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      ); // opens YouTube app if installed
    } else {
      throw 'Could not launch $url';
    }
  }
}
