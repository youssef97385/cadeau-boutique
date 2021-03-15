library base_wrap;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';

part 'base_wrap.g.dart';

abstract class BaseWrap implements Built<BaseWrap, BaseWrapBuilder> {
  // fields go here


  WrapModel get wraps;



  BaseWrap._();

  factory BaseWrap([updates(BaseWrapBuilder b)]) = _$BaseWrap;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseWrap.serializer, this));
  }

  static BaseWrap fromJson(String jsonString) {
    return serializers.deserializeWith(BaseWrap.serializer, json.decode(jsonString));
  }

  static Serializer<BaseWrap> get serializer => _$baseWrapSerializer;
}