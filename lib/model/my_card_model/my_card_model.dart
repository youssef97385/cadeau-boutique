library my_card_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/sent_cards_model/sent_cards_model.dart';
import 'package:built_value/built_value.dart';
part 'my_card_model.g.dart';



abstract class MyCardModel implements Built<MyCardModel, MyCardModelBuilder> {


  @BuiltValueField(wireName: "sent_cards")
  @nullable
  BuiltList<SentCardModel> get  sentCard;

  @BuiltValueField(wireName: "recived_cards")
  @nullable
  BuiltList<SentCardModel> get revicedCard;
MyCardModel._();

factory MyCardModel([updates(MyCardModelBuilder b)]) = _$MyCardModel;


String toJson() {
  return json.encode(serializers.serializeWith(MyCardModel.serializer, this));
}

static MyCardModel fromJson(String jsonString) {
  return serializers.deserializeWith(MyCardModel.serializer, json.decode(jsonString));
}

static Serializer<MyCardModel> get serializer => _$myCardModelSerializer;
}