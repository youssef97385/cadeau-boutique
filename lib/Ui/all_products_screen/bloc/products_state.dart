library products_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';


part 'products_state.g.dart';


abstract class ProductsState
implements Built<ProductsState, ProductsStateBuilder> {

  //fields go here
  bool get success;
  bool get isLoading;
  String get error;

  BuiltList<ProductModel> get products;

  ProductsState._();

  factory ProductsState([updates(ProductsStateBuilder b)]) = _$ProductsState;

  factory ProductsState.initail() {
    return ProductsState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..products.replace([])

    );
  }
}