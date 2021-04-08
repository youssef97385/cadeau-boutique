
import 'package:shared_preferences/shared_preferences.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();

  Future<bool> getIsLogin();

  Future<String> getToken();

  Future<int> getAppLanguage();

  Future<void> setAppLanguage(int value);

  Future<void> saveToken(String token);

  Future<void> logout();

  Future<void>setNameUser(String txt);
  Future<void>setCountryCode(String txt);
  Future<void>setPhoneNumber(int txt);
  Future<void>setEmail(String txt);
  Future<void>setDate(String txt);
  Future<void>setGender(String txt);



  Future<String>getNameUser();
  Future<String>getCountryCode();
  Future<int>getPhoneNumber();
  Future<String>getEmail();
  Future<String>getDate();
  Future<String>getGender();



}
