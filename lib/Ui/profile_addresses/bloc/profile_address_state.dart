library profile_address_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'profile_address_state.g.dart';


abstract class ProfileAddressState implements Built<ProfileAddressState, ProfileAddressStateBuilder> {
  bool get success;
  bool get isLoading;
  String get error;

 @nullable
  String get city;
  @nullable
  String get stateUser;
  @nullable
  String get address;
  @nullable
  String get zip;
ProfileAddressState._();

factory ProfileAddressState([updates(ProfileAddressStateBuilder b)]) = _$ProfileAddressState;

  factory ProfileAddressState.initail() {
    return ProfileAddressState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
        ..city= ""
        ..address=""
        ..zip=""
        ..stateUser=""
    );
  }
}