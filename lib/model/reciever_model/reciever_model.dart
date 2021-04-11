library reciever_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'reciever_model.g.dart';

abstract class RecieverModel implements Built<RecieverModel, RecieverModelBuilder> {
  // fields go here

  String get giftTo;

  String get deliveryDate;

  String get countryCode;

  String get phoneNumber;

  String get address;




  RecieverModel._();

  factory RecieverModel([updates(RecieverModelBuilder b)]) = _$RecieverModel;

  String toJson() {
    return json.encode(serializers.serializeWith(RecieverModel.serializer, this));
  }

  static RecieverModel fromJson(String jsonString) {
    return serializers.deserializeWith(RecieverModel.serializer, json.decode(jsonString));
  }

  static Serializer<RecieverModel> get serializer => _$recieverModelSerializer;
}
