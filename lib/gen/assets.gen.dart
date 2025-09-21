/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/movie.jpg
  AssetGenImage get movie => const AssetGenImage('assets/images/movie.jpg');

  /// File path: assets/images/movie2.jpg
  AssetGenImage get movie2 => const AssetGenImage('assets/images/movie2.jpg');

  /// File path: assets/images/movie3.jpg
  AssetGenImage get movie3 => const AssetGenImage('assets/images/movie3.jpg');

  /// File path: assets/images/onboarding1.PNG
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding1.PNG');

  /// File path: assets/images/onboarding2.PNG
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding2.PNG');

  /// File path: assets/images/onboarding3.PNG
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/onboarding3.PNG');

  /// File path: assets/images/placeholder.png
  AssetGenImage get placeholder =>
      const AssetGenImage('assets/images/placeholder.png');

  /// File path: assets/images/youtube.png
  AssetGenImage get youtube => const AssetGenImage('assets/images/youtube.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    movie,
    movie2,
    movie3,
    onboarding1,
    onboarding2,
    onboarding3,
    placeholder,
    youtube,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
