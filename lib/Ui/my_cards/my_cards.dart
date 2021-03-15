import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/validators.dart';

class MycardsScreen extends StatefulWidget {
  @override
  _MycardsScreenState createState() => _MycardsScreenState();
}

class _MycardsScreenState extends State<MycardsScreen> {
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
              Container(
                height: size.height * 0.25,
                child: Column(
                  children: [
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/drawer/profile pic.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    baseText(
                        title: "User name",
                        color: AppColor.textColor,
                        size: 20.0),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.8,
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],

                          // border: Border.all(color: Color(0xff707070))
                        ),
                        // height: size.height*0.6,
                        width: size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)),
                          child: Image.asset(
                            "assets/images/drawer/drawer-bg.png",
                            fit: BoxFit.fill,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        width: size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.07,
                            ),
                            Container(
                              height: size.height * 0.2,
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
                                    vertical: size.height * 0.02,
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
                                              title: "5555 5555 5555 5555",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: size.width * 0.05),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          baseText(
                                              title: "Expire Date:",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                          baseText(
                                              title: "2/2/2021",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                        ],
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
                              height: size.height * 0.2,
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
                                    vertical: size.height * 0.02,
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
                                              title: "5555 5555 5555 5555",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: size.width * 0.05),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          baseText(
                                              title: "Expire Date:",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                          baseText(
                                              title: "2/2/2021",
                                              color: Color(0xff393741),
                                              size: 16.0),
                                        ],
                                      ),
                                    ),
                                  ],
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
                                    },
                                    child: Text(
                                      'Add New',
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
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
