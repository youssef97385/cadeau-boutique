library brand_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'brand_model.g.dart';

abstract class BrandModel implements Built<BrandModel, BrandModelBuilder> {
  // fields go here

  int get id;

  int get number;

  @BuiltValueField(wireName: "media_path")
  String get image;

  @BuiltValueField(wireName: "name_ar")
  String get arName;

  @BuiltValueField(wireName: "name_en")
  String get enName;


  BrandModel._();

  factory BrandModel([updates(BrandModelBuilder b)]) = _$BrandModel;

  String toJson() {
    return json.encode(serializers.serializeWith(BrandModel.serializer, this));
  }

  static BrandModel fromJson(String jsonString) {
    return serializers.deserializeWith(BrandModel.serializer, json.decode(jsonString));
  }

  static Serializer<BrandModel> get serializer => _$brandModelSerializer;
}