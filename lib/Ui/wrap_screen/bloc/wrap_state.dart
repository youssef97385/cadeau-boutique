library wrap_state;

import 'package:built_value/built_value.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';

part 'wrap_state.g.dart';


abstract class WrapState
implements Built<WrapState, WrapStateBuilder> {

  //fields go here
  bool get success;
  bool get isLoading;
  String get error;
  WrapItem get wrap;

  bool get successAddToCart;

  WrapState._();

  factory WrapState([updates(WrapStateBuilder b)]) = _$WrapState;
  factory WrapState.initail() {
    return WrapState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..wrap = null
        ..successAddToCart=false
    );
  }
}