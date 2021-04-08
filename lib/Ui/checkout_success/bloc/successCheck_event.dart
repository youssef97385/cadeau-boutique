library successCheck_event;

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';

part 'successCheck_event.g.dart';


abstract class SuccessCheckEvent{}


abstract class TryCheckout extends SuccessCheckEvent
    implements Built<TryCheckout, TryCheckoutBuilder> {

  //fields go here


  BuiltList<RecieverModel> get recievers;


  TryCheckout._();

  factory TryCheckout([updates(TryCheckoutBuilder b)]) = _$TryCheckout;
}