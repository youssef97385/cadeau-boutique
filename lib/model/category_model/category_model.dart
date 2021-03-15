library category_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'category_model.g.dart';

abstract class CategoryModel implements Built<CategoryModel, CategoryModelBuilder> {
  // fields go here

  int get id;

  int get number;

  @BuiltValueField(wireName: "media_path")
  String get image;

  @BuiltValueField(wireName: "name_ar")
  String get arName;

  @BuiltValueField(wireName: "name_en")
  String get enName;


  CategoryModel._();

  factory CategoryModel([updates(CategoryModelBuilder b)]) = _$CategoryModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CategoryModel.serializer, this));
  }

  static CategoryModel fromJson(String jsonString) {
    return serializers.deserializeWith(CategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryModel> get serializer => _$categoryModelSerializer;
}