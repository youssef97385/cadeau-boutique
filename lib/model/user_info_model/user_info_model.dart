library user_info_model;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'user_info_model.g.dart';


abstract class UserInfoModel implements Built<UserInfoModel, UserInfoModelBuilder> {


  String get name;
  String get email;
  @BuiltValueField(wireName: "user_type")
  String get userType;

  String get gender;

  @BuiltValueField(wireName: "country_code")
  String get countryCode;

  @BuiltValueField(wireName: "account_status")
  String get accountStatus;


  @BuiltValueField(wireName: "phone_number")
  int get phoneNumber;


  @BuiltValueField(wireName: "date_of_birth")
  String get dateBirth;


// fields go here
UserInfoModel._();

factory UserInfoModel([updates(UserInfoModelBuilder b)]) = _$UserInfoModel;


String toJson() {
  return json.encode(serializers.serializeWith(UserInfoModel.serializer, this));
}

static UserInfoModel fromJson(String jsonString) {
  return serializers.deserializeWith(
      UserInfoModel.serializer, json.decode(jsonString));
}
static Serializer<UserInfoModel> get serializer => _$userInfoModelSerializer;


}


