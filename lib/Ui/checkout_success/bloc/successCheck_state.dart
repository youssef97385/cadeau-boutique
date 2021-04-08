library successCheck_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';

part 'successCheck_state.g.dart';


abstract class SuccessCheckoutState
    implements Built<SuccessCheckoutState, SuccessCheckoutStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;



  SuccessCheckoutState._();

  factory SuccessCheckoutState([updates(SuccessCheckoutStateBuilder b)]) = _$SuccessCheckoutState;
  factory SuccessCheckoutState.initail() {
    return SuccessCheckoutState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false

    );
  }
}