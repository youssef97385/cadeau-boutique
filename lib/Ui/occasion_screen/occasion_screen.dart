import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:cadeaue_boutique/Ui/relation_screen/relation_screen.dart';
import 'package:cadeaue_boutique/Ui/price_screen/price_screen.dart';
import 'package:cadeaue_boutique/core/base_widget/animated_background.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';

class OccasionScreen extends StatefulWidget {
  @override
  _OccasionScreenState createState() => _OccasionScreenState();
}

class _OccasionScreenState extends State<OccasionScreen> {
  int picked = -1;
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
                                          "Choose Occasion ",
                                          style: TextStyle(
                                            fontSize: 21,
                                            color: Color(0xff515A6B),
                                          ),
                                        ),

                                      ],
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
                                           setState(() {
                                             picked = 1;
                                           });
                                         },
                                         child: singleOccasion(title: "Birthday",image: "assets/images/cake.svg" ,color: picked == 1 ?AppColor.lightYellow:Colors.white)),
                                     GestureDetector(
                                         onTap:(){
                                           setState(() {
                                             picked = 2;
                                           });
                                         },
                                         child: singleOccasion(title: "Baby",image: "assets/images/pacifier.svg",color: picked == 2 ?AppColor.lightYellow:Colors.white)),
                                     GestureDetector(
                                         onTap:(){
                                           setState(() {
                                             picked = 3;
                                           });
                                         },

                                         child: singleOccasion(title: "Valentine's",image: "assets/images/love.svg",color: picked == 3 ?AppColor.lightYellow:Colors.white)),
                                     GestureDetector(
                                         onTap:(){
                                           setState(() {
                                             picked = 4;
                                           });
                                         },
                                         child: singleOccasion(title: "Wedding",image: "assets/images/wedding-rings.svg",color: picked == 4 ?AppColor.lightYellow:Colors.white)),
                                   ],
                                 ),
                               ),
SizedBox(
  height: 0,
)
,

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal:16.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap:(){
                                          setState(() {
                                            picked = 5;
                                          });
                                        },
                                          child: singleOccasion(title: "Christmas",image: "assets/images/santa-claus.svg",color: picked == 5 ?AppColor.lightYellow:Colors.white)),
                                      GestureDetector(
                                          onTap:(){
                                            setState(() {
                                              picked = 6;
                                            });
                                          },
                                          child: singleOccasion(title: "Graduation",image: "assets/images/graduation-cap.svg",color: picked == 6 ?AppColor.lightYellow:Colors.white)),
                                      GestureDetector(
                                          onTap:(){
                                            setState(() {
                                              picked = 7;
                                            });
                                          },
                                          child: singleOccasion(title: "Holidays",image: "assets/images/holidy.svg",color: picked == 7 ?AppColor.lightYellow:Colors.white)),
                                      GestureDetector(
                                          onTap:(){
                                            setState(() {
                                              picked = 8;
                                            });
                                          },
                                          child: singleOccasion(title: "Other",image: "assets/images/other.svg",color: picked == 8 ?AppColor.lightYellow:Colors.white)),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 97,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Color(0xff393741)
                                    ),
                                    child: Center(
                                      child: Text("Home Page",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white
                                        ),),
                                    ),
                                  ),
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
                                      Text("4 out of 5",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff515A6B)
                                        ),),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>RelationScreen()
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
                                            child: Text("Next",
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


Widget singleOccasion({String title,String image , Color color}){
  return   Column(
    children: [
      Container(

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: color,
          shape: BoxShape.circle,

          // border: Border.all(color: Color(0xff707070))
        ),
        height: 50,
        width: 50,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SvgPicture.asset(image),
        ),
      ),
      SizedBox(height: 8,),
      Text(title,style: TextStyle(
          color: Color(0xff515A6B),
          fontSize: 10
      ))
    ],
  );
}