library checkout_state;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';

part 'checkout_state.g.dart';


abstract class CheckoutState
implements Built<CheckoutState, CheckoutStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;

  BuiltList<RecieverModel> get recievers;

  BuiltList<String> get giftTo;
  BuiltList<String> get deliveryDate;
  BuiltList<String> get countryCode;
  BuiltList<String> get phoneNumber;
  String get total;

  CheckoutState._();

  factory CheckoutState([updates(CheckoutStateBuilder b)]) = _$CheckoutState;
  factory CheckoutState.initail() {
    return CheckoutState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..recievers.replace([])
      ..giftTo.replace([])
      ..deliveryDate.replace([])
      ..countryCode.replace([])
      ..phoneNumber.replace([])
        ..total = "0"

    );
  }
}