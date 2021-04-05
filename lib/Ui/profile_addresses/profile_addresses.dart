import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_event.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_state.dart';

import '../../injectoin.dart';
import 'bloc/profile_address_bloc.dart';
class ProfileAddressesScreen extends StatefulWidget {
  @override
  _ProfileAddressesScreenState createState() => _ProfileAddressesScreenState();
}

class _ProfileAddressesScreenState extends State<ProfileAddressesScreen> {
  int _groupValue = -1;
  String city , stateValue ,zipCode,addressDetails;
  @override
  Widget build(BuildContext context) {
    final _bloc = sl<ProfileAddressBloc>();
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, ProfileAddressState state) {
          error(state.error);
          if (state.success) {
            /* WidgetsBinding.instance.addPostFrameCallback(
                  (_) => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => WelcomePage(),
                ),
              ));*/

            error(AppLocalizations.of(context).translate("successful_operation"));
          }
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
                            child: Image.asset("assets/images/drawer/profile pic.png",fit: BoxFit.fill,)
                            ,
                          ),

                          baseText(title: "User name" , color: AppColor.textColor , size: 20.0),


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

                          Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                SizedBox(
                                  height: size.height*0.04,
                                ),
                                Container(
                                  width: size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:16.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                         /*               _myRadioButton(
                                            title: "Location 1",
                                            value: 0,
                                            onChanged: (newValue) => setState(() => _groupValue = newValue),
                                            size: size,
                                            selectedAddress: _groupValue
                                        ),
                                        // SizedBox(
                                        //   height: size.height*0.02,
                                        // ),
                                        _myRadioButton(
                                            title: "Location 2",
                                            value: 1,
                                            onChanged: (newValue) => setState(() => _groupValue = newValue),
                                            size: size,
                                            selectedAddress: _groupValue
                                        ),
                                        SizedBox(
                                          height: size.height*0.04,
                                        ),*/
                                        Padding(
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: Container(
                                            height: size.height*0.07,
                                            child: baseText(title: "Add New :" , color: AppColor.textColor , size:18.0 ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  width: size.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: size.height*0.02,
                                      ),
                                      ///city
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

                                            validator: emptyFieldVAlidator(city,context),
                                            keyboardType: TextInputType.name,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: AppLocalizations.of(context).translate("city"),
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
                                            onChanged: (val) {
                                              setState(() => city = val);
                                            },
                                            onSaved: (value) => city = value,
                                          ),
                                        ),
                                      ),


                                      SizedBox(
                                        height: size.height*0.04,
                                      ),
                                      ///state
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

                                            validator: emptyFieldVAlidator(stateValue,context),
                                            keyboardType: TextInputType.name,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: AppLocalizations.of(context).translate("state"),
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
                                            onChanged: (val) {
                                              setState(() => stateValue = val);
                                            },
                                            onSaved: (value) => stateValue = value,
                                          ),
                                        ),
                                      ),


                                      SizedBox(
                                        height: size.height*0.04,
                                      ),



                                      //Address Details
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

                                            validator: emptyFieldVAlidator(stateValue,context),
                                            keyboardType: TextInputType.name,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText: AppLocalizations.of(context).translate("address_details"),
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
                                            onChanged: (val) {
                                              setState(() => addressDetails = val);
                                            },
                                            onSaved: (value) => addressDetails = value,
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: size.height*0.04,
                                      ),
                                      ///zipCode
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

                                            validator: emptyFieldVAlidator(zipCode,context),
                                            keyboardType: TextInputType.name,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              hintText:AppLocalizations.of(context).translate("zip_code"),
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
                                            onChanged: (val) {
                                              setState(() => zipCode = val);
                                            },
                                            onSaved: (value) => zipCode = value,
                                          ),
                                        ),
                                      ),


                                      SizedBox(
                                        height: size.height*0.04,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            // margin: EdgeInsets.only(bottom: 80),
                                            height: size.height * 0.07,
                                            width: size.width * .41,

                                          ),
                                          SizedBox(width: size.width*0.03,),
                                          Container(
                                            // margin: EdgeInsets.only(bottom: 80),
                                            height: size.height * 0.07,
                                            width: size.width * .41,
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

                                                if(
                                                    IsNullOrEmpty(city)||
                                                    IsNullOrEmpty(stateValue)||
                                                    IsNullOrEmpty(zipCode)||
                                                    IsNullOrEmpty(addressDetails))
                                                {

                                                  error(AppLocalizations.of(context).translate("plz_fill_all_fields"));
                                                }

                                                else{

                                                  _bloc.add(ProfileAddressRequset((b) => b
                                                    ..address =addressDetails
                                                    ..state = stateValue
                                                    ..zip_code = zipCode
                                                    ..city = city));

                                                }
                                              },
                                              child: Text(
                                                AppLocalizations.of(context).translate('add'),
                                                style: TextStyle(
                                                  color: AppColor.textColor,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )





                              ],
                            ),

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
                  ],
                ),
              ],
            ),
          )
      );},
    );
  }
  Widget _myRadioButton({String title, int value, Function onChanged , Size size ,int selectedAddress}) {
    return
      GestureDetector(
        onTap: (){
          onChanged(value);

        },
        child: Container(

          width: size.width*0.3,
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
                child:selectedAddress != value?Container(): Padding(
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
}
