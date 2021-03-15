library signin_state;

import 'package:built_value/built_value.dart';

part 'signin_state.g.dart';


abstract class SigninState
implements Built<SigninState, SigninStateBuilder> {

  //fields go here

  bool get success;
  bool get isLoading;
  String get error;

  SigninState._();

  factory SigninState([updates(SigninStateBuilder b)]) = _$SigninState;

  factory SigninState.initail() {
    return SigninState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
    );
  }
}