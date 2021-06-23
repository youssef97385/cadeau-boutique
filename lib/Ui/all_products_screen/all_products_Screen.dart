import 'package:cadeaue_boutique/core/app_language.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/product_screen/product_screen.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_event.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_bloc.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/bloc/products_state.dart';
import 'package:cadeaue_boutique/Ui/empty_page/empty_page.dart';

import '../../injectoin.dart';


class AllProductsScreen extends StatefulWidget {
  int id;
  String type;

  AllProductsScreen({this.id, this.type});


  @override
  _AllProductsScreenState createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {

   List<int> vals = <int>[];

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
  final _bloc = sl<ProductsBloc>();

  @override
  void initState() {
    super.initState();
    print("******************************");
    if(widget.type==TOP_SELLER){
      _bloc.add(GetTopSeller());
    }else
    _bloc.add(GetProducts((b)=>b..id = widget.id ..type = widget.type));
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context , ProductsState state){
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    baseAppBar(size , context),
                    (state.products.isEmpty &&!state.isLoading)?EmptyPage(size: size,
                      title: AppLocalizations.of(context).translate("no_data"),
                    ):
                    Container(
                      width: size.width*0.9,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: state.products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.6,crossAxisSpacing: 20,mainAxisSpacing: 20),
                        itemBuilder: (context, index){
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>ProductScreen(id: state.products[index].id,img: state.products[index].image,)
                              ));
                            },
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 160,
                                    height: 190,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(
                                              0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                          child: Container(
                                              width: 160,
                                              height: 120,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                child: Image.network(
                                                  BaseImgUrl+state.products[index].image,
                                                  fit: BoxFit.fill,
                                                ),
                                              )),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 8.0),
                                          child: 
                                          
                                              AppColor.AppLang==AppLanguageKeys.EN?
                                          Text(
                                            state.products[index].nameEn,
                                            style: TextStyle(
                                                color: Color(0xff393741),
                                                fontSize: 18),
                                          ):
                                              Text(
                                                state.products[index].nameAr,
                                                style: TextStyle(
                                                    color: Color(0xff393741),
                                                    fontSize: 18),
                                              ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 8, right: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              // Text(
                                              //     state.products[index].mainPrice +
                                              //         "CurrencyApp",
                                              //     style: TextStyle(
                                              //         color: Color(0xff393741),
                                              //         fontSize: 15,
                                              //         decoration: TextDecoration
                                              //             .lineThrough)),
                                              Flexible(
                                                child: Text(
                                                  state.products[index].salePrice + "$CurrencyApp",
                                                  style: TextStyle(
                                                      color: AppColor.darkYellow,
                                                      fontSize: 15),
                                                ),
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
                        },
                      ),
                    ),
                  ],
                ),
              ),
              state.isLoading?Center(child: CircularProgressIndicator(backgroundColor: AppColor.darkYellow,)):Container()            ],
          )
        );
      },
    );
  }
}
