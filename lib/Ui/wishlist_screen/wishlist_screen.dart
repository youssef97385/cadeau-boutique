 import 'package:cadeaue_boutique/Ui/empty_page/empty_page.dart';
import 'package:cadeaue_boutique/Ui/product_screen/product_screen.dart';
import 'package:cadeaue_boutique/core/app_language.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_bloc.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_event.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/bloc/favourite_state.dart';
import 'package:flutter_svg/flutter_svg.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';

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

  final _bloc = sl<FavouriteBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetFavourites());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, FavouriteState state) {
        return Stack(
          children: [

             Scaffold(
            backgroundColor: Colors.white,

            body:
            SingleChildScrollView(
              child: Column(

                children: [
                  baseAppBar(size , context),
                  SizedBox(height: 20,),

                  (state.products.isEmpty &&!state.isLoading)?EmptyPage(size: size,
                    title: AppLocalizations.of(context).translate("your_tack_order_is_empty"),
                  ):
                  Center(
                    child: Container(
                      width: size.width*0.85,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: state.products.length,
                          itemBuilder: (BuildContext context , int index){
                            return Padding(
                              padding: const EdgeInsets.only(bottom:24.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context)=>ProductScreen(id: state.products[index].id,img: state.products[index].image,)
                                  ));
                                },
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

                                          child: Image.network(BaseImgUrl+state.products[index].image,fit: BoxFit.fill,),
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
                                            AppColor.AppLang==AppLanguageKeys.EN?
                                            baseText(color: AppColor.darkTextColor , title: state.products[index].nameEn , size: 18.0 , fontWeight: FontWeight.bold ):
                                            baseText(color: AppColor.darkTextColor , title: state.products[index].nameAr , size: 18.0 , fontWeight: FontWeight.bold ),
                                            baseText(color: AppColor.darkYellow , title: "\$ "+state.products[index].salePrice , size: 20.0 ),
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
                                                  _bloc.add(AddToCart((b)=> b..giftId  = state.products[index].id ));
                                                },
                                                child: Text(
                                                  AppLocalizations.of(context).translate('add_to_cart'),
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
                                            GestureDetector(
                                              onTap:(){
                                                _bloc.add(RemoveFavourite((b)=>b..id = state.products[index].id));

                                              },
                                              child: Container(
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
                                            ),

                                          ],
                                        ),
                                      ),
                                      // SizedBox(width: size.width*0.02,),
                                    ],
                                  ) ,
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            )
        ),
            state.isLoading ? Center(child: CircularProgressIndicator(
              backgroundColor: AppColor.darkYellow,
            ),) : Container()
          ],
        );
      },
    );

  }
}

