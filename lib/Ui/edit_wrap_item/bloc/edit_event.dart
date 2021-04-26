library edit_event;

import 'package:built_value/built_value.dart';

part 'edit_event.g.dart';


abstract class EditEvent{}
abstract class GetProduct extends EditEvent
    implements Built<GetProduct, GetProductBuilder> {

  //fields go here

  int get id;

  GetProduct._();

  factory GetProduct([updates(GetProductBuilder b)]) = _$GetProduct;
}

abstract class AddToFavourite extends EditEvent
    implements Built<AddToFavourite, AddToFavouriteBuilder> {

  //fields go here

  int get id;

  AddToFavourite._();

  factory AddToFavourite([updates(AddToFavouriteBuilder b)]) = _$AddToFavourite;
}



abstract class AddToCart extends EditEvent
    implements Built<AddToCart, AddToCartBuilder> {

  //fields go here


  int get giftId;

  @nullable
  int get giftColorId;

  @nullable
  int get wrapId;

  @nullable
  int get wrapColorId;

  @nullable
  int get wrapSizeId;

  @nullable
  int get giftSizeId;

  AddToCart._();

  factory AddToCart([updates(AddToCartBuilder b)]) = _$AddToCart;
}

abstract class GetWrapByGift extends EditEvent
    implements Built<GetWrapByGift, GetWrapByGiftBuilder> {

  //fields go here

  int get giftId;

  GetWrapByGift._();

  factory GetWrapByGift([updates(GetWrapByGiftBuilder b)]) = _$GetWrapByGift;
}

abstract class RemoveFavourite extends EditEvent
    implements Built<RemoveFavourite, RemoveFavouriteBuilder> {

  //fields go here

  int get id;

  RemoveFavourite._();

  factory RemoveFavourite([updates(RemoveFavouriteBuilder b)]) = _$RemoveFavourite;
}
abstract class ClearSuccess extends EditEvent
    implements Built<ClearSuccess, ClearSuccessBuilder> {

  //fields go here


  ClearSuccess._();

  factory ClearSuccess([updates(ClearSuccessBuilder b)]) = _$ClearSuccess;
}

abstract class RemoveItem extends EditEvent
    implements Built<RemoveItem, RemoveItemBuilder> {

  //fields go here

  int get id;

  RemoveItem._();

  factory RemoveItem([updates(RemoveItemBuilder b)]) = _$RemoveItem;
}