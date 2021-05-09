library coupon_list_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'coupon_list_model.g.dart';



abstract class CouponListModel implements Built<CouponListModel, CouponListModelBuilder> {
  @BuiltValueField(wireName: "media_path")
  @nullable
  String get image;

  @BuiltValueField(wireName: "name_ar")
  @nullable
  String get arName;

  @BuiltValueField(wireName: "name_en")
  @nullable
  String get enName;


  @BuiltValueField(wireName: "brand_id")
  @nullable
  int get brandId;

  @BuiltValueField(wireName: "price")
  @nullable
  int get price;
  @BuiltValueField(wireName: "name")
  @nullable
  String get name;

  @BuiltValueField(wireName: "brand")
  @nullable
  BrandModel get brand;

  @BuiltValueField(wireName: "descrption_ar")
  @nullable
  String get descrptionAr;

  @BuiltValueField(wireName: "descrption_en")
  @nullable
  String get descrptionEn;

  @BuiltValueField(wireName: "expire_date")
  @nullable
  String get expireDate;

// fields go here
CouponListModel._();

factory CouponListModel([updates(CouponListModelBuilder b)]) = _$CouponListModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CouponListModel.serializer, this));
  }

  static CouponListModel fromJson(String jsonString) {
    return serializers.deserializeWith(CouponListModel.serializer, json.decode(jsonString));
  }

  static Serializer<CouponListModel> get serializer => _$couponListModelSerializer;
}