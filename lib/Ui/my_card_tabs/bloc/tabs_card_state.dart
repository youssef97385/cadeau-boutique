library tabs_card_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/sent_cards_model/sent_cards_model.dart';
import 'package:cadeaue_boutique/model/track_model/track_model.dart';
part 'tabs_card_state.g.dart';



abstract class TabsCardState implements Built<TabsCardState, TabsCardStateBuilder> {
  bool get success;
  bool get isLoading;
  String get error;

  BuiltList<SentCardModel> get sentCard;
  BuiltList<SentCardModel> get revivedCard;
TabsCardState._();

factory TabsCardState([updates(TabsCardStateBuilder b)]) = _$TabsCardState;


  factory TabsCardState.initail() {
    return TabsCardState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..sentCard.replace([])
      ..revivedCard.replace([])

    );
  }
}