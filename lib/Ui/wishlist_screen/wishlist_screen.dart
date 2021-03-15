import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {

  List<TopSeller> products = [
    TopSeller(name: "Watch" , price: "200" , img: "assets/images/watch.png",oldPrice: "0"),
    TopSeller(name: "Flower" , price: "200" , img: "assets/images/flower.png",oldPrice: "0"),
    TopSeller(name: "NeckLess" , price: "200" , img: "assets/images/neckless.png",oldPrice: "0"),

  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

        body:
        SingleChildScrollView(
          child: Column(

            children: [
              baseAppBar(size , context),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: size.width*0.85,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (BuildContext context , int index){
                        return Padding(
                          padding: const EdgeInsets.only(bottom:24.0),
                          child: Container(
                            width: size.width*0.85,
                            height: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(18)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                ),

                              ],

                            ),
                            child: Row(
                              children: [

                                SizedBox(width: size.width*0.04,),
                                ///0.35
                                Container(
                                  height:140,
                                  width: size.width*0.35,
                                  child: ClipRRect(

                                    child: Image.asset(products[index].img,fit: BoxFit.fill,),
                                    borderRadius: BorderRadius.all(Radius.circular(14)),

                                  ),
                                ),

                                SizedBox(width: size.width*0.04,),
                                ///0.25
                                Container(
                                  width: size.width*0.25,
                                  height: 120,
                                  // color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      baseText(color: AppColor.darkTextColor , title: "Watch" , size: 18.0 , fontWeight: FontWeight.bold ),
                                      baseText(color: AppColor.darkYellow , title: "\$ 200" , size: 20.0 ),
                                      Container(
                                        // margin: EdgeInsets.only(bottom: 80),
                                        height: 26,
                                        width: 120,
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
                                            'Add To Cart',
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
                                SizedBox(width: size.width*0.02,),
                                ///0.15

                                Container(
                                  height: 120,
                                  width: size.width*0.15,
                                  // color: Colors.green,

                                  child: Column(
                                    children: [
                                      Container(
                                        height: 26,
                                        width:33 ,
                                        child: Container(
                                          // color: Colors.blueAccent,
                                            child: Image.asset("assets/images/delete.png")
                                        ),
                                        // decoration: BoxDecoration(
                                        //   borderRadius: BorderRadius.all(Radius.circular(10)),
                                        //   boxShadow: [
                                        //     BoxShadow(
                                        //       offset: Offset(1, 1),
                                        //       color: Colors.grey.withOpacity(0.6),
                                        //       blurRadius: 2,
                                        //       spreadRadius: 1,
                                        //     ),
                                        //   ],
                                        //   gradient: LinearGradient(
                                        //     colors: [
                                        //       AppColor.darkYellow,
                                        //       AppColor.lightYellow
                                        //     ],
                                        //     stops: [0.1, 0.96],
                                        //   ),
                                        // ),
                                      ),

                                    ],
                                  ),
                                ),
                                // SizedBox(width: size.width*0.02,),
                              ],
                            ) ,
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        )
    );
  }
}
