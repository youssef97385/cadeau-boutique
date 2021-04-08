library edit_profile_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'edit_profile_event.g.dart';


abstract class EditProfileEvent{}





abstract class TryEditProfile extends EditProfileEvent
    implements Built<TryEditProfile, TryEditProfileBuilder> {
  String get countryCode;

  String get phone;

  String get gender;

  String get name;



  String get date_of_birth;

  String get email;
TryEditProfile._();

factory TryEditProfile([updates(TryEditProfileBuilder b)]) = _$TryEditProfile;
}



abstract class InitEvent extends EditProfileEvent
    implements Built<InitEvent, InitEventBuilder> {
// fields go here
InitEvent._();

factory InitEvent([updates(InitEventBuilder b)]) = _$InitEvent;
}
abstract class ClearError extends EditProfileEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}