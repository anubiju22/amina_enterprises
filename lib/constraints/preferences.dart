import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pref {
  Pref._();
  static final prefs = Get.find<SharedPreferences>();

  // static Future<void> setString(String key, String value) async {
  //   SharedPreferences myPrefs = await SharedPreferences.getInstance();
  //   prefs.setString(key, value);
  // }

  // static Future<String> getString(String key) async {
  //   SharedPreferences myPrefs = await SharedPreferences.getInstance();
  //   return myPrefs.getString(key) ?? "";
  // }

  // static Future<void> setBool(String key, bool value) async {
  //   SharedPreferences myPrefs = await SharedPreferences.getInstance();
  //   myPrefs.setBool(key, value);
  // }

  // static Future<bool> getBool(String key) async {
  //   SharedPreferences myPrefs = await SharedPreferences.getInstance();
  //   return myPrefs.getBool(key) ?? false;
  // }

  static setString(String key, String value) {
    prefs.setString(key, value);
  }

  static String getString(String key) {
    return prefs.getString(key) ?? "";
  }

  static setBool(String key, bool value) {
    prefs.setBool(key, value);
  }

  static bool getBool(String key) {
    return prefs.getBool(key) ?? false;
  }
}
