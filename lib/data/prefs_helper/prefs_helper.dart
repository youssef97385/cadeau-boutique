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
    print("my token "+ token);
    (await getPrefs()).setString(ACCESS_TOKEN, token);
    (await getPrefs()).setBool(IS_LOGIN, true);
  }

  @override
  Future<String> getToken() async{
    return ((await getPrefs()).getString(ACCESS_TOKEN));
  }

  @override
  Future<void> logout() async {
    (await getPrefs()).setString(ACCESS_TOKEN, "");
    (await getPrefs()).setBool(IS_LOGIN, false);
  }

  @override
  Future<String> getCountryCode()async {
    return ((await getPrefs()).getString(COUNTRY_CODE));

  }

  @override
  Future<String> getDate() async{
    return ((await getPrefs()).getString(DATE_OF_BIRTH));

  }

  @override
  Future<String> getEmail() async{
    return ((await getPrefs()).getString(EMAIL));

  }

  @override
  Future<String> getGender() async{
    return ((await getPrefs()).getString(GENDER));

  }

  @override
  Future<String> getNameUser() async{
    return ((await getPrefs()).getString(FULL_NAME));

  }

  @override
  Future<int> getPhoneNumber() async{
    return ((await getPrefs()).getInt(PHONE_NUMBER));

  }

  @override
  Future<void> setCountryCode(String txt)async {

    (await getPrefs()).setString(COUNTRY_CODE, txt);

  }

  @override
  Future<void> setDate(String txt)async {

    (await getPrefs()).setString(DATE_OF_BIRTH, txt);
  }

  @override
  Future<void> setEmail(String txt) async{

    (await getPrefs()).setString(EMAIL, txt);
  }

  @override
  Future<void> setGender(String txt)async {
    (await getPrefs()).setString(GENDER, txt);

  }

  @override
  Future<void> setNameUser(String txt)async {
    (await getPrefs()).setString(FULL_NAME, txt);

  }

  @override
  Future<void> setPhoneNumber(int txt)async {
    (await getPrefs()).setInt(PHONE_NUMBER, txt);

  }
}
