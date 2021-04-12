library product_state;

import 'package:built_value/built_value.dart';

import 'package:cadeaue_boutique/model/product_model/product_model.dart';

import '../../../model/wrap_model/wrap_item.dart';
import '../../../model/wrap_model/wrap_model.dart';
import 'package:built_collection/built_collection.dart';
part 'product_state.g.dart';


abstract class ProductState
implements Built<ProductState, ProductStateBuilder> {

  //fields go here
  bool get success;
  bool get isLoading;
  String get error;
  ProductModel get product;
  BuiltList<WrapItem> get wraps;
  bool get removed;

  bool get successAddToCart;

  ProductState._();

  factory ProductState([updates(ProductStateBuilder b)]) = _$ProductState;

  factory ProductState.initail() {
    return ProductState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
     ..product = null
      ..removed = false
        ..wraps.replace([])
      ..successAddToCart = false
    );
  }
}