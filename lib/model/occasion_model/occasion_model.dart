library occasion_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'occasion_model.g.dart';

abstract class OccasionModel implements Built<OccasionModel, OccasionModelBuilder> {
  // fields go here

  int get id;

  int get number;

  @BuiltValueField(wireName: "media_path")
  String get image;

  @BuiltValueField(wireName: "media_path_mini")
  String get miniImage;

   @BuiltValueField(wireName: "name_ar")
  String get arName;

   @BuiltValueField(wireName: "name_en")
  String get enName;

   @BuiltValueField(wireName: "is_deleted")
   int get isDeleted;


  OccasionModel._();

  factory OccasionModel([updates(OccasionModelBuilder b)]) = _$OccasionModel;

  String toJson() {
    return json.encode(serializers.serializeWith(OccasionModel.serializer, this));
  }

  static OccasionModel fromJson(String jsonString) {
    return serializers.deserializeWith(OccasionModel.serializer, json.decode(jsonString));
  }

  static Serializer<OccasionModel> get serializer => _$occasionModelSerializer;
}