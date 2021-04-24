import 'package:cadeaue_boutique/Ui/Dialog/DialogCode/MyCountryPickerDialog.dart';
import 'package:cadeaue_boutique/Ui/verify_code/verify_code.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'dart:math';
import 'package:cadeaue_boutique/core/validators.dart';
import 'dart:math' as math;

import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_bloc.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_state.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_event.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';

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

import '../MyCountryPicker.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {


  /// googe signin

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  SharedPreferences prefs;

  bool isLoading = false;
  bool isLoggedIn = false;
  FirebaseUser currentUser;
  Country selectedCountry;
  Country initCountry(String num){
    return new Country(
      phoneCode: CountryPickerUtils
          .getCountryByPhoneCode(num).phoneCode,
      name: "SAR",
      iso3Code: "SAR",
      isoCode: "SAR"
    );
  }
  @override
  void initState() {
    super.initState();
    // isSignedIn();

    selectedCountry=initCountry("966");
  }


  Future<Country> openCountryDialog(BuildContext context,{String search,String selectedHint,ValueChanged<Country> onValuePicked}) async {
    return showDialog<Country>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return MyCountryPickerDialog(searchHint: search,selectHint: selectedHint,onValuePicked: onValuePicked,);
      },
    );
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
      _bloc.add(TrySocialSignin((b) => b
        ..phoneNumber = "${DateTime.now().microsecondsSinceEpoch}"
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
      Fluttertoast.showToast(msg: "Sign in fail");
      this.setState(() {
        isLoading = false;
      });
    }

    print("////// "+firebaseUser.toString());
    return firebaseUser;
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

  bool _isLoggedIn = false;
  Map userProfile;
  final facebookLogin = FacebookLogin();

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

  Widget initAddCountryPrefixIcon(){
    return Container(

      child: GestureDetector(
        onTap: () async {
          var item= await openCountryDialog(context,onValuePicked: (country){
            setState(() {
              selectedCountry=country;
              countryCode=country.phoneCode;

            });


          });

        },
        child: MyCountryPicker(country: selectedCountry,padding: 0 ,
        width: 99),
      ),
    );
  }

  // fl.FacebookLogin facebookLogin = new fl.FacebookLogin();
  _loginWithFb() async{
    await  logOutFacebook();
    final result = await facebookLogin.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
        final profile = JSON.jsonDecode(graphResponse.body);
        print ("fb response1 : "+profile['name']);

        if(token != null){
          print("//////////////////////////");
          _bloc.add(TrySocialSignin((b) => b
            ..phoneNumber = '${DateTime.now().microsecondsSinceEpoch}'
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
        break;
    }
  }





  String dropdownValue;
  final registerKey = new GlobalKey<FormState>();

  String password, name, countryCode = '966', phone, gender;
  final _bloc = sl<SignupBloc>();


  void _onCountryChange(String countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SignupState state) {
        error(state.error);
        if (state.success) {
          WidgetsBinding.instance.addPostFrameCallback(
              (_) => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
                    ),
                  ));

/*
          print("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh");
              WidgetsBinding.instance.addPostFrameCallback(
              (_) => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VerifyCode(_bloc),
                    ),
                  ));*/
        }
        return Scaffold(
            body: SingleChildScrollView(
              child:
                  Stack(children: [
                    Column(
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
                                        offset: Offset(0, 3), // changes position of shadow
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
                                          key: registerKey,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: size.height * .07,
                                              ),
                                              Container(
                                                height: size.height * 0.07,
                                                width:
                                                MediaQuery.of(context).size.width * .75,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(1, 1),
                                                        color: Colors.grey.withOpacity(0.6),
                                                        blurRadius: 5,
                                                        spreadRadius: 3,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(6.0),
                                                    child: TextFormField(
                                                      validator: emptyFieldVAlidator(name,context),
                                                      keyboardType: TextInputType.name,
                                                      obscureText: false,
                                                      decoration: InputDecoration(
                                                        enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        disabledBorder: InputBorder.none,
                                                        hintText: AppLocalizations.of(context).translate("full_name"),
                                                        contentPadding:
                                                        EdgeInsets.only(left:8 , top:4 , bottom :4),
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
                                                        setState(() => name = val);
                                                      },
                                                      onSaved: (value) => name = value,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),




                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .75,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(1, 1),
                                                        color: Colors.grey.withOpacity(0.6),
                                                        blurRadius: 5,
                                                        spreadRadius: 3,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.only(left: 16.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.spaceAround,
                                                      children: [

                                                        Container(
                                                          width: size.width * .7,
                                                          // color: Colors.green,
                                                          child: DropdownButton<String>(
                                                            // focusColor: AppColor.darkYellow,
                                                            //   iconEnabledColor:AppColor.darkYellow ,
                                                            //   iconDisabledColor: AppColor.darkYellow,
                                                            //   dropdownColor: AppColor.darkYellow,
                                                            focusColor: AppColor.darkYellow,
                                                              onTap: (){},
                                                              value: gender,
                                                              icon: Container(
                                                                width: size.width * 0.45,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  children: [
                                                                    Container(
                                                                      height: 10,
                                                                      width: 10,
                                                                      color: Colors.white,
                                                                    ),
                                                                    Icon(Icons
                                                                        .keyboard_arrow_down_outlined),
                                                                  ],
                                                                ),
                                                              ),
                                                              iconSize: 30,
                                                              hint: Text(AppLocalizations.of(context).translate("gender")),
                                                              underline: SizedBox(),
                                                              onChanged: (String newValue) {
                                                                setState(() {
                                                                  gender = newValue;
                                                                });
                                                              },
                                                              items: <String>[
                                                                'Male',
                                                                'Female'
                                                              ].map<
                                                                  DropdownMenuItem<
                                                                      String>>(
                                                                      (String value) {
                                                                    return DropdownMenuItem<
                                                                        String>(
                                                                      value: value,
                                                                      child: Text(value),
                                                                    );
                                                                  }).toList()),
                                                        ),
                                                        // Icon(Icons.keyboard_arrow_down_outlined)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .75,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(1, 1),
                                                        color: Colors.grey.withOpacity(0.6),
                                                        blurRadius: 5,
                                                        spreadRadius: 3,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(0),
                                                    child: Row(

                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [

                                                       /* Container(
                                                          height: size.height * 0.07,
                                                          width: size.width * .2,
                                                          child: CountryCodePicker(
                                                            onChanged: (value) {
                                                              setState(() {
                                                                countryCode =
                                                                    value.toString();
                                                                _onCountryChange(
                                                                    countryCode);
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
                                                        ),*/
                                                        Flexible(
                                                          child: Container(




                                                             height: size.height * 0.07,
                                                            

                                                            // color:Colors.red,
                                                            child: TextFormField(
                                                              validator:
                                                              emptyFieldVAlidator(phone,context),
                                                              keyboardType:
                                                              TextInputType.number,
                                                              obscureText: false,
                                                              decoration: InputDecoration(
                                                                enabledBorder:
                                                                InputBorder.none,
                                                                hintStyle: TextStyle(fontSize: 14),
                                                                focusedBorder:
                                                                InputBorder.none,
                                                                disabledBorder:
                                                                InputBorder.none,

                                                                // labelText: "Phone Number",
                                                                hintText: AppLocalizations.of(context).translate("phone_number"),
                                                                contentPadding:
                                                                EdgeInsets.all( 12),
                                                                // suffixIcon: false
                                                                //     ? Icon(
                                                                //   Icons.arrow_drop_down,
                                                                //   color: Colors.red,
                                                                // )
                                                                //     : Container(
                                                                //   width: 10,
                                                                // ),
                                                              ),
                                                              onChanged: (val) {
                                                                setState(() => phone = val);
                                                              },
                                                              onSaved: (value) =>
                                                              phone = value,
                                                            ),
                                                          ),
                                                        ),

                                                        initAddCountryPrefixIcon()
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .75,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(1, 1),
                                                        color: Colors.grey.withOpacity(0.6),
                                                        blurRadius: 5,
                                                        spreadRadius: 3,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(6.0),
                                                    child: TextFormField(
                                                      validator: passwordValidator(context),
                                                      keyboardType: TextInputType.text,
                                                      obscureText: true,
                                                      decoration: InputDecoration(
                                                        enabledBorder: InputBorder.none,
                                                        focusedBorder: InputBorder.none,
                                                        disabledBorder: InputBorder.none,
                                                        hintText: AppLocalizations.of(context).translate("password"),
                                                        contentPadding:
                                                        EdgeInsets.all(12),
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
                                              ),
                                              SizedBox(
                                                height: size.height * 0.03,
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
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child: FlatButton(
                                                  // splashColor: Colors.red,
                                                  onPressed: () {
                                                    _bloc.add(TrySignup((b) => b
                                                      ..password = password
                                                      ..name = name
                                                      ..countryCode = countryCode
                                                      ..phone = phone
                                                      ..gender = gender));
                                                  },
                                                  child: Text(
                                                    AppLocalizations.of(context).translate('sign_up'),
                                                    style: TextStyle(
                                                      color: AppColor.textColor,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.03,
                                              ),
                                              Text(
                                                AppLocalizations.of(context).translate("or_signup_with"),
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
                                                      // loginGmail();
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
                                                     //   _handleSignIn();

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
                                  )),
                            ),
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
                            //                       borderRadius: BorderRadius.circular(20),
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
                            //                       borderRadius: BorderRadius.circular(20),
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
                            //                       borderRadius: BorderRadius.circular(20),
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
                            //                       borderRadius: BorderRadius.circular(20),
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
                            //                     borderRadius: BorderRadius.circular(20),
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

                  ],)

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
