library gift_size;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'gift_size.g.dart';



abstract class GiftSize implements Built<GiftSize, GiftSizeBuilder> {


  @nullable
  String get price;
GiftSize._();

factory GiftSize([updates(GiftSizeBuilder b)]) = _$GiftSize;

  String toJson() {
    return json.encode(serializers.serializeWith(GiftSize.serializer, this));
  }

  static GiftSize fromJson(String jsonString) {
    return serializers.deserializeWith(GiftSize.serializer, json.decode(jsonString));
  }

  static Serializer<GiftSize> get serializer => _$giftSizeSerializer;
}