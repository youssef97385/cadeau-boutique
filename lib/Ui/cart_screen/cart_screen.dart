import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/wrap_screen.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/checkout_address.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_bloc.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_state.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_event.dart';
import 'empty_cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {



  int selectedWrap = -1;
  int wrapId = -1;
  bool editGlobalWrap = false;
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


  final _bloc = sl<CartBloc>();

  final songController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.add(GetCartInfo());
    _bloc.add(GetGlobalWraps());
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder
      (
      cubit: _bloc,
        builder: (BuildContext context , CartState state){
      return
         state.cartList.isEmpty ?EmptyCart():
        Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    baseAppBar(size, context),
                    SizedBox(
                      height: 10,
                    ),
                    state.cartList.isEmpty?Container():
                    Center(
                      child: Container(
                        width: size.width * 0.9,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: state.cartList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return



                                Column(
                                  children: [
                                    state.cartList[index].gift == null?Container():
                                    Container(
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
                                              // SizedBox(
                                              //   height: 5,
                                              // ),

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
                                                    Image.network(BaseImgUrl+state.cartList[index].gift.image,fit: BoxFit.fill,),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.05,
                                              ),

                                              ///price
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: size.height * 0.02),
                                                child: Container(
                                                    width: size.width * 0.3,
                                                    // color: Colors.amberAccent,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                      children: [
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                baseText(
                                                                    color: AppColor
                                                                        .darkTextColor,
                                                                    title: state.cartList[index].gift.nameEn,
                                                                    size: size.width*0.04,
                                                                    fontWeight:
                                                                    FontWeight.bold),


                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: size.height*0.005,
                                                            ),
                                                            baseText(
                                                                color:
                                                                AppColor.darkYellow,
                                                                title: " \$"+state.cartList[index].gift.salePrice,
                                                                size: 16.0),
                                                          ],
                                                        ),
                                                        // SizedBox(
                                                        //   height: 20,
                                                        // ),


                                                        // SizedBox(
                                                        //   height: 20,
                                                        // ),
                                                        state.cartList[index].wrap == null ?Container():
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                baseText(
                                                                    color: AppColor
                                                                        .darkTextColor,
                                                                    title: state.cartList[index].wrap.nameEn,
                                                                    size: size.width*0.04,
                                                                    fontWeight:
                                                                    FontWeight.bold),

                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: size.height*0.005,
                                                            ),
                                                            baseText(
                                                              color:
                                                              AppColor.darkYellow,
                                                              title: " \$"+state.cartList[index].wrap.mainPrice,
                                                              size: size.width*0.04,),
                                                          ],
                                                        )
                                                      ],
                                                    )),
                                              ),


                                              SizedBox(
                                                width: size.width*0.05,
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
                                                      InkWell(
                                                        onTap:(){
                                                          _bloc.add(RemoveItem((b)=>b..id = state.cartList[index].id));
                                                        },
                                                        child: Container(
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
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),

                                                      state.cartList[index].wrap!= null?
                                                      InkWell(
                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) => WrapScreen(
                                                                      id:  state.cartList[index].wrap.id)));
                                                        },
                                                        child: Container(
                                                          height: 26,
                                                          width: 33,
                                                          child: Container(
// color: Colors.blueAccent,
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(6.0),
                                                                child: SvgPicture.asset(
                                                                    "assets/images/gift-box (1).svg"),
                                                              )),
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
                                                            color: Colors.white
                                                          ),
                                                        ),
                                                      )
                                                          :Container()


                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        (state.cartList[index].totalPrice == null ||state.cartList[index].totalPrice ==0 )?Container():
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
                                                // Row(
                                                //   mainAxisAlignment:
                                                //   MainAxisAlignment.start,
                                                //   children: [
                                                //     Container(
                                                //       width: 20,
                                                //       height: 20,
                                                //       decoration: BoxDecoration(
                                                //         boxShadow: [
                                                //           BoxShadow(
                                                //             color: Colors.grey
                                                //                 .withOpacity(0.5),
                                                //             spreadRadius: 2,
                                                //             blurRadius: 3,
                                                //             offset: Offset(0,
                                                //                 3), // changes position of shadow
                                                //           ),
                                                //         ],
                                                //         shape: BoxShape.circle,
                                                //         color: Color(0xffb1b1b1),
                                                //       ),
                                                //       child: Center(
                                                //           child: Icon(
                                                //             Icons.remove,
                                                //             color: Colors.white,
                                                //             size: 12,
                                                //           )),
                                                //     ),
                                                //     SizedBox(
                                                //       width: 15,
                                                //     ),
                                                //     Text(
                                                //       "1",
                                                //       style: TextStyle(
                                                //         color: AppColor.darkYellow,
                                                //         fontSize: 16,
                                                //       ),
                                                //     ),
                                                //     SizedBox(
                                                //       width: 15,
                                                //     ),
                                                //     Container(
                                                //       width: 20,
                                                //       height: 20,
                                                //       decoration: BoxDecoration(
                                                //         boxShadow: [
                                                //           BoxShadow(
                                                //             color: Colors.grey
                                                //                 .withOpacity(0.5),
                                                //             spreadRadius: 2,
                                                //             blurRadius: 3,
                                                //             offset: Offset(0,
                                                //                 3), // changes position of shadow
                                                //           ),
                                                //         ],
                                                //         shape: BoxShape.circle,
                                                //         color: AppColor.darkYellow,
                                                //       ),
                                                //       child: Center(
                                                //           child: Icon(
                                                //             Icons.add,
                                                //             color: Colors.white,
                                                //             size: 12,
                                                //           )),
                                                //     ),
                                                //   ],
                                                // ),
                                                baseText(
                                                    color: AppColor.darkYellow,
                                                    title: "\$ ${state.cartList[index].totalPrice}",
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
                              ),
                                    state.cartList[index].wrap == null?Container():
                                    Container(
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
                                                // SizedBox(
                                                //   height: 5,
                                                // ),

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
                                                      Image.network(BaseImgUrl+state.cartList[index].wrap.image,fit: BoxFit.fill,),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: size.width * 0.05,
                                                ),

                                                ///price
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: size.height * 0.02),
                                                  child: Container(
                                                      width: size.width * 0.3,
                                                      // color: Colors.amberAccent,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  baseText(
                                                                      color: AppColor
                                                                          .darkTextColor,
                                                                      title: state.cartList[index].wrap.nameEn,
                                                                      size: size.width*0.04,
                                                                      fontWeight:
                                                                      FontWeight.bold),


                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: size.height*0.005,
                                                              ),
                                                              baseText(
                                                                  color:
                                                                  AppColor.darkYellow,
                                                                  title: " \$"+state.cartList[index].wrap.mainPrice,
                                                                  size: 16.0),
                                                            ],
                                                          ),
                                                          // SizedBox(
                                                          //   height: 20,
                                                          // ),


                                                          // SizedBox(
                                                          //   height: 20,
                                                          // ),
                                                          state.cartList[index].wrap == null ?Container():
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  baseText(
                                                                      color: AppColor
                                                                          .darkTextColor,
                                                                      title: state.cartList[index].wrap.nameEn,
                                                                      size: size.width*0.04,
                                                                      fontWeight:
                                                                      FontWeight.bold),

                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: size.height*0.005,
                                                              ),
                                                              baseText(
                                                                color:
                                                                AppColor.darkYellow,
                                                                title: " \$"+state.cartList[index].wrap.mainPrice,
                                                                size: size.width*0.04,),
                                                            ],
                                                          )
                                                        ],
                                                      )),
                                                ),


                                                SizedBox(
                                                  width: size.width*0.05,
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
                                                        InkWell(
                                                          onTap:(){
                                                            _bloc.add(RemoveItem((b)=>b..id = state.cartList[index].id));
                                                          },
                                                          child: Container(
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
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),

                                                        state.cartList[index].wrap!= null?
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (context) => WrapScreen(
                                                                        id:  state.cartList[index].wrap.id)));
                                                          },
                                                          child: Container(
                                                            height: 26,
                                                            width: 33,
                                                            child: Container(
// color: Colors.blueAccent,
                                                                child: Padding(
                                                                  padding: const EdgeInsets.all(6.0),
                                                                  child: SvgPicture.asset(
                                                                      "assets/images/gift-box (1).svg"),
                                                                )),
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
                                                                color: Colors.white
                                                            ),
                                                          ),
                                                        )
                                                            :Container()


                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          (state.cartList[index].totalPrice == null ||state.cartList[index].totalPrice ==0 )?Container():
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
                                                  // Row(
                                                  //   mainAxisAlignment:
                                                  //   MainAxisAlignment.start,
                                                  //   children: [
                                                  //     Container(
                                                  //       width: 20,
                                                  //       height: 20,
                                                  //       decoration: BoxDecoration(
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //             color: Colors.grey
                                                  //                 .withOpacity(0.5),
                                                  //             spreadRadius: 2,
                                                  //             blurRadius: 3,
                                                  //             offset: Offset(0,
                                                  //                 3), // changes position of shadow
                                                  //           ),
                                                  //         ],
                                                  //         shape: BoxShape.circle,
                                                  //         color: Color(0xffb1b1b1),
                                                  //       ),
                                                  //       child: Center(
                                                  //           child: Icon(
                                                  //             Icons.remove,
                                                  //             color: Colors.white,
                                                  //             size: 12,
                                                  //           )),
                                                  //     ),
                                                  //     SizedBox(
                                                  //       width: 15,
                                                  //     ),
                                                  //     Text(
                                                  //       "1",
                                                  //       style: TextStyle(
                                                  //         color: AppColor.darkYellow,
                                                  //         fontSize: 16,
                                                  //       ),
                                                  //     ),
                                                  //     SizedBox(
                                                  //       width: 15,
                                                  //     ),
                                                  //     Container(
                                                  //       width: 20,
                                                  //       height: 20,
                                                  //       decoration: BoxDecoration(
                                                  //         boxShadow: [
                                                  //           BoxShadow(
                                                  //             color: Colors.grey
                                                  //                 .withOpacity(0.5),
                                                  //             spreadRadius: 2,
                                                  //             blurRadius: 3,
                                                  //             offset: Offset(0,
                                                  //                 3), // changes position of shadow
                                                  //           ),
                                                  //         ],
                                                  //         shape: BoxShape.circle,
                                                  //         color: AppColor.darkYellow,
                                                  //       ),
                                                  //       child: Center(
                                                  //           child: Icon(
                                                  //             Icons.add,
                                                  //             color: Colors.white,
                                                  //             size: 12,
                                                  //           )),
                                                  //     ),
                                                  //   ],
                                                  // ),
                                                  baseText(
                                                      color: AppColor.darkYellow,
                                                      title: "\$ ${state.cartList[index].totalPrice}",
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
                                    ),
                                  ],
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
                            title: (state.cart.globalWrap != null && !editGlobalWrap)?
                                "One Wrap For All Gifts"
                                :"Add One Wrap For All Products",
                            color: AppColor.lightTextColor,
                            size: 17.0),
                        SizedBox(
                          height: 10,
                        ),
                         state.wraps.isEmpty?Container():

                    ///here global wrap
                        (state.cart.globalWrap != null && !editGlobalWrap)?
                        Container(
                          width: size.width * 0.9,
                          height: size.height * 0.3,
                          // color: Colors.red,
                          child: Column(
                            children: [

                              Container(
                                height: size.height * 0.18,
                                // color: Colors.green,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          Image.network(BaseImgUrl+state.cart.globalWrap.image,fit: BoxFit.fill,),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: size.width * 0.05,
                                    ),

                                    ///price
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: size.height * 0.02),
                                      child: Container(
                                          width: size.width * 0.3,
                                          // color: Colors.amberAccent,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      baseText(
                                                          color: AppColor
                                                              .darkTextColor,
                                                          title: state.cart.globalWrap.nameEn,
                                                          size: size.width*0.04,
                                                          fontWeight:
                                                          FontWeight.bold),


                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: size.height*0.005,
                                                  ),
                                                  baseText(
                                                      color:
                                                      AppColor.darkYellow,
                                                      title: " \$"+state.cart.globalWrap.mainPrice,
                                                      size: 16.0),
                                                ],
                                              ),


                                            ],
                                          )),
                                    ),


                                    SizedBox(
                                      width: size.width*0.05,
                                    ),
                                    ///delete and fav icons
                                    Container(
                                      width: size.width * 0.15,
                                      // color: Colors.blue,
                                      child: InkWell(
                                        onTap:(){
                                          _bloc.add(RemoveGlobalWrap());
                                          // _bloc.add(RemoveItem((b)=>b..id = state.id));
                                        },
                                        child: Container(
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
                                      ),
                                    ),

                                  ],
                                ),
                              ),


                              SizedBox(
                                height: size.height * 0.02,
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

                                      setState(() {
                                        editGlobalWrap = !editGlobalWrap;
                                      });
                                      // if(selectedWrap == -1){
                                      //   AwesomeDialog(
                                      //     context: context,
                                      //     customHeader: Container(
                                      //       child: Icon(
                                      //         Icons.error_outline,
                                      //         size: 100,
                                      //         color: AppColor.darkYellow,
                                      //       ),
                                      //     ),
                                      //     btnOkColor: AppColor.darkYellow,
                                      //     dialogType: DialogType.INFO,
                                      //     animType: AnimType.BOTTOMSLIDE,
                                      //     title: 'Add Wrap',
                                      //     desc: 'Please Choose Wrap First',
                                      //     btnCancelOnPress: () {},
                                      //     btnOkOnPress: () {
                                      //       // WidgetsBinding.instance.addPostFrameCallback((_) =>
                                      //       //     Navigator.of(context).push(
                                      //       //         MaterialPageRoute(builder: (context) => SigninScreen())));
                                      //     },
                                      //   )..show();
                                      // }else{
                                      //   _bloc.add(AddGlobalWrap((b)=>b..wrapId = wrapId));
                                      //   setState(() {
                                      //     // selectedWrap = state.wraps[0].wrapItems[index].id;
                                      //     editGlobalWrap = !editGlobalWrap;
                                      //   });
                                      // }



                                    },
                                    child: Text(
                                      (state.cart.globalWrap != null && !editGlobalWrap)?"Edit":'Add Wrap For All Gifts ',
                                      style: TextStyle(
                                        color: AppColor.textColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                            :

                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: size.width ,
                            height: 280,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              //
                              // boxShadow: [
                              //   // BoxShadow(
                              //   //   color:
                              //   //   Colors.grey.withOpacity(0.5),
                              //   //   spreadRadius: 4,
                              //   //   blurRadius: 7,
                              //   //   offset: Offset(0,
                              //   //       3), // changes position of shadow
                              //   // ),
                              // ],
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spa,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),


                                // Row(
                                //   children: [
                                //     Container(
                                //       width: 160,
                                //       height: 160,
                                //       // color: Colors.red,
                                //       child: Stack(
                                //         children: [
                                //           Positioned(
                                //             bottom:0,
                                //             child: Container(
                                //               height: 114,
                                //               width: 160,
                                //               decoration: BoxDecoration(
                                //                 color: AppColor.lightYellow,
                                //                 borderRadius: BorderRadius.all(Radius.circular(20)),
                                //
                                //               ),
                                //             ),
                                //           ),
                                //
                                //           Container(
                                //             height: 150,
                                //             child: Center(
                                //               child: Column(
                                //                 children: [
                                //                   Padding(
                                //                     padding: const EdgeInsets.only(bottom:16.0),
                                //                     child: Container(
                                //                         width:122,
                                //                         height:100 ,
                                //                         child: Image.asset("assets/images/wrap.png",fit: BoxFit.fill,)),
                                //                   ),
                                //                   Text("200\$",style: TextStyle(
                                //                       color: Colors.white,
                                //                       fontSize: 24,
                                //                       fontWeight: FontWeight.bold
                                //                   ),)
                                //                 ],
                                //               ),
                                //             ),
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //
                                //   ],
                                // ),
                                Container(
                                  height: 160,
                                  child: ListView.builder(
                                      scrollDirection:
                                      Axis.horizontal,
                                      itemCount: state.wraps[0].wrapItems.length,
                                      itemBuilder:
                                          (BuildContext context,
                                          int index) {
                                        return Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              horizontal: 8.0),
                                          child: GestureDetector(

                                              onTap: () {
                                                setState(() {
                                                  selectedWrap = index;
                                                  wrapId = state.wraps[0].wrapItems[index].id;
                                                  print("test wrap id $wrapId");
                                                  print("test wrap id2 $selectedWrap");
                                                });
                                              },

                                            child: Container(
                                              width: 130,
                                              height: 160,
                                              // color: Colors.red,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    bottom: 0,
                                                    child: Container(
                                                      height: 114,
                                                      width: 130,
                                                      decoration:
                                                      BoxDecoration(
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
                                                  Container(
                                                    height: 150,
                                                    child: Center(
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets
                                                                .only(
                                                                bottom:
                                                                16.0),
                                                            child: Container(
                                                                width: 122,
                                                                height: 100,
                                                                child: Image.network(
                                                                  BaseImgUrl+state.wraps[0].wrapItems[index].image,
                                                                  fit:
                                                                  BoxFit.fill,
                                                                )),
                                                          ),
                                                          Text(
                                                            state.wraps[0].wrapItems[index].mainPrice +
                                                                "\$",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize:
                                                                24,
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
                                        if(selectedWrap == -1){
                                          AwesomeDialog(
                                            context: context,
                                            customHeader: Container(
                                              child: Icon(
                                                Icons.error_outline,
                                                size: 100,
                                                color: AppColor.darkYellow,
                                              ),
                                            ),
                                            btnOkColor: AppColor.darkYellow,
                                            dialogType: DialogType.INFO,
                                            animType: AnimType.BOTTOMSLIDE,
                                            title: 'Add Wrap',
                                            desc: 'Please Choose Wrap First',
                                            btnCancelOnPress: () {},
                                            btnOkOnPress: () {
                                              // WidgetsBinding.instance.addPostFrameCallback((_) =>
                                              //     Navigator.of(context).push(
                                              //         MaterialPageRoute(builder: (context) => SigninScreen())));
                                            },
                                          )..show();
                                        }else{
                                          print("test wrap id3$wrapId");
                                          _bloc.add(AddGlobalWrap((b)=>b..wrapId = wrapId));
                                          setState(() {
                                            // selectedWrap = state.wraps[0].wrapItems[index].id;
                                            editGlobalWrap = !editGlobalWrap;
                                          });
                                        }



                                      },
                                      child: Text(
                                        (state.cart.globalWrap != null && !editGlobalWrap)?"Edit":'Add Wrap For All Gifts ',
                                        style: TextStyle(
                                          color: AppColor.textColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),



                        // Container(
                        //   width: size.width,
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Container(
                        //         height: 150,
                        //         width: size.width * 0.8,
                        //         child: ListView.builder(
                        //             scrollDirection: Axis.horizontal,
                        //             itemCount: state.wraps[0].wrapItems.length,
                        //             itemBuilder: (BuildContext context, int index) {
                        //               return GestureDetector(
                        //                 onTap: () {
                        //                   setState(() {
                        //                     selectedWrap = index;
                        //                     wrapId = state.wraps[0].wrapItems[index].id;
                        //                   });
                        //                 },
                        //                 child:
                        //                   Stack(
                        //                     children: [
                        //                       Row(
                        //
                        //                         children: [
                        //                           Padding(
                        //                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                        //                             child: Container(
                        //                               height: 160,
                        //                               child: Row(
                        //                                 mainAxisAlignment:
                        //                                 MainAxisAlignment.center,
                        //                                 crossAxisAlignment:
                        //                                 CrossAxisAlignment.end,
                        //                                 children: [
                        //                                   Positioned(
                        //                                     bottom: 0,
                        //                                     // right: 10,
                        //                                     child: Container(
                        //                                       height: 114,
                        //                                       width: size.width * 0.35,
                        //                                       decoration: BoxDecoration(
                        //                                         color: selectedWrap == index
                        //                                             ? AppColor.lightYellow
                        //                                             : Color(0xffEDEDED),
                        //                                         borderRadius:
                        //                                         BorderRadius.all(
                        //                                             Radius.circular(
                        //                                                 20)),
                        //                                       ),
                        //                                     ),
                        //                                   ),
                        //                                 ],
                        //                               ),
                        //                             ),
                        //                           ),
                        //                         ],
                        //                       ),
                        //                       Container(
                        //                         height: 150,
                        //                         child: Center(
                        //                           child: Column(
                        //                             children: [
                        //                               Padding(
                        //                                 padding:
                        //                                 const EdgeInsets.only(
                        //                                     bottom: 16.0),
                        //                                 child: Container(
                        //                                     width: 122,
                        //                                     height: 100,
                        //                                     child: Image.network(
                        //                                       BaseImgUrl+state.wraps[0].wrapItems[index].image,
                        //                                       fit: BoxFit.fill,
                        //                                     )),
                        //                               ),
                        //                               Text(
                        //                                  state.wraps[0] .wrapItems[index].mainPrice+ "\$",
                        //                                 style: TextStyle(
                        //                                     color: Colors.white,
                        //                                     fontSize: 24,
                        //                                     fontWeight:
                        //                                     FontWeight.bold),
                        //                               )
                        //                             ],
                        //                           ),
                        //                         ),
                        //                       )
                        //                     ],
                        //                   ),
                        //
                        //               );
                        //             }),
                        //       ),
                        //     ],
                        //   ),
                        // ),


                        // SizedBox(
                        //   height: 10,
                        // ),
                        // baseText(
                        //     title: "Choose Color:",
                        //     color: AppColor.lightTextColor,
                        //     size: 17.0),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Container(
                        //   height: 40,
                        //   child: ListView.builder(
                        //       shrinkWrap: true,
                        //       scrollDirection: Axis.horizontal,
                        //       itemCount: colors.length,
                        //       itemBuilder: (BuildContext context, int index) {
                        //         return Align(
                        //           alignment: Alignment.centerRight,
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(right: 24.0),
                        //             child: GestureDetector(
                        //                 onTap: () {
                        //                   setState(() {
                        //                     selectedColor = index;
                        //                   });
                        //                 },
                        //                 child: Container(
                        //                   width: 36,
                        //                   height: 36,
                        //                   decoration: BoxDecoration(
                        //                     border: selectedColor != index
                        //                         ? null
                        //                         : Border.all(
                        //                         color: Color(0xff707070),
                        //                         width: 2),
                        //                     boxShadow: [
                        //                       BoxShadow(
                        //                         color: Colors.grey.withOpacity(0.5),
                        //                         spreadRadius: 2,
                        //                         blurRadius: 3,
                        //                         offset: Offset(0,
                        //                             3), // changes position of shadow
                        //                       ),
                        //                     ],
                        //                     shape: BoxShape.circle,
                        //                     color: colors[index],
                        //                   ),
                        //                   child: selectedColor != index
                        //                       ? Container()
                        //                       : Center(
                        //                       child: Icon(
                        //                         Icons.check,
                        //                         color: Color(0xff707070),
                        //                       )),
                        //                 )),
                        //           ),
                        //         );
                        //       }),
                        // ),

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
                                controller: songController,
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
                                    onPressed: () {
                                      if(songController.text.isEmpty){

                                      }else{
                                        _bloc.add(AddSong((b)=>b..song = songController.text));
                                      }
                                    },
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
                                  title: "\$ 100",
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
                    state.cart.productsPrice == 0? Container():
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
                              title: "\$ ${state.cart.productsPrice}",
                              color: AppColor.darkYellow,
                              size: 16.0),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    state.cart.wrapsPrice == 0?Container():
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
                              title: "\$ ${  state.cart.wrapsPrice}",
                              color: AppColor.darkYellow,
                              size: 16.0),
                        ],
                      ),
                    ),


                  state.cart.globalWrap== null?Container():
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.06,vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        baseText(
                            title: "Global Wrap",
                            color: AppColor.darkTextColor,
                            size: 16.0),
                        baseText(
                            title: "\$ ${  state.cart.globalWrap.mainPrice}",
                            color: AppColor.darkYellow,
                            size: 16.0),
                      ],
                    ),
                  ),


                    state.cart.songPrice == 0?Container():
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            baseText(
                                title: "Song",
                                color: AppColor.darkTextColor,
                                size: 16.0),
                            baseText(
                                title: "\$"+state.cart.songPrice.toString(),
                                color: AppColor.darkYellow,
                                size: 16.0),
                          ],
                        ),
                      ),
                    ],
                  ),

                    SizedBox(
                      height: 10,
                    ),
                    (state.cart.totalPrice ==0 )?Container():
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
                              title: "\$ ${state.cart.totalPrice}",
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
                                      total: state.cart.totalPrice.toString(),
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
              ),
              state.isLoading?Center(child: CircularProgressIndicator(backgroundColor: AppColor.darkYellow,),):Container()
            ],
          )
      );
    });
  }
}
