import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:cadeaue_boutique/model/base_response/base_response_model.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';





abstract class IHttpHelper {

Future<SignupResponse> signup({String countryCode , String phone , String gender , String name , String password});

Future<SignupResponse> signIn({String countryCode , String phone , String password});


Future<SignupResponse> socialSignin({String phoneNumber , String name , String socialToken});

Future<BuiltList<SliderModel>> getSlider();

Future<BaseOccasion> getOccasions({
  int page,
});


Future<BuiltList<OccasionModel>> getNearbyOccasions();

Future<BaseCategory> getCategory({
  int page,
});

Future<BaseBrand> getBrands({
  int page,
});

Future<BaseCoupon> getCoupon({
  int page,
});


Future<BuiltList<WrapModel>> getWraps();


Future<ProductModel> getProductByid({int id});

Future<WrapItem> getWrapByid({int id});

Future<BuiltList<ProductModel>> getProducts({int id , String type});

Future<BuiltList<ProductModel>> getAllProducts();

Future<BuiltList<RelationModel>> getRelation();


Future<BuiltList<ProductModel>> getFavourites({String token});

Future<bool> addToFav({
 int productId,
  String token
});
Future<bool> removeFavourite({
 int productId,
  String token
});

Future<CartModel> addToCart({
int giftId,
  int giftColorId,
  int wrapId,
  int wrapColorId,
  String token
});

Future<CartModel> addSong({
String song,
  String token
});

Future<CartModel> removeSong({String token});


Future<CartModel> addGlobalWrap({
  int wrapId,
  int wrapColor,
  String token
});

Future<CartModel> removeGlobalWrap({String token});

Future<CartModel> getCartInfo({String token});

Future<CartModel> removeCartItem({int cartItemId,String token});




Future<UserInfoModel> editProfileRQ({
  String token,
  String countryCode ,
  String phone ,
  String gender ,
  String name ,
  String email,
  String date,
   });




}
