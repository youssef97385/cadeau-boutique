import 'package:cadeaue_boutique/Ui/wrap_screen/wrap_screen.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/checkout_address.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int selectedWrap = -1;
  List<Color> colors = [
    Color(0xffffffff),
    Color(0xffA6B7E8),
    Color(0xffF2D750),
    Color(0xff000000)
  ];

  int selectedColor = -1;
  List<TopSeller> products = [
    TopSeller(
        name: "Watch",
        price: "200",
        img: "assets/images/watch.png",
        oldPrice: "0"),
    TopSeller(
        name: "Flower",
        price: "200",
        img: "assets/images/flower.png",
        oldPrice: "0"),
    TopSeller(
        name: "NeckLess",
        price: "200",
        img: "assets/images/neckless.png",
        oldPrice: "0"),
  ];

  List<String> wrapItems = [
    "assets/images/—Pngtree—gift wrapping_4471687.png",
    "assets/images/—Pngtree—vector blue ribbon gift wrap_2472480.png"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              baseAppBar(size, context),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: size.width * 0.85,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: size.width * 0.9,
                          height: size.height * 0.3,
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width,
                                // color: Colors.amber,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Image.asset("assets/images/lazrude.png"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    baseText(
                                        title: "(1 Item)",
                                        size: 12.0,
                                        color: AppColor.darkTextColor),
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.18,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    ///image
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: size.height * 0.02),
                                      child: Container(
                                        width: size.width * .3,
                                        // color: Colors.red,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          child:
                                              Image.asset(products[index].img),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.1,
                                    ),

                                    ///price
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: size.height * 0.02),
                                      child: Container(
                                          width: size.width * 0.3,
                                          // color: Colors.amberAccent,
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  baseText(
                                                      color: AppColor
                                                          .darkTextColor,
                                                      title: "Watch",
                                                      size: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  baseText(
                                                      color:
                                                          AppColor.darkYellow,
                                                      title: "\$ 200",
                                                      size: 20.0),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  baseText(
                                                      color: AppColor
                                                          .darkTextColor,
                                                      title: "Wrap",
                                                      size: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  baseText(
                                                      color:
                                                          AppColor.darkYellow,
                                                      title: "\$ 200",
                                                      size: 20.0),
                                                ],
                                              )
                                            ],
                                          )),
                                    ),

                                    ///delete and fav icons
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: size.height * 0.02),
                                      child: Container(
                                        width: size.width * 0.15,
                                        // color: Colors.blue,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 26,
                                              width: 33,
                                              child: Container(
// color: Colors.blueAccent,
                                                  child: Image.asset(
                                                      "assets/images/delete.png")),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1, 1),
                                                    color: Colors.grey
                                                        .withOpacity(0.6),
                                                    blurRadius: 2,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    AppColor.darkYellow,
                                                    AppColor.lightYellow
                                                  ],
                                                  stops: [0.1, 0.96],
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              height: 26,
                                              width: 33,
                                              child: Container(
// color: Colors.blueAccent,
                                                  child: Image.asset(
                                                      "assets/images/fav.png")),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    offset: Offset(1, 1),
                                                    color: Colors.grey
                                                        .withOpacity(0.6),
                                                    blurRadius: 2,
                                                    spreadRadius: 1,
                                                  ),
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    AppColor.darkYellow,
                                                    AppColor.lightYellow
                                                  ],
                                                  stops: [0.1, 0.96],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: size.height * 0.04,
                                // color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      baseText(
                                          title: "Total",
                                          color: AppColor.darkTextColor,
                                          size: 18.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 3,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              color: Color(0xffb1b1b1),
                                            ),
                                            child: Center(
                                                child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 12,
                                            )),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: AppColor.darkYellow,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 3,
                                                  offset: Offset(0,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                              shape: BoxShape.circle,
                                              color: AppColor.darkYellow,
                                            ),
                                            child: Center(
                                                child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 12,
                                            )),
                                          ),
                                        ],
                                      ),
                                      baseText(
                                          color: AppColor.darkYellow,
                                          title: "\$ 400",
                                          size: 20.0),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: 1,
                                width: size.width * 0.85,
                                color: AppColor.darkYellow,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  baseText(
                      title: "Add One Wrap For All Products",
                      color: AppColor.lightTextColor,
                      size: 17.0),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: size.width * 0.8,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedWrap = index;
                                    });
                                  },
                                  child: Container(
                                    width: size.width * 0.4,
                                    height: 160,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 160,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Positioned(
                                                bottom: 0,
                                                // right: 10,
                                                child: Container(
                                                  height: 114,
                                                  width: size.width * 0.35,
                                                  decoration: BoxDecoration(
                                                    color: selectedWrap == index
                                                        ? AppColor.lightYellow
                                                        : Color(0xffEDEDED),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 150,
                                          child: Center(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 16.0),
                                                  child: Container(
                                                      width: 122,
                                                      height: 100,
                                                      child: Image.asset(
                                                        wrapItems[index],
                                                        fit: BoxFit.fill,
                                                      )),
                                                ),
                                                Text(
                                                  "200" + "\$",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  baseText(
                      title: "Choose Color:",
                      color: AppColor.lightTextColor,
                      size: 17.0),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 24.0),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedColor = index;
                                    });
                                  },
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      border: selectedColor != index
                                          ? null
                                          : Border.all(
                                              color: Color(0xff707070),
                                              width: 2),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 3,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      color: colors[index],
                                    ),
                                    child: selectedColor != index
                                        ? Container()
                                        : Center(
                                            child: Icon(
                                            Icons.check,
                                            color: Color(0xff707070),
                                          )),
                                  )),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      // margin: EdgeInsets.only(bottom: 80),
                      height: size.height * 0.07,
                      // width: size.width * .5,
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
                          colors: [AppColor.darkYellow, AppColor.lightYellow],
                          stops: [0.1, 0.96],
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: FlatButton(
                        // splashColor: Colors.red,
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => CheckoutAddress(
                          //           ticks: 1,
                          //         )));
                        },
                        child: Text(
                          'Add Wrap For All Products ',
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: size.width * 0.85,
                    height: 1,
                    color: AppColor.darkYellow,
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        baseText(
                            title: "Add A Song Link:",
                            color: AppColor.lightTextColor,
                            size: 17.0),
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/youtube.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset("assets/images/itunes.svg"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size.height * 0.07,
                      width: MediaQuery.of(context).size.width * .85,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 5,
                              spreadRadius: 3,
                            ),
                          ]),
                      child: Center(
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "https://www.youtube.com/",
                            contentPadding: EdgeInsets.only(
                              left: 16,
                              top: size.height * 0.02,
                            ),
                            suffixIcon: false
                                ? Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.red,
                                  )
                                : Container(
                                    width: 10,
                                  ),
                          ),
                          // onChanged: (val) {
                          //   setState(() => name = val);
                          // },
                          // onSaved: (value) => name = value,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            // margin: EdgeInsets.only(bottom: 80),
                            height: size.height * 0.07,
                            // width: size.width * .5,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                ),
                              ],
                              color: AppColor.lightTextColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: FlatButton(
                              // splashColor: Colors.red,
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Text(
                                  'Add The Song',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        baseText(
                            title: "\$ 200",
                            color: AppColor.darkYellow,
                            size: 26.0),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 1,
                      width: size.width * 0.85,
                      color: AppColor.darkYellow,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    baseText(
                        title: "Product",
                        color: AppColor.darkTextColor,
                        size: 16.0),
                    baseText(
                        title: "\$ 200",
                        color: AppColor.darkYellow,
                        size: 16.0),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    baseText(
                        title: "Wrap",
                        color: AppColor.darkTextColor,
                        size: 16.0),
                    baseText(
                        title: "\$ 200",
                        color: AppColor.darkYellow,
                        size: 16.0),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    baseText(
                        title: "Total",
                        color: AppColor.darkTextColor,
                        size: 26.0),
                    baseText(
                        title: "\$ 200",
                        color: AppColor.darkYellow,
                        size: 26.0),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
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
                      colors: [AppColor.darkYellow, AppColor.lightYellow],
                      stops: [0.1, 0.96],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: FlatButton(
                    // splashColor: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CheckoutAddress(
                                    ticks: 1,
                                  )));
                    },
                    child: Text(
                      'Check Out',
                      style: TextStyle(
                        color: AppColor.textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
