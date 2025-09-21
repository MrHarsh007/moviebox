import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';
import 'package:moviesbox/src/utilities/constant.dart';

class NativeAdWidget extends StatefulWidget {
  const NativeAdWidget({super.key});

  @override
  State<NativeAdWidget> createState() => _NativeAdWidgetState();
}

class _NativeAdWidgetState extends State<NativeAdWidget> {
  NativeAd? _nativeAd;
  bool _adIsLoaded = false;

  final String _adUnitId = GoogleAdMobManager().getNativeAdUnitId();
  final bool isShowAd = GoogleAdMobManager().showAd;

  @override
  void initState() {
    super.initState();
    if (isShowAd) {
      _loadAd(); //  Load ad only if enabled
    }
  }

  void _loadAd() {
    _nativeAd = NativeAd(
      adUnitId: _adUnitId,
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.medium,
        mainBackgroundColor: Colors.black,

        cornerRadius: RADIUS,
        primaryTextStyle: NativeTemplateTextStyle(textColor: Colors.white),
        secondaryTextStyle: NativeTemplateTextStyle(textColor: Colors.white),
        tertiaryTextStyle: NativeTemplateTextStyle(textColor: Colors.white),
      ),
      request: const AdRequest(),
      customOptions: {'height': 350},
      listener: NativeAdListener(
        onAdLoaded: (Ad ad) {
          debugPrint('Native ad loaded.');
          setState(() {
            _adIsLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          debugPrint('Native ad failed to load: $error');
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!isShowAd) {
      return const SizedBox(); // Don't build anything if ads disabled
    }

    if (_adIsLoaded && _nativeAd != null) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(RADIUS),
        ),
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        height: 350, // 🔁 Should match expected height from native code
        child: AdWidget(ad: _nativeAd!),
      );
    } else {
      return const SizedBox(); // Placeholder while ad loads
    }
  }
}
