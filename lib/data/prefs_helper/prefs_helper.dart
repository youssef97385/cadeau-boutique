import 'package:shared_preferences/shared_preferences.dart';
import 'package:cadeaue_boutique/core/app_language.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'iprefs_helper.dart';

class PrefsHelper implements IPrefsHelper {
  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<bool> getIsLogin() async {
    return (await getPrefs()).getBool(IS_LOGIN) ?? false;
  }

  @override
  Future<int> getAppLanguage() async {
    return (await getPrefs()).getInt(APP_LANGUAGE) ?? AppLanguageKeys.EN;
  }

  @override
  Future<void> setAppLanguage(int value) async {
    (await getPrefs()).setInt(APP_LANGUAGE, value);
  }

  @override
  Future<void> saveToken(String token) async{
    (await getPrefs()).setString(ACCESS_TOKEN, token);

  }
}
