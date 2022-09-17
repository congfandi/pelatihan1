import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static SharedPreferences? _prefs;

  static Future init() async => _prefs = await SharedPreferences.getInstance();

  static Future setString(String key, String value) async =>
      await _prefs?.setString(key, value);

  static Future setInt(String key, int value) async =>
      await _prefs?.setInt(key, value);

  static Future setBool(String key, bool value) async =>
      await _prefs?.setBool(key, value);

  static Future setDouble(String key, double value) async =>
      await _prefs?.setDouble(key, value);

  static Future setStringList(String key, List<String> value) async =>
      await _prefs?.setStringList(key, value);

  static String getString(String key) => _prefs?.getString(key) ?? "";

  static int getInt(String key) => _prefs?.getInt(key) ?? 0;

  static bool getBool(String key) => _prefs?.getBool(key) ?? false;

  static double getDouble(String key) => _prefs?.getDouble(key) ?? 0.0;

  static List<String> getStringList(String key) =>
      _prefs?.getStringList(key) ?? [];
}
