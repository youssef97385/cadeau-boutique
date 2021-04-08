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