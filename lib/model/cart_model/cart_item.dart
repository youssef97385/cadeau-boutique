library cart_item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/color_model/color_model.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';

part 'cart_item.g.dart';

abstract class CartItem implements Built<CartItem, CartItemBuilder> {
  // fields go here


  int get id;

  @nullable
  ProductModel get gift;

  @BuiltValueField(wireName: "gift_color")
  @nullable
  ColorModel get giftColor;

  @nullable
  ProductModel get wrap;

  @BuiltValueField(wireName: "wrap_color")
  @nullable
  ColorModel get wrapColor;

  @BuiltValueField(wireName: "total_price")
  @nullable
  int get totalPrice;

  @BuiltValueField(wireName: "gift_size_id")
  @nullable
  int get giftSizeId;

  @BuiltValueField(wireName: "wrap_size_id")
  @nullable
  int get wrapSizeId;





  CartItem._();

  factory CartItem([updates(CartItemBuilder b)]) = _$CartItem;

  String toJson() {
    return json.encode(serializers.serializeWith(CartItem.serializer, this));
  }

  static CartItem fromJson(String jsonString) {
    return serializers.deserializeWith(CartItem.serializer, json.decode(jsonString));
  }

  static Serializer<CartItem> get serializer => _$cartItemSerializer;
}
