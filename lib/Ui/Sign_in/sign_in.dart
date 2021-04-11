import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'dart:math';
import 'package:cadeaue_boutique/core/validators.dart';
import 'dart:math' as math;
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/signup_screen.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_bloc.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_state.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/bloc/signin_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart' as fl;

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;


//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//Shared prefrences & Flutter Toast
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';




import 'dart:async';
import 'package:flutter/material.dart';


//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//Shared prefrences & Flutter Toast
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';



class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}



class _SigninScreenState extends State<SigninScreen> {

  final facebookLogin = FacebookLogin();

  /// googe signin

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  SharedPreferences prefs;

  bool isLoading = false;
  bool isLoggedIn = false;
  FirebaseUser currentUser;

  @override
  void initState() {
    super.initState();
    // isSignedIn();
  }

  void isSignedIn() async {
    this.setState(() {
      isLoading = true;
    });

    prefs = await SharedPreferences.getInstance();

    isLoggedIn = await _googleSignIn.isSignedIn();
    if (isLoggedIn) {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => HomePage()));
    }

    this.setState(() {
      isLoading = false;
    });
  }

  final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  void signOutGoogle() async {
    await googleSignIn.signOut();

    print("User Sign Out");
  }

  Future<bool> logOutFacebook() async {
    try {
      await facebookLogin.logOut();
      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }


  Future<void> loginGmail() async{
    signOutGoogle();


    try{
    await googleSignIn.signIn();
    if(googleSignIn.currentUser != null){


      _bloc.add(TrySocialSignin((b) => b
        ..phoneNumber = '${DateTime.now().microsecondsSinceEpoch}'
        ..socialToken = googleSignIn.currentUser.id
        ..name = googleSignIn.currentUser.displayName));


      await prefs.setString('id', googleSignIn.currentUser.id);
      await prefs.setString('nickname', googleSignIn.currentUser.displayName);
      await prefs.setString('photoUrl', googleSignIn.currentUser.photoUrl);
      await prefs.setString(FULL_NAME, googleSignIn.currentUser.displayName);


      Fluttertoast.showToast(msg: "Sign in success");
 /*     this.setState(() {
        isLoading = false;
      });*/

      print("TEST_TEST ${googleSignIn.currentUser.displayName}");}


    } catch (error) {
      print("TEST_TEST $error");

    }
  }

  Future<FirebaseUser> _handleSignIn() async {
    print("google 1");
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    print("google 2");
    final GoogleSignInAuthentication googleAuth =
    await googleUser.authentication;
    print("google 3");

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    print("google 4");
    print("google sign 1 : "+googleUser.toString());
    print("google sign 2 : "+googleAuth.toString());
    print("google sign 3 : "+credential.toString());
    final FirebaseUser firebaseUser =
        (await firebaseAuth.signInWithCredential(credential)).user;
    print("signed in " + firebaseUser.displayName);

    print("google sign 4 : "+firebaseUser.uid);
    if (firebaseUser != null) {
      print("******");
      _bloc.add(TrySocialSignin((b) => b
        ..phoneNumber = '0'
        ..socialToken = firebaseUser.uid
        ..name = firebaseUser.displayName));
      // Check is already sign up
      final QuerySnapshot result = await Firestore.instance
          .collection('users')
          .where('id', isEqualTo: firebaseUser.uid)
          .getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      if (documents.length == 0) {
        // Update data to server if new user
        Firestore.instance
            .collection('users')
            .document(firebaseUser.uid)
            .setData({
          'id': firebaseUser.uid,
          'nickname': firebaseUser.displayName,
          'photoUrl': firebaseUser.photoUrl,
          'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
        });

        // Write data to local
        currentUser = firebaseUser;
        await prefs.setString('id', currentUser.uid);
        await prefs.setString('nickname', currentUser.displayName);
        await prefs.setString('photoUrl', currentUser.photoUrl);
      } else {
        // Write data to local
        await prefs.setString('id', documents[0]['id']);
        await prefs.setString('nickname', documents[0]['nickname']);
        await prefs.setString('photoUrl', documents[0]['photoUrl']);
      }
      Fluttertoast.showToast(msg: "Sign in success");
      this.setState(() {
        isLoading = false;
      });
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      print("*****123");
      Fluttertoast.showToast(msg: "Sign in fail");
      this.setState(() {
        isLoading = false;
      });
    }

    print("////// "+firebaseUser.toString());
    return firebaseUser;
  }


  bool _isLoggedIn = false;
  Map userProfile;
  // final facebookLogin = FacebookLogin();



  // fl.FacebookLogin facebookLogin = new fl.FacebookLogin();


  _loginWithFBHassan() async {

    await  logOutFacebook();
    try {
      final result = await facebookLogin.logIn(['email']);


      print("------111111111-------");
      print(result.errorMessage);
      switch (result.status) {
        case FacebookLoginStatus.loggedIn:
          final token = result.accessToken.token;
          final graphResponse = await http.get(
              Uri.parse('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}'));

          final profile = JSON.jsonDecode(graphResponse.body);


          //userProfileFacebook = profile;
          print("--------------------------");
        //  print(userProfileFacebook);
          print("--------------------------");
          print(profile);

          String id = profile['id'];
          print(id);
          String email = profile['email'];
          print(email);
          String name = profile['name'];
          print(name);
          String imagePath = profile['picture']['data']['url'];
          print(imagePath);

          if (email == null) {
            email = id + '@gmail.com';
          }

          setState(() {
            isLoading = true;
          });
          //Response res = await createAccountSocial(initMapSocial(name, email, FACEBOOK, id, imagePath));
          break;

        case FacebookLoginStatus.cancelledByUser:
          break;
        case FacebookLoginStatus.error:

          break;
      }
    } catch (exceptopn) {

      print('error  $exceptopn');
      /*  setState(() {
        _isLoading = false;
      });*/


    }
  }


  _loginWithFb() async{

    await  logOutFacebook();
    final result = await facebookLogin.logIn(['email']);

    print("-----");
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        print ("fb response1 : "+profile['name']);

        if(token != null){
          print("//////////////////////////"+profile['name']);
          _bloc.add(TrySocialSignin((b) => b
            ..phoneNumber = "${DateTime.now().microsecondsSinceEpoch}"
            ..socialToken = token
            ..name = profile['name']));
        }
         print("fb88 : "+profile);
        setState(() {
          userProfile = profile;
          _isLoggedIn = true;
        });
        break;

      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedIn = false );
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedIn = false );

        print("${FacebookLoginStatus.error.toString()}");
        break;
    }
  }

  final signinKey = new GlobalKey<FormState>();
  String firstName, email, confirmPassword, lastName;
  String country = '';

  String phone, countryCode = '+966', password;

  final _bloc = sl<SigninBloc>();

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
        return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
          children: [
                  Stack(
                    children: [
                      Container(
                          width: size.width,
                          height: size.height,
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          )),

                      ///140
                      Positioned(
                          top: 120,
                          right: -120,
                          child: Transform.rotate(
                              angle: -math.pi / 100,
                              child: Image.asset("assets/images/cadeaue box.png"))),

                      ///60
                      Positioned(
                        top: 75,
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/gold logo.svg"),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "WELCOME TO",
                                    style: TextStyle(
                                      color: AppColor.textColor,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "CADEAU BOUTIQUE",
                                    style: TextStyle(
                                        color: AppColor.textColor, fontSize: 26),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      ///240

                      Positioned(
                          top: 230,
                          child: Container(

                              // color: Colors.red,
                              height: 1000,
                              width: size.width,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset:
                                        Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 200,
                                    child: Container(
                                        width: size.width,
                                        child: Image.asset(
                                          "assets/images/brands.png",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40)),
                                    ),
                                    width: size.width,
                                  ),
                                  SingleChildScrollView(
                                    child: Form(
                                      key: signinKey,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: size.height * .1,
                                          ),
                                          Container(
                                            height: size.height * 0.07,
                                            width: size.width * .75,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1, 1),
                                                    color:
                                                        Colors.grey.withOpacity(0.6),
                                                    blurRadius: 5,
                                                    spreadRadius: 3,
                                                  ),
                                                ]),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: size.height * 0.07,
                                                    width: size.width * .2,
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:8.0),
                                                      child: CountryCodePicker(
                                                        onChanged: (value) {
                                                          setState(() {
                                                            countryCode =
                                                                value.toString();
                                                          });
                                                        },
                                                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                                        initialSelection: 'Sa',
                                                        // favorite: ['+39', 'FR'],
                                                        // optional. Shows only country name and flag
                                                        showCountryOnly: false,
                                                        // optional. Shows only country name and flag when popup is closed.
                                                        showOnlyCountryWhenClosed:
                                                            false,
                                                        // optional. aligns the flag and the Text left
                                                        alignLeft: false,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // height: size.height * 0.07,
                                                    width: size.width * .5,
                                                    // color:Colors.red,
                                                    child: TextFormField(
                                                      validator:
                                                          emptyFieldVAlidator(
                                                              phone,context),
                                                      keyboardType:
                                                          TextInputType.number,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        enabledBorder:
                                                            InputBorder.none,
                                                        focusedBorder:
                                                            InputBorder.none,
                                                        disabledBorder:
                                                            InputBorder.none,
                                                        // labelText: "Phone Number",
                                                        hintText: "Phone Number",
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                 left:8 , top:size.height*0.02 ),
                                                        suffixIcon: false
                                                            ? Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                color: Colors.red,
                                                              )
                                                            : Container(
                                                                width: 10,
                                                              ),
                                                      ),
                                                      onChanged: (val) {
                                                        setState(() => phone = val);
                                                      },
                                                      onSaved: (value) =>
                                                          phone = value,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),
                                          Container(
                                            height: size.height * 0.07,
                                            width: size.width * .75,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1, 1),
                                                    color:
                                                        Colors.grey.withOpacity(0.6),
                                                    blurRadius: 5,
                                                    spreadRadius: 3,
                                                  ),
                                                ]),
                                            child: Center(
                                              child: TextFormField(
                                                validator: passwordValidator(context),
                                                keyboardType: TextInputType.text,
                                                obscureText: true,
                                                decoration: InputDecoration(
                                                  enabledBorder: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                  hintText: "Password",
                                                  contentPadding:
                                                      EdgeInsets.only(left:16,top:size.height*0.02),
                                                  suffixIcon: false
                                                      ? Icon(
                                                          Icons.arrow_drop_down,
                                                          color: Colors.red,
                                                        )
                                                      : Container(
                                                          width: 10,
                                                        ),
                                                ),
                                                onChanged: (val) {
                                                  setState(() => password = val);
                                                },
                                                onSaved: (value) => password = value,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.03,
                                          ),
                                          Center(
                                            child: Container(
                                              width: size.width * 0.75,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Don't have account?",
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: AppColor.textColor),
                                                      ),
                                                      GestureDetector(
                                                        onTap:(){Navigator.push(context, MaterialPageRoute(
                                                          builder: (context)=>SignupScreen()
                                                        ));},
                                                        child: Text(
                                                          "Register",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: AppColor.darkYellow),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  // Text(
                                                  //   "Forget Password?",
                                                  //   style: TextStyle(
                                                  //       fontSize: 12,
                                                  //       color: AppColor.textColor),
                                                  // )
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.06,
                                          ),
                                          Container(
                                            // margin: EdgeInsets.only(bottom: 80),
                                            height: size.height * 0.07,
                                            width: size.width * .75,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: Offset(1, 1),
                                                  color: Colors.grey.withOpacity(0.6),
                                                  blurRadius: 5,
                                                  spreadRadius: 3,
                                                ),
                                              ],
                                              gradient: LinearGradient(
                                                colors: [
                                                  AppColor.darkYellow,
                                                  AppColor.lightYellow
                                                ],
                                                stops: [0.1, 0.96],
                                              ),
                                              borderRadius: BorderRadius.circular(40),
                                            ),
                                            child: FlatButton(
                                              onPressed: () {
                                                _bloc.add(TrySignin((b) => b
                                                  ..password = password
                                                  ..countryCode = countryCode
                                                  ..phone = phone));
                                              },
                                              child: Text(
                                                'Log In',
                                                style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.06,
                                          ),


                                          Text(
                                            "Or Login With",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: AppColor.textColor),
                                          ),
                                          SizedBox(
                                            height: size.height * 0.03,
                                          ),
                                          Container(
                                            height: size.height * 0.05,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap:(){
                                                    _loginWithFb();
                                                  },
                                                  child: Container(
                                                      height: 38,
                                                      width: 38,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        gradient: LinearGradient(
                                                          colors: [
                                                            AppColor.darkYellow,
                                                            AppColor.lightYellow
                                                          ],
                                                          stops: [0.1, 0.96],
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: SvgPicture.asset(
                                                          "assets/images/facebook.svg",
                                                          height: 38,
                                                          width: 38,
                                                        ),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                GestureDetector(
                                                  onTap:(){
                                                  //  _handleSignIn();

                                                    loginGmail();
                                                  },
                                                  child: Container(
                                                      height: 38,
                                                      width: 38,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        gradient: LinearGradient(
                                                          colors: [
                                                            AppColor.darkYellow,
                                                            AppColor.lightYellow
                                                          ],
                                                          stops: [0.1, 0.96],
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Center(
                                                          child: SvgPicture.asset(
                                                            "assets/images/google.svg",
                                                            height: 38,
                                                            width: 38,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Container(
                                                    height: 38,
                                                    width: 38,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          AppColor.darkYellow,
                                                          AppColor.lightYellow
                                                        ],
                                                        stops: [0.1, 0.96],
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child: SvgPicture.asset(
                                                        "assets/images/apple-logo.svg",
                                                        height: 38,
                                                        width: 38,
                                                      ),
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ))),
                      // SingleChildScrollView(
                      //   child: Column(
                      //     children: [
                      //       ///0.1
                      //       // SizedBox(
                      //       //   height: size.height * 0.1,
                      //       // ),
                      //       // ///0.1
                      //       // Container(
                      //       //   height: size.height * 0.1,
                      //       //   child: Row(
                      //       //     mainAxisAlignment: MainAxisAlignment.center,
                      //       //     children: [
                      //       //       SvgPicture.asset("assets/images/gold logo.svg"),
                      //       //       SizedBox(
                      //       //         width: 15,
                      //       //       ),
                      //       //       Column(
                      //       //         crossAxisAlignment: CrossAxisAlignment.start,
                      //       //         children: [
                      //       //           Text(
                      //       //             "WELCOME TO",
                      //       //             style: TextStyle(
                      //       //               color: AppColor.textColor,
                      //       //               fontSize: 20,
                      //       //             ),
                      //       //           ),
                      //       //           Text(
                      //       //             "CADEAU BOUTIQUE",
                      //       //             style: TextStyle(
                      //       //                 color: AppColor.textColor, fontSize: 26),
                      //       //           )
                      //       //         ],
                      //       //       )
                      //       //     ],
                      //       //   ),
                      //       // ),
                      //
                      //       ///0.013
                      //       SizedBox(
                      //         height: size.height * 0.13,
                      //       ),
                      //
                      //       ///0.67
                      //       Container(
                      //         // color: Colors.red,
                      //         height: size.height * 0.67,
                      //         width: size.width,
                      //         decoration: BoxDecoration(
                      //           boxShadow: [
                      //             BoxShadow(
                      //               color: Colors.grey.withOpacity(0.5),
                      //               spreadRadius: 5,
                      //               blurRadius: 7,
                      //               offset: Offset(0, 3), // changes position of shadow
                      //             ),
                      //           ],
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.only(
                      //               topLeft: Radius.circular(40),
                      //               topRight: Radius.circular(40)),
                      //         ),
                      //
                      //         child: SingleChildScrollView(
                      //           child: Form(
                      //             key: registerKey,
                      //             child: Column(
                      //               children: [
                      //                 SizedBox(
                      //                   height: size.height * .07,
                      //                 ),
                      //                 Container(
                      //                   height: size.height * 0.07,
                      //                   width: MediaQuery.of(context).size.width * .75,
                      //                   decoration: BoxDecoration(
                      //                       color: Colors.white,
                      //                       borderRadius: BorderRadius.circular(40),
                      //                       boxShadow: [
                      //                         BoxShadow(
                      //                           offset: Offset(1, 1),
                      //                           color: Colors.grey.withOpacity(0.6),
                      //                           blurRadius: 5,
                      //                           spreadRadius: 3,
                      //                         ),
                      //                       ]),
                      //                   child: Center(
                      //                     child: TextFormField(
                      //                       validator: emptyFieldVAlidator(firstName),
                      //                       keyboardType: TextInputType.name,
                      //                       obscureText: false,
                      //                       decoration: InputDecoration(
                      //                         enabledBorder: InputBorder.none,
                      //                         focusedBorder: InputBorder.none,
                      //                         disabledBorder: InputBorder.none,
                      //                         labelText: "Full Name",
                      //                         contentPadding: EdgeInsets.only(left: 24),
                      //                         suffixIcon: false
                      //                             ? Icon(
                      //                                 Icons.arrow_drop_down,
                      //                                 color: Colors.red,
                      //                               )
                      //                             : Container(
                      //                                 width: 10,
                      //                               ),
                      //                       ),
                      //                       // onChanged: (val) {
                      //                       //   setState(() => firstName = val);
                      //                       // },
                      //                       // onSaved: (value) => firstName = value,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.02,
                      //                 ),
                      //                 Container(
                      //                   height: size.height * 0.07,
                      //                   width: size.width * .75,
                      //                   decoration: BoxDecoration(
                      //                       color: Colors.white,
                      //                       borderRadius: BorderRadius.circular(40),
                      //                       boxShadow: [
                      //                         BoxShadow(
                      //                           offset: Offset(1, 1),
                      //                           color: Colors.grey.withOpacity(0.6),
                      //                           blurRadius: 5,
                      //                           spreadRadius: 3,
                      //                         ),
                      //                       ]),
                      //                   child: Center(child: Container()),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.02,
                      //                 ),
                      //                 Container(
                      //                   height: size.height * 0.07,
                      //                   width: size.width * .75,
                      //                   decoration: BoxDecoration(
                      //                       color: Colors.white,
                      //                       borderRadius: BorderRadius.circular(40),
                      //                       boxShadow: [
                      //                         BoxShadow(
                      //                           offset: Offset(1, 1),
                      //                           color: Colors.grey.withOpacity(0.6),
                      //                           blurRadius: 5,
                      //                           spreadRadius: 3,
                      //                         ),
                      //                       ]),
                      //                   child: Center(
                      //                     child: TextFormField(
                      //                       validator: emailValidator(email),
                      //                       keyboardType: TextInputType.emailAddress,
                      //                       obscureText: false,
                      //                       decoration: InputDecoration(
                      //                         enabledBorder: InputBorder.none,
                      //                         focusedBorder: InputBorder.none,
                      //                         disabledBorder: InputBorder.none,
                      //                         labelText: "Phone Number",
                      //                         contentPadding: EdgeInsets.only(left: 24),
                      //                         suffixIcon: false
                      //                             ? Icon(
                      //                                 Icons.arrow_drop_down,
                      //                                 color: Colors.red,
                      //                               )
                      //                             : Container(
                      //                                 width: 10,
                      //                               ),
                      //                       ),
                      //                       // onChanged: (val) {
                      //                       //   setState(() => email = val);
                      //                       // },
                      //                       // onSaved: (value) => email = value,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.02,
                      //                 ),
                      //                 Container(
                      //                   height: size.height * 0.07,
                      //                   width: size.width * .75,
                      //                   decoration: BoxDecoration(
                      //                       color: Colors.white,
                      //                       borderRadius: BorderRadius.circular(40),
                      //                       boxShadow: [
                      //                         BoxShadow(
                      //                           offset: Offset(1, 1),
                      //                           color: Colors.grey.withOpacity(0.6),
                      //                           blurRadius: 5,
                      //                           spreadRadius: 3,
                      //                         ),
                      //                       ]),
                      //                   child: Center(
                      //                     child: TextFormField(
                      //                       validator: passwordValidator(),
                      //                       keyboardType: TextInputType.text,
                      //                       obscureText: true,
                      //                       decoration: InputDecoration(
                      //                         enabledBorder: InputBorder.none,
                      //                         focusedBorder: InputBorder.none,
                      //                         disabledBorder: InputBorder.none,
                      //                         labelText: "Password",
                      //                         contentPadding: EdgeInsets.only(left: 24),
                      //                         suffixIcon: false
                      //                             ? Icon(
                      //                                 Icons.arrow_drop_down,
                      //                                 color: Colors.red,
                      //                               )
                      //                             : Container(
                      //                                 width: 10,
                      //                               ),
                      //                       ),
                      //                       // onChanged: (val) {
                      //                       //   setState(() => password = val);
                      //                       // },
                      //                       // onSaved: (value) => password = value,
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.03,
                      //                 ),
                      //                 Container(
                      //                   // margin: EdgeInsets.only(bottom: 80),
                      //                   height: size.height * 0.07,
                      //                   width: size.width * .75,
                      //                   decoration: BoxDecoration(
                      //                     boxShadow: [
                      //                       BoxShadow(
                      //                         offset: Offset(1, 1),
                      //                         color: Colors.grey.withOpacity(0.6),
                      //                         blurRadius: 5,
                      //                         spreadRadius: 3,
                      //                       ),
                      //                     ],
                      //                     gradient: LinearGradient(
                      //                       colors: [
                      //                         AppColor.darkYellow,
                      //                         AppColor.lightYellow
                      //                       ],
                      //                       stops: [0.1, 0.96],
                      //                     ),
                      //                     borderRadius: BorderRadius.circular(40),
                      //                   ),
                      //                   child: FlatButton(
                      //                     onPressed: () {
                      //                       // doRegister();
                      //                     },
                      //                     child: Text(
                      //                       'Sign Up',
                      //                       style: TextStyle(
                      //                         color: AppColor.textColor,
                      //                         fontSize: 18,
                      //                         fontWeight: FontWeight.w500,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.03,
                      //                 ),
                      //                 Text(
                      //                   "Or Signup With",
                      //                   style: TextStyle(
                      //                       fontSize: 14, color: AppColor.textColor),
                      //                 ),
                      //                 SizedBox(
                      //                   height: size.height * 0.03,
                      //                 ),
                      //                 Container(
                      //                   height: size.height * 0.05,
                      //                   child: Row(
                      //                     mainAxisAlignment: MainAxisAlignment.center,
                      //                     children: [
                      //                       Container(
                      //                           height: 38,
                      //                           width: 38,
                      //                           decoration: BoxDecoration(
                      //                             shape: BoxShape.circle,
                      //                             gradient: LinearGradient(
                      //                               colors: [
                      //                                 AppColor.darkYellow,
                      //                                 AppColor.lightYellow
                      //                               ],
                      //                               stops: [0.1, 0.96],
                      //                             ),
                      //                           ),
                      //                           child: Padding(
                      //                             padding: const EdgeInsets.all(1.0),
                      //                             child: SvgPicture.asset(
                      //                               "assets/images/facebook.svg",
                      //                               height: 38,
                      //                               width: 38,
                      //                             ),
                      //                           )),
                      //                       SizedBox(
                      //                         width: 20,
                      //                       ),
                      //                       Container(
                      //                           height: 38,
                      //                           width: 38,
                      //                           decoration: BoxDecoration(
                      //                             shape: BoxShape.circle,
                      //                             gradient: LinearGradient(
                      //                               colors: [
                      //                                 AppColor.darkYellow,
                      //                                 AppColor.lightYellow
                      //                               ],
                      //                               stops: [0.1, 0.96],
                      //                             ),
                      //                           ),
                      //                           child: Padding(
                      //                             padding: const EdgeInsets.all(2.0),
                      //                             child: SvgPicture.asset(
                      //                               "assets/images/google.svg",
                      //                               height: 38,
                      //                               width: 38,
                      //                             ),
                      //                           )),
                      //                       SizedBox(
                      //                         width: 20,
                      //                       ),
                      //                       Container(
                      //                           height: 38,
                      //                           width: 38,
                      //                           decoration: BoxDecoration(
                      //                             shape: BoxShape.circle,
                      //                             gradient: LinearGradient(
                      //                               colors: [
                      //                                 AppColor.darkYellow,
                      //                                 AppColor.lightYellow
                      //                               ],
                      //                               stops: [0.1, 0.96],
                      //                             ),
                      //                           ),
                      //                           child: Padding(
                      //                             padding: const EdgeInsets.all(1.0),
                      //                             child: SvgPicture.asset(
                      //                               "assets/images/apple-logo.svg",
                      //                               height: 38,
                      //                               width: 38,
                      //                             ),
                      //                           )),
                      //                     ],
                      //                   ),
                      //                 )
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      Positioned(
                          top: 70,
                          right: -120,
                          child: Transform.rotate(
                              angle: 0,
                              child: Container(
                                  // color: Colors.red,
                                  // height: size.height*0.15,
                                  child: SvgPicture.asset(
                                "assets/images/shr.svg",
                              )))),
                    ],
                  ),
             state.isLoading?
           Positioned(
              top: size.height/2,
              right: size.width/2,
              child: Center(
                  child: CircularProgressIndicator(
                    backgroundColor: AppColor.lightYellow,
                  )),
            )
                : Container()
          ],
        ),
                ],
              ),
            ));
      },
    );
  }

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
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
