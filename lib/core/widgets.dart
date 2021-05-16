
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/constent.dart';

import 'package:flutter_svg/flutter_svg.dart';

Widget appNameText(double size) {
  return Text(
    "SOUK@K",
    style: TextStyle(
      color: Colors.white,
      fontSize: size,
    ),
  );
}

Widget pageHeader(Size size, BuildContext context) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
              height: size.height * 0.55+70,
              width: size.width,
              decoration: BoxDecoration(
                 color: Colors.white,
                // color: Colors.red,
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: AppColor.greyColor,
                      style: BorderStyle.solid),
                ),
                // border: Border.all(color: AppColor.greyColor,width: 2,style: BorderStyle.solid)
              ),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    // color: Colors.green,
                    child: Image.asset(
                      "assets/images/product.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    child: Column(children: [
                      SizedBox(
                        height: size.height*0.07,
                      ),
                      Container(
                        // color:Colors.yellow,
                        height: size.height*0.03,
                        child: Text(
                          "Bako's Mens Wear",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: size.height*0.01,
                      ),
                      Container(
                        height: size.height*0.03,
                        // color: Colors.deepPurple,
                        child: Text(
                          "Black Mens Wear",
                          style:
                          TextStyle(color: AppColor.greyColor, fontSize: 12),
                        ),
                      ),
                    ],),
                    // color: Colors.blue,
                      height: size.height * 0.15),

                  Container(width: size.width,height: 1,color:Color(0xffAEB4C5),),

                  Container(
                    height: 68,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      // Border(bottom: BorderSide(width: 1, color: AppColor.greyColor)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24.00),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset(
                                "assets/images/heart.svg",
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Favourite",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.textDarkGreyColor),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SvgPicture.asset("assets/images/shareic.svg"),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Share",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.textDarkGreyColor),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {

                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                    "assets/images/icons/Icon feather-message-square.svg"),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Message",
                                  style: TextStyle(
                                      fontSize: 14, color: AppColor.textDarkGreyColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              )),
          Positioned(
            top: size.height * 0.33,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.3,
              // color: Colors.red,
              child: Column(
                children: [
                  CircleAvatar(
                    radius:size.height*0.07,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius:size.height*0.065,
                      backgroundImage: AssetImage('assets/images/camera.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.03,
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),

    ],
  );
}
