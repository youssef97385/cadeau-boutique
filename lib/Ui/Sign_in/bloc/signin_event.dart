library signin_event;

import 'package:built_value/built_value.dart';

part 'signin_event.g.dart';

abstract class SigninEvent{}
abstract class TrySignin extends SigninEvent
implements Built<TrySignin, TrySigninBuilder> {

  //fields go here
  String get countryCode;

  String get phone;

  String get password;



  TrySignin._();

  factory TrySignin([updates(TrySigninBuilder b)]) = _$TrySignin;
}

abstract class TrySocialSignin extends SigninEvent
    implements Built<TrySocialSignin, TrySocialSigninBuilder> {

  //fields go here
  String get phoneNumber;

  String get name;

  String get socialToken;



  TrySocialSignin._();

  factory TrySocialSignin([updates(TrySocialSigninBuilder b)]) = _$TrySocialSignin;
}

abstract class ClearError extends SigninEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}