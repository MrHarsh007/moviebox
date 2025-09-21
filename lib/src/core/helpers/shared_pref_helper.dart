// ignore_for_file: constant_identifier_names, camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  factory SharedPreferenceHelper() => SharedPreferenceHelper._internal();
  SharedPreferenceHelper._internal();
  static SharedPreferences? _sharedPrefs;

  Future<void> init() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  Future<void> remove(key) async {
    _sharedPrefs?.remove(key);
  }

  Future<void> clear() async {
    _sharedPrefs?.clear();
  }

  // store key value
  Future<void> storedata(String key, String value) async {
    debugPrint("Storing data: $key = $value");
    await _sharedPrefs?.setString(key, value);
  }

  // get value
  String? getdata(String key) {
    debugPrint(
      "Retrieving data for key: $key = ${_sharedPrefs?.getString(key)}",
    );
    return _sharedPrefs?.getString(key);
  }

  // store bool
  Future<void> storeBool(String key, bool value) async {
    await _sharedPrefs?.setBool(key, value);
  }

  // get bool
  bool? getBool(String key) {
    return _sharedPrefs?.getBool(key);
  }
}
