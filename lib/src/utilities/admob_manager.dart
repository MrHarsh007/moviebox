import 'dart:io';

import 'package:moviesbox/src/utilities/remote_config.dart';
import 'package:flutter/foundation.dart';

class GoogleAdMobManager {
  static final GoogleAdMobManager _instance = GoogleAdMobManager._internal();
  factory GoogleAdMobManager() => _instance;
  GoogleAdMobManager._internal();

  // Remote values
  bool showAd = true;
  int clickThreshold = 5;

  String bannerAdUnitIdIos = '';
  String interstitialAdUnitIdIos = '';
  String appOpenAdUnitIdIos = '';
  String nativeAdUnitIdIos = '';

  String bannerAdUnitIdAndroid = '';
  String interstitialAdUnitIdAndroid = '';
  String appOpenAdUnitIdAndroid = '';
  String nativeAdUnitIdAndroid = '';

  int appOpenWaitingTimeSecond = 30;

  // Unified tap counter
  int totalTapCount = 0;

  /// Initialize and fetch all remote config values
  Future<void> initializeRemoteConfig() async {
    try {
      final remote = RemoteConfigService(); // Your abstraction class

      showAd = remote.getBool('show_ad');
      clickThreshold = remote.getInt('click_threshold', defaultValue: 5);
      appOpenWaitingTimeSecond = remote.getInt(
        'app_open_waiting_time_second',
        defaultValue: 30,
      );

      bannerAdUnitIdIos = remote.getString('banner_ad_unit_id_ios');
      interstitialAdUnitIdIos = remote.getString('interstitial_ad_unit_id_ios');
      appOpenAdUnitIdIos = remote.getString('app_open_ad_unit_id_ios');
      nativeAdUnitIdIos = remote.getString('native_ad_unit_id_ios');

      bannerAdUnitIdAndroid = remote.getString('banner_ad_unit_id_android');
      interstitialAdUnitIdAndroid = remote.getString(
        'interstitial_ad_unit_id_android',
      );
      appOpenAdUnitIdAndroid = remote.getString('app_open_ad_unit_id_android');
      nativeAdUnitIdAndroid = remote.getString('native_ad_unit_id_android');

      debugPrint('Ad Config Loaded: showAd=$showAd, threshold=$clickThreshold');
    } catch (e) {
      debugPrint('Failed to initialize remote ad config: $e');
    }
  }

  // Increment unified tap counter
  void incrementTapCount() => totalTapCount++;

  // Check if an ad should be shown
  bool shouldShowAd() =>
      showAd && totalTapCount != 0 && totalTapCount % clickThreshold == 0;

  // Reset counter
  void resetTapCount() {
    totalTapCount = 0;
  }

  // Create Helper methods for each ad type for android and iOS, don't include web
  String getBannerAdUnitId() {
    return (Platform.isAndroid ? bannerAdUnitIdAndroid : bannerAdUnitIdIos);
  }

  String getInterstitialAdUnitId() {
    return (Platform.isAndroid
        ? interstitialAdUnitIdAndroid
        : interstitialAdUnitIdIos);
  }

  String getAppOpenAdUnitId() {
    return (Platform.isAndroid ? appOpenAdUnitIdAndroid : appOpenAdUnitIdIos);
  }

  String getNativeAdUnitId() {
    return (Platform.isAndroid ? nativeAdUnitIdAndroid : nativeAdUnitIdIos);
  }
}

// final adManager = GoogleAdMobManager();

// // Movie Details page
// void onMovieDetailsTap() {
//   adManager.incrementMovieDetailsTap();

//   if (adManager.shouldShowAdOnMovieDetails()) {
//     // Show ad
//     print("Show Ad on Movie Details");
//   }
// }

// // TV Show Details page
// void onTVShowDetailsTap() {
//   adManager.incrementTVShowDetailsTap();

//   if (adManager.shouldShowAdOnTVShowDetails()) {
//     // Show ad
//     print("Show Ad on TV Show Details");
//   }
// }

// // Crew Details page
// void onCrewDetailsTap() {
//   adManager.incrementCrewDetailsTap();

//   if (adManager.shouldShowAdOnCrewDetails()) {
//     // Show ad
//     print("Show Ad on Crew Details");
//   }
// }
