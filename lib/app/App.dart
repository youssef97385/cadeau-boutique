
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_bloc.dart';
import 'package:cadeaue_boutique/Ui/track_screen/bloc/track_screen_event.dart';
import 'package:cadeaue_boutique/app/bloc/app_bloc.dart';
import 'package:cadeaue_boutique/core/app_language.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/data/prefs_helper/prefs_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:cadeaue_boutique/Ui/splash_screen/splash_screen.dart';
import '../injectoin.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  final _AppBloc = sl<AppBloc>();

  int lang ;
 // final _blocTrack = sl<TrackScreenBloc>();
  @override
  void initState() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
     //   _blocTrack.add(GetTracks());
     //   print("------------------: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );

    _firebaseMessaging.getToken().then((value) {
      print('FCMAPP :$value');
      _AppBloc.add(SaveTokenFirebase((b)=>b
      ..fireToken=value));



    });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {

  //  print("MY LANG  $lang");
  //   _AppBloc.add(IniEvent((b)=>b ..langDevice="en"));
    _AppBloc.add(IniEvent());
    return BlocBuilder(
        cubit: _AppBloc,
        builder: (BuildContext context, AppState state) {
          print('LoginState : ${state.loginState}');
          print('Language App : ${state.appLanguage}');
          return  StreamBuilder(
               stream: localeSubjectAppLanguage.stream.distinct(),
              // initialData: state.appLanguage == AppLanguageKeys.AR
              //     ? Locale('ar', '')
              //     : Locale('en', ''),
              builder: (context, snapshotLanguage) {
              return MaterialApp(
                locale: snapshotLanguage.data == -1? null:snapshotLanguage.data ==AppLanguageKeys.AR
                  ? Locale('ar', '')
                    : Locale('en', ''),
                  debugShowCheckedModeBanner: false,

                  title: "App",color: Color.fromRGBO(16, 150, 141, 1),
                theme: ThemeData(primarySwatch: createMaterialColor(Color(0xFF10968D)),
                    fontFamily: 'FontsFree-Net-SFProDisplay'),

                  routes: <String,WidgetBuilder>{
                    '/signin_screen': (BuildContext context) => new SigninScreen(),
                    '/home_screen': (BuildContext context) => new Home()

                  },
               // home:  SplashScreen(false),
                home:  SplashScreen(state.loginState,countryCode: state.countryCode,
                loginType: state.loginType,name: state.name,
                password: state.password,phoneNumber: state.phoneNumber,
                socialToken: state.socialToken),
                // SplashScreen(state.loginState),
                //   locale: snapshotLanguage.data == AppLanguageKeys.AR
                //       ? Locale('ar', '')
                //       : Locale('en', ''),
                  localizationsDelegates: [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: [
                    const Locale('en', ''), // English
                    const Locale('ar', ''), // Arabic
                  ],
                localeResolutionCallback: (locale, supportedLocales){
                    print("test11 $locale");

                    if(locale.toString().contains("ar")){
                      print("AAAAARRRRRRRRRRR");
                      AppColor.AppLang=AppLanguageKeys.AR;}
                    else {AppColor.AppLang=AppLanguageKeys.EN;
                    print("EEEENNNN");
                    }



                  // Check if the current device locale is supported
                  for (var supportedLocale in supportedLocales) {
                    if (supportedLocale.languageCode == locale.languageCode) {
                      return supportedLocale;
                    }
                  }
                  // If the locale of the device is not supported, use the first one
                  // from the list (English, in this case).
                  return supportedLocales.first;
                },
              );
            }
          );
        });
  }

  MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
}

