library successCheck_event;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'package:cadeaue_boutique/model/reciver_checkout_coupons_model/reciver_coupons_model.dart';

part 'successCheck_event.g.dart';


abstract class SuccessCheckEvent{}


abstract class TryCheckout extends SuccessCheckEvent
    implements Built<TryCheckout, TryCheckoutBuilder> {

  //fields go here


  BuiltList<RecieverModel> get recievers;

  BuiltList<String> get giftTo;
  BuiltList<String> get deliveryDate;
  BuiltList<String> get countryCode;
  BuiltList<String> get phoneNumber;
  BuiltList<String> get address;
  String get total;
  String get paymentType;

  TryCheckout._();

  factory TryCheckout([updates(TryCheckoutBuilder b)]) = _$TryCheckout;
}


abstract class TryCheckOutCoupons extends SuccessCheckEvent implements Built<TryCheckOutCoupons, TryCheckOutCouponsBuilder> {
  BuiltList<String> get giftTo;
  BuiltList<ReciverCouponsModel> get recievers;
  BuiltList<String> get countryCode;
  BuiltList<String> get phoneNumber;
  int get bradnId;
  int get itemId;
TryCheckOutCoupons._();

factory TryCheckOutCoupons([updates(TryCheckOutCouponsBuilder b)]) = _$TryCheckOutCoupons;



}


abstract class GetCheckoutID extends SuccessCheckEvent implements Built<GetCheckoutID, GetCheckoutIDBuilder> {

  String get totla;
  String get people;
  String get paymentType;


GetCheckoutID._();

factory GetCheckoutID([updates(GetCheckoutIDBuilder b)]) = _$GetCheckoutID;
}

