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


  AddWrap._();

  factory AddWrap([updates(AddWrapBuilder b)]) = _$AddWrap;
}