library profile_address_event;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'profile_address_event.g.dart';


abstract class ProfileAddressEvent{}





abstract class ProfileAddressRequset  extends ProfileAddressEvent
    implements Built<ProfileAddressRequset, ProfileAddressRequsetBuilder> {

  String get city;

  String get state;

  String get zip_code;

  String get address;
// fields go here
ProfileAddressRequset._();

factory ProfileAddressRequset([updates(ProfileAddressRequsetBuilder b)]) = _$ProfileAddressRequset;
}




abstract class InitEventBloc extends ProfileAddressEvent
    implements Built<InitEventBloc, InitEventBlocBuilder> {
// fields go here
InitEventBloc._();

factory InitEventBloc([updates(InitEventBlocBuilder b)]) = _$InitEventBloc;
}

abstract class ClearError extends ProfileAddressEvent implements Built<ClearError, ClearErrorBuilder> {
// fields go here
ClearError._();

factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}