library coupons_list_details_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/coupon_list_model/coupon_list_model.dart';
part 'coupons_list_details_state.g.dart';



abstract class CouponsListDetaislState
    implements Built<CouponsListDetaislState, CouponsListDetaislStateBuilder> {
  bool get success;
  bool get successDetails;
  bool get isLoading;
  String get error;

  BuiltList<CouponListModel> get couponsData;
CouponsListDetaislState._();

factory CouponsListDetaislState([updates(CouponsListDetaislStateBuilder b)]) = _$CouponsListDetaislState;

  factory CouponsListDetaislState.initail() {
    return CouponsListDetaislState((b) => b
      ..error = ""
      ..successDetails=false
      ..isLoading = false
      ..success = false
      ..couponsData.replace([])

    );
  }
}



