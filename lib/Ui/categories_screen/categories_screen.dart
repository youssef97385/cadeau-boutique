import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScreen extends StatefulWidget {
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
             baseAppBar(size , context),
        Container(
          width: size.width*0.9,
        child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.5,),
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
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
                  SvgPicture.asset(categories[index].img),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: baseText(title: categories[index].txt , color:AppColor.darkTextColor ,size: 18.0),
                  )
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
    );
  }
}
