library base_category;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'base_category.g.dart';

abstract class BaseCategory implements Built<BaseCategory, BaseCategoryBuilder> {
  // fields go here

  @BuiltValueField(wireName:"last_page")
  int get page ;

  BuiltList<CategoryModel> get data;

  BaseCategory._();

  factory BaseCategory([updates(BaseCategoryBuilder b)]) = _$BaseCategory;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseCategory.serializer, this));
  }

  static BaseCategory fromJson(String jsonString) {
    return serializers.deserializeWith(BaseCategory.serializer, json.decode(jsonString));
  }

  static Serializer<BaseCategory> get serializer => _$baseCategorySerializer;
}