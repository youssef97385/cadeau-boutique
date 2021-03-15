library base_brand;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'base_brand.g.dart';

abstract class BaseBrand implements Built<BaseBrand, BaseBrandBuilder> {
  // fields go here

  @BuiltValueField(wireName:"last_page")
  int get page ;

  BuiltList<BrandModel> get data;

  BaseBrand._();

  factory BaseBrand([updates(BaseBrandBuilder b)]) = _$BaseBrand;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseBrand.serializer, this));
  }

  static BaseBrand fromJson(String jsonString) {
    return serializers.deserializeWith(BaseBrand.serializer, json.decode(jsonString));
  }

  static Serializer<BaseBrand> get serializer => _$baseBrandSerializer;
}