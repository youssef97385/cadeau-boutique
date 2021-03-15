library wrap_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/color_model/color_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/sizeModel/size_model.dart';

part 'wrap_item.g.dart';

abstract class WrapItem implements Built<WrapItem, WrapItemBuilder> {
  // fields go here

  int get id;

  @BuiltValueField(wireName: "name_ar")
  @nullable
  String get nameAr;

  @BuiltValueField(wireName: "name_en")
  @nullable
  String get nameEn;

  @BuiltValueField(wireName: "media_path")
  @nullable
  String get image;

  @BuiltValueField(wireName: "main_price")
  @nullable
  String get mainPrice;

  @nullable
  BuiltList<SizeModel> get sizes;

  @nullable
  BuiltList<ColorModel> get colors;

  WrapItem._();

  factory WrapItem([updates(WrapItemBuilder b)]) = _$WrapItem;

  String toJson() {
    return json.encode(serializers.serializeWith(WrapItem.serializer, this));
  }

  static WrapItem fromJson(String jsonString) {
    return serializers.deserializeWith(WrapItem.serializer, json.decode(jsonString));
  }

  static Serializer<WrapItem> get serializer => _$wrapItemSerializer;
}