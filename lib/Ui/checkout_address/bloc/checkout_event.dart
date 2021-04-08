library checkout_event;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';

part 'checkout_event.g.dart';


abstract class CheckoutEvent{}
abstract class AddReciever extends CheckoutEvent
    implements Built<AddReciever, AddRecieverBuilder> {

  //fields go here


  String get giftTo;

  String get deliveryDate;

  String get countryCode;

  String get phoneNumber;


  AddReciever._();

  factory AddReciever([updates(AddRecieverBuilder b)]) = _$AddReciever;
}
//
// abstract class TryCheckout extends CheckoutEvent
//     implements Built<TryCheckout, TryCheckoutBuilder> {
//
//   //fields go here
//
//
// BuiltList<RecieverModel> get recievers;
//
//
//   TryCheckout._();
//
//   factory TryCheckout([updates(TryCheckoutBuilder b)]) = _$TryCheckout;
// }