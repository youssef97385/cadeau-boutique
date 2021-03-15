library signup_state;

import 'package:built_value/built_value.dart';

part 'signup_state.g.dart';


abstract class SignupState
implements Built<SignupState, SignupStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;

  SignupState._();

  factory SignupState([updates(SignupStateBuilder b)]) = _$SignupState;

  factory SignupState.initail() {
    return SignupState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      );
  }
}