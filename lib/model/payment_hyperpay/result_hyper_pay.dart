library result_hyper_pay;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'result_hyper_pay.g.dart';




abstract class ResultHyperPay implements Built<ResultHyperPay, ResultHyperPayBuilder> {


  @BuiltValueField(wireName: "code")
  @nullable
  String get code;

  @BuiltValueField(wireName: "description")
  @nullable
  String get desc;
ResultHyperPay._();

factory ResultHyperPay([updates(ResultHyperPayBuilder b)]) = _$ResultHyperPay;


String toJson() {
  return json.encode(serializers.serializeWith(ResultHyperPay.serializer, this));
}

static ResultHyperPay fromJson(String jsonString) {
  return serializers.deserializeWith(ResultHyperPay.serializer, json.decode(jsonString));
}

static Serializer<ResultHyperPay> get serializer => _$resultHyperPaySerializer;


}