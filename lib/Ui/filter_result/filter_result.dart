import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/product_screen/product_screen.dart';
import 'package:cadeaue_boutique/model/filter_body/filter_item.dart';
import 'package:cadeaue_boutique/Ui/empty_widget/empty_screen.dart';

import '../../injectoin.dart';
import 'bloc/search_bloc.dart';
import 'bloc/search_event.dart';
import 'bloc/search_state.dart';

class FilterResult extends StatefulWidget {
  String age, minPrice, maxPrice, gender, occasionName, relationName;
  int occasionId, relationId;

  FilterResult(
      {this.age,
      this.minPrice,
      this.maxPrice,
      this.gender,
      this.occasionId,
      this.relationId,
      this.occasionName,
      this.relationName});

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

  List<String> _dynamicChips = [
    'Mother',
    'Birthday   ',
    'age 40',
    "Female",
    "500\$ - 700\$"
  ];

  List<FilterItem> filterItems = [];
  List<bool> _choices = [false, false, false, false, false, false];

  final _bloc = sl<SearchBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dynamicChips = [];

    if (widget.occasionName != null) {
      FilterItem occasion = FilterItem((b) => b
        ..key = "occasion"
        ..value = widget.occasionName
        ..id = widget.occasionId);
      _bloc.add(AddChoice((b) => b..filterItem = occasion.toBuilder()));
      _dynamicChips.add(widget.occasionName);
    }
    if (widget.relationName != null) {
      FilterItem relation = FilterItem((b) => b
        ..key = "relation"
        ..value = widget.relationName
        ..id = widget.relationId);
      _bloc.add(AddChoice((b) => b..filterItem = relation.toBuilder()));
      _dynamicChips.add(widget.relationName);
    }
    if (widget.minPrice != "null") {
      FilterItem minPrice = FilterItem((b) => b
        ..key = "minPrice"
        ..value = widget.minPrice);
      _bloc.add(AddChoice((b) => b..filterItem = minPrice.toBuilder()));
      _dynamicChips.add("min price" + widget.minPrice);
    }
    if (widget.maxPrice != "null") {
      FilterItem maxPrice = FilterItem((b) => b
        ..key = "maxPrice"
        ..value = widget.maxPrice);
      _bloc.add(AddChoice((b) => b..filterItem = maxPrice.toBuilder()));
      _dynamicChips.add("max price" + widget.maxPrice);
    }
    if (widget.age != null) {
      FilterItem age = FilterItem((b) => b
        ..key = "age"
        ..value = widget.age);
      _bloc.add(AddChoice((b) => b..filterItem = age.toBuilder()));
      _dynamicChips.add("age " + widget.age);
    }
    if (widget.gender != null) {
      FilterItem gender = FilterItem((b) => b
        ..key = "gender"
        ..value = widget.gender);
      _bloc.add(AddChoice((b) => b..filterItem = gender.toBuilder()));
      _dynamicChips.add(widget.gender);
    }

    _bloc.add(GetFilteredProducts((b) => b
      ..minPrice = widget.minPrice
      ..maxPrice = widget.maxPrice
      ..gender = widget.gender
      ..occasionId = widget.occasionId
      ..age = widget.age
      ..relationId = widget.relationId
      ..reChoose = false));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, SearchState state) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      baseAppBar(size, context),
                      SizedBox(
                        height: 20,
                      ),
                      dynamicChips(state: state),
                      state.products.isNotEmpty
                          ? Container(
                              width: size.width * 0.9,
                              child: GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: state.products.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.9,
                                ),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ProductScreen(
                                                    img: state
                                                        .products[index].image,
                                                    id: state
                                                        .products[index].id,
                                                  )));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 160,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Container(
                                                      width: 160,
                                                      height: 121,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    12)),
                                                        child: Image.network(
                                                          BaseImgUrl +
                                                              state
                                                                  .products[
                                                                      index]
                                                                  .image,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      )),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    state
                                                        .products[index].nameEn,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff393741),
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0,
                                                          top: 8,
                                                          right: 8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      // Text(
                                                      //     state.products[index]
                                                      //             .mainPrice +
                                                      //         "\$",
                                                      //     style: TextStyle(
                                                      //         color: Color(
                                                      //             0xff393741),
                                                      //         fontSize: 15,
                                                      //         decoration:
                                                      //             TextDecoration
                                                      //                 .lineThrough)),
                                                      Text(
                                                        state.products[index]
                                                                .salePrice +
                                                            "\$",
                                                        style: TextStyle(
                                                            color: AppColor
                                                                .darkYellow,
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
                            )
                          : EmptyWidget(size: size , image: "assets/images/empty box.png",title: AppLocalizations.of(context).translate("no_result"),subTitle:  AppLocalizations.of(context).translate("try_another_choices"))
                    ],
                  ),
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
                        ),
                      )
                    : Container()
              ],
            ));
      },
    );
  }

  dynamicChips({SearchState state}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: List<Widget>.generate(state.choices.length, (int index) {
          return Chip(
            backgroundColor: AppColor.lightYellow,
            label: baseText(
                title: state.choices[index].value,
                color: AppColor.textColor,
                size: 13.0),
            onDeleted: () async {
              _bloc.add(DeleteChoice(
                  (b) => b..filterItem = state.choices[index].toBuilder()));
              // _bloc.add(ReGetItems((b)=>b..choices=state.choices.toBuilder()));
              // setState(() {
              //
              //   _dynamicChips.removeAt(index);
              // });
            },
            deleteIcon: Icon(
              Icons.remove_circle,
              color: Colors.white,
            ),
          );
        }),
      ),
    );
  }
}
