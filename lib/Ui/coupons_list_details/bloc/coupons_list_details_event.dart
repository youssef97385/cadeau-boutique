

library coupons_list_details_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/coupon_list_model/coupon_list_model.dart';
part 'coupons_list_details_event.g.dart';




abstract class CouponsListDetailsEvent{}


abstract class GetCouponsEvent extends CouponsListDetailsEvent
    implements Built<GetCouponsEvent, GetCouponsEventBuilder> {
// fields go here
GetCouponsEvent._();

factory GetCouponsEvent([updates(GetCouponsEventBuilder b)]) = _$GetCouponsEvent;
}

abstract class ClearError extends CouponsListDetailsEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}


