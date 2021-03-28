library cart_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_model.dart';

part 'cart_state.g.dart';


abstract class CartState
implements Built<CartState, CartStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;

  CartModel get cart;
  BuiltList<CartItem> get cartList;


  CartState._();

  factory CartState([updates(CartStateBuilder b)]) = _$CartState;

  factory CartState.initail() {
    return CartState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..cart=null
      ..cartList.replace([])

    );
  }
}