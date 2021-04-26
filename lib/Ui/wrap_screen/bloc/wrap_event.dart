library wrap_event;

import 'package:built_value/built_value.dart';

part 'wrap_event.g.dart';


abstract class WrapEvent{}

abstract class GetWrap extends WrapEvent
implements Built<GetWrap, GetWrapBuilder> {

  //fields go here

  int get id;

  GetWrap._();

  factory GetWrap([updates(GetWrapBuilder b)]) = _$GetWrap;
}

abstract class AddToCart extends WrapEvent
    implements Built<AddToCart, AddToCartBuilder> {

  //fields go here

  int get wrapId;

  @nullable
  int get wrapColorId;


  AddToCart._();

  factory AddToCart([updates(AddToCartBuilder b)]) = _$AddToCart;
}

abstract class AddWrap extends WrapEvent
    implements Built<AddWrap, AddWrapBuilder> {

  //fields go here

  int get wrapId;

  @nullable
  int get wrapColorId;

  @nullable
  int get wrapSizeId;


  AddWrap._();

  factory AddWrap([updates(AddWrapBuilder b)]) = _$AddWrap;
}
abstract class ClearSuccess extends WrapEvent
    implements Built<ClearSuccess, ClearSuccessBuilder> {

  //fields go here


  ClearSuccess._();

  factory ClearSuccess([updates(ClearSuccessBuilder b)]) = _$ClearSuccess;
}
abstract class Clear extends WrapEvent
    implements Built<Clear, ClearBuilder> {

  //fields go here


  Clear._();

  factory Clear([updates(ClearBuilder b)]) = _$Clear;
}

abstract class AddToCartWrap extends WrapEvent
    implements Built<AddToCartWrap, AddToCartWrapBuilder> {

  //fields go here


  int get giftId;

  @nullable
  int get giftColorId;

  @nullable
  int get wrapId;

  @nullable
  int get wrapColorId;



  AddToCartWrap._();

  factory AddToCartWrap([updates(AddToCartWrapBuilder b)]) = _$AddToCartWrap;
}
abstract class RemoveItemWrap extends WrapEvent
    implements Built<RemoveItemWrap, RemoveItemWrapBuilder> {

  //fields go here

  int get id;

  RemoveItemWrap._();

  factory RemoveItemWrap([updates(RemoveItemWrapBuilder b)]) = _$RemoveItemWrap;
}