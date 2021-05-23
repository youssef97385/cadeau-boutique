library sent_cards_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/coupon_list_model/coupon_list_model.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/brand_model/brand_model.dart';
part 'sent_cards_model.g.dart';



abstract class SentCardModel implements Built<SentCardModel, SentCardModelBuilder> {
 @nullable
int get id;

@BuiltValueField(wireName: "sender_id")
@nullable
int get senderID;

@BuiltValueField(wireName: "reciver_id")
@nullable
int get reciverID;

@BuiltValueField(wireName: "sender_country_code")
@nullable
int get senderCountryCode;

@BuiltValueField(wireName: "sender_phone_number")
@nullable
int get senderPhoneNumber;

@BuiltValueField(wireName: "reciver_country_code")
@nullable
int get reciverCountryCode;

@BuiltValueField(wireName: "reciver_phone_number")
@nullable
int get reciverPhoneNumber;
@BuiltValueField(wireName: "card_id")
@nullable
int get cardID;

@BuiltValueField(wireName: "brand_id")
@nullable
int get brandID;


@BuiltValueField(wireName: "card_number")
@nullable
String get cardNumber;

@BuiltValueField(wireName: "process_status")
@nullable
String get proccessStatus;

@BuiltValueField(wireName: "key_qr")
@nullable
String get keyQr;


@BuiltValueField(wireName: "created_at")
@nullable
String get createdAt;


@BuiltValueField(wireName: "scanner_id")
@nullable
int get scannerID;

@BuiltValueField(wireName: "scanned_at")
@nullable
String get scannedAt;

@BuiltValueField(wireName: "sender")
@nullable
UserInfoModel get sender;
@BuiltValueField(wireName: "reciver")
@nullable
UserInfoModel get revicer;
@BuiltValueField(wireName: "brand")
@nullable
BrandModel get brand;
@BuiltValueField(wireName: "card")
@nullable
CouponListModel get card;

SentCardModel._();

factory SentCardModel([updates(SentCardModelBuilder b)]) = _$SentCardModel;



String toJson() {
  return json.encode(serializers.serializeWith(SentCardModel.serializer, this));
}

static SentCardModel fromJson(String jsonString) {
  return serializers.deserializeWith(SentCardModel.serializer, json.decode(jsonString));
}

static Serializer<SentCardModel> get serializer => _$sentCardModelSerializer;
}