library base_coupon;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/coupon_model/coupon_model.dart';
part 'base_coupon.g.dart';

abstract class BaseCoupon implements Built<BaseCoupon, BaseCouponBuilder> {
  // fields go here
  @BuiltValueField(wireName:"last_page")
  int get page ;

  BuiltList<CouponModel> get data;

  BaseCoupon._();

  factory BaseCoupon([updates(BaseCouponBuilder b)]) = _$BaseCoupon;

  String toJson() {
    return json.encode(serializers.serializeWith(BaseCoupon.serializer, this));
  }

  static BaseCoupon fromJson(String jsonString) {
    return serializers.deserializeWith(BaseCoupon.serializer, json.decode(jsonString));
  }

  static Serializer<BaseCoupon> get serializer => _$baseCouponSerializer;
}