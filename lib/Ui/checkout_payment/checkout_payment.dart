import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/Ui/checkout_payment/checkout_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/checkout_success.dart';
class CheckoutPayment extends StatefulWidget {
  @override
  _CheckoutPaymentState createState() => _CheckoutPaymentState();
}

class _CheckoutPaymentState extends State<CheckoutPayment> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Column(
              children: [
                baseAppBar(size,context),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      tick1(size: size),

                      line(size,true),

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
                    title: "Payment",color: AppColor.darkTextColor,size:20.0
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24.0),
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.025,
                          horizontal: size.width * 0.03),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/images/profile/visa.svg",
                                fit: BoxFit.fill,
                              ),
                              SvgPicture.asset(
                                  "assets/images/profile/edit.svg"),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                baseText(
                                    title: "Card Number:",
                                    color: Color(0xff393741),
                                    size: 16.0),

                                baseText(
                                    title: "************ 5555",
                                    color: Color(0xff393741),
                                    size: 16.0),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24.0),
                  child: Container(
                    height: size.height * 0.15,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.025,
                          horizontal: size.width * 0.03),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/images/profile/visa.svg",
                                fit: BoxFit.fill,
                              ),
                              SvgPicture.asset(
                                  "assets/images/profile/edit.svg"),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: size.width * 0.05),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                baseText(
                                    title: "Card Number:",
                                    color: Color(0xff393741),
                                    size: 16.0),

                                baseText(
                                    title: "************ 5555",
                                    color: Color(0xff393741),
                                    size: 16.0),
                              ],
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
                          Navigator.push(
                            context,
                            PageRouteBuilder(pageBuilder: (_, __, ___) => CheckoutPayment()),
                          );
                          // Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CheckoutPayment()));
                        },
                        child: Text(
                          'Add New Card',
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
                SizedBox(
                  height: size.height*0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24.0),
                  child: Container(
                    height: size.height * 0.18,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
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
                          Color(0xfff7d689),
                          Color(0xfff7e596)
                        ],
                        stops: [0.1, 0.96],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.025,
                          horizontal: size.width * 0.03),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  baseText(title:"Subtotal" ,size:14.0 ,color:AppColor.darkTextColor ),
                                  baseText(title:"\$ 35.00" ,size:14.0 ,color:AppColor.darkTextColor ),

                                ],),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  baseText(title:"Taxes" ,size:14.0 ,color:AppColor.darkTextColor ),

                                  baseText(title:"Free" ,size:14.0 ,color:AppColor.darkTextColor ),

                                ],),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              baseText(title:"Total" ,size:14.0 ,color:AppColor.darkTextColor ),
                              baseText(title:"\$ 35.00" ,size:14.0 ,color:AppColor.darkTextColor ),

                            ],),


                        ],
                      ),
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
                            PageRouteBuilder(pageBuilder: (_, __, ___) => CheckoutSuccess()),
                          );
                          // Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CheckoutPayment()));
                        },
                        child: Text(
                          'Place Order',
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
                SizedBox(
                  height: 20,
                )
              ],
            ),

          ),
        ],
      )

    );
  }
  Widget tick1({Size size}) {
    return  tick(true,size );
  }

  Widget tick2({Size size}) {
    return tick(true,size);
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
}
