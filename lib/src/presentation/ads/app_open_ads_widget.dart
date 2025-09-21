import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:moviesbox/export.dart';
import 'package:moviesbox/src/utilities/admob_manager.dart';

class AppOpenAdManager {
  static final AppOpenAdManager _instance = AppOpenAdManager._internal();
  factory AppOpenAdManager() => _instance;

  AppOpenAdManager._internal();

  AppOpenAd? _appOpenAd;
  bool _isAdAvailable = false;
  final String adUnitId = GoogleAdMobManager().getAppOpenAdUnitId();

  void loadAd() {
    AppOpenAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd = ad;
          _isAdAvailable = true;
          debugPrint('AppOpenAd loaded');
        },
        onAdFailedToLoad: (error) {
          debugPrint('Failed to load AppOpenAd: $error');
          _isAdAvailable = false;
        },
      ),
    );
  }

  void showAdIfAvailable() {
    if (_isAdAvailable && _appOpenAd != null) {
      _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          _appOpenAd = null;
          _isAdAvailable = false;
          ad.dispose();
          loadAd(); // Load the next ad
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          _appOpenAd = null;
          _isAdAvailable = false;
          ad.dispose();
          loadAd();
        },
      );

      _appOpenAd!.show();
    } else {
      debugPrint('AppOpenAd not available');
      loadAd(); // Try to reload
    }
  }
}
