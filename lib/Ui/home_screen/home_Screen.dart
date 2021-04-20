import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_state.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/product_screen/product_screen.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/wrap_screen.dart';
import 'package:cadeaue_boutique/core/app_language.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/Ui/categories_screen/categories_screen.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/all_products_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cadeaue_boutique/core/constent.dart';

import 'dart:io';
import 'dart:async';

import '../../injectoin.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<OccasionsModel> occasionsLisrt = [
    OccasionsModel(img: "assets/images/cake.svg", txt: "Birthday"),
    OccasionsModel(img: "assets/images/pacifier.svg", txt: "Baby"),
    OccasionsModel(img: "assets/images/love.svg", txt: "Valentine's"),
    OccasionsModel(img: "assets/images/wedding-rings.svg", txt: "Wedding"),
    OccasionsModel(img: "assets/images/santa-claus.svg", txt: "Christmas"),
    OccasionsModel(img: "assets/images/graduation-cap.svg", txt: "Graduation"),
    OccasionsModel(img: "assets/images/holidy.svg", txt: "Holidays"),
    OccasionsModel(img: "assets/images/other.svg", txt: "Other"),
  ];

  List<OccasionsModel> categoriesList = [
    OccasionsModel(img: "assets/images/cat-bag.png", txt: "Bags"),
    OccasionsModel(img: "assets/images/cat-watch.png", txt: "Watches"),
    OccasionsModel(img: "assets/images/cat-clothes.png", txt: "Clothes"),
    OccasionsModel(img: "assets/images/cat-perfume.png", txt: "Perfumes"),
    OccasionsModel(img: "assets/images/cat-glasses.png", txt: "Glasses"),
  ];

  List<String> wrapList = ["Wrap", "Wrap", "Wrap", "Wrap"];

  List<TopSeller> topSellers = [
    TopSeller(
        img: "assets/images/watch.png",
        name: "Watch",
        price: "200",
        oldPrice: "400"),
    TopSeller(
        img: "assets/images/flower.png",
        name: "Flower",
        price: "200",
        oldPrice: "400"),
    TopSeller(
        img: "assets/images/neckless.png",
        name: "Neckless",
        price: "200",
        oldPrice: "400"),
  ];

  List<String> slider = [
    'assets/images/slider2.png',
    'assets/images/slider1.png',
    'assets/images/slider3.png',
  ];

  List<TopSeller> Coupons = [
    TopSeller(
        img: "assets/images/starsplay.png",
        name: "STARZPLAY",
        price: "200",
        oldPrice: "400"),
    TopSeller(
        img: "assets/images/shein.jpg",
        name: "SHEIN",
        price: "200",
        oldPrice: "400"),
    TopSeller(
        img: "assets/images/jarir.jpg",
        name: "JARIR",
        price: "200",
        oldPrice: "400"),
  ];

  final controller = PageController(viewportFraction: 1, initialPage: 1);

  int wrapIndex = 0;

  int _currentPage = 0;

  final _bloc = sl<HomeBloc>();

  HomeState state2;

  @override
  void initState() {
    super.initState();
    // print ("home state "+state2.categories.toString());
    _bloc.add(IniEvent());
    _bloc.add(GetMainGift());
    _bloc.add(GetSlider());
    _bloc.add(GetOccasion());
    _bloc.add(GetCategory());
    _bloc.add(GetBrand());
    _bloc.add(GetCoupon());
    _bloc.add(GetWraps());
    _bloc.add(GetNearby());
    _bloc.add(GetAllProducts());

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void openDrawer() {
    _drawerKey.currentState.openDrawer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, HomeState state) {






        return Scaffold(
            backgroundColor: Colors.white,
            key: _drawerKey,
            drawer: MainDrawer(isLogin: state.loginState,categories:

              state.categories,),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      baseAppBar(size, context, openDrawer,true),
                      Center(
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 16),
                              state.sliders.isEmpty
                                  ? Container(
                                      height: 210,
                                    )
                                  : SizedBox(
                                      // color: Colors.red,
                                      height: 210,
                                      // width: 100,
                                      child: PageView(
                                        controller: controller,
                                        children: List.generate(
                                            state.sliders.length,
                                            (index) => GestureDetector(
                                              onTap: () {

                                                if(state
                                                    .sliders[index]
                                                    .brandID!=null)
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            AllProductsScreen(
                                                              id: state
                                                                  .sliders[index]
                                                                  .brandID,
                                                              type: "brand",
                                                            )));
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:8.0),
                                                child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      12))),

                                                      // color:index == 0 ?Colors.green : index == 1 ?Colors.yellow: Colors.pink,
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                        child: Image.network(
                                                          BaseImgUrl +
                                                              state
                                                                  .sliders[index].img,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                              ),
                                            )
                                            // _makePage(context, index, slider)
                                            ),
                                      ),
                                    ),
                              SizedBox(height: 16),

                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: Container(
                                  child: SmoothPageIndicator(
                                    controller: controller,
                                    count: state.sliders.length,
                                    effect: ExpandingDotsEffect(
                                      activeDotColor: AppColor.darkYellow,
                                      dotColor:
                                          AppColor.darkYellow.withOpacity(0.5),
                                      expansionFactor: 4,
                                      dotHeight: 8,
                                      dotWidth: 8,
                                    ),
                                  ),
                                ),
                              ),

                              ///ocasions
                              state.occasions.isEmpty
                                  ? Container(
                                      height: 120,
                                    )
                                  : Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 16.0, bottom: 16),
                                            child: Text(
                                              "Occasions",
                                              style: TextStyle(
                                                  color: Color(0xff393741),
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Container(
                                            height: 105,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: state.occasions.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 8),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  AllProductsScreen(
                                                                    id: state
                                                                        .occasions[
                                                                            index]
                                                                        .id,
                                                                    type:
                                                                        "occasion",
                                                                  )));
                                                    },
                                                    child: singleOccasion(
                                                        title: state
                                                            .occasions[index]
                                                            .enName,
                                                        image: state
                                                            .occasions[index]
                                                            .miniImage),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                              ///near occasions
                              state.nearbyOccasions.isEmpty
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Column(
                                              children: [
                                                Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 8.0),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        AllProductsScreen(
                                                                          id: state
                                                                              .nearbyOccasions[0]
                                                                              .id,
                                                                          type:
                                                                              "occasion",
                                                                        )));
                                                      },
                                                      child: Stack(
                                                        children: [
                                                          // Container(
                                                          //   height: 136,
                                                          //   width: size.width * 0.45,
                                                          //   decoration: BoxDecoration(
                                                          //     borderRadius: BorderRadius.all(
                                                          //         Radius.circular(12)),
                                                          //     color: Color(0xffF1F0EE),
                                                          //     boxShadow: [
                                                          //       BoxShadow(
                                                          //         color: Colors.grey
                                                          //             .withOpacity(0.5),
                                                          //         spreadRadius: 2,
                                                          //         blurRadius: 5,
                                                          //         offset: Offset(0,
                                                          //             3), // changes position of shadow
                                                          //       ),
                                                          //     ],
                                                          //   ),
                                                          // ),
                                                          Container(
                                                            height: 136,
                                                            width: size.width *
                                                                0.45,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          12)),
                                                              color: Color(
                                                                  0xffF1F0EE),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  spreadRadius:
                                                                      2,
                                                                  blurRadius: 5,
                                                                  offset: Offset(
                                                                      0,
                                                                      3), // changes position of shadow
                                                                ),
                                                              ],
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    height: 24,
                                                                    child: Text(
                                                                      firstCharacterUpper(state
                                                                          .nearbyOccasions[
                                                                      0]
                                                                          .enName),
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              22,
                                                                          color:
                                                                              Color(0xff393741)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Center(
                                                                  child: Container(
                                                                      height:
                                                                          112,
                                                                      child: Image.network(BaseImgUrl +
                                                                          state
                                                                              .nearbyOccasions[0]
                                                                              .image)),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          // Positioned(
                                                          //     right: 40,
                                                          //     bottom: 4,
                                                          //     child: Container(
                                                          //         height: 55,
                                                          //         width: 65,
                                                          //         child: Image.asset(
                                                          //           "assets/images/near occasion2.png",
                                                          //           fit: BoxFit.fill,
                                                          //         ))),
                                                          // Positioned(
                                                          //     left: 10,
                                                          //     top: 10,
                                                          //     child: Image.asset(
                                                          //         "assets/images/near occassion3.png")),
                                                          // Positioned(
                                                          //     left: 70,
                                                          //     bottom: 60,
                                                          //     child: Image.asset(
                                                          //         "assets/images/near occassion3.png")),
                                                          // Positioned(
                                                          //     left: 100,
                                                          //     bottom: 70,
                                                          //     child: Image.asset(
                                                          //         "assets/images/near occassion3.png")),
                                                          // Positioned(
                                                          //   left: 10,
                                                          //   top: 20,
                                                          //   child: Container(
                                                          //     child: Text(
                                                          //       state.nearbyOccasions[0].enName,
                                                          //       style: TextStyle(
                                                          //           fontSize: 22,
                                                          //           color: Color(0xff393741)),
                                                          //     ),
                                                          //   ),
                                                        ],
                                                      ),
                                                    )),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                AllProductsScreen(
                                                                  id: state
                                                                      .nearbyOccasions[
                                                                          1]
                                                                      .id,
                                                                  type:
                                                                      "occasion",
                                                                )));
                                                  },
                                                  child: Stack(
                                                    children: [
                                                      // Container(
                                                      //   height: 136,
                                                      //   width: size.width * 0.45,
                                                      //   decoration: BoxDecoration(
                                                      //     borderRadius: BorderRadius.all(
                                                      //         Radius.circular(12)),
                                                      //     color: Color(0xffF1F0EE),
                                                      //     boxShadow: [
                                                      //       BoxShadow(
                                                      //         color: Colors.grey
                                                      //             .withOpacity(0.5),
                                                      //         spreadRadius: 2,
                                                      //         blurRadius: 5,
                                                      //         offset: Offset(0,
                                                      //             3), // changes position of shadow
                                                      //       ),
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                      Container(
                                                          height: 136,
                                                          width:
                                                              size.width * 0.45,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12)),
                                                            color: Color(
                                                                0xffF1F0EE),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0,
                                                                    3), // changes position of shadow
                                                              ),
                                                            ],
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  height: 24,
                                                                  child: Text(
                                                                    firstCharacterUpper(
                                                                    state
                                                                        .nearbyOccasions[
                                                                            1]
                                                                        .enName),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            22,
                                                                        color: Color(
                                                                            0xff393741)),
                                                                  ),
                                                                ),
                                                              ),
                                                              Center(
                                                                child: Container(
                                                                    height: 112,
                                                                    child: Image.network(BaseImgUrl +
                                                                        state
                                                                            .nearbyOccasions[1]
                                                                            .image)),
                                                              )
                                                            ],
                                                          )),

                                                      // Positioned(
                                                      //   left: 10,
                                                      //   top: 20,
                                                      //   child: Container(
                                                      //     child: Text(
                                                      //       state.nearbyOccasions[1].enName,
                                                      //       style: TextStyle(
                                                      //           fontSize: 22,
                                                      //           color: Color(0xff393741)),
                                                      //     ),
                                                      //   ),
                                                      // )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AllProductsScreen(
                                                            id: state
                                                                .nearbyOccasions[
                                                                    2]
                                                                .id,
                                                            type: "occasion",
                                                          )));
                                            },
                                            child: Container(
                                              height: 280,
                                              width: size.width * 0.45,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Color(0xffF1F0EE),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 2,
                                                    blurRadius: 5,
                                                    offset: Offset(0,
                                                        3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Container(
                                                    child: Text(
                                                      firstCharacterUpper(
                                                      state.nearbyOccasions[2]
                                                          .enName),
                                                      style: TextStyle(
                                                        fontSize: 22,
                                                        color:
                                                            Color(0xff393741),
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 45,
                                                  ),
                                                  Container(
                                                      height: 130,
                                                      width: 140,
                                                      child: Image.network(
                                                        BaseImgUrl +
                                                            state
                                                                .nearbyOccasions[
                                                                    2]
                                                                .image,
                                                        fit: BoxFit.fill,
                                                      )),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                              ///Top Seller

                              SizedBox(
                                height: 20,
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Top Seller",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff393741)),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AllProductsScreen(
                                                        id: 1, type: 'all')));
                                      },
                                      child: Text(
                                        "More",
                                        style: TextStyle(
                                            color: AppColor.darkYellow,
                                            fontSize: 18),
                                      ),
                                    )
                                  ],
                                ),
                              ),

                              state.products.isEmpty
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                      ),
                                      child: Container(
                                        height: 200,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: state.products.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => ProductScreen(
                                                                id: state
                                                                    .products[
                                                                index]
                                                                    .id,img:state
                                                                .products[
                                                            index]
                                                                .image)));
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: 160,
                                                        height: 180,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      12)),
                                                          color: Colors.white,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 5,
                                                              offset: Offset(0,
                                                                  3), // changes position of shadow
                                                            ),
                                                          ],
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      bottom:
                                                                          8.0),
                                                              child: Container(
                                                                  width: 160,
                                                                  height: 121,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(
                                                                                12)),
                                                                    child: Hero(
                                                                      tag: "${state
                                                                          .products[
                                                                      index]
                                                                          .id}",
                                                                      child: Image
                                                                          .network(
                                                                        BaseImgUrl +
                                                                            state
                                                                                .products[index]
                                                                                .image,
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  )),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0),
                                                              child: Text(
                                                                firstCharacterUpper(
                                                                state
                                                                    .products[
                                                                        index]
                                                                    .nameEn),
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff393741),
                                                                    fontSize: 18),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 8.0,
                                                                      top: 8,
                                                                      right: 8.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      state
                                                                              .products[
                                                                                  index]
                                                                              .mainPrice +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff393741),
                                                                          fontSize:
                                                                              15,
                                                                          decoration:
                                                                              TextDecoration.lineThrough)),
                                                                  Text(
                                                                    state.products[index]
                                                                            .salePrice +
                                                                        "\$",
                                                                    style: TextStyle(
                                                                        color: AppColor
                                                                            .darkYellow,
                                                                        fontSize:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      // Text("das")
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                              SizedBox(
                                height: 20,
                              ),

                              ///perfume

                              /***************************************************
                               * *** modify here get the main product from api
                               */
                              state.mainGift.id==null||state.mainGift.image==null
                                  ? Container()
                                  : Row(
                                      children: [
                                        Container(
                                          // color: Colors.red,
                                          width: size.width * 0.4,
                                          height: 212,
                                          child: Stack(
                                            children: [
                                              Container(
                                                  height: 190,
                                                  width: size.width * .4,
                                                  //  color: Colors.green,
                                                  child: Image.network(
                                                    "$BaseImgUrl${state.mainGift.image}",

                                                    fit: BoxFit.cover,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: size.width * 0.6,
                                          height: 150,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child:state.lang==AppLanguageKeys.EN? Text(
                                                  state.mainGift.titleEn,
                                                  style: TextStyle(
                                                      fontSize: 26,
                                                      color: Color(0xff393741)),
                                                ): Text(
                                          state.mainGift.titleAr,
                                          style: TextStyle(
                                              fontSize: 26,
                                              color: Color(0xff393741)),
                                        ),
                                              ),
                                              state.lang==AppLanguageKeys.EN?
                                              Text(
                                                "${state.mainGift.textEn}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff393741)),
                                                maxLines: 3,
                                                overflow:TextOverflow.ellipsis ,
                                              ):
                                              Text(
                                                "${state.mainGift.textAr}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xff393741)),
                                                maxLines: 3,
                                                overflow:TextOverflow.ellipsis ,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 36.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .center,
                                                  children: [
                                                  /*  Text(
                                                      state.products[9]
                                                              .mainPrice +
                                                          "\$",
                                                      style: TextStyle(
                                                          color: AppColor
                                                              .darkYellow,
                                                          fontSize: 24),
                                                    ),
                                                    SizedBox(
                                                      width: 60,
                                                    ),*/
                                                   GestureDetector(
                                                      onTap:(){
                                              Navigator.push(context, MaterialPageRoute(
                                              builder: (context)=>ProductScreen(id: state.mainGift.idGift,img: state.mainGift.image,)
                                              ));
                                              },
                                                      child: Container(
                                                        alignment: Alignment.center,
                                                        height: 32,
                                                        width: 54,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      12)),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              offset:
                                                                  Offset(1, 1),
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.6),
                                                              blurRadius: 1,
                                                              spreadRadius: 1,
                                                            ),
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              AppColor.darkYellow,
                                                              AppColor.lightYellow
                                                            ],
                                                            stops: [0.1, 0.96],
                                                          ),
                                                        ),
                                                        child: Center(
                                                            child: SvgPicture.asset(
                                                                "assets/images/bag icon.svg")),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),

                              ///Categories
                              state.categories.isEmpty
                                  ? Container(
                                      height: 120,
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 16.0, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0,
                                                right: 30,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Categories",
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      color: Color(0xff393741)),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                CategoriesScreen(categories: state.categories,)));
                                                  },
                                                  child: Text(
                                                    "More",
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.darkYellow,
                                                        fontSize: 18),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 105,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount:
                                                  state.categories.length,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 16.0,
                                                      vertical: 8),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  AllProductsScreen(
                                                                    id: state
                                                                        .categories[
                                                                            index]
                                                                        .id,
                                                                    type:
                                                                        "category",
                                                                  )));
                                                    },
                                                    child: singleCategory(
                                                        title: firstCharacterUpper(state
                                                            .categories[index]
                                                            .enName),
                                                        image: state
                                                            .categories[index]
                                                            .image),
                                                  ),
                                                );
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                              // SizedBox(
                              //   height: 10,
                              // ),

                              ///latest
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30, bottom: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Latest",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff393741)),
                                    ),
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: AppColor.darkYellow,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),

                              state.products.isEmpty
                                  ? Container()
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: .0),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: .0),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) => ProductScreen(
                                                                      id: state
                                                                          .products[
                                                                              0]
                                                                          .id, img: state.products[0].image,)));
                                                        },
                                                        child: Container(
                                                          width:
                                                              size.width * 0.4,
                                                          height: 215,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12)),
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0,
                                                                    3), // changes position of shadow
                                                              ),
                                                            ],
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                        width: size.width *
                                                                            0.4,
                                                                        height:
                                                                            158,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(12)),
                                                                          child:
                                                                              Image.network(
                                                                            BaseImgUrl +
                                                                                state.products[0].image,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        )),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0,
                                                                        top: 8,
                                                                        right:
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      getCapitalizeString(str:state
                                                                          .products[
                                                                      0]
                                                                          .nameEn),

                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff393741),
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                    Text(
                                                                      state.products[0]
                                                                              .mainPrice +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: AppColor
                                                                              .darkYellow,
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Text("das")
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 8.0),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ProductScreen(
                                                                            id: state
                                                                                .products[
                                                                            1]
                                                                                .id,
                                                                          img: state.products[1].image)));
                                                        },
                                                        child: Container(
                                                          width:
                                                              size.width * 0.4,
                                                          height: 170,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12)),
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0,
                                                                    3), // changes position of shadow
                                                              ),
                                                            ],
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                        width: size.width *
                                                                            0.4,
                                                                        height:
                                                                            120,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(12)),
                                                                          child:
                                                                              Image.network(
                                                                            BaseImgUrl +
                                                                                state.products[1].image,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        )),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0,
                                                                        top: 8,
                                                                        right:
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      firstCharacterUpper(
                                                                      state
                                                                          .products[
                                                                              1]
                                                                          .nameEn),
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff393741),
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                    Text(
                                                                      state.products[1]
                                                                              .mainPrice +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: AppColor
                                                                              .darkYellow,
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Text("das")
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 0.0),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 0.0),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ProductScreen(
                                                                            id: state
                                                                                .products[
                                                                            2]
                                                                                .id,img: state.products[2].image
                                                                          )));
                                                        },
                                                        child: Container(
                                                          width:
                                                              size.width * 0.4,
                                                          height: 170,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12)),
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0,
                                                                    3), // changes position of shadow
                                                              ),
                                                            ],
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                        width: size.width *
                                                                            0.4,
                                                                        height:
                                                                            120,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(12)),
                                                                          child:
                                                                              Image.network(
                                                                            BaseImgUrl +
                                                                                state.products[2].image,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        )),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0,
                                                                        top: 8,
                                                                        right:
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      firstCharacterUpper(
                                                                      state
                                                                          .products[
                                                                              2]
                                                                          .nameEn),
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff393741),
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                    Text(
                                                                      state.products[2]
                                                                              .mainPrice +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: AppColor
                                                                              .darkYellow,
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Text("das")
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 8.0),
                                                  child: Column(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ProductScreen(
                                                                            id: state
                                                                                .products[
                                                                            3]
                                                                                .id,img: state.products[3].image
                                                                          )));
                                                        },
                                                        child: Container(
                                                          width:
                                                              size.width * 0.4,
                                                          height: 215,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            12)),
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0,
                                                                    3), // changes position of shadow
                                                              ),
                                                            ],
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                        width: size.width *
                                                                            0.4,
                                                                        height:
                                                                            158,
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.all(Radius.circular(12)),
                                                                          child:
                                                                              Image.network(
                                                                            BaseImgUrl +
                                                                                state.products[3].image,
                                                                            fit:
                                                                                BoxFit.fill,
                                                                          ),
                                                                        )),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            8.0,
                                                                        top: 8,
                                                                        right:
                                                                            8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      firstCharacterUpper(
                                                                      state
                                                                          .products[
                                                                              3]
                                                                          .nameEn),
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff393741),
                                                                          fontSize:
                                                                              18),
                                                                    ),
                                                                    Text(
                                                                      state.products[3]
                                                                              .mainPrice +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: AppColor
                                                                              .darkYellow,
                                                                          fontSize:
                                                                              15),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      // Text("das")
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                              // SizedBox(
                              //   height: 30,
                              // ),

                              ///brands
                              if (state.brands.isEmpty)
                                Container(
                                  height: 70,
                                )
                              else
                                Padding(
                                  padding: const EdgeInsets.only(left: 24.0,top:30,bottom:30),
                                  child: Container(

                                    height: 70,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: state.brands.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AllProductsScreen(
                                                            id: state
                                                                .brands[index]
                                                                .id,
                                                            type: "brand",
                                                          )));
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 150,
                                                  height: 65,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.red,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(12)),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 1,
                                                        blurRadius: 2,
                                                        offset: Offset(0.1,-0.3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(12)),
                                                      child: Image.network(
                                                        BaseImgUrl +
                                                            state.brands[index]
                                                                .image,
                                                        fit: BoxFit.fill,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              // SizedBox(
                              //   height: 30,
                              // ),
                              Container(
                                width: size.width,
                                // height: 300,
                                child: Image.asset("assets/images/scan-1.png",
                                    fit: BoxFit.fill),
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              state.wraps.isEmpty
                                  ? Container()
                                  : Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: size.width ,
                                        height: 280,
                                        decoration: BoxDecoration(
                                          color: Colors.white,

                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 4,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          // mainAxisAlignment: MainAxisAlignment.spa,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16.0),
                                              child: Container(
                                                height: 45,
                                                child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    itemCount:
                                                        state.wraps.length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    16.0),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              wrapIndex = index;
                                                            });
                                                          },
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                state
                                                                    .wraps[
                                                                        index]
                                                                    .wrapNameAr,
                                                                style: TextStyle(
                                                                    color: index ==
                                                                            wrapIndex
                                                                        ? AppColor
                                                                            .darkYellow
                                                                        : Color(
                                                                            0xff393741),
                                                                    fontSize:
                                                                        18),
                                                              ),
                                                              SizedBox(height: 2,),
                                                              wrapIndex == index
                                                                  ? Container(
                                                                      width: 10,
                                                                      height:
                                                                          10,
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          color:
                                                                              AppColor.darkYellow),
                                                                    )
                                                                  : Container()
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                              ),
                                            ),
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
                                                  itemCount: state
                                                      .wraps[wrapIndex]
                                                      .wrapItems
                                                      .length,
                                                  itemBuilder:
                                                      (BuildContext context,
                                                          int index) {
                                                    return Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8.0),
                                                      child: GestureDetector(
                                                        onTap:(){
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) => WrapScreen(
                                                                      id:  state
                                                                          .wraps[wrapIndex]
                                                                          .wrapItems[index]
                                                                          .id)));
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
                                                                    color: AppColor
                                                                        .lightYellow,
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
                                                                              BaseImgUrl +
                                                                                  state.wraps[wrapIndex].wrapItems[index].image,
                                                                              fit:
                                                                                  BoxFit.fill,
                                                                            )),
                                                                      ),
                                                                      Text(
                                                                        state.wraps[wrapIndex].wrapItems[index]
                                                                                .mainPrice +
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
                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                              SizedBox(
                                height: 30,
                              ),

                              state.coupons.isEmpty
                                  ? Container(
                                      height: 30,
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Coupons",
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Color(0xff393741)),
                                          ),
                                          Text(
                                            "More",
                                            style: TextStyle(
                                                color: AppColor.darkYellow,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                    ),

                              state.coupons.isEmpty
                                  ? Container(
                                      height: 200,
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                      ),
                                      child: Container(
                                        height: 200,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: state.coupons.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 160,
                                                      height: 170,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12)),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom:
                                                                        8.0),
                                                            child: Container(
                                                              // color: Colors.blue,
                                                              width: 160,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius: BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            12)),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: NetworkImage(
                                                                      BaseImgUrl +
                                                                          state
                                                                              .coupons[index]
                                                                              .image),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8.0),
                                                            child: Text(
                                                              firstCharacterUpper(
                                                              state
                                                                  .coupons[
                                                                      index]
                                                                  .enName),
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff393741),
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 8.0,
                                                                    top: 8,
                                                                    right: 8.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    "Starts From",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xff393741),
                                                                      fontSize:
                                                                          15,
                                                                    )),
                                                                Text(
                                                                  state.coupons[index]
                                                                          .mainPrice +
                                                                      "\$",
                                                                  style: TextStyle(
                                                                      color: AppColor
                                                                          .darkYellow,
                                                                      fontSize:
                                                                          15),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    // Text("das")
                                                  ],
                                                ),
                                              );
                                            }),
                                      ),
                                    ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                state.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          backgroundColor: AppColor.darkYellow,
                        ),
                      )
                    : Container()
              ],
            ));
      },
    );
  }
}

Widget singleOccasion({String title, String image}) {
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
          color: Colors.white,
          shape: BoxShape.circle,

          // border: Border.all(color: Color(0xff707070))
        ),
        height: 55,
        width: 55,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.network(
            BaseImgUrl + image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(title, style: TextStyle(color: Color(0xff515A6B), fontSize: 14))
    ],
  );
}

Widget _makePage(BuildContext context, int itemIndex, List<String> slider) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
        // height: MediaQuery.of(context).size.height /4,
        // width: 1500,
        decoration: BoxDecoration(
            // color: Colors.green,
            image: DecorationImage(
                image: AssetImage(slider[itemIndex]), fit: BoxFit.fill))),
  );
}

Widget singleCategory({String title, String image}) {
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
          color: Colors.white,
          shape: BoxShape.circle,

          // border: Border.all(color: Color(0xff707070))
        ),
        height: 55,
        width: 55,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(
            BaseImgUrl + image,
            fit: BoxFit.fill,
          ),
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Text(title, style: TextStyle(color: Color(0xff515A6B), fontSize: 14))
    ],
  );





}

String getCapitalizeString({String str}) {
  if (str.length <= 1) { return str.toUpperCase(); }
  return '${str[0].toUpperCase()}${str.substring(1)}';
}

firstCharacterUpper(String text) {
  List arrayPieces = List();

  String outPut = '';

  // text = 'this is only a example'; // This is not necessary, is only for the example. The text here is that one is passed in parameter.

  text.split(' ').forEach((sepparetedWord) {
    arrayPieces.add(sepparetedWord);
  });

  arrayPieces.forEach((word) {
    word =
    "${word[0].toString().toUpperCase()}${word.toString().substring(1)} ";
    outPut += word;
  });

  return outPut;
}

// Container(
// width: 150,
// height: 70,
// child: Image.asset("assets/images/flowerd.png",fit: BoxFit.fill,),
// ),
