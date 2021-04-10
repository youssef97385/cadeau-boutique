import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_state.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_event.dart';

import '../../injectoin.dart';
class EditProfileScreen extends StatefulWidget {

  String nameUser;
  String emailUser;
  String phoneUser;
  String genderUser;
  String dateUser;


  EditProfileScreen(
  {this.nameUser, this.emailUser, this.phoneUser, this.genderUser,this.dateUser});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var formKeyValidation = GlobalKey<FormState>();
  String password, name, countryCode = '+966', phone, gender , email;
  int _groupValue = 0;

  int _selectedGender = -1;
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 1));
  bool _dateSelected = false;


  bool first=false;



  // PersonalInfoProvider personalInfoProvider = PersonalInfoProvider();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate)
      setState(() {

        selectedDate = picked;
        _dateSelected = true;

        widget.dateUser=selectedDate.toString().substring(0, 10);
      });
  }

  final _bloc = sl<EditProfileBloc>();

  TextEditingController controllerName;
  TextEditingController controllerPhone;
  TextEditingController controlleremail;
  @override
  void initState() {
    formKeyValidation = GlobalKey<FormState>();
    super.initState();

    _bloc.add(InitEvent());

    controllerName=TextEditingController(text: widget.nameUser);
    controllerPhone=TextEditingController(text: widget.phoneUser);
    controlleremail=TextEditingController(text: widget.emailUser);

    if(widget.genderUser=="male")
      _groupValue=0;
    else _groupValue=1;
    setState(() {

    });


  }



  @override
  Widget build(BuildContext context) {


    var size = MediaQuery.of(context).size;





    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, EditProfileState state) {
        error(state.error);
        if (state.success) {
         /* WidgetsBinding.instance.addPostFrameCallback(
                  (_) => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              ));*/

          error(AppLocalizations.of(context).translate("successful_operation"));
          Navigator.of(context).pop({"info":"ok"});
        }


        print("${state.name}");

   /*     if(!first){
          print("----");
          controllerName.text=state.name;
          controllerPhone.text=state.phoneNumber.toString();
          controlleremail.text=state.email;
          if(state.gender=="male")
            _groupValue=0;
          else _groupValue=1;

          first=true;


        }else{
          print("111111");
        }*/

        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      baseAppBar(size,context),
                      SizedBox(
                        height: 20,
                      ),


                      Container(
                        height: size.height*0.25,

                        child: Column(
                          children: [
                            Container(
                              height:110,
                              width: 110,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,

                              ),
                              child: SvgPicture.asset("assets/images/logo.svg",height: 40,width: 40,)
                              ,
                            ),

                           // baseText(title: "User name" , color: AppColor.textColor , size: 20.0),


                          ],
                        ),
                      ),

                      Container(
                        height: size.height*0.8,
                        width: size.width,
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],


                                  // border: Border.all(color: Color(0xff707070))
                                ),
                                // height: size.height*0.6,
                                width: size.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                                  child: Image.asset("assets/images/drawer/drawer-bg.png",fit: BoxFit.fill,),
                                )
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:30.0),
                              child: Container(
                                width: size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    SizedBox(
                                      height: size.height*0.07,
                                    ),
                                    ///fullname
                                    Container(

                                      height: size.height * 0.07,
                                      width:
                                      MediaQuery.of(context).size.width * .85,
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
                                        child: TextFormField(


                                          controller: controllerName,
                                          validator:(String text) {



                                            if(text==null|| text.isEmpty){
                                              return AppLocalizations.of(context).translate('empty_hint');
                                            }else
                                              return null;




                                          },
                                          keyboardType: TextInputType.name,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            errorBorder:  InputBorder.none,
                                            hintText: AppLocalizations.of(context).translate("full_name"),
                                            contentPadding:
                                            EdgeInsets.only(left:16 , top:size.height*0.02 , ),
                                            suffixIcon: false
                                                ? Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.red,
                                            )
                                                : Container(
                                              width: 10,
                                            ),
                                          ),
                                  /*        onChanged: (val) {
                                            setState(() => name = val);
                                          },
                                          onSaved: (value) => name = value,*/
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.04,
                                    ),
                                    ///phone
                                    Container(
                                      height: size.height * 0.07,
                                      width: size.width * .85,
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
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: size.height * 0.07,
                                                width: size.width * .2,
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
                                              Container(
                                                // height: size.height * 0.07,
                                                width: size.width * .5,
                                                // color:Colors.red,

                                                child: TextFormField(
                                                  controller: controllerPhone,
                                                  validator:(String text){
                                                    if(text==null|| text.isEmpty){
                                                      return AppLocalizations.of(context).translate('empty_hint');
                                                    }else
                                                      return null;


                                                  },
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
                                                    errorBorder:  InputBorder.none,
                                                    // labelText: "Phone Number",
                                                    hintText: AppLocalizations.of(context).translate("phone_number"),
                                                    contentPadding:
                                                    EdgeInsets.only(left: 16 , top: size.height*0.02 ),
                                                    suffixIcon: false
                                                        ? Icon(
                                                      Icons.arrow_drop_down,
                                                      color: Colors.red,
                                                    )
                                                        : Container(
                                                      width: 10,
                                                    ),
                                                  ),
                                           /*       onChanged: (val) {
                                                    setState(() => phone = val);
                                                  },
                                                  onSaved: (value) =>
                                                  phone = value,*/
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.04,
                                    ),
                                    ///email
                                    Container(
                                      height: size.height * 0.07,
                                      width:
                                      MediaQuery.of(context).size.width * .85,
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
                                        child: TextFormField(

                                          controller: controlleremail,
                                          validator:(String text){

                                            if ( text==null|| !EmailValidator.validate(text, true)) {
                                              return  AppLocalizations.of(context).translate('valid_email');
                                            } else if(text.isEmpty){
                                              return  AppLocalizations.of(context).translate('empty_hint');
                                            }else
                                              return null;



                                          },
                                          keyboardType: TextInputType.name,
                                          obscureText: false,

                                          decoration: InputDecoration(
                                            enabledBorder: InputBorder.none,
                                            errorBorder:  InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            hintText: AppLocalizations.of(context).translate("email_address"),
                                            contentPadding:
                                            EdgeInsets.only(left:16 , top:size.height*0.02 , ),
                                            suffixIcon: false
                                                ? Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.red,
                                            )
                                                : Container(
                                              width: 10,
                                            ),
                                          ),
                                       /*   onChanged: (val) {
                                            setState(() => email = val);
                                          },
                                          onSaved: (value) => email = value,*/
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.04,
                                    ),
                                    Container(
                                      height: size.height * 0.07,
                                      width:
                                      MediaQuery.of(context).size.width * .85,
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
                                        child:  GestureDetector(
                                          onTap: () {
                                            _selectDate(context);
                                          },
                                          child: Container(
                                            width: size.width*0.85,
                                            height: size.height*0.07,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Padding(
                                              padding:  EdgeInsets.only(left:16.0 ,top: size.height*0.02),
                                              // child: Text(
                                              //   _dateSelected? selectedDate.toString().substring(0, 10):AppLocalizations.of(context).translate("date_Of_birth")
                                              //   ,style: TextStyle(color: AppColor.textColor ,fontSize: 14),
                                              //
                                              // ),

                                              child: Text(
                                                (widget.dateUser==null||widget.dateUser.isEmpty)?AppLocalizations.of(context).translate("date_Of_birth") :widget.dateUser
                                                ,style: TextStyle(color: AppColor.textColor ,fontSize: 14),

                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: size.height*0.04,
                                    ),
                                    ///gender
                                    Container(
                                      width: size.width*0.9,
                                      child: Row(
                                        children: [

                                          _myRadioButton(
                                              title: AppLocalizations.of(context).translate("male"),
                                              value: 0,

                                              onChanged: (newValue) => setState(() => _groupValue = newValue),
                                              size: size,
                                              selectedGender: _groupValue
                                          ),
                                          _myRadioButton(
                                              title: AppLocalizations.of(context).translate("female"),
                                              value: 1,
                                              onChanged: (newValue) => setState(() => _groupValue = newValue),
                                              size: size,
                                              selectedGender: _groupValue
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: size.height*0.04,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            // margin: EdgeInsets.only(bottom: 80),
                                            height: size.height * 0.07,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
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
                                              },
                                              child: Text(
                                                AppLocalizations.of(context).translate('cancel'),
                                                style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: size.width*0.03,),
                                        Expanded(
                                          child: Container(
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

                                                print("00000000000000");


                                                if(controllerName.text==null|| controllerName.text.isEmpty){
                                                  error(AppLocalizations.of(context).translate('empty_hint_name'));

                                                  return null;


                                                }

                                                if(controllerPhone.text==null|| controllerPhone.text.isEmpty){
                                                  error(AppLocalizations.of(context).translate('empty_hint_phone'));

                                                }


                                                else if ( controlleremail.text==null|| !EmailValidator.validate(controlleremail.text, true)) {
                                                  error(AppLocalizations.of(context).translate('valid_email'));
                                                } else if(controlleremail.text.isEmpty){
                                                  error(AppLocalizations.of(context).translate('valid_email'));
                                                }





                                                else if(widget.dateUser==null||widget.dateUser.isEmpty) {
                                                  error(AppLocalizations.of(context).translate("plz_select_date_of_birth"));

                                                }
                                                else{


                                                  print("------------------------");
                                                  print("$phone");


                                                  if(_groupValue==0)
                                                    gender="male";
                                                    else gender="female";


                                                  _bloc.add(TryEditProfile((b) => b
                                                    ..date_of_birth = selectedDate.toString().substring(0, 10)
                                                    ..name = controllerName.text
                                                    ..countryCode = countryCode
                                                    ..phone = controllerPhone.text
                                                    ..gender = gender
                                                     ..email=controlleremail.text));
                                                }






                                              },
                                              child: Text(
                                                AppLocalizations.of(context).translate('save'),
                                                style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
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
            )
        );
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

    }
  }
  Widget singleProfileItem({String icon , String title}){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        singleItem(icon:icon, title:title),
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Icon(Icons.arrow_forward_ios , color: Color(0xff393741),size: 20,),
        )
      ],
    );
  }
  Widget singleItem({String icon , String title}){
    return  Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10,),
        baseText(title: title ,size:17.0 ,color:AppColor.lightTextColor,)
      ],
    );
  }
  Widget _myRadioButton({String title, int value, Function onChanged , Size size ,int selectedGender}) {
    return
      GestureDetector(
        onTap: (){
          onChanged(value);

        },
        child: Container(
          width: size.width*0.4,
          height: size.height*0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child:selectedGender != value?Container(): Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: AppColor.darkYellow,
                      shape: BoxShape.circle,

                    ),
                  ),
                ),
              ),
              SizedBox(width: size.width*0.03,),
              baseText(title: title,color:AppColor.textColor ,size: 16.0)
            ],
          ),
        ),
      );
  }
  
}
