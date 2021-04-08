library edit_profile_state;
import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'edit_profile_state.g.dart';


abstract class EditProfileState implements Built<EditProfileState, EditProfileStateBuilder> {
// fields go here

  bool get success;
  bool get isLoading;
  String get error;
EditProfileState._();

factory EditProfileState([updates(EditProfileStateBuilder b)]) = _$EditProfileState;

  factory EditProfileState.initail() {
    return EditProfileState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
    );
  }
}