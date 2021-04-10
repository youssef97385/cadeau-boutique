library details_user;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cadeaue_boutique/model/serializer/serializer.dart';
part 'details_user.g.dart';


abstract class DetailsUser implements Built<DetailsUser, DetailsUserBuilder> {




  @BuiltValueField(wireName: "city")
  @nullable
  String get city;

  @BuiltValueField(wireName: "state")
  @nullable
  String get state;
  @BuiltValueField(wireName: "address_details")
  @nullable
  String get addressDetails;
  @BuiltValueField(wireName: "zip_code")
  @nullable
  String get zip;


DetailsUser._();

factory DetailsUser([updates(DetailsUserBuilder b)]) = _$DetailsUser;



String toJson() {
  return json.encode(serializers.serializeWith(DetailsUser.serializer, this));
}

static DetailsUser fromJson(String jsonString) {
  return serializers.deserializeWith(
      DetailsUser.serializer, json.decode(jsonString));
}

static Serializer<DetailsUser> get serializer => _$detailsUserSerializer;
}