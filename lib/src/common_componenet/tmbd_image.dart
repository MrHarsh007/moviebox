import 'package:cached_network_image/cached_network_image.dart';
import 'package:moviesbox/export.dart';

class TMBDCachedImage extends StatelessWidget {
  final String? imagePath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final String placeholderAsset;
  final bool isFullUrl;
  final Alignment alignment;

  static const String _tmdbImageBaseUrl = "https://image.tmdb.org/t/p/original";

  const TMBDCachedImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholderAsset = 'assets/images/placeholder.png',
    this.alignment = Alignment.center,
    this.isFullUrl = false,
  });

  @override
  Widget build(BuildContext context) {
    final String? finalUrl = _buildUrl(imagePath);

    if (finalUrl == null) {
      return _placeholder(); // If path is null or empty
    }

    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: finalUrl,
        width: width,
        height: height,
        fit: fit,
        alignment: alignment,
        placeholder: (context, url) => _loader(),
        errorWidget: (context, url, error) => _placeholder(),
        useOldImageOnUrlChange: true,
      ),
    );
  }

  /// Shown if path is null/invalid or if error loading image
  Widget _placeholder() => ClipRRect(
    borderRadius: borderRadius ?? BorderRadius.zero,
    child: SizedBox(
      width: width,
      height: height,
      child: Image.asset(placeholderAsset, fit: fit, alignment: alignment),
    ),
  );

  /// Shown while loading
  Widget _loader() => Container(
    width: width,
    height: height,
    alignment: Alignment.center,
    child: const CommonLoader(),
  );

  String? _buildUrl(String? path) {
    if (path == null || path.isEmpty) return null;
    return isFullUrl ? path : '$_tmdbImageBaseUrl$path';
  }
}
