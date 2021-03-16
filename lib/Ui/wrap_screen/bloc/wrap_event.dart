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