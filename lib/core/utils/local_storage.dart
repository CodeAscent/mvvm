import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences prefs;

  static Future initStorage() async {
    await SharedPreferences.getInstance();
  }

  static Future saveString({required String key, required String value}) async {
    await prefs.setString(key, value);
  }

  static Future getString({required String key}) async {
    return prefs.getString(key);
  }

  static Future remove({required String key}) async {
    return prefs.remove(key);
  }
}
