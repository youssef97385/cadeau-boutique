library color_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'color_model.g.dart';

abstract class ColorModel implements Built<ColorModel, ColorModelBuilder> {
  // fields go here



  int get id;

  String get color;

  @BuiltValueField(wireName: "media_path")
  @nullable
  String get image;


  ColorModel._();

  factory ColorModel([updates(ColorModelBuilder b)]) = _$ColorModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ColorModel.serializer, this));
  }

  static ColorModel fromJson(String jsonString) {
    return serializers.deserializeWith(ColorModel.serializer, json.decode(jsonString));
  }

  static Serializer<ColorModel> get serializer => _$colorModelSerializer;
}
