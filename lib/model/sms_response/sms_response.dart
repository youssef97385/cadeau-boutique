library sms_response;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'sms_response.g.dart';


abstract class SmsResponse implements Built<SmsResponse, SmsResponseBuilder> {


  int get data;
  String get message;

SmsResponse._();

factory SmsResponse([updates(SmsResponseBuilder b)]) = _$SmsResponse;

  String toJson() {
    return json.encode(serializers.serializeWith(SmsResponse.serializer, this));
  }

  static SmsResponse fromJson(String jsonString) {
    return serializers.deserializeWith(SmsResponse.serializer, json.decode(jsonString));
  }

  static Serializer<SmsResponse> get serializer => _$smsResponseSerializer;
}