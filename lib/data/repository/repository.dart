import 'dart:io';
import 'dart:math';

import 'package:built_collection/src/list.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/data/db_helper/Idb_helper.dart';
import 'package:cadeaue_boutique/data/http_helper/Ihttp_helper.dart';
import 'package:cadeaue_boutique/data/prefs_helper/iprefs_helper.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/main_gift/main_gift.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/sms_response/sms_response.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
import 'package:cadeaue_boutique/core/response_hassan.dart'as response_hassan;

import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iprefHelper, this._iDbHelper);

  @override
  Future<int> getAppLanguage() async {
    return await _iprefHelper.getAppLanguage();
  }
  @override
  Future<void> setAppLanguage(int lang) async {
     await _iprefHelper.setAppLanguage(lang);
  }

  @override
  Future<bool> getIsLogin() async {
    return await _iprefHelper.getIsLogin();
  }

  @override
  Future<SignupResponse> signup(
      {String countryCode,
      String phone,
      String gender,
      String name,
      String smsCode,
      String password}) async {
    final user = await _ihttpHelper.signup(
        name: name,
        gender: gender,
        password: password,
        countryCode: countryCode,
        phone: phone,
    smsCode: smsCode);
    final save = await _iprefHelper.saveToken(user.token);



    final nameuser= await _iprefHelper.setNameUser(user.user.name);
    final countyCode= await _iprefHelper.setCountryCode(user.user.countryCode);
    final phoneCode= await _iprefHelper.setPhoneNumber(user.user.phoneNumber);
    final email= await _iprefHelper.setEmail(user.user.email);
    final loginType=await _iprefHelper.setLoginType(LOGIN_TYPE_NORMAL);
    final pass=await _iprefHelper.setPassword(password);
    if(user.user.gender!=null)
      final gemderuser= await _iprefHelper.setGender(user.user.gender);
      final dateOf= await _iprefHelper.setDate(user.user.dateBirth);


    print("000000000 ${user.user.name}");
    // print("00000000000 ${user.user.countryCode}");
    if(user.detaisl!=null){
    if(user.detaisl.city!=null)
      final city= await _iprefHelper.setCity(user.detaisl.city);
    if(user.detaisl.state!=null)
      final state= await _iprefHelper.setState(user.detaisl.state);
    if(user.detaisl.addressDetails!=null)
      final address= await _iprefHelper.setDetaislAddress(user.detaisl.addressDetails);
    if(user.detaisl.zip!=null)
      final zip= await _iprefHelper.setZIP(user.detaisl.zip);
    }
    return user;

  }

  @override
  Future<SignupResponse> signin(
      {String countryCode, String phone, String password}) async {
    final user = await _ihttpHelper.signIn(
        password: password, countryCode: countryCode, phone: phone);
    final save = await _iprefHelper.saveToken(user.token);


    final nameuser= await _iprefHelper.setNameUser(user.user.name);
    final countyCode= await _iprefHelper.setCountryCode(user.user.countryCode);
    final phoneCode= await _iprefHelper.setPhoneNumber(user.user.phoneNumber);
    final loginType=await _iprefHelper.setLoginType(LOGIN_TYPE_NORMAL);
    final pass=await _iprefHelper.setPassword(password);
    if(user.user.gender!=null)
    final gemderuser= await _iprefHelper.setGender(user.user.gender);
    if(user.user.email!=null)
    final email= await _iprefHelper.setEmail(user.user.email);
    if(user.user.dateBirth!=null)
    final dateOf= await _iprefHelper.setDate(user.user.dateBirth);




    print("000000000 ${user.user.name}");

   // print("00000000000 ${user.user.countryCode}");

   if(user.detaisl!=null){
     if(user.detaisl.city!=null)
       final city= await _iprefHelper.setCity(user.detaisl.city);
     if(user.detaisl.state!=null)
       final state= await _iprefHelper.setState(user.detaisl.state);
     if(user.detaisl.addressDetails!=null)
       final address= await _iprefHelper.setDetaislAddress(user.detaisl.addressDetails);
     if(user.detaisl.zip!=null)
       final zip= await _iprefHelper.setZIP(user.detaisl.zip);
   }
    return user;

    return user;
  }

  @override
  Future<SignupResponse> socialSignin(
      {String phoneNumber, String name, String socialToken}) async {
    final user = await _ihttpHelper.socialSignin(
        phoneNumber: phoneNumber, name: name, socialToken: socialToken);
    final save = await _iprefHelper.saveToken(user.token);


    final nameuser= await _iprefHelper.setNameUser(user.user.name);
    final countyCode= await _iprefHelper.setCountryCode("");
    final phoneCode= await _iprefHelper.setPhoneNumber(0);
    final loginType=await _iprefHelper.setLoginType(LOGIN_TYPE_SOCIAL);
    final sToken=await _iprefHelper.setSocialToken(socialToken);
    final pass=await _iprefHelper.setPassword("");
    if(user.user.email!=null) final email= await _iprefHelper.setEmail(user.user.email);
    if(user.user.dateBirth!=null) final dateOf= await _iprefHelper.setDate(user.user.dateBirth);




    print("000000000 ${user.user.name}");
    // print("00000000000 ${user.user.countryCode}");

    if(user.detaisl!=null){
      if(user.detaisl.city!=null)
        final city= await _iprefHelper.setCity(user.detaisl.city);
      if(user.detaisl.state!=null)
        final state= await _iprefHelper.setState(user.detaisl.state);
      if(user.detaisl.addressDetails!=null)
        final address= await _iprefHelper.setDetaislAddress(user.detaisl.addressDetails);
      if(user.detaisl.zip!=null)
        final zip= await _iprefHelper.setZIP(user.detaisl.zip);
    }
//    print("000000000 ${user.detaisl.zip}");
    return user;
  }

  @override
  Future<BuiltList<SliderModel>> getSlider() async {
    final slider = await _ihttpHelper.getSlider();
    return slider;
  }

  @override
  Future<BaseOccasion> getOccasions({int page}) async {
    print("picker1");
    final occasion = await _ihttpHelper.getOccasions(page: page);
    return occasion;
  }

  @override
  Future<BaseCategory> getCategory({int page}) async {
    final category = await _ihttpHelper.getCategory(page: page);
    return category;
  }

  @override
  Future<BaseBrand> getBrands({int page}) async {
    final brand = await _ihttpHelper.getBrands(page: page);
    return brand;
  }

  @override
  Future<BaseCoupon> getCoupon({int page}) async {
    final coupon = await _ihttpHelper.getCoupon(page: page);
    return coupon;
  }

  @override
  Future<BuiltList<WrapModel>> getWraps({bool isGlobalWrap}) async {
    final wraps = await _ihttpHelper.getWraps(isGlobalWrap: isGlobalWrap);
    return wraps;
  }

  @override
  Future<ProductModel> getProductByid({int id}) async {
    final token = await _iprefHelper.getToken();
    final product = await _ihttpHelper.getProductByid(id: id,token:token);
    return product;
  }

  @override
  Future<BuiltList<ProductModel>> getProducts({int id, String type}) async {
    final products = await _ihttpHelper.getProducts(id: id, type: type);
    return products;
  }

  @override
  Future<BuiltList<OccasionModel>> getNearOccasions() async {
    final near = await _ihttpHelper.getNearbyOccasions();
    return near;
  }

  @override
  Future<BuiltList<ProductModel>> getAllProducts() async {
    final products = await _ihttpHelper.getAllProducts();
    return products;
  }

  @override
  Future<WrapItem> getWrapByid({int id}) async {
    final wrap = await _ihttpHelper.getWrapByid(id: id);
    return wrap;
  }

  @override
  Future<BuiltList<RelationModel>> getRelations() async {
    final relations = await _ihttpHelper.getRelation();
    return relations;
  }

  @override
  Future<BuiltList<ProductModel>> getFavourites() async {
    final token = await _iprefHelper.getToken();
    final favourites = await _ihttpHelper.getFavourites(token: token);
    return favourites;
  }

  @override
  Future<bool> addToFavourite({int id}) async {
    final token = await _iprefHelper.getToken();
    final favourites = await _ihttpHelper.addToFav(productId: id, token: token);
    return favourites;
  }

  @override
  Future<BuiltList<ProductModel>> removeFavourite({int id}) async {
    final token = await _iprefHelper.getToken();
    final favourites =
        await _ihttpHelper.removeFavourite(productId: id, token: token);
    return favourites;
  }

  @override
  Future<CartModel> addGlobalWrap({int wrapId, int wrapColor}) async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.addGlobalWrap(
        wrapColor: wrapColor, wrapId: wrapId, token: token);
    return cart;
  }

  @override
  Future<CartModel> addSong({String song}) async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.addSong(token: token);
    return cart;
  }

  @override
  Future<CartModel> addToCart(
      {int giftId, int giftColorId, int wrapId, int wrapColorId,int giftSizeId,int wrapSizeId}) async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.addToCart(
        giftId: giftId,
        wrapId: wrapId,
        giftColorId: giftColorId,
        wrapColorId: wrapColorId,
        giftSizeId: giftSizeId,
        token: token);
    return cart;
  }

  @override
  Future<CartModel> getCartInfo() async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.getCartInfo(token: token);
    return cart;
  }

  @override
  Future<CartModel> removeCartItem({int cartItemId}) async {
    final token = await _iprefHelper.getToken();
    final cart =
        await _ihttpHelper.removeCartItem(cartItemId: cartItemId, token: token);
    return cart;
  }

  @override
  Future<CartModel> removeGlobalWrap() async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.removeGlobalWrap(token: token);
    return cart;
  }

  @override
  Future<CartModel> removeSong() async {
    final token = await _iprefHelper.getToken();
    final cart = await _ihttpHelper.removeSong(token: token);
    return cart;
  }

  @override
  Future<UserInfoModel> editProfileRQ({
    String countryCode, String phone, String gender,
    String name, String email, String date})async {

    final token = await _iprefHelper.getToken();


    final userInfoModel=await _ihttpHelper.editProfileRQ(
      token: token,
      countryCode: countryCode,
      date: date,
      email: email,
      gender:gender,
      name: name,
      phone: phone
    );

    await _iprefHelper.setEmail(email);
    await _iprefHelper.setNameUser(name);
    await _iprefHelper.setDate(date);
    await _iprefHelper.setPhoneNumber(int.parse(phone));
    await _iprefHelper.setGender(gender);
    await _iprefHelper.setCountryCode(countryCode);


    AppColor.UserInfoModelGlobal.phone=phone.toString();
    AppColor.UserInfoModelGlobal.gender=gender;
    AppColor.UserInfoModelGlobal.countryCode=countryCode;
    AppColor.UserInfoModelGlobal.name=name;
    AppColor.UserInfoModelGlobal.dateOf=date;
    AppColor.UserInfoModelGlobal.email=email;


    print("editProfileRQ");

    return userInfoModel;
  }

  @override
  Future<bool> editAddress({
    String city, String state,
    String address_details, String zip_code}) async {
    final token = await _iprefHelper.getToken();
    final item=await _ihttpHelper.editAddress(
     token: token,
     address_details: address_details,
      city: city,
      state: state,
      zip_code: zip_code
    );



    await _iprefHelper.setCity(city);
    await _iprefHelper.setState(state);
    await _iprefHelper.setDetaislAddress(address_details);
    await _iprefHelper.setZIP(zip_code);



    AppColor.UserAddressV2.city=city.toString();
    AppColor.UserAddressV2.state=state;
    AppColor.UserAddressV2.address=address_details;
    AppColor.UserAddressV2.zip=zip_code;


    return item;

  }

  @override
  Future<BuiltList<TrackModel>> getTracksHome() async {
    final token = await _iprefHelper.getToken();
    final item=await _ihttpHelper.getTracksHome(token: token);

    return item;
  }

  @override
  Future<bool> saveFirebaseToken(String fireToken) async {
   String token = await _iprefHelper.getToken();
   if(token==null ||token.isEmpty) return false;
   else{

     final item=await _ihttpHelper.saveFirebaseToken(fireToken, token);
     return true;
   }
  }

  Future<bool> logoutRQ() async{
    String token = await _iprefHelper.getToken();
    if(token==null ||token.isEmpty) return false;
    else{
      final item=await _ihttpHelper.logoutRQ(token);

      if(item!=null &&item) {_iprefHelper.logout();

      print("LOOOOGOOOOGGOOOOGOUUUUT");
      }
      return item;
    }

  }

  @override
  Future<BuiltList<ProductModel>> filter(
      {int occasionId,
      int relationId,
      String gender,
      String minPrice,
      String maxPrice,
      String age}) async{
    print("delete9 $occasionId $relationId $gender $minPrice $maxPrice $age");

    final filteredProducts = await _ihttpHelper.filter(
        age: age,
        gender: gender,
        maxPrice: maxPrice,
        minPrice: minPrice,
        occasionId: occasionId,
        relationId: relationId);
    return filteredProducts;
  }

  @override
  Future<bool> checkoutMultieGift({

    BuiltList<RecieverModel> recieverModel, String total,
    BuiltList<String> giftTo ,
    BuiltList<String> deliveryDate ,
    BuiltList<String> countryCode ,
    BuiltList<String> phone ,
    BuiltList<String> address ,
  }) async{
    final token = await _iprefHelper.getToken();
    final succsess = await _ihttpHelper.checkoutMultieGift(token: token , recieverModel: recieverModel , total: total , giftTo: giftTo ,deliveryDate: deliveryDate ,countryCode: countryCode,phone: phone , address: address);
    return succsess;
  }

  @override
  Future<BuiltList<WrapItem>> getWrapsBygiftId({int giftId}) async{
    final token = await _iprefHelper.getToken();
    final wraps = await _ihttpHelper.getWrapsBygiftId(giftId: giftId , token: token);
    return wraps;
  }

  @override
  Future<String> getCountryCode()  async{
    return await _iprefHelper.getCountryCode();
  }

  @override
  Future<String> getDate()async {
    return await _iprefHelper.getDate();
  }

  @override
  Future<String> getEmail()async {
    return await _iprefHelper.getEmail();
  }

  @override
  Future<String> getGender() async{
    return await _iprefHelper.getGender();
  }

  @override
  Future<String> getNameUser() async{
    return await _iprefHelper.getNameUser();

  }

  @override
  Future<int> getPhoneNumber() async{
    return await _iprefHelper.getPhoneNumber();
  }

  @override
  Future<String> getAddress()async {
    return await _iprefHelper.getDetaislAddress();

  }

  @override
  Future<String> getCity() async{
    return await _iprefHelper.getCity();
  }

  @override
  Future<String> getState()async {
    return await _iprefHelper.getState();
  }

  @override
  Future<String> getZip() async{
    return await _iprefHelper.getZIP();
  }

  @override
  Future<String> getSocialToken() async{
    return await _iprefHelper.getSocialToken();
  }

  @override
  Future<String> getLoginType()async {
    return await _iprefHelper.getLoginType();
  }

  @override
  Future<String> getPassword() async {
    return await _iprefHelper.getPassword();
  }

  @override
  Future<MainGift> getMainGift()async {
    final item = await _ihttpHelper.getMainGift();
    return item;

  }

  @override
  Future<BuiltList<ProductModel>> getTopSeller() async{
    final products = await _ihttpHelper.getTopSeller();
    return products;
  }

  @override
  Future<bool>checkoutPhoneNumber({String countryCode,String phone})async{

    var item=await _ihttpHelper.checkoutPhoneNumber(
        countryCode: countryCode,phone: phone);
    return item;
  }

  @override
  Future<SmsResponse>sendSms({String countryCode, String phone}) async{
    var item=await _ihttpHelper.sendSms(
        countryCode: countryCode,phone: phone);
    return item;
  }
}
