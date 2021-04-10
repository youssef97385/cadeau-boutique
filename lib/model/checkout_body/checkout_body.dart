
import 'package:built_collection/built_collection.dart';
import 'dart:convert';

class CheckoutBody {
 final BuiltList<String>  giftTo;
 final BuiltList<String> deliveryDate;
  final BuiltList<String>  countryCode;
  final BuiltList<String>  phoneNumber;
  final String total;
  const CheckoutBody({this.giftTo, this.deliveryDate, this.countryCode,this.phoneNumber,this.total});


 Map<String, dynamic> toJson() => {
   "gift_to":giftTo,
   "delivery_date":deliveryDate,
   "country_code":countryCode,
   "phone_number":phoneNumber,
   "total_cost":total

 };

}