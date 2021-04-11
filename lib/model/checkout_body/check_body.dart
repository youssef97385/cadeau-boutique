library check_body;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializer/serializer.dart';

part 'check_body.g.dart';

abstract class CheckBody implements Built<CheckBody, CheckBodyBuilder> {
  // fields go here

  @BuiltValueField(wireName: "gift_to")
   BuiltList<String> get  gift_to;

  BuiltList<String> get  address;

  @BuiltValueField(wireName: "delivery_date")
   BuiltList<String> get delivery_date;
  @BuiltValueField(wireName: "country_code")
   BuiltList<String> get country_code;
  @BuiltValueField(wireName: "phone_number")
   BuiltList<String> get phone_number;
  @BuiltValueField(wireName: "total_cost")
   String get total_cost;

  CheckBody._();

  factory CheckBody([updates(CheckBodyBuilder b)]) = _$CheckBody;

  String toJson() {
    return json.encode(serializers.serializeWith(CheckBody.serializer, this));
  }

  static CheckBody fromJson(String jsonString) {
    return serializers.deserializeWith(CheckBody.serializer, json.decode(jsonString));
  }

  static Serializer<CheckBody> get serializer => _$checkBodySerializer;
}