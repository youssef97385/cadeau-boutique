import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:flutter/material.dart';

import '../style/base_color.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget filterBar(Size size , BuildContext context , [Function goToHome]){
  return
    Container(
      height: size.height*0.1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top:16.0,left: 24 , right: 24 , bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SvgPicture.asset("assets/images/search.svg"),
            Row(
              children: [
                SvgPicture.asset("assets/images/logo.svg",height: 30,width: 30,),
                SizedBox(width: 8,),
                Text("Express how you feel",
                  style: TextStyle(
                      color: Color(0xff6e6e6e),
                      fontSize: 25,
                      fontFamily: "brush"
                  ),)
              ],
            ),
            GestureDetector(

                onTap: (){
                  print("0000999");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  goToHome();
                },
                child: Container(
                  // height: 40,
                    width: 60,
                    color: Colors.transparent,
                    child: Center(child: SvgPicture.asset("assets/images/home.svg")))),
          ],
        ),
      ),
    );
}