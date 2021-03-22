library favourite_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:built_collection/built_collection.dart';

part 'favourite_state.g.dart';


abstract class FavouriteState
implements Built<FavouriteState, FavouriteStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;
  bool get loginState;

  BuiltList<ProductModel> get products;

  FavouriteState._();

  factory FavouriteState([updates(FavouriteStateBuilder b)]) = _$FavouriteState;
  factory FavouriteState.initail() {
    return FavouriteState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..loginState=false
      ..products.replace([])
    );
  }
}