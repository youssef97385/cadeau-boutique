import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/Ui/checkout_payment/checkout_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/checkout_address.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutAddress extends StatefulWidget {
  final int ticks;

  CheckoutAddress({@required this.ticks});
  @override
  _CheckoutAddressState createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  String giftTo , deliveryAddress , state , zipCode , city ;
  DateTime selectedDate = DateTime.now();
  bool _dateSelected = false;

  // PersonalInfoProvider personalInfoProvider = PersonalInfoProvider();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1950),
      lastDate: DateTime(2020),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _dateSelected = true;
      });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            baseAppBar(size, context),

            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  tick1(size: size),

                  line(size,false),

                  tick2(size: size),

                  line(size , false),

                  tick3(size: size),



                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            baseText(
              title: "Address",color: AppColor.darkTextColor,size:20.0
            ),

            SizedBox(
              height: size.height*0.07,
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

                  validator: emptyFieldVAlidator(giftTo,context),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Gift To",
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
                    setState(() => giftTo = val);
                  },
                  onSaved: (value) => giftTo = value,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),

            ///deleveryDate
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
                      child: Text(
                        _dateSelected? selectedDate.toString().substring(0, 10):"Date Of Birth"
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
            ///deliveryAddress
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

                  validator: emptyFieldVAlidator(deliveryAddress,context),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Delivery Address",
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
                    setState(() => deliveryAddress = val);
                  },
                  onSaved: (value) => deliveryAddress = value,
                ),
              ),
            ),

            SizedBox(
              height: size.height * 0.04,
            ),
            ///city & state
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
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ]),
              child: Center(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.start,
                    children: [

                      Container(
                        // width: size.width * .3,
                        // color: Colors.green,
                        child: DropdownButton<String>(
                          // focusColor: AppColor.darkYellow,
                          //   iconEnabledColor:AppColor.darkYellow ,
                          //   iconDisabledColor: AppColor.darkYellow,
                          //   dropdownColor: AppColor.darkYellow,
                            focusColor: AppColor.darkYellow,
                            onTap: (){},
                            value: city,
                            icon: Container(
                              // width: size.width * 0.45,
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
                            hint: Text("City"),
                            underline: SizedBox(),
                            onChanged: (String newValue) {
                              setState(() {
                                city = newValue;
                              });
                            },
                            items: <String>[
                              'latakia',
                              'damascus'
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0 , horizontal: 8.0),
                        child: Container(
                          width: 2,
                          height: double.maxFinite,
                          color:AppColor.darkTextColor,
                        ),
                      ),
                      Container
                        (
                        width: size.width*0.5,
                        child: TextFormField(

                          validator: emptyFieldVAlidator(state,context),
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "State",
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
                            setState(() => state = val);
                          },
                          onSaved: (value) => state = value,
                        ),
                      ),
                      // Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
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
                      blurRadius: 1,
                      spreadRadius: 2,
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
                    hintText: "Zip Code",
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
                      Navigator.push(
                        context,
                        PageRouteBuilder(pageBuilder: (_, __, ___) => CheckoutPayment()),
                      );
                      // Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CheckoutPayment()));
                    },
                    child: Text(
                      'Payment',
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
      ),
    );
  }


  Widget tick(bool isChecked ,Size size ) {
    return
    isChecked
        ? Container(
      width:size.width*0.06,
      height:size.width*0.06,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,

      ),
      child: Padding(
        padding:  EdgeInsets.all(size.width*0.022),
        child: Container(
          width:size.width*0.02,
          height:size.width*0.02,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,

          ),
        ),
      ),
    )
        : Container(
      width:size.width*0.06,
      height:size.width*0.06,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:Color(0xffb1b1b1),

      ),
      child: Padding(
        padding:  EdgeInsets.all(size.width*0.022),
        child: Container(
          width:size.width*0.02,
          height:size.width*0.02,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,

          ),
        ),
      ),
    );
  }

  Widget tick1({Size size}) {
    return  tick(true,size );
  }

  Widget tick2({Size size}) {
    return tick(false,size);
  }

  Widget tick3({Size size}) {
    return  tick(false,size);
  }



  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line(Size size , bool isChecked) {
    return Container(
      color: isChecked? AppColor.darkYellow:Color(0xffb1b1b1),
      height: 2.0,
      width: size.width * 0.11,
    );
  }
}
