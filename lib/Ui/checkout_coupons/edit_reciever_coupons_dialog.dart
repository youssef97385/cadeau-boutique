import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/Dialog/DialogCode/MyCountryPickerDialog.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';

import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/model/reciver_checkout_coupons_model/reciver_coupons_model.dart';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

import 'package:flutter/material.dart';

import '../MyCountryPicker.dart';

class EditRecieverCouponsDialog extends StatefulWidget {

  ReciverCouponsModel recieverModel ;
  int index;
  final Function recieverCallBack;

  EditRecieverCouponsDialog({this.recieverModel,this.index,this.recieverCallBack});

  @override
  _EditRecieverCouponsDialogState createState() => _EditRecieverCouponsDialogState();
}

class _EditRecieverCouponsDialogState extends State<EditRecieverCouponsDialog>   with SingleTickerProviderStateMixin {


  int selectedWrap = -1;
  int wrapId = -1;

  AnimationController controller;
  Animation<double> scaleAnimation;



  DateTime selectedDate =DateTime.now();
  String giftTo , state , zipCode , city ;

  bool _dateSelected = false;






  String  countryCode = '966', phone;



  var _giftToController = TextEditingController();
  var _phoneController = TextEditingController();



  void _onCountryChange(String countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }

  // PersonalInfoProvider personalInfoProvider = PersonalInfoProvider();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 3650)),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _dateSelected = true;
      });
  }

  List<String> sizes= ["S" , "M" , "L"];
  List<Color> colors= [ Color(0xffffffff),Color(0xffA6B7E8)  ,Color(0xffF2D750),Color(0xff000000) ];
  int selectedSize = -1;
  int selectedColor = -1;

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

  Future<Country> openCountryDialog(BuildContext context,{String search,String selectedHint,ValueChanged<Country> onValuePicked}) async {
    return showDialog<Country>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return MyCountryPickerDialog(searchHint: search,selectHint: selectedHint,onValuePicked: onValuePicked,);
      },
    );
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

  @override
  void initState() {
    super.initState();
    selectedCountry=initCountry("966");
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();

    _giftToController.text = widget.recieverModel.giftTo;
    _phoneController.text = widget.recieverModel.phoneNumber;
    selectedCountry=initCountry(widget.recieverModel.countryCode);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
              height:size.height*0.8,
              width: size.width*0.9,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: Container(

                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: size.height*0.03,
                      ),

                      ///giftTo
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
                                blurRadius: 1,
                                spreadRadius: 2,
                              ),
                            ]),
                        child: Center(
                          child: TextFormField(
                            controller: _giftToController,

                            validator: emptyFieldVAlidator(giftTo,context),
                            keyboardType: TextInputType.name,
                            obscureText: false,
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: AppLocalizations.of(context).translate("gift_to"),
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
                              setState(() {
                                giftTo = val;
                                print("testing $giftTo / ${_giftToController.text}" );
                              });
                            },
                            onSaved: (value) => giftTo = value,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
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
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                              /*  Container(

                                  height: size.height * 0.07,
                                  width: size.width * .2,


                             *//*     child:Center(
                                    child: ElevatedButton(

                                      onPressed: () {
                                        showCountryPicker(
                                          countryListTheme: CountryListThemeData(
                                            flagSize: 25,
                                            backgroundColor: Colors.white,
                                            textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
                                          ),

                                          context: context,
                                          //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).

                                          //Optional. Shows phone code before the country name.
                                          showPhoneCode: true,
                                          onSelect: (Country country) {
                                            print('Select country: ${country.phoneCode}');
                                            setState(() {
                                              countryCode = country.phoneCode;
                                            });
                                          },
                                        );
                                      },
                                      child:  Text("+"+countryCode),
                                    ),
                                  ),*//*
                                ),*/
                                Flexible(
                                  child: Container(
                                    height: size.height * 0.07,
                                   // width: size.width * .5,
                                    // color:Colors.red,
                                    child: TextFormField(
                                      controller: _phoneController,

                                      validator:
                                      emptyFieldVAlidator(phone,context),
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
                                        hintText: AppLocalizations.of(context).translate("phone_number"),
                                        contentPadding:
                                        EdgeInsets.all( 12),
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
                                        setState(() => phone = val);
                                      },
                                      onSaved: (value) =>
                                      phone = value,
                                    ),
                                  ),
                                ),
                                initAddCountryPrefixIcon(),
                              ],
                            ),
                          ),
                        ),
                      ),



                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 80),
                        height: size.height * 0.07,
                        width: size.width * .85,
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
                          // splashColor: Colors.red,
                          onPressed: () {
                            setState(() {
                              widget.recieverCallBack(widget.index , ReciverCouponsModel(
                                  (b)=>b..giftTo = _giftToController.text
                                      ..phoneNumber = _phoneController.text
                                      ..countryCode = countryCode
                              ),_giftToController.text ,
                                  _phoneController.text,
                                  countryCode,
                                  "delete");
                            });
                            Navigator.pop(context);
                          },
                          child: Text(
                            AppLocalizations.of(context).translate("delete") ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),

                      Container(
                        // margin: EdgeInsets.only(bottom: 80),
                        height: size.height * 0.07,
                        width: size.width * .85,
                        decoration: BoxDecoration(
                          color: Color(0xffB1B1B1),
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
                            setState(() {
                              widget.recieverCallBack(widget.index , ReciverCouponsModel(
                                      (b)=>b..giftTo = _giftToController.text
                                    ..phoneNumber = _phoneController.text
                                    ..countryCode = countryCode

                              ).toBuilder(),
                                  _giftToController.text,
                                  _phoneController.text,
                                  countryCode,



                                  "update");
                            });
                            Navigator.pop(context);

                          },
                          child: Text(
                           AppLocalizations.of(context).translate("update") ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                    ],
                  ),
                ),
              )
          ),
        ),
      ),
    );
  }
}
