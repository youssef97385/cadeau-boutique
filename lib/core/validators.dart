
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'app_localizations.dart';


bool  validationForm(GlobalKey<FormState> item){

  return item.currentState.validate();
}

FormFieldValidator passwordValidator(BuildContext context) {
  return (password) {
    if(password.isEmpty){
      return  AppLocalizations.of(context).translate('empty_hint');
    }
    if (password.length < 6) {
      return  AppLocalizations.of(context).translate('password_lenght_hint');
    }
    return null;
    // Pattern pattern =
    //     r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
    // RegExp regex = new RegExp(pattern);
    // if (!regex.hasMatch(password))
    //   return 'Invalid password';
    // else
    //   return null;
  };
}



String passwordValidatorV2(String password,BuildContext context) {

    if(password==null|| password.isEmpty){
      return  AppLocalizations.of(context).translate('empty_hint');
    }
    if (password.length < 6) {
      return  AppLocalizations.of(context).translate('password_lenght_hint');
    }
    return null;
    // Pattern pattern =
    //     r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
    // RegExp regex = new RegExp(pattern);
    // if (!regex.hasMatch(password))
    //   return 'Invalid password';
    // else
    //   return null;

}



FormFieldValidator matchPasswordValidator(String text,BuildContext context) {

  return (value) {
    if (value != text) {
      return  AppLocalizations.of(context).translate('password_hint');
    } else
      return null;
  };
}

FormFieldValidator emailValidator(String text,BuildContext context) {
  return (value) {
    if (!EmailValidator.validate(text, true)) {
      return  AppLocalizations.of(context).translate('valid_email');
    } else if(text.isEmpty){
      return  AppLocalizations.of(context).translate('empty_hint');
    }else
      return null;
  };
}


String emailValidatorV2(String text,BuildContext context) {

    if ( text==null|| !EmailValidator.validate(text, true)) {
      return  AppLocalizations.of(context).translate('valid_email');
    } else if(text.isEmpty){
      return  AppLocalizations.of(context).translate('empty_hint');
    }else
      return null;

}

FormFieldValidator emptyFieldVAlidator(String text,BuildContext context){
  return (value) {
    if(text.isEmpty){
      return  AppLocalizations.of(context).translate('empty_hint');
    }else
      return null;
  };
}


String emptyFieldVAlidatorV2(String text,BuildContext context){

    if(text==null|| text.isEmpty){
      return AppLocalizations.of(context).translate('empty_hint');
    }else
      return null;

}

bool IsNullOrEmpty(String txt){

  return (txt==null||txt.isEmpty);
}


