import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:cadeaue_boutique/Ui/relation_screen/relation_screen.dart';
import 'package:cadeaue_boutique/Ui/price_screen/price_screen.dart';
import 'package:cadeaue_boutique/core/base_widget/animated_background.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/Ui/filter_result/filter_result.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Stack(
            children: [
              Container(
                  width: size.width,
                  height: size.height,
                  child: Image.asset(
                    "assets/images/background.png",
                    fit: BoxFit.cover,
                  )),

              animatedBackground(size),
              Positioned(
                bottom: -120,
                right: 0,
                left: 0,
                child: Container(
                    width: 483,
                    height: 192,
                    child: SvgPicture.asset(
                      "assets/images/bottombackground.svg",
                      fit: BoxFit.cover,
                    )),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                     baseAppBar(size , context),
                    SizedBox(
                      height: size.height*0.05,
                    ),
                    Text("Let's Find You a Gift",
                      style: TextStyle(
                        color: Color(0xff596273),
                        fontSize: 35,

                      ),),
                    SizedBox(
                      height: size.height*0.05,
                    ),
                    Center(
                      child: Container(
                          height: size.height*0.5,
                          width: 300,
                          decoration: ShapeDecoration(



                            color: Colors.white,
                            shape: TooltipShapeBorder(arrowArc: 0.2),
                            shadows: [
                              BoxShadow(
                                  color: Colors.black26, blurRadius: 4.0, offset: Offset(2, 2))
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical:26.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Choose Price ",
                                          style: TextStyle(
                                            fontSize: 21,
                                            color: Color(0xff515A6B),
                                          ),
                                        ),

                                        SizedBox(width: 10,),
                                        SvgPicture.asset("assets/images/price-tag.svg"),

                                      ],
                                    ),

                                  ],
                                ),


                             Column(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal:26.0),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         children: [
                                           SvgPicture.asset("assets/images/curve-down-arrow.svg"),
                                           SizedBox(width: 4,),
                                           Text("Max:",style: TextStyle(
                                               color: Color(0xff515A6B),
                                               fontSize: 21
                                           ),)
                                         ],
                                       ),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Icon(Icons.add,size: 25,color: Color(0xffF2AE2E),),
                                           SizedBox(
                                             width: 10,
                                           ),

                                           Text("200",style: TextStyle(
                                               color: Color(0xff515A6B),
                                               fontSize: 21
                                           ),),
                                           SizedBox(
                                             width: 10,
                                           ),
                                           Icon(Icons.remove,size: 25,color: Color(0xffF2AE2E),),

                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                                 SizedBox(
                                   height: 45,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal:26.0),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         children: [
                                           SvgPicture.asset("assets/images/curve arrow.svg"),
                                           SizedBox(width: 4,),
                                           Text("Mine:",style: TextStyle(
                                               color: Color(0xff515A6B),
                                               fontSize: 21
                                           ),)
                                         ],
                                       ),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Icon(Icons.add,size: 25,color: Color(0xffF2AE2E),),
                                           SizedBox(
                                             width: 10,
                                           ),

                                           Text("200",style: TextStyle(
                                               color: Color(0xff515A6B),
                                               fontSize: 21
                                           ),),
                                           SizedBox(
                                             width: 10,
                                           ),
                                           Icon(Icons.remove,size: 25,color: Color(0xffF2AE2E),),

                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),


                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap:(){
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 31,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              color: Color(0xffF2D750)
                                          ),
                                          child: Center(
                                            child: Text("Back",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff515A6B)
                                              ),),
                                          ),
                                        ),
                                      ),
                                      Text("5 out of 5",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff515A6B)
                                        ),),
                                      InkWell(
                                        focusColor: Colors.white,
                                        onTap: (){
                                          Navigator.pushReplacement(context, MaterialPageRoute(
                                              builder: (context)=>FilterResult()
                                          ));
                                        },
                                        child: Container(
                                          height: 31,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              color: Color(0xffF2D750)
                                          ),
                                          child: Center(
                                            child: Text("Find",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff515A6B)
                                              ),),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ),

                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: size.width*0.2,),
                            Container(
                              child: SvgPicture.asset("assets/images/Group 1.svg"),
                            ),
                            SizedBox(width: 92.17,),
                            Container(
                              child: SvgPicture.asset("assets/images/Group 14.svg"),
                            ),
                            SizedBox(width: size.width*0.2,),
                          ],
                        ),
                        Container(
                          child: SvgPicture.asset("assets/images/box.svg"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
