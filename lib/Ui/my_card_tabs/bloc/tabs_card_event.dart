library tabs_card_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'tabs_card_event.g.dart';


abstract class TabsCardEvent{}



abstract class GetSentEvent extends TabsCardEvent
    implements Built<GetSentEvent, GetSentEventBuilder> {
// fields go here
GetSentEvent._();

factory GetSentEvent([updates(GetSentEventBuilder b)]) = _$GetSentEvent;
}

abstract class ClearError extends TabsCardEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}