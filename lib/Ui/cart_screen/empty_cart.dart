import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyCart extends StatefulWidget {
  bool isLoading;

  EmptyCart({this.isLoading});

  @override
  _EmptyCartState createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      widget.isLoading?Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(backgroundColor: AppColor.darkYellow,),
        ),
      ):
      Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                    width: size.width,
                    height: size.height,
                    child: Image.asset(
                      "assets/images/background.png",
                      fit: BoxFit.cover,
                    )),

                Positioned(
                  bottom: -60,
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
                      baseAppBar(size,context),
                      SizedBox(
                        height: size.height*0.1,
                      ),

                      baseText(
                          title: "You Cart Is Empty",color: AppColor.darkTextColor,size:30.0
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),

                      Container(
                          width: size.width,

                          child: Center(child: baseText(title:"Add items to Start shopping." ,
                              size: 14.0 ,
                              color: AppColor.darkTextColor,
                              textAlign: TextAlign.center))),
                      SizedBox(
                        height: size.height*0.2,
                      ),

                      Image.asset("assets/images/shopping-bag (2).png",fit: BoxFit.fill,)


                    ],
                  ),

                ),
              ],
            ),
          ],
        )

    );
  }
}
