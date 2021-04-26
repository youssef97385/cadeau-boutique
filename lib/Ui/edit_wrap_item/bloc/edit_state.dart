library edit_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/product_model/product_model.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:built_collection/built_collection.dart';

part 'edit_state.g.dart';


abstract class EditState
implements Built<EditState, EditStateBuilder> {

  //fields go here
  bool get success;
  bool get isLoading;
  String get error;
  ProductModel get product;
  // BuiltList<WrapItem> get wraps;
  BuiltList<WrapModel> get wraps;
  bool get removed;

  bool get successAddToCart;
  bool get successRemoved;

  EditState._();


  factory EditState([updates(EditStateBuilder b)]) = _$EditState;
  factory EditState.initail() {
    return EditState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..product = null
      ..removed = false
      ..wraps.replace([])
      ..successAddToCart = false
        ..successRemoved = false
    );
  }
}