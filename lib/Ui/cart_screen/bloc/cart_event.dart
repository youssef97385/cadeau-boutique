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