import 'dart:async';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_bloc.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_event.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_state.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/signup_screen.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../injectoin.dart';

class SplashScreen extends StatefulWidget {

  bool  isLogin;
  String  loginType;

  String  socialToken;
  String  name;

  String  password;
  String  countryCode;
  String  phoneNumber;

  SplashScreen(this.isLogin,{
    this.phoneNumber,this.countryCode,this.password,
  this.name,this.socialToken,this.loginType});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final _bloc = sl<SigninBloc>();
  @override
  void initState() {
    super.initState();

    print("---------${widget.phoneNumber}");
    print("---------${widget.socialToken}");
    print("---------${widget.name}    name");
    print("---------${widget.password}");
    print("---------${widget.countryCode}");

    _bloc.add(InitStateSignUp((b) => b));
     // Timer(
     //     Duration(seconds: 8),
     //         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
     //         builder: (BuildContext context) => widget.isLogin ? WelcomePage() : WelcomePage())));
  }
  @override
  Widget build(BuildContext context) {


var size = MediaQuery.of(context).size;


    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, SigninState state) {
      error(state.error);
      if (state.success) {
        WidgetsBinding.instance.addPostFrameCallback(
                (_) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => WelcomePage(),
              ),
            ));
      }

      if(!widget.isLogin){
        print("not login");
        Timer(
            Duration(seconds: 4),
                () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => WelcomePage())));

      }else{
        print("login");
      }

   /*   else{
        if(widget.loginType==LOGIN_TYPE_SOCIAL&&state.isLoading==false ){
          print("LOGIN_TYPE_SOCIAL");
          print("${state.isLoading}");
          _bloc.add(TrySocialSignin((b) => b
            ..phoneNumber = '${DateTime.now().microsecondsSinceEpoch}'
            ..socialToken = widget.socialToken
            ..name = widget.name));

        }else if(widget.loginType==LOGIN_TYPE_NORMAL && state.isLoading==false){

          print("LOGIN_TYPE_NORMAL");
          print("${state.isLoading}");
          _bloc.add(TrySignin((b) => b
            ..password = widget.password
            ..countryCode = widget.countryCode
            ..phone = widget.phoneNumber));
        }
      }*/


    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Image.asset('assets/images/big.gif',fit: BoxFit.cover,),
      ),
    );

        });
  }


  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => WelcomePage()));

      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          //timeInSecForIos: 1,
          backgroundColor: Colors.red.withOpacity(0.8),
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearError());
    }
  }
}