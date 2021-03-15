library coupon_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';

part 'coupon_model.g.dart';

abstract class CouponModel implements Built<CouponModel, CouponModelBuilder> {
  // fields go here

  int get id;


  @BuiltValueField(wireName: "media_path")
  String get image;

  @BuiltValueField(wireName: "name_ar")
  String get arName;

  @BuiltValueField(wireName: "name_en")
  String get enName;

  @BuiltValueField(wireName: "start_date")
  String get startDate;

  @BuiltValueField(wireName: "end_date")
  String get endDate;

  @BuiltValueField(wireName: "main_price")
  String get mainPrice;

  @BuiltValueField(wireName: "brand_id")
  @nullable
  int get brandId;





  CouponModel._();

  factory CouponModel([updates(CouponModelBuilder b)]) = _$CouponModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CouponModel.serializer, this));
  }

  static CouponModel fromJson(String jsonString) {
    return serializers.deserializeWith(CouponModel.serializer, json.decode(jsonString));
  }

  static Serializer<CouponModel> get serializer => _$couponModelSerializer;
}