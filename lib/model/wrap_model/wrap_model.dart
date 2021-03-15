library wrap_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';
part 'wrap_model.g.dart';

abstract class WrapModel implements Built<WrapModel, WrapModelBuilder> {
  // fields go here



  @BuiltValueField(wireName: "name_group_ar")
  @nullable
  String get wrapNameAr;

  @BuiltValueField(wireName: "name_group_en")
  @nullable
  String get wrapNameEn;

  @BuiltValueField(wireName: "items")
  BuiltList<WrapItem> get wrapItems;




  WrapModel._();

  factory WrapModel([updates(WrapModelBuilder b)]) = _$WrapModel;

  String toJson() {
    return json.encode(serializers.serializeWith(WrapModel.serializer, this));
  }

  static WrapModel fromJson(String jsonString) {
    return serializers.deserializeWith(WrapModel.serializer, json.decode(jsonString));
  }

  static Serializer<WrapModel> get serializer => _$wrapModelSerializer;
}