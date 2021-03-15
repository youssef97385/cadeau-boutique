
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();

  Future<bool> getIsLogin();

  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);

  Future<void> saveToken(String token);
}
