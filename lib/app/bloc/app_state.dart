library app_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // fields go here

  bool get loginState;
  int get appLanguage;
  String get appLanguageString;
  @nullable
  String get loginType;
  @nullable
  String get socialToken;
  @nullable
  String get name;
  @nullable
  String get password;
  @nullable
  String get countryCode;
  @nullable
  String get phoneNumber;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  factory AppState.initail() {
    return AppState((b) => b
      ..loginState = false
      ..appLanguageString="en"
      ..appLanguage = 0
      ..loginType=""
      ..socialToken=""
      ..name=""
      ..password=""
      ..countryCode=""
      ..phoneNumber=""
    );
  }
}
