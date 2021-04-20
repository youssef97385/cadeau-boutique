library main_gift;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'main_gift.g.dart';


abstract class MainGift implements Built<MainGift, MainGiftBuilder> {

  @nullable
  int get id;




  @BuiltValueField(wireName: "media_path")
  @nullable
  String get image;

  @BuiltValueField(wireName:"text_en")
  @nullable
  String get textEn;

  @BuiltValueField(wireName:"title_ar")
  @nullable
  String get titleAr;

  @BuiltValueField(wireName:"title_en")
  @nullable
  String get titleEn;

  @BuiltValueField(wireName:"text_ar")
  @nullable
  String get textAr;

  @BuiltValueField(wireName: "gift_id")
  @nullable
  int get idGift;



MainGift._();

factory MainGift([updates(MainGiftBuilder b)]) = _$MainGift;

String toJson() {
  return json.encode(serializers.serializeWith(MainGift.serializer, this));
}

static MainGift fromJson(String jsonString) {
  return serializers.deserializeWith(MainGift.serializer, json.decode(jsonString));
}

static Serializer<MainGift> get serializer => _$mainGiftSerializer;
}