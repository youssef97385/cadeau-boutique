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

  String get smsCode;

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



abstract class TryCheckPhone extends SignupEvent
    implements Built<TryCheckPhone, TryCheckPhoneBuilder> {


  String get countryCode;
  String get phone;
TryCheckPhone._();

factory TryCheckPhone([updates(TryCheckPhoneBuilder b)]) = _$TryCheckPhone;
}




abstract class TrySendSms  extends SignupEvent
    implements Built<TrySendSms , TrySendSmsBuilder> {
String get countryCode;
String get phone;
TrySendSms ._();

factory TrySendSms ([updates(TrySendSmsBuilder b)]) = _$TrySendSms ;
}


abstract class ResetSignUp extends SignupEvent  implements Built<ResetSignUp, ResetSignUpBuilder> {
// fields go here
ResetSignUp._();

factory ResetSignUp([updates(ResetSignUpBuilder b)]) = _$ResetSignUp;
}