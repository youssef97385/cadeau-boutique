import 'package:flutter/material.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline/timeline.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';

class TrackScreen extends StatefulWidget {
  final int ticks;

  TrackScreen({@required this.ticks});

  @override
  _TrackScreenState createState() => _TrackScreenState();
}

class _TrackScreenState extends State<TrackScreen> {
  int current_step = 0;

  // List<Step> steps = [
  //   Step(
  //     title: Text('Step 1'),
  //     content: Text('Hello!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 2'),
  //     content: Text('World!'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Step 3'),
  //     content: Text('Hello World!'),
  //     state: StepState.complete,
  //     isActive: true,
  //   ),
  // ];
  //
  // final List<TimelineModel> list = [
  //   TimelineModel(
  //     id: "1",
  //     description: "Test 1",
  //     title: "Test 1",
  //   ),
  //   TimelineModel(id: "2", description: "", title: "")
  // ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            baseAppBar(size, context),
            SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.9,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.9,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          baseText(title: "Watch",
                              color: AppColor.darkYellow,
                              size: 18.0),
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.08,
                      width: size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              baseText(title: "You",
                                  size: 16.0,
                                  color: AppColor.darkTextColor),
                              baseText(title: "12/01/2021",
                                  size: 12.0,
                                  color: AppColor.textColor),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              baseText(title: "Mary",
                                  size: 16.0,
                                  color: AppColor.darkTextColor),
                              baseText(title: "12/02/2021",
                                  size: 12.0,
                                  color: AppColor.textColor),
                            ],)
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.06,
                      width: size.width * 0.9,
                      child: //
                      Row(
                        children: <Widget>[
                          tick1(size: size),

                          line(size,true),

                          tick2(size: size),

                          line(size , true),

                          tick3(size: size),

                          line(size , false),

                          tick4(size: size),
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.1,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          baseText(title: "Order will be delivered",
                              size: 16.0,
                              color: AppColor.darkTextColor),
                          SizedBox(height: 5,),
                          Container(
                            // margin: EdgeInsets.only(bottom: 80),
                            height: 26,
                            width: 80,
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
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ],

                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: FlatButton(
                              // splashColor: Colors.red,
                              onPressed: () {
                              },
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.3,
              width: size.width * 0.9,
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.9,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          baseText(title: "Watch",
                              color: AppColor.darkYellow,
                              size: 18.0),
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.08,
                      width: size.width * 0.9,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              baseText(title: "You",
                                  size: 16.0,
                                  color: AppColor.darkTextColor),
                              baseText(title: "12/01/2021",
                                  size: 12.0,
                                  color: AppColor.textColor),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              baseText(title: "Mary",
                                  size: 16.0,
                                  color: AppColor.darkTextColor),
                              baseText(title: "12/02/2021",
                                  size: 12.0,
                                  color: AppColor.textColor),
                            ],)
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.06,
                      width: size.width * 0.9,
                      child: //
                      Row(
                        children: <Widget>[
                          tick1(size: size),

                          line(size,true),

                          tick2(size: size),

                          line(size , true),

                          tick3(size: size),

                          line(size , false),

                          tick4(size: size),
                        ],
                      ),
                    ),
                    Container(

                      height: size.height * 0.1,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          baseText(title: "Order will be delivered",
                              size: 16.0,
                              color: AppColor.darkTextColor),
                          SizedBox(height: 5,),
                          Container(
                            // margin: EdgeInsets.only(bottom: 80),
                            height: 26,
                            width: 80,
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
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                ),
                              ],

                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: FlatButton(
                              // splashColor: Colors.red,
                              onPressed: () {
                              },
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  color: AppColor.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        )

    );
  }

  Widget tick(bool isChecked ,Size size ,  bool containIcon) {
    return containIcon?
    Container(
      width:size.width*0.07,
      height:size.width*0.07,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,

      ),
      child: Padding(
        padding:  EdgeInsets.all(4),
        child: SvgPicture.asset("assets/images/13-car.svg"),
      ),
    ):
      isChecked
        ? Container(
      width:size.width*0.04,
      height:size.width*0.04,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,

      ),
    )
        : Container(
      width:size.width*0.04,
      height:size.width*0.04,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkTextColor,

      ),
    );
  }

  Widget tick1({Size size}) {
    return widget.ticks > 0 ? tick(true ,size , false) : tick(false,size ,false);
  }

  Widget tick2({Size size}) {
    return widget.ticks > 1 ? tick(true,size,false) : tick(false,size,false);
  }

  Widget tick3({Size size}) {
    return widget.ticks > 2 ? tick(true,size,true) : tick(false,size,false);
  }

  Widget tick4({Size size}) {
    return widget.ticks > 3 ? tick(true,size,false) : tick(false,size,false);
  }

  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line(Size size , bool isChecked) {
    return Container(
      color: isChecked? AppColor.darkYellow:AppColor.darkTextColor,
      height: 2.0,
      width: size.width * 0.21,
    );
  }
}

