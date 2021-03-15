library base_occasion;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/occasion_model/occasion_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'base_occassion.g.dart';



abstract class BaseOccasion implements Built<BaseOccasion, BaseOccasionBuilder> {
  // fields go here

  @BuiltValueField(wireName:"last_page")
  int get page ;

  BuiltList<OccasionModel> get data;

  BaseOccasion._();

  factory BaseOccasion([updates(BaseOccasionBuilder b)]) = _$BaseOccasion;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseOccasion.serializer, this));
  }

  static BaseOccasion fromJson(String jsonString) {
    return serializers.deserializeWith(BaseOccasion.serializer, json.decode(jsonString));
  }

  static Serializer<BaseOccasion> get serializer => _$baseOccasionSerializer;
}