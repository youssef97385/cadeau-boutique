library checkout_coupons_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/reciver_checkout_coupons_model/reciver_coupons_model.dart';
part 'checkout_coupons_state.g.dart';


abstract class CheckoutCouponsState
    implements Built<CheckoutCouponsState, CheckoutCouponsStateBuilder> {



  bool get success;
  bool get isLoading;
  String get error;
  BuiltList<ReciverCouponsModel> get recievers;
  BuiltList<String> get giftTo;
  BuiltList<String> get countryCode;
  BuiltList<String> get phoneNumber;


CheckoutCouponsState._();

factory CheckoutCouponsState([updates(CheckoutCouponsStateBuilder b)]) = _$CheckoutCouponsState;
  factory CheckoutCouponsState.initail() {
    return CheckoutCouponsState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..recievers.replace([])
      ..giftTo.replace([])
      ..countryCode.replace([])
      ..phoneNumber.replace([])
    );
  }

}