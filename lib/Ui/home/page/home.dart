import 'dart:io';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cadeaue_boutique/core/constent.dart';

import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';

import 'package:cadeaue_boutique/Ui/cart_screen/cart_screen.dart';

import 'package:cadeaue_boutique/Ui/profile_screen/profile_screen.dart';

import 'package:cadeaue_boutique/Ui/picker_screen/picker_screen.dart';

import 'package:cadeaue_boutique/Ui/track_screen/track_screen.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../injectoin.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_event.dart';
import 'bloc/home_state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeState extends State<Home> {
  final _bloc = sl<HomeBloc>();


  @override
  void initState() {
    super.initState();
    _bloc.add(IniEvent());



  }

  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  void firebaseCloudMessaging_Listeners() {
    // if (Platform.isIOS) iOS_Permission();

    _firebaseMessaging.getToken().then((token){
      print('firebasetest'+token);
      _saveToken(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print('on message $message');
      },
      onResume: (Map<String, dynamic> message) async {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) async {
        print('on launch $message');
      },
    );
  }

  _saveToken(String token) async{

    // print("saveToken "+token);
    //
    // try {
    //   UserInfo user = await userPreferences.getUser();
    //
    //   Response response = await post("https://shllonline.com/api/saveToken",body: {
    //     'user_id': user.userId.toString(),
    //     'token': token
    //   });
    //
    //   if (response.statusCode==200) {
    //     print("save user success");
    //   }
    //
    //
    // } catch (e) {
    //   print("save user "+e.toString());
    //
    //   return null;
    // }
  }

  void iOS_Permission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true)
    );
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings)
    {
      print("Settings registered: $settings");
    });
  }
  int _currentIndex = 2;
  int i = 0;

  var pages = [
    CartScreen(),
    TrackScreen(),
     HomeScreen(),
    ProfileScreen(),
    PickerScreen(),

  ];

  @override
  Widget build(BuildContext context) {


    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {

      return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: scaffoldKey,
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){onTabTapped(index,state.loginState); },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/bottom-icons/bottom-bag.svg',color: Colors.black,),
              title: Text(
                '',
                style: TextStyle(color: _currentIndex==0? AppColor.darkGreenColor:Colors.grey),
              ),
              activeIcon: SvgPicture.asset('assets/bottom-icons/bottom-bag.svg',color: AppColor.darkYellow,),
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/bottom-icons/bottom-tracking.svg',color: Colors.black,),
              title: Text(
                '',
                style: TextStyle(color: _currentIndex==0? AppColor.darkGreenColor:Colors.grey),
              ),
              activeIcon: SvgPicture.asset('assets/bottom-icons/bottom-tracking.svg',color: AppColor.darkYellow,),
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/bottom-icons/bottom-home.svg',color: Colors.black,),
              title: Text(
                '',
                style: TextStyle(color: _currentIndex==0? AppColor.darkGreenColor:Colors.grey),
              ),
              activeIcon: SvgPicture.asset('assets/bottom-icons/bottom-home.svg',color: AppColor.darkYellow,),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/bottom-icons/bottom-user.svg',color: Colors.black,),
              title: Text(
                '',
                style: TextStyle(color: _currentIndex==0? AppColor.darkGreenColor:Colors.grey),
              ),
              activeIcon: SvgPicture.asset('assets/bottom-icons/bottom-user.svg',color: AppColor.darkYellow,),
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/bottom-icons/bottom-gift.svg',color: Colors.black,),
              title: Text(
                '',
                style: TextStyle(color: _currentIndex==0? AppColor.darkGreenColor:Colors.grey),
              ),
              activeIcon: SvgPicture.asset('assets/bottom-icons/bottom-gift.svg',color: AppColor.darkYellow,),
            ),



          ],
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // onTap: (index) {
          //   // if(i == 2){
          //   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProductPage()));
          //   // }
          //
          //   setState(() {
          //     i = index;
          //   });
          // },
        ),
      ),
    );});
  }

  void onTabTapped(int index,isLogin) {

    if((index==1||index==3||index==0) &&  !(isLogin) ){
      AwesomeDialog(
        context: context,
        customHeader: Container(
          child: Icon(
            Icons.error_outline,
            size: 100,
            color: AppColor.darkYellow,
          ),
        ),
        btnOkColor: AppColor.darkYellow,
        dialogType: DialogType.INFO,
        animType: AnimType.BOTTOMSLIDE,
        title: AppLocalizations.of(context).translate('login'),
        desc: AppLocalizations.of(context).translate('you_must_logged_in'),
        btnCancelOnPress: () { },
        btnOkOnPress: () {
          WidgetsBinding.instance.addPostFrameCallback((_) =>
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SigninScreen())));
        },
      )..show();
    }

    else
    setState(() {
      _currentIndex = index;
    });
  }
  Future<bool> _onWillPop() async {
    if (_currentIndex == 2) {
      Navigator.pop(context);
      Navigator.of(context).pop(true);
      exit(0);

    }
    setState(() {
      _currentIndex = 2;
    });
  }
}



