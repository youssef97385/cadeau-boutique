import 'package:cadeaue_boutique/Ui/filter_result/filter_result.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:cadeaue_boutique/Ui/age_screen/age_screen.dart';
import 'package:cadeaue_boutique/core/base_widget/animated_background.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/Ui/occasion_screen/occasion_screen.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/choose_occasion/choose_occasion.dart';
import 'package:cadeaue_boutique/Ui/gender_screen/gender_screen.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_bloc.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_event.dart';
import 'package:cadeaue_boutique/Ui/picker_screen/bloc/filter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cadeaue_boutique/core/base_widget/filter_bar.dart';
import '../../injectoin.dart';

class PickerScreen extends StatefulWidget {
  @override
  _PickerScreenState createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  final _bloc = sl<FilterBloc>();

  int picked = -1;
  int pickedOccasion = -1;
  int pickedRelation = -1;
  int index = 1;
  int value = 50;

  String genderValue;
  String age;
  int maxPrice;
  int minPrice;

  int occasionId , relationId ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bloc.add(GetRelations());
    _bloc.add(GetMainOccasions());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    print("build index $index");
    return SafeArea(
        child: BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FilterState state) {
        return Scaffold(
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
                      filterBar(size, context),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Text(
                        "Let's Find You a Gift",
                        style: TextStyle(
                          color: Color(0xff596273),
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      index == 1
                          ? gender(size: size)
                          : index == 2
                              ? chooseOccasion(size: size, state: state)
                              : index == 3
                                  ? chooseRelation(size: size, state: state)
                                  : index == 4
                                      ? chooseAge(size: size)
                                      : choosePrice(size: size),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.2,
                              ),
                              Container(
                                child: SvgPicture.asset(
                                    "assets/images/Group 1.svg"),
                              ),
                              SizedBox(
                                width: 92.17,
                              ),
                              Container(
                                child: SvgPicture.asset(
                                    "assets/images/Group 14.svg"),
                              ),
                              SizedBox(
                                width: size.width * 0.2,
                              ),
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
            ),
            state.isLoading
                ? Container(
                    width: size.width,
                    height: size.height,
                    color: Colors.black12.withOpacity(0.2),
                    child: Center(
                      child: CircularProgressIndicator(
                        backgroundColor: AppColor.darkYellow,
                      ),
                    ))
                : Container()
          ],
        ));
      },
    ));
  }

  nextPress() {
    setState(() {
      index = index + 1;
    });
  }

  Widget chooseOccasion({Size size, FilterState state}) {
    return Center(
      child: Container(
          height: size.height * 0.5,
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
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Choose Occasion",
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: size.height * 0.25,
                    width: 300,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: state.occasions.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                pickedOccasion = index;
                                occasionId = state.occasions[index].id;
                              });
                            },
                            child: singleOccasion(
                                title: state.occasions[index].enName,
                                image: state.occasions[index].miniImage,
                                color: pickedOccasion == index
                                    ? AppColor.lightYellow
                                    : Colors.white));
                      },
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterResult(occasionId: 1,)));
                  },
                  child: Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff393741)),
                    child: Center(
                      child: Text(
                        "Find Now",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = index - 1;
                          });
                          // Navigator.pop(context);
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "2 out of 5",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff515A6B)),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = index + 1;
                          });
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (context)=>RelationScreen()
                          // ));
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget chooseRelation({Size size, FilterState state}) {
    return Center(
      child: Container(
          height: size.height * 0.5,
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
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Choose Relation",
                          style: TextStyle(
                            fontSize: 21,
                            color: Color(0xff515A6B),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        // SvgPicture.asset("assets/images/relation.svg")
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: size.height * 0.25,
                    width: 300,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: state.relations.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              setState(() {
                                pickedRelation = index;
                                relationId = state.relations[index].id;
                              });
                            },
                            child: singleOccasion(
                                title: state.relations[index].enName,
                                image: state.relations[index].miniImage,
                                color: pickedRelation == index
                                    ? AppColor.lightYellow
                                    : Colors.white));
                      },
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterResult()));
                  },
                  child: Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff393741)),
                    child: Center(
                      child: Text(
                        "Find Now",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index -= 1;
                          });
                          // Navigator.pop(context);
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "3 out of 5",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff515A6B)),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index += 1;
                          });
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (context)=>AgeScreen()
                          // ));
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget gender({Size size, FilterState state}) {
    return Center(
      child: AnimatedContainer(
          height: size.height * 0.5,
          duration: Duration(seconds: 1),
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
            padding: const EdgeInsets.symmetric(vertical: 26.0),
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
                          onTap: () {
                            setState(() {
                              picked = 1;
                              genderValue = "male";
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: picked == 1
                                  ? Color(0xffF2D750)
                                  : Colors.white,
                              shape: BoxShape.circle,

                              // border: Border.all(color: Color(0xff707070))
                            ),
                            height: 70,
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset(
                                  "assets/images/male-user.svg"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Male",
                            style: TextStyle(
                                color: Color(0xff515A6B), fontSize: 16))
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.0,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              picked = 2;
                              genderValue = "female";

                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: picked == 2
                                  ? Color(0xffF2D750)
                                  : Colors.white,
                              shape: BoxShape.circle,

                              // border: Border.all(color: Color(0xff707070))
                            ),
                            height: 70,
                            width: 70,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SvgPicture.asset(
                                  "assets/images/female-worker.svg"),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Female",
                            style: TextStyle(
                                color: Color(0xff515A6B), fontSize: 16))
                      ],
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterResult()));
                  },
                  child: Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff393741)),
                    child: Center(
                      child: Text(
                        "Find Now",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "1 out of 5",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff515A6B)),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("press///");

                            index = index + 1;
                            print("the index " + index.toString());
                          });
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             OccasionScreen()));
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget chooseAge({Size size, FilterState state}) {
    return Center(
      child: Container(
          height: size.height * 0.5,
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
            padding: const EdgeInsets.symmetric(vertical: 26.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Choose Age",
                          style: TextStyle(
                            fontSize: 21,
                            color: Color(0xff515A6B),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SvgPicture.asset("assets/images/growing-up.svg")
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       value += 1;
                    //     });
                    //   },
                    //   child: Icon(
                    //     Icons.add,
                    //     size: 30,
                    //     color: Color(0xffF2AE2E),
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Container(
                      child: NumberPicker.integer(
                        textStyle:
                            TextStyle(fontSize: 18, color: Color(0xff515A6B)),
                        highlightSelectedValue: true,
                        selectedTextStyle:
                            TextStyle(color: Color(0xffF2AE2E), fontSize: 32),
                        initialValue: value,
                        minValue: 0,
                        maxValue: 100,
                        onChanged: (num v) {
                          setState(() {
                            value = v;
                            age = v.toString();
                          });
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 136,
                      width: 56,
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       value -= 1;
                    //     });
                    //   },
                    //   child: Icon(
                    //     Icons.remove,
                    //     size: 30,
                    //     color: Color(0xffF2AE2E),
                    //   ),
                    // ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilterResult()));
                  },
                  child: Container(
                    height: 30,
                    width: 97,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xff393741)),
                    child: Center(
                      child: Text(
                        "Find Now",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index -= 1;
                          });
                          // Navigator.pop(context);
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "4 out of 5",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff515A6B)),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index += 1;
                          });
                          // Navigator.push(context, MaterialPageRoute(
                          //     builder: (context)=>PriceScreen()
                          // ));
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget choosePrice({Size size, FilterState state}) {
    return Center(
      child: Container(
          height: size.height * 0.5,
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
            padding: const EdgeInsets.symmetric(vertical: 26.0),
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
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/images/price-tag.svg"),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  "assets/images/curve-down-arrow.svg"),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Max:",
                                style: TextStyle(
                                    color: Color(0xff515A6B), fontSize: 21),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(maxPrice == null){
                                      maxPrice = 300;
                                    }
                                   else{
                                      maxPrice +=100;
                                    }
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.add,
                                      size: 25,
                                      color: Color(0xffF2AE2E),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: size.width*0.15,
                                child: Center(
                                  child: Text(
                                    maxPrice == null?"200":maxPrice.toString(),
                                    style: TextStyle(
                                        color: Color(0xff515A6B), fontSize: 21),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(maxPrice == null){
                                      maxPrice = 100;
                                    }
                                    else if(maxPrice == 0){

                                    }else{
                                       maxPrice -=100;
                                    }
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.remove,
                                      size: 25,
                                      color: Color(0xffF2AE2E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset("assets/images/curve arrow.svg"),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Mine:",
                                style: TextStyle(
                                    color: Color(0xff515A6B), fontSize: 21),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(minPrice == null){
                                      minPrice = 300;
                                    }
                                    else{
                                      minPrice += 100;

                                    }
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.add,
                                      size: 25,
                                      color: Color(0xffF2AE2E),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: size.width*0.15,
                                child: Center(
                                  child: Text(
                                    minPrice == null ?"200":minPrice.toString(),
                                    style: TextStyle(
                                        color: Color(0xff515A6B), fontSize: 21),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    if(minPrice == null){
                                      minPrice = 100;
                                    }
                                    else if(minPrice == 0){

                                    }else{
                                      minPrice -=100;
                                    }
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.remove,
                                      size: 25,
                                      color: Color(0xffF2AE2E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index -= 1;
                          });
                          // Navigator.pop(context);
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "5 out of 5",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff515A6B)),
                      ),
                      InkWell(
                        focusColor: Colors.white,
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterResult(occasionId: occasionId ,
                                    age: age ,
                                     gender: genderValue,
                                  maxPrice: maxPrice.toString(),
                                    minPrice: minPrice.toString(),
                                    relationId: relationId,

                                  )));
                        },
                        child: Container(
                          height: 31,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color(0xffF2D750)),
                          child: Center(
                            child: Text(
                              "Find",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff515A6B)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget singleOccasion({String title, String image, Color color}) {
    return Column(
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
            child: Image.network(BaseImgUrl + image),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(title, style: TextStyle(color: Color(0xff515A6B), fontSize: 10))
      ],
    );
  }
}
