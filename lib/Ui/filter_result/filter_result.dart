import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/product_screen/product_screen.dart';
class FilterResult extends StatefulWidget {
  @override
  _FilterResultState createState() => _FilterResultState();
}

class _FilterResultState extends State<FilterResult> {



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


  List<String> _dynamicChips = ['Mother', 'Birthday   ', 'age 40' , "Female" , "500\$ - 700\$"];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            baseAppBar(size , context),
            SizedBox(
              height: 20,
            ),
            dynamicChips(),
            Container(
              width: size.width*0.9,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: topSellers.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.9,),
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>ProductScreen()
                      ));
                    },
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 160,
                            height: 180,
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
                                      height: 121,
                                      child: Image.asset(
                                        topSellers[index].img,
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    topSellers[index].name,
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
                                      Text(
                                          topSellers[index].oldPrice +
                                              "\$",
                                          style: TextStyle(
                                              color: Color(0xff393741),
                                              fontSize: 15,
                                              decoration: TextDecoration
                                                  .lineThrough)),
                                      Text(
                                        topSellers[index].price + "\$",
                                        style: TextStyle(
                                            color: AppColor.darkYellow,
                                            fontSize: 15),
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
    );
  }
  dynamicChips() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(_dynamicChips.length, (int index) {
        return Chip(
          backgroundColor: AppColor.lightYellow,
          label: baseText(title:_dynamicChips[index],color: AppColor.textColor,size: 13.0),
          onDeleted: () {
            setState(() {
              _dynamicChips.removeAt(index);
            });
          },
          deleteIcon: Icon(Icons.remove_circle,color: Colors.white,),
        );
      }),
    );
  }
}
