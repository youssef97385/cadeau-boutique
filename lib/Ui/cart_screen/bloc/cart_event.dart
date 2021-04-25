library cart_event;

import 'package:built_value/built_value.dart';

part 'cart_event.g.dart';

abstract class CartEvent{}

abstract class GetCartInfo extends CartEvent
implements Built<GetCartInfo, GetCartInfoBuilder> {

  //fields go here


  GetCartInfo._();

  factory GetCartInfo([updates(GetCartInfoBuilder b)]) = _$GetCartInfo;
}

abstract class AddSong extends CartEvent
    implements Built<AddSong, AddSongBuilder> {

  //fields go here

  String get song;

  AddSong._();

  factory AddSong([updates(AddSongBuilder b)]) = _$AddSong;
}

abstract class RemoveItem extends CartEvent
    implements Built<RemoveItem, RemoveItemBuilder> {

  //fields go here

  int get id;

  RemoveItem._();

  factory RemoveItem([updates(RemoveItemBuilder b)]) = _$RemoveItem;
}

abstract class GetGlobalWraps extends CartEvent
    implements Built<GetGlobalWraps, GetGlobalWrapsBuilder> {

  //fields go here

  GetGlobalWraps._();

  factory GetGlobalWraps([updates(GetGlobalWrapsBuilder b)]) = _$GetGlobalWraps;
}

abstract class AddGlobalWrap extends CartEvent
    implements Built<AddGlobalWrap, AddGlobalWrapBuilder> {

  //fields go here

  int get wrapId;

  @nullable
  int get wrapColorId;

  AddGlobalWrap._();

  factory AddGlobalWrap([updates(AddGlobalWrapBuilder b)]) = _$AddGlobalWrap;
}

abstract class RemoveGlobalWrap extends CartEvent
    implements Built<RemoveGlobalWrap, RemoveGlobalWrapBuilder> {

  //fields go here



  RemoveGlobalWrap._();

  factory RemoveGlobalWrap([updates(RemoveGlobalWrapBuilder b)]) = _$RemoveGlobalWrap;
}



abstract class AddToCart extends CartEvent
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

abstract class ClearSuccess extends CartEvent
    implements Built<ClearSuccess, ClearSuccessBuilder> {

  //fields go here


  ClearSuccess._();

  factory ClearSuccess([updates(ClearSuccessBuilder b)]) = _$ClearSuccess;
}

abstract class ClearGlobal extends CartEvent
    implements Built<ClearGlobal, ClearGlobalBuilder> {

  //fields go here




  ClearGlobal._();

  factory ClearGlobal([updates(ClearGlobalBuilder b)]) = _$ClearGlobal;
}