library product_event;

import 'package:built_value/built_value.dart';

part 'product_event.g.dart';


abstract class ProductEvent {}
abstract class GetProduct extends ProductEvent
implements Built<GetProduct, GetProductBuilder> {

  //fields go here

  int get id;

  GetProduct._();

  factory GetProduct([updates(GetProductBuilder b)]) = _$GetProduct;
}

abstract class AddToFavourite extends ProductEvent
    implements Built<AddToFavourite, AddToFavouriteBuilder> {

  //fields go here

  int get id;

  AddToFavourite._();

  factory AddToFavourite([updates(AddToFavouriteBuilder b)]) = _$AddToFavourite;
}



abstract class AddToCart extends ProductEvent
    implements Built<AddToCart, AddToCartBuilder> {

  //fields go here


  int get giftId;

  @nullable
  int get giftColorId;

  @nullable
  int get wrapId;

  @nullable
  int get wrapColorId;

  AddToCart._();

  factory AddToCart([updates(AddToCartBuilder b)]) = _$AddToCart;
}