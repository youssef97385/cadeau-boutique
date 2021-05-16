library reciver_coupons_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'reciver_coupons_model.g.dart';


abstract class ReciverCouponsModel  implements Built<ReciverCouponsModel, ReciverCouponsModelBuilder> {

  String get giftTo;


  String get countryCode;

  String get phoneNumber;
ReciverCouponsModel._();

factory ReciverCouponsModel([updates(ReciverCouponsModelBuilder b)]) = _$ReciverCouponsModel;


  String toJson() {
    return json.encode(serializers.serializeWith(ReciverCouponsModel.serializer, this));
  }

  static ReciverCouponsModel fromJson(String jsonString) {
    return serializers.deserializeWith(ReciverCouponsModel.serializer, json.decode(jsonString));
  }

  static Serializer<ReciverCouponsModel> get serializer => _$reciverCouponsModelSerializer;


}