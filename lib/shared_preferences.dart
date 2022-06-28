import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  /// [SharesPreferences] instance
  static late SharedPreferences preferences;

  // This function is called once when the app starts
  // and should be called before shared prefernces is used anywhere else
  static init() async {
    /// Get the shared preferences instance
    preferences = await SharedPreferences.getInstance();
  }

  // I use functions to abstract everywhere I use shared preferences in an app
  // It makes it more readable this way
  static updateCount(int count) async {
    /// Update the counter in shared preferences
    await preferences.setInt('count', count);
  }

  static int? getCount() {
    /// Get the counter from shared preferences
    return preferences.getInt('count');
  }

  /// You can also set and get strings with setString and getString
  /// set and get List<String> with setStringList and getStringList
  /// set and get bool with setBool and getBool
  /// clear all with clear
  /// remove a key with remove
  /// check if a key exists with containsKey
  /// get all keys with getKeys
  /// and so much more!
}
