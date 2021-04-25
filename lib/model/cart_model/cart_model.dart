library cart_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/color_model/color_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';

import 'cart_item.dart';

part 'cart_model.g.dart';

abstract class CartModel implements Built<CartModel, CartModelBuilder> {
  // fields go here

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: "song_link")
  String get songLink;

  @BuiltValueField(wireName: "song_price_befor_add")
  @nullable
  String get songPriceBeforAdd;


  @nullable
  @BuiltValueField(wireName: "song_price")
  int get songPrice;
  @nullable
  @BuiltValueField(wireName: "total_price")
  int get totalPrice;
  @nullable
  @BuiltValueField(wireName: "products_price")
  int get productsPrice;
  @nullable
  @BuiltValueField(wireName: "wraps_price")
  int get wrapsPrice;

  @nullable
  String get status;
  @nullable
  @BuiltValueField(wireName: "wrap_all_cart")
  int get allCartWrapped;
  @nullable
  @BuiltValueField(wireName: "wrap_id")
  int get wrapId;
  @nullable
  @BuiltValueField(wireName: "wrap_color")
  int get wrapColor;
  @nullable
  @BuiltValueField(wireName: "global_wrap")
  WrapItem get globalWrap;

  @nullable
  @BuiltValueField(wireName: "global_wrap_color")
  ColorModel get globalWrapColor;

  @nullable
  BuiltList<CartItem> get details;

  CartModel._();

  factory CartModel([updates(CartModelBuilder b)]) = _$CartModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CartModel.serializer, this));
  }

  static CartModel fromJson(String jsonString) {
    return serializers.deserializeWith(CartModel.serializer, json.decode(jsonString));
  }

  static Serializer<CartModel> get serializer => _$cartModelSerializer;
}
