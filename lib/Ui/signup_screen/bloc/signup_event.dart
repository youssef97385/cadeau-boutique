library signup_event;

import 'package:built_value/built_value.dart';

part 'signup_event.g.dart';

abstract class SignupEvent{}
abstract class TrySignup extends SignupEvent
implements Built<TrySignup, TrySignupBuilder> {

  //fields go here

  String get countryCode;

  String get phone;

  String get gender;

  String get name;

  String get password;

  TrySignup._();

  factory TrySignup([updates(TrySignupBuilder b)]) = _$TrySignup;
}


abstract class TrySocialSignin extends SignupEvent
    implements Built<TrySocialSignin, TrySocialSigninBuilder> {

  //fields go here
  String get phoneNumber;

  String get name;

  String get socialToken;



  TrySocialSignin._();

  factory TrySocialSignin([updates(TrySocialSigninBuilder b)]) = _$TrySocialSignin;
}

abstract class ClearError extends SignupEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}