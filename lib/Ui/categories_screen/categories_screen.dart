import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_state.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/Ui/all_products_screen/all_products_Screen.dart';
import '../../injectoin.dart';

class CategoriesScreen extends StatefulWidget {
BuiltList<CategoryModel> categories;


CategoriesScreen({this.categories});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<OccasionsModel> categories = [
    OccasionsModel(img: "assets/images/categories/cat-cart.svg",txt:"All" ),
    OccasionsModel(img: "assets/images/categories/cat-toys.svg",txt:"Toys" ),
    OccasionsModel(img: "assets/images/categories/cat-laptop.svg",txt: "Electronics"),
    OccasionsModel(img: "assets/images/categories/cat-bag.svg",txt: "Bags"),
    OccasionsModel(img: "assets/images/categories/cat-tshirt.svg",txt: "Clothes"),
    OccasionsModel(img: "assets/images/categories/cat-watch.svg",txt: "Watches"),
    OccasionsModel(img:"assets/images/categories/cat-electronics.svg" ,txt: "Home"),
    OccasionsModel(img: "assets/images/categories/cat-perfume.svg",txt: "Perfume"),
    OccasionsModel(img: "assets/images/categories/cat-coupon.svg",txt: "Coupons"),
    OccasionsModel(img: "assets/images/categories/cat-sunglasses.svg",txt: "Glasses"),

  ];

  final _bloc = sl<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context , HomeState state){
      return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                baseAppBar(size , context),

                widget.categories.isEmpty?Container()
:                Container(
                  width: size.width*0.9,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.5,),
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AllProductsScreen(
                                          id: widget
                                              .categories[
                                          index]
                                              .id,
                                          type:
                                          "category",
                                        )));
                          },
                          child: Container(
                            width: 146,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.6),
                                  blurRadius: 5,
                                  spreadRadius: 3,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height:50,
                                    width: 50,

                                    child: Image.network(BaseImgUrl+widget.categories[index].image)),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: baseText(title: widget.categories[index].enName , color:AppColor.darkTextColor ,size: 18.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          state.isLoading?Center(child: CircularProgressIndicator(backgroundColor: AppColor.darkYellow,),):Container()
        ],)
      );
    });
  }
}
