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

abstract class AddToFavouriteEdit extends EditEvent
    implements Built<AddToFavouriteEdit, AddToFavouriteEditBuilder> {

  //fields go here

  int get id;

  AddToFavouriteEdit._();

  factory AddToFavouriteEdit([updates(AddToFavouriteEditBuilder b)]) = _$AddToFavouriteEdit;
}



abstract class AddToCartEdit extends EditEvent
    implements Built<AddToCartEdit, AddToCartEditBuilder> {

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

  AddToCartEdit._();



  factory AddToCartEdit([updates(AddToCartEditBuilder b)]) = _$AddToCartEdit;
}

abstract class GetWrapByGift extends EditEvent
    implements Built<GetWrapByGift, GetWrapByGiftBuilder> {

  //fields go here

  int get giftId;

  GetWrapByGift._();

  factory GetWrapByGift([updates(GetWrapByGiftBuilder b)]) = _$GetWrapByGift;
}

abstract class RemoveFavouriteEdit extends EditEvent
    implements Built<RemoveFavouriteEdit, RemoveFavouriteEditBuilder> {

  //fields go here

  int get id;

  RemoveFavouriteEdit._();

  factory RemoveFavouriteEdit([updates(RemoveFavouriteEditBuilder b)]) = _$RemoveFavouriteEdit;
}
abstract class ClearSuccessEdit extends EditEvent
    implements Built<ClearSuccessEdit, ClearSuccessEditBuilder> {

  //fields go here


  ClearSuccessEdit._();

  factory ClearSuccessEdit([updates(ClearSuccessEditBuilder b)]) = _$ClearSuccessEdit;
}

abstract class RemoveItemEdit extends EditEvent
    implements Built<RemoveItemEdit, RemoveItemEditBuilder> {

  //fields go here

  int get id;

  RemoveItemEdit._();

  factory RemoveItemEdit([updates(RemoveItemEditBuilder b)]) = _$RemoveItemEdit;
}