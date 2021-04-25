import 'dart:async';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/signup_screen.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';

class SplashScreen extends StatefulWidget {

  bool  isLogin;

  SplashScreen(this.isLogin);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
     Timer(
         Duration(seconds: 8),
             () => Navigator.of(context).pushReplacement(MaterialPageRoute(
             builder: (BuildContext context) => widget.isLogin ? WelcomePage() : WelcomePage())));
  }
  @override
  Widget build(BuildContext context) {
var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Image.asset('assets/images/big.gif',fit: BoxFit.cover,),
      ),
    );
  }
}