import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/occasion_screen/occasion_screen.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderScreen extends StatefulWidget {
  Function nextPress;

  GenderScreen({this.nextPress});

  @override
  _GenderScreenState createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int picked = -1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
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
                    Text(
                      "Choose Gender",
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xff515A6B),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              picked = 1;
                            });
                          },
                          child: Container(

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: picked == 1 ?  Color(0xffF2D750):Colors.white,
                              shape: BoxShape.circle,

                              // border: Border.all(color: Color(0xff707070))
                            ),
                            height: 70,
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset("assets/images/male-user.svg"),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Male",style: TextStyle(
                            color: Color(0xff515A6B),
                            fontSize: 16
                        ))
                      ],
                    ),
                    SizedBox(
                      width: size.width*0.0,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              picked = 2;
                            });
                          },
                          child: Container(

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: picked == 2 ? Color(0xffF2D750):Colors.white,
                              shape: BoxShape.circle,

                              // border: Border.all(color: Color(0xff707070))
                            ),
                            height: 70,
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset("assets/images/female-worker.svg"),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Female",style: TextStyle(
                            color: Color(0xff515A6B),
                            fontSize: 16
                        ))
                      ],
                    )
                  ],
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
                      Text("1 out of 5",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff515A6B)
                        ),),
                      GestureDetector(
                        onTap: (){
                          widget.nextPress;
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>OccasionScreen()));
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
    );
  }
}
