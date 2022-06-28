import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences preferences;
  static init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static updateCount(int count) async {
    await preferences.setInt('count', count);
  }

  static int? getCount() {
    return preferences.getInt('count');
  }
}
