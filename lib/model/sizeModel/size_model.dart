library size_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'size_model.g.dart';


abstract class SizeModel implements Built<SizeModel, SizeModelBuilder> {
  // fields go here

  String get size;

  @nullable
  int get id;
  @nullable
  String get price;

  SizeModel._();

  factory SizeModel([updates(SizeModelBuilder b)]) = _$SizeModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SizeModel.serializer, this));
  }

  static SizeModel fromJson(String jsonString) {
    return serializers.deserializeWith(SizeModel.serializer, json.decode(jsonString));
  }

  static Serializer<SizeModel> get serializer => _$sizeModelSerializer;
}