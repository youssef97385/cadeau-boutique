
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'package:cadeaue_boutique/model/signup_response/signup_response_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/occasion_model/base_occassion.dart';
import 'package:cadeaue_boutique/model/category_model/base_category.dart';
import 'package:cadeaue_boutique/model/brand_model/base_brand.dart';
import 'package:cadeaue_boutique/model/coupon_model/base_coupon.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/base_wrap.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/relation_model/relation_model.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
import 'package:cadeaue_boutique/core/response_hassan.dart'as response_hassan;
abstract class IRepository {

  Future<bool> getIsLogin();

  Future<int> getAppLanguage();

  Future<SignupResponse> signup(
      {String countryCode, String phone, String gender, String name, String password});

  Future<SignupResponse> signin(
      {String countryCode, String phone, String password});

  Future<SignupResponse> socialSignin(
      {String phoneNumber, String name, String socialToken});

  Future<BuiltList<SliderModel>> getSlider();

  Future<BuiltList<OccasionModel>> getNearOccasions();

  Future<BaseOccasion> getOccasions({int page});

  Future<BaseCategory> getCategory({int page});

  Future<BaseBrand> getBrands({int page});

  Future<BaseCoupon> getCoupon({int page});

  Future<BuiltList<WrapModel>> getWraps({bool isGlobalWrap});

  Future<ProductModel> getProductByid({int id});

  Future<WrapItem> getWrapByid({int id});

  Future<BuiltList<ProductModel>> getProducts({int id , String type});

  Future<BuiltList<ProductModel>> getAllProducts();

  Future<BuiltList<RelationModel>> getRelations();

  Future<BuiltList<ProductModel>> getFavourites();

  Future<bool> addToFavourite({int id});

  Future<bool> removeFavourite({int id});



  Future<CartModel> addToCart({
    int giftId,
    int giftColorId,
    int wrapId,
    int wrapColorId,

  });

  Future<CartModel> addSong({
    String song,

  });

  Future<CartModel> removeSong();


  Future<CartModel> addGlobalWrap({
    int wrapId,
    int wrapColor,

  });

  Future<CartModel> removeGlobalWrap();

  Future<CartModel> getCartInfo();

  Future<CartModel> removeCartItem({int cartItemId});


  Future<UserInfoModel> editProfileRQ({
    String countryCode ,
    String phone ,
    String gender ,
    String name ,
    String email,
    String date,
  });






  Future<bool> editAddress({
    String city ,
    String state ,
    String address_details ,
    String zip_code ,
  });

  Future<BuiltList<TrackModel>> getTracksHome();

  Future<bool> saveFirebaseToken(String fireToken);

  Future<bool> logoutRQ();



  Future<BuiltList<ProductModel>> filter({
    int occasionId ,
    int relationId ,
    String gender ,
    String minPrice ,
    String maxPrice ,
    String age});

  Future<bool> checkoutMultieGift({
    BuiltList<RecieverModel> recieverModel ,
    BuiltList<String> giftTo ,
    BuiltList<String> deliveryDate ,
    BuiltList<String> countryCode ,
    BuiltList<String> phone ,
    String total,

  });

  Future<BuiltList<WrapItem>> getWrapsBygiftId({int giftId});
}

