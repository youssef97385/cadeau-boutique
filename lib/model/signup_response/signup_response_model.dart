library signup_response_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/details_user/details_user.dart';
part 'signup_response_model.g.dart';


abstract class SignupResponse implements Built<SignupResponse, SignupResponseBuilder> {
  // fields go here

  @BuiltValueField(wireName: "access_token")
  String get token;



  @BuiltValueField(wireName:"user")
  @nullable
  UserInfoModel get user;

  @BuiltValueField(wireName:"details")
  @nullable
  DetailsUser get detaisl;








  SignupResponse._();

  factory SignupResponse([updates(SignupResponseBuilder b)]) = _$SignupResponse;

  String toJson() {
    return json.encode(serializers.serializeWith(SignupResponse.serializer, this));
  }

  static SignupResponse fromJson(String jsonString) {
    return serializers.deserializeWith(SignupResponse.serializer, json.decode(jsonString));
  }

  static Serializer<SignupResponse> get serializer => _$signupResponseSerializer;
}