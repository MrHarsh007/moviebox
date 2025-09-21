import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';

class InterstitialAdService {
  static final InterstitialAdService _instance =
      InterstitialAdService._internal();
  factory InterstitialAdService() => _instance;

  InterstitialAdService._internal();

  InterstitialAd? _interstitialAd;
  bool _isLoaded = false;

  DateTime lastInterstitialDismissedTime = DateTime.now();

  /// Use your real ad unit ID in production
  final String adUnitId = GoogleAdMobManager().getInterstitialAdUnitId();
  final bool isShowAd = GoogleAdMobManager().showAd;

  void loadAd() {
    if (isShowAd == false) {
      return;
    }
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
          _isLoaded = true;
          _setCallbacks();
        },
        onAdFailedToLoad: (error) {
          _isLoaded = false;
          debugPrint('Interstitial failed to load: $error');
        },
      ),
    );
  }

  void _setCallbacks() {
    _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _isLoaded = false;
        loadAd(); // Preload next
      },
      onAdWillDismissFullScreenContent: (ad) {
        debugPrint('Interstitial ad dismissed');
        //Warning: Using this variable in dashboard we are deciding whether to show app open ad or not
        lastInterstitialDismissedTime = DateTime.now();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _isLoaded = false;
        loadAd(); // Preload next
      },
    );
  }

  Future<void> showAdIfAvailable({VoidCallback? onAdComplete}) async {
    if (_isLoaded && _interstitialAd != null) {
      _interstitialAd!.show();
      _isLoaded = false;
      _interstitialAd = null;
    } else {
      debugPrint("Interstitial ad not ready. Continuing without it.");
    }

    // Call completion immediately
    onAdComplete?.call();

    // Always preload the next ad
    loadAd();
  }
}
