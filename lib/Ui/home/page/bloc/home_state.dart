library home_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/main_gift/main_gift.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/slider_model/slider_model.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/coupon_model/coupon_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
part 'home_state.g.dart';


abstract class HomeState
    implements Built<HomeState, HomeStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;
  bool get loginState;

  int get lang;

  BuiltList<SliderModel> get sliders;
  BuiltList<OccasionModel> get occasions;
  BuiltList<OccasionModel> get nearbyOccasions;
  BuiltList<CategoryModel> get categories;
  BuiltList<BrandModel> get brands;
  BuiltList<CouponModel> get coupons;
  BuiltList<WrapModel> get wraps;
  BuiltList<ProductModel> get products;

  MainGift get mainGift;

  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;

  factory HomeState.initail() {
    return HomeState((b) => b
      ..error = ""
      ..lang=0
      ..isLoading = false
      ..success = false
      ..loginState=false
      ..mainGift=null
        ..sliders.replace([])
        ..occasions.replace([])
        ..categories.replace([])
        ..brands.replace([])
        ..coupons.replace([])
        ..wraps.replace([])
        ..products.replace([])
    );
  }
}