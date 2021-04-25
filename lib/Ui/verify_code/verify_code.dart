import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_state.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_bloc.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_event.dart';
import 'package:cadeaue_boutique/Ui/signup_screen/bloc/signup_state.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../injectoin.dart';


class VerifyCode extends StatefulWidget {
  var  _bloc = sl<SignupBloc>();

   String password;
   String name;
   String countryCode;
   String phone;
   String gender;
   String smsCode;


  /*      _bloc.add(TrySignup((b) => b
                                                      ..password = password
                                                      ..name = name
                                                      ..countryCode = countryCode
                                                      ..phone = phone
                                                      ..gender = gender));*/




  VerifyCode(
      this._bloc,
      {this.countryCode,this.phone,this.password,this.name,this.gender,
      this.smsCode});

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {





  TextEditingController codeController=TextEditingController();


  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;




    return BlocBuilder(
        cubit: widget._bloc,
        builder: (BuildContext context, SignupState state) {
          if(state.error=="Something went wrong")
            error(AppLocalizations.of(context).translate("something_wrong"));
          else if(state.error=="This number already exists")
            error(AppLocalizations.of(context).translate("number_already_exists"));
          else
            error(state.error);

          if(state.openHomepage){
            WidgetsBinding.instance.addPostFrameCallback(
                    (_) => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(),
                  ),
                ));
          }

          print("asdasdasdsad  ${state.success}");
          return Scaffold(
            body: Stack(
              children: [
                Stack(
                  children: [

                    Container(
                        width: size.width,
                        height: size.height,
                        child:
                        Image.asset("assets/images/back.png", fit: BoxFit.fill,)),

                    Align(
                      alignment: Alignment.center,
                      child: Container(


                        width: size.width/1.11,
                        height: size.height/2.1,

                        child: Card(
                          elevation: 20,
                          clipBehavior: Clip.hardEdge,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none


                          ),
                          child: Padding(

                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              color: Colors.white,

                              child: Column(
                                children: [
                                  SizedBox(height: size.height*0.03,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(


                                          child:baseText(title:  AppLocalizations.of(context).translate("code_success"),
                                              color: AppColor.textColor,size: 20.0,fontWeight: FontWeight.w600)


                                      )
                                    ],),
                                  SizedBox(height: size.height*0.01,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          child:baseText(title:  AppLocalizations.of(context).translate("enter_verfiy_code"),
                                              color: AppColor.textColor,size: 16.0,fontWeight: FontWeight.w600)

                                      )
                                    ],),

                                  SizedBox(height: size.height*0.04,),

                                  TextField(
                                    controller: codeController,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                        hintText: "",
                                        enabledBorder:  UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.lightYellow
                                            )
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.lightYellow
                                            )
                                        ),
                                        disabledBorder:  UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.lightYellow
                                            )
                                        ),
                                        errorBorder:  InputBorder.none,
                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.lightYellow
                                            )
                                        )
                                    ),
                                  ),

                                  SizedBox(height: size.height*0.02,),


                                  Container(
                                    // margin: EdgeInsets.only(bottom: 80),
                                    height: size.height * 0.07,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColor.darkYellow,
                                          AppColor.lightYellow
                                        ],
                                        stops: [0.1, 0.96],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(1, 1),
                                          color: Colors.grey.withOpacity(0.6),
                                          blurRadius: 5,
                                          spreadRadius: 3,
                                        ),
                                      ],

                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: FlatButton(
                                      // splashColor: Colors.red,
                                      onPressed: () {


                                        if(codeController.text.isNotEmpty&&
                                            codeController.text==widget.smsCode){

                                                widget._bloc.add(TrySignup((b) => b
                                                          ..password =widget.password
                                                          ..name = widget.name
                                                          ..countryCode =widget.countryCode
                                                          ..phone =widget.phone
                                                          ..gender = widget.gender
                                                          ..smsCode=codeController.text));

                                        }else{

                                          error(  AppLocalizations.of(context).translate("error_code"));
                                        }





                                      },
                                      child: Text(
                                        AppLocalizations.of(context).translate('verify_code'),
                                        style: TextStyle(
                                          color: AppColor.textColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size.height*0.02,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          child:baseText(title:  AppLocalizations.of(context).translate("resend_code"),
                                              color: AppColor.darkTextColor,size: 16.0,fontWeight: FontWeight.w800)

                                      )
                                    ],),

                                  SizedBox(height: size.height*0.02,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          child:baseText(title:  AppLocalizations.of(context).translate("back"),
                                              color: AppColor.lightYellow,size: 16.0)

                                      )
                                    ],),
                                ],
                              ),
                            ),
                          ),

                        ),
                      ),
                    )
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
          );

        });

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
      widget._bloc.add(ClearError());
    }
  }
}
