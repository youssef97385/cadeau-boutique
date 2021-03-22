library relation_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'relation_model.g.dart';

abstract class RelationModel implements Built<RelationModel, RelationModelBuilder> {
  // fields go here

  int get id;



  @BuiltValueField(wireName: "media_path")
  String get image;

  @BuiltValueField(wireName: "media_path_mini")
  String get miniImage;

  @BuiltValueField(wireName: "name_ar")
  String get arName;

  @BuiltValueField(wireName: "name_en")
  String get enName;

  RelationModel._();

  factory RelationModel([updates(RelationModelBuilder b)]) = _$RelationModel;

  String toJson() {
    return json.encode(serializers.serializeWith(RelationModel.serializer, this));
  }

  static RelationModel fromJson(String jsonString) {
    return serializers.deserializeWith(RelationModel.serializer, json.decode(jsonString));
  }

  static Serializer<RelationModel> get serializer => _$relationModelSerializer;
}