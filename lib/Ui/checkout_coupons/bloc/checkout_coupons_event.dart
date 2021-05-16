library checkout_coupons_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/reciver_checkout_coupons_model/reciver_coupons_model.dart';
part 'checkout_coupons_event.g.dart';


abstract class CheckoutCouponsEvent{}



abstract class AddReciever extends CheckoutCouponsEvent
    implements Built<AddReciever, AddRecieverBuilder> {
  //fields go here

  String get giftTo;



  String get countryCode;

  String get phoneNumber;



  AddReciever._();

  factory AddReciever([updates(AddRecieverBuilder b)]) = _$AddReciever;
}

abstract class EditReciever extends CheckoutCouponsEvent
    implements Built<EditReciever, EditRecieverBuilder> {
  //fields go here

  ReciverCouponsModel get recieverModel;


  int get index;
  String get giftTo;
  String get countryCode;
  String get phoneNumber;


  EditReciever._();

  factory EditReciever([updates(EditRecieverBuilder b)]) = _$EditReciever;
}


abstract class DeleteReciever extends CheckoutCouponsEvent
    implements Built<DeleteReciever, DeleteRecieverBuilder> {
  //fields go here

  @nullable
  ReciverCouponsModel get reciever;

  int get index;

  DeleteReciever._();

  factory DeleteReciever([updates(DeleteRecieverBuilder b)]) = _$DeleteReciever;
}



