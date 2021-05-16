library checkout_coupons_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'checkout_coupons_model.g.dart';


abstract class CheckoutCoupnsModel
    implements Built<CheckoutCoupnsModel, CheckoutCoupnsModelBuilder> {



  @BuiltValueField(wireName: "gift_to")
  BuiltList<String> get  gift_to;

  @BuiltValueField(wireName: "country_code")
  BuiltList<String> get country_code;


  @BuiltValueField(wireName: "phone_number")
  BuiltList<String> get phone_number;

  @BuiltValueField(wireName: "brand_id")
  int get brandID;

  @BuiltValueField(wireName: "card_id")
  int get cardID;
CheckoutCoupnsModel._();

factory CheckoutCoupnsModel([updates(CheckoutCoupnsModelBuilder b)]) = _$CheckoutCoupnsModel;

String toJson() {
  return json.encode(serializers.serializeWith(CheckoutCoupnsModel.serializer, this));
}

static CheckoutCoupnsModel fromJson(String jsonString) {
  return serializers.deserializeWith(CheckoutCoupnsModel.serializer, json.decode(jsonString));
}


static Serializer<CheckoutCoupnsModel> get serializer => _$checkoutCoupnsModelSerializer;
}