import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  bool _initialized = false;

  Future<void> init() async {
    if (_initialized) return;

    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: Duration(seconds: 60),
        minimumFetchInterval: Duration.zero, // Always fetch in dev
      ),
    );

    await _remoteConfig.setDefaults({
      'show_ad': false,
      'click_threshold': '5',
      'banner_ad_unit_id': '',
      'interstitial_ad_unit_id': '',
      'app_open_ad_unit_id': '',
    });

    await _remoteConfig.fetchAndActivate();
    _initialized = true;

    debugPrint("✅ Remote Config initialized");
  }

  String getString(String key) {
    return _remoteConfig.getString(key);
  }

  bool getBool(String key) {
    return _remoteConfig.getBool(key);
  }

  int getInt(String key, {int defaultValue = 0}) {
    try {
      return int.parse(_remoteConfig.getString(key));
    } catch (_) {
      return defaultValue;
    }
  }
}
