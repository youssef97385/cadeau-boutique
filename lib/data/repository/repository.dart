import 'dart:io';
import 'dart:math';

import 'package:built_collection/src/list.dart';
import 'package:cadeaue_boutique/data/db_helper/Idb_helper.dart';
import 'package:cadeaue_boutique/data/http_helper/Ihttp_helper.dart';
import 'package:cadeaue_boutique/data/prefs_helper/iprefs_helper.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';

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
  Future<bool> getIsLogin() async {
    return await _iprefHelper.getIsLogin();
  }

  @override
  Future<SignupResponse> signup({String countryCode, String phone, String gender, String name, String password}) async{
    final user = await _ihttpHelper.signup(name: name , gender: gender , password: password , countryCode: countryCode , phone: phone);
    final save = await _iprefHelper.saveToken(user.token);
    return user;
  }

  @override
  Future<SignupResponse> signin({String countryCode, String phone, String password}) async{
    final user = await _ihttpHelper.signIn( password: password , countryCode: countryCode , phone: phone);
    final save = await _iprefHelper.saveToken(user.token);
    return user;
  }

  @override
  Future<SignupResponse> socialSignin({String phoneNumber, String name, String socialToken}) async{
    final user = await _ihttpHelper.socialSignin( phoneNumber: phoneNumber , name: name , socialToken: socialToken);
    final save = await _iprefHelper.saveToken(user.token);
    return user;
  }

  @override
  Future<BuiltList<SliderModel>> getSlider() async{
    final slider = await _ihttpHelper.getSlider();
    return slider;
  }

  @override
  Future<BaseOccasion> getOccasions({int page}) async{
    final occasion = await _ihttpHelper.getOccasions(page: page);
    return occasion;
  }

  @override
  Future<BaseCategory> getCategory({int page}) async{
    final category = await _ihttpHelper.getCategory(page: page);
    return category;
  }

  @override
  Future<BaseBrand> getBrands({int page}) async{
    final brand = await _ihttpHelper.getBrands(page: page);
    return brand;
  }

  @override
  Future<BaseCoupon> getCoupon({int page}) async{
    final coupon = await _ihttpHelper.getCoupon(page: page);
    return coupon;
  }

  @override
  Future<BuiltList<WrapModel>> getWraps() async{
    final wraps = await _ihttpHelper.getWraps();
    return wraps;
  }

  @override
  Future<ProductModel> getProductByid({int id}) async{
    final product = await _ihttpHelper.getProductByid(id: id);
    return product;
  }

  @override
  Future<BuiltList<ProductModel>> getProducts({int id, String type}) async{
    final products = await _ihttpHelper.getProducts(id: id , type: type);
    return products;
  }

  @override
  Future<BuiltList<OccasionModel>> getNearOccasions() async{
    final near = await _ihttpHelper.getNearbyOccasions();
    return near;
  }

  @override
  Future<BuiltList<ProductModel>> getAllProducts() async{
    final products = await _ihttpHelper.getAllProducts();
    return products;
  }

  @override
  Future<WrapItem> getWrapByid({int id}) async{
    final wrap = await _ihttpHelper.getWrapByid(id: id);
    return wrap;
  }

}
