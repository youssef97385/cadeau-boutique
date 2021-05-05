

import 'package:flutter/material.dart';

import '../style/base_color.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget baseAppBar(Size size , BuildContext context , [Function openDrawer,showHum=false]){
  return
    Column(
      children: [

        SizedBox(height: 22,),
        Container(

          height: size.height*0.1,

          child: Padding(
            padding: const EdgeInsets.only(top:16.0,left: 8 , right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SvgPicture.asset("assets/images/search.svg"),
                Expanded(
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/logo.svg",height: 70,width: 70,),
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          SizedBox(height: 32,),
                          Flexible(
                            child: Text("Express how you feel",

                              style: TextStyle(
                                  color: Color(0xff6e6e6e),
                                  fontSize: 25,
                                  fontFamily: "brush"
                              ),),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      print("0000999");
                      openDrawer();
                    },
                    child: Container(
                      // height: 40,


                          color: Colors.transparent,
                        child:showHum? Transform.scale(

                          scale: 1,
                            child: Center(child: Icon(Icons.subject,))):Container())),
              ],
            ),
          ),
        ),
      ],
    );
}
