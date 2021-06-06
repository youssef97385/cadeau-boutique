library hyper_pay_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/payment_hyperpay/result_hyper_pay.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'hyper_pay_model.g.dart';



abstract class HyperPayModel implements Built<HyperPayModel, HyperPayModelBuilder> {


  @BuiltValueField(wireName: "result")
  @nullable
  ResultHyperPay get result;


  @BuiltValueField(wireName: "buildNumber")
  @nullable
  String get buildNumber;


  @BuiltValueField(wireName: "timestamp")
  @nullable
  String get timestamp;

  @BuiltValueField(wireName: "ndc")
  @nullable
  String get ndc;

  @BuiltValueField(wireName: "id")
  @nullable
  String get id;


HyperPayModel._();

factory HyperPayModel([updates(HyperPayModelBuilder b)]) = _$HyperPayModel;


  String toJson() {
    return json.encode(serializers.serializeWith(HyperPayModel.serializer, this));
  }

  static HyperPayModel fromJson(String jsonString) {
    return serializers.deserializeWith(HyperPayModel.serializer, json.decode(jsonString));
  }

  static Serializer<HyperPayModel> get serializer => _$hyperPayModelSerializer;

}