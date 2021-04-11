library checkout_event;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';

part 'checkout_event.g.dart';

abstract class CheckoutEvent {}

abstract class AddReciever extends CheckoutEvent
    implements Built<AddReciever, AddRecieverBuilder> {
  //fields go here

  String get giftTo;

  String get deliveryDate;

  String get countryCode;

  String get phoneNumber;

  String get address;

  AddReciever._();

  factory AddReciever([updates(AddRecieverBuilder b)]) = _$AddReciever;
}

abstract class EditReciever extends CheckoutEvent
    implements Built<EditReciever, EditRecieverBuilder> {
  //fields go here

  RecieverModel get recieverModel;


  int get index;

  EditReciever._();

  factory EditReciever([updates(EditRecieverBuilder b)]) = _$EditReciever;
}

abstract class DeleteReciever extends CheckoutEvent
    implements Built<DeleteReciever, DeleteRecieverBuilder> {
  //fields go here

  @nullable
  RecieverModel get reciever;

  int get index;

  DeleteReciever._();

  factory DeleteReciever([updates(DeleteRecieverBuilder b)]) = _$DeleteReciever;
}
