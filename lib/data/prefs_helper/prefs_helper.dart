import 'package:cadeaue_boutique/model/UserInfoV2.dart';
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

    return (await getPrefs()).getInt(APP_LANGUAGE) ??-1;
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



    AppColor.UserInfoModelGlobal.phone="";
    AppColor.UserInfoModelGlobal.gender="male";
    AppColor.UserInfoModelGlobal.countryCode="+966";
    AppColor.UserInfoModelGlobal.name="";
    AppColor.UserInfoModelGlobal.email="";
    AppColor.UserInfoModelGlobal.dateOf="";


    AppColor.UserAddressV2.city="";
    AppColor.UserAddressV2.state="";
    AppColor.UserAddressV2.address="";
    AppColor.UserAddressV2.zip="";

    (await getPrefs()).setString(COUNTRY_CODE, "");
    (await getPrefs()).setString(DATE_OF_BIRTH, "");
    (await getPrefs()).setString(EMAIL, "");
    (await getPrefs()).setString(GENDER, "");
    (await getPrefs()).setString(FULL_NAME, "");
    (await getPrefs()).setInt(PHONE_NUMBER, 0);
    (await getPrefs()).setString(CITY, "");
    (await getPrefs()).setString(STATE, "");
    (await getPrefs()).setString(DETAISL_ADDRESS, "");
    (await getPrefs()).setString(ZIP_CODE, "");
    (await getPrefs()).setString(SOCIAL_TOKEN, "");
    (await getPrefs()).setString(LOGIN_TYPE, "");
    (await getPrefs()).setString(PASSWORD, "");



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
  Future<String> getCity()  async{
    return ((await getPrefs()).getString(CITY));

  }

  @override
  Future<String> getState() async{

    return ((await getPrefs()).getString(STATE));
  }

  @override
  Future<String> getDetaislAddress() async{
    return ((await getPrefs()).getString(DETAISL_ADDRESS));

  }

  @override
  Future<String> getZIP() async{

    return ((await getPrefs()).getString(ZIP_CODE));

  }

  @override
  Future<String> getSocialToken()async {
    return ((await getPrefs()).getString(SOCIAL_TOKEN));
  }

  @override
  Future<String> getLoginType() async{
    return ((await getPrefs()).getString(LOGIN_TYPE));
  }

  @override
  Future<String> getPassword() async{
    return ((await getPrefs()).getString(PASSWORD));
  }



  //-----------------------------------------------------------//

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


  @override
  Future<void> setCity(String txt)  async{

    (await getPrefs()).setString(CITY, txt);
  }

  @override
  Future<void> setState(String txt)  async{
    (await getPrefs()).setString(STATE, txt);

  }

  @override
  Future<void> setDetaislAddress(String txt) async{
    (await getPrefs()).setString(DETAISL_ADDRESS, txt);

  }

  @override
  Future<void> setZIP(String txt) async {
    (await getPrefs()).setString(ZIP_CODE, txt);

  }


  @override
  Future<void> setSocialToken(String txt) async{
    (await getPrefs()).setString(SOCIAL_TOKEN, txt);
  }



  @override
  Future<void> setLoginType(String txt)async {
    (await getPrefs()).setString(LOGIN_TYPE, txt);
  }
  @override
  Future<void> setPassword(String txt)async {
    (await getPrefs()).setString(PASSWORD, txt);
  }


}
