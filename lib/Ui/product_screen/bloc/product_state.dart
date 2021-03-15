library product_state;

import 'package:built_value/built_value.dart';

import 'package:cadeaue_boutique/model/product_model/product_model.dart';
part 'product_state.g.dart';


abstract class ProductState
implements Built<ProductState, ProductStateBuilder> {

  //fields go here
  bool get success;
  bool get isLoading;
  String get error;
  ProductModel get product;

  ProductState._();

  factory ProductState([updates(ProductStateBuilder b)]) = _$ProductState;

  factory ProductState.initail() {
    return ProductState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
     ..product = null
    );
  }
}