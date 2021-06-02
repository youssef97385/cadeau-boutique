import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/picker_screen.dart';
import 'package:cadeaue_boutique/core/base_widget/animated_background.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/core/base_widget/filter_bar.dart';
import 'dart:async';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>  with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<double> _animation;

  double _width = 300;
  bool hide = false;


  double _updateState(){
    setState(() {
      hide = true;
      _width = 0;

    });
    Timer(
        Duration(seconds: 1),
            () => _updateStateAgain());
  }

  double _updateStateAgain(){
    setState(() {

      _width = 300;
      hide = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
          // Container(
          //     width: size.width,
          //     height: size.height,
          //     color: Colors.grey.withOpacity(0.3),
          //     ),

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
                 filterBar(size , context),
                SizedBox(
                  height: size.height*0.05,
                ),
                Text(AppLocalizations.of(context).translate("welcome_hint1"),
                style: TextStyle(
                  color: Color(0xff596273),
                  fontSize: 35,

                ),),
                SizedBox(
                  height: size.height*0.05,
                ),
                Center(
                  child: Center(
                    child: Container(
                      // duration: Duration(milliseconds: 200),
                      height: size.height*0.5,
                      width: _width,
                      decoration: ShapeDecoration(

                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [Colors.white, Color(0xfff8f8dc),Color(0xfff5f4c0),Color(0xfff7f6b7)]),

                        // color: Color(0xfff6f6cf),
                        shape: TooltipShapeBorder(arrowArc: 0.2),
                        shadows: [
                          BoxShadow(
                              color: Colors.black26, blurRadius: 4.0, offset: Offset(2, 2))
                        ],
                      ),
                      child:
                      hide?Container():Padding(
                        padding: const EdgeInsets.symmetric(vertical:26.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  AppLocalizations.of(context).translate("welcome_to"),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff515A6B),
                                  ),
                                ),
                                Text(
                                  "CADEAU BOUTIQUE",
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Color(0xff515A6B),
                                  ),
                                ),
                              ],
                            ),

                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Center(
                                  child: Text(
                                    "",
                                    style: TextStyle(

                                      fontSize: 12,
                                      color: Color(0xff515A6B),
                                      height: 3
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                // _updateState();

                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>PickerScreen()));
                              },
                              child: Container(
                                height: 29,
                                width: 104,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xffF2D750)
                                ),
                                child: Center(
                                  child: Text("Get Started",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff515A6B)
                                  ),),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                              },
                              child: Text("Home Page",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff515A6B)
                                ),),
                            ),
                          ],
                        ),
                      )
                    ),
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


class TooltipShapeBorder extends ShapeBorder {
  final double arrowWidth;
  final double arrowHeight;
  final double arrowArc;
  final double radius;

  TooltipShapeBorder({
    this.radius = 16.0,
    this.arrowWidth = 20.0,
    this.arrowHeight = 10.0,
    this.arrowArc = 0.0,
  }) : assert(arrowArc <= 1.0 && arrowArc >= 0.0);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: arrowHeight);

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) => null;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - Offset(0, arrowHeight));
    double x = arrowWidth, y = arrowHeight, r = 1 - arrowArc;
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)))
      ..moveTo(rect.bottomCenter.dx + x / 2, rect.bottomCenter.dy)
      ..relativeLineTo(-x / 2 * r, y * r)
      ..relativeQuadraticBezierTo(-x / 2 * (1 - r), y * (1 - r), -x * (1 - r), 0)
      ..relativeLineTo(-x / 2 * r, -y * r);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}