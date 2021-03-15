import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';



class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}
class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {



  AnimationController controller;
  Animation<double> scaleAnimation;


  List<String> sizes= ["S" , "M" , "L"];
  List<Color> colors= [ Color(0xffffffff),Color(0xffA6B7E8)  ,Color(0xffF2D750),Color(0xff000000) ];
  int selectedSize = -1;
  int selectedColor = -1;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            height:size.height*0.8,
            width: size.width*0.8,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  baseText(title: "Choose a Wrap" , size: 30.0,color:AppColor.textColor ),
                  Container(
                    width: 160,
                    height: 160,
                    // color: Colors.red,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom:0,
                          child: Container(
                            height: 114,
                            width: 160,
                            decoration: BoxDecoration(
                              color: AppColor.lightYellow,
                              borderRadius: BorderRadius.all(Radius.circular(20)),

                            ),
                          ),
                        ),

                        Container(
                          height: 150,
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom:16.0),
                                  child: Container(
                                      width:122,
                                      height:100 ,
                                      child: Image.asset("assets/images/wrap.png",fit: BoxFit.fill,)),
                                ),
                                Text("200\$",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  baseText(title: "Available Size:", color: Color(0xff393741) , size: 18.0),
                  Center(
                    child: Container(
                      height: 40,
                      // width: size.width*0.8,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: sizes.length ,
                          itemBuilder: (BuildContext context , int index){
                            return Padding(
                              padding: const EdgeInsets.only(right:24.0),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedSize = index;
                                  });
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: selectedSize == index ?Color(0xffF2D750):Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 3,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(child: baseText(title: sizes[index] , color: AppColor.darkTextColor , size: 18.0)),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  baseText(title: "Colors:", color: Color(0xff393741) , size: 18.0),
                  Container(
                    height: 40,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length ,
                        itemBuilder: (BuildContext context , int index){
                          return Padding(
                            padding: const EdgeInsets.only(right:24.0),
                            child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedColor = index;
                                  });
                                },
                                child:  Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                      border: selectedColor != index? null:Border.all(color:Color(0xff707070),width: 2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      color: colors[index]

                                  ),
                                  child:selectedColor != index? Container(): Center(child: Icon(Icons.check,color: Color(0xff707070),)),
                                )
                            ),
                          );
                        }),
                  ),

                  Container(
                    // margin: EdgeInsets.only(bottom: 80),
                    height: size.height * 0.07,
                    width: size.width * .5,
                    decoration: BoxDecoration(
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
                          AppColor.darkYellow,
                          AppColor.lightYellow
                        ],
                        stops: [0.1, 0.96],
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: FlatButton(
                      // splashColor: Colors.red,
                      onPressed: () {
                      },
                      child: Text(
                        'Add Wrap',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}