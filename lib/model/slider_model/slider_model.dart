library slider_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'slider_model.g.dart';

abstract class SliderModel implements Built<SliderModel, SliderModelBuilder> {
  // fields go here

  int get number;

  @BuiltValueField(wireName: "media_path")
  String get img;


  @BuiltValueField(wireName: "brand_id")
  @nullable
  int get brandID;

  SliderModel._();

  factory SliderModel([updates(SliderModelBuilder b)]) = _$SliderModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SliderModel.serializer, this));
  }

  static SliderModel fromJson(String jsonString) {
    return serializers.deserializeWith(SliderModel.serializer, json.decode(jsonString));
  }

  static Serializer<SliderModel> get serializer => _$sliderModelSerializer;
}