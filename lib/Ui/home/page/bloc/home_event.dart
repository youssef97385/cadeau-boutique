library home_event;

import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent{}

abstract class GetSlider extends HomeEvent
implements Built<GetSlider, GetSliderBuilder> {

  //fields go here



  GetSlider._();

  factory GetSlider([updates(GetSliderBuilder b)]) = _$GetSlider;
}

abstract class GetOccasion extends HomeEvent
    implements Built<GetOccasion, GetOccasionBuilder> {

  //fields go here


  GetOccasion._();

  factory GetOccasion([updates(GetOccasionBuilder b)]) = _$GetOccasion;
}

abstract class GetCategory extends HomeEvent
    implements Built<GetCategory, GetCategoryBuilder> {

  //fields go here


  GetCategory._();

  factory GetCategory([updates(GetCategoryBuilder b)]) = _$GetCategory;
}

abstract class GetBrand extends HomeEvent
    implements Built<GetBrand, GetBrandBuilder> {

  //fields go here


  GetBrand._();

  factory GetBrand([updates(GetBrandBuilder b)]) = _$GetBrand;
}

abstract class GetCoupon extends HomeEvent
    implements Built<GetCoupon, GetCouponBuilder> {

  //fields go here


  GetCoupon._();

  factory GetCoupon([updates(GetCouponBuilder b)]) = _$GetCoupon;
}

abstract class GetWraps extends HomeEvent
    implements Built<GetWraps, GetWrapsBuilder> {

  //fields go here



  GetWraps._();

  factory GetWraps([updates(GetWrapsBuilder b)]) = _$GetWraps;
}

abstract class GetNearby extends HomeEvent
    implements Built<GetNearby, GetNearbyBuilder> {

  //fields go here



  GetNearby._();

  factory GetNearby([updates(GetNearbyBuilder b)]) = _$GetNearby;
}

abstract class GetAllProducts extends HomeEvent
    implements Built<GetAllProducts, GetAllProductsBuilder> {

  //fields go here



  GetAllProducts._();

  factory GetAllProducts([updates(GetAllProductsBuilder b)]) = _$GetAllProducts;
}