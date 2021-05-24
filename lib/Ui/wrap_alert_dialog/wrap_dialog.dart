import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/model/wrap_model/wrap_item.dart';

import '../../core/constent.dart';



class FunkyOverlay extends StatefulWidget {

  final int wrapId;
  final int wrapColorId;
  final int wrapSizeId;
  final Function wrapIdCallBack;
  final Function wrapSizeIdCallBack;
  final Function wrapColorIdCallBack;

  int pickedWrapId;
  int pickedWrapColorId;
  int pickedWrapSizeId;


  BuiltList<WrapItem> wraps;
  BuiltList<WrapModel> wraps2;




  FunkyOverlay({this.wraps ,this.wrapId,this.wrapIdCallBack,this.wrapColorId,this.wrapSizeId,this.wraps2,this.wrapColorIdCallBack,this.wrapSizeIdCallBack,this.pickedWrapId,this.pickedWrapSizeId,this.pickedWrapColorId});

  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}
class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {


  int selectedWrap = -1;
  int wrapId = -1;
  int wrapIdColorId= -1;
  int wrapSizeId= -1;

  int pickedWrap;
  int pickedColorId;
  int pickedSizeId;

  AnimationController controller;
  Animation<double> scaleAnimation;


  List<String> sizes= ["S" , "M" , "L"];
  List<Color> colors= [ Color(0xffffffff),Color(0xffA6B7E8)  ,Color(0xffF2D750),Color(0xff000000) ];
  int selectedSize = -1;
  int selectedColor = -1;

  @override
  void initState() {
    super.initState();

    pickedWrap = widget.pickedWrapId;
    pickedSizeId = widget.pickedWrapSizeId;
    pickedColorId= widget.pickedWrapColorId;


    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            height:size.height*0.8,
            width: size.width*0.8,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  baseText(title: AppLocalizations.of(context).translate("choose_wrap") , size: 30.0,color:AppColor.textColor ),
                 Container(
                   height: size.height*0.22,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                       itemCount: widget.wraps.length,
                       itemBuilder: (BuildContext context , int index){
                     return  Padding(
                       padding: const EdgeInsets.symmetric(horizontal:8.0),
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             selectedWrap = index;
                             wrapId = widget.wraps[index].id;

                             pickedWrap = -1;
                             // widget.wrapIdCallBack(wrapId);


                           });


                         },
                         child: Container(
                           width: 160,
                           height: 160,
                           // color: Colors.red,
                           child: Stack(
                             children: [
                               Positioned(
                                 bottom:0,
                                 child: Container(
                                   height: 114,
                                   width: 160,
                                   decoration: BoxDecoration(
                                     color:  selectedWrap == index || (pickedWrap!=-1&& pickedWrap ==widget.wraps[index].id)
                                         ? AppColor.lightYellow
                                         : Color(0xffEDEDED),
                                     borderRadius: BorderRadius.all(Radius.circular(20)),

                                   ),
                                 ),
                               ),

                               Container(
                                 height: 150,
                                 child: Center(
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(bottom:16.0),
                                         child: Container(
                                             width:122,
                                             height:100 ,
                                             child: Image.network(BaseImgUrl+widget.wraps[index].image,fit: BoxFit.fill,)),
                                       ),
                                       Text(widget.wraps[index].mainPrice+"$CurrencyApp",style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 24,
                                           fontWeight: FontWeight.bold
                                       ),)
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



                  (selectedWrap != -1 && widget.wraps[selectedWrap].sizes.isNotEmpty)?

                  Column(
                    children: [
                      baseText(title: AppLocalizations.of(context).translate("avalible_size"), color: Color(0xff393741) , size: 18.0),
                      Center(
                        child: Container(
                          height: 40,
                          // width: size.width*0.8,
                          child: ListView.builder(
                            shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.wraps[selectedWrap].sizes.length ,
                              itemBuilder: (BuildContext context , int index){
                                return Padding(
                                  padding: const EdgeInsets.only(right:24.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        selectedSize = index;
                                        wrapSizeId = widget.wraps[selectedWrap].sizes[index].id;
                                      });
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: selectedSize == index ?Color(0xffF2D750):Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 3,
                                            offset: Offset(0, 3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Center(child: baseText(title: widget.wraps[selectedWrap].sizes[index].size , color: AppColor.darkTextColor , size: 18.0)),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ) :Container(),

                  (selectedWrap != -1 && widget.wraps[selectedWrap].colors.isNotEmpty)?
                  Column(
                    children: [
                      baseText(title: AppLocalizations.of(context).translate("colors_hint"), color: Color(0xff393741) , size: 18.0),
                      Container(
                        height: 40,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: widget.wraps[selectedWrap].colors.length ,
                            itemBuilder: (BuildContext context , int index){
                              return Padding(
                                padding: const EdgeInsets.only(right:24.0),
                                child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        selectedColor = index;
                                        wrapIdColorId=widget.wraps[selectedWrap].colors[index].id;
                                      });
                                    },
                                    child:  Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                          border: selectedColor != index? null:Border.all(color:Color(0xff707070),width: 2),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 3,
                                              offset: Offset(0, 3), // changes position of shadow
                                            ),
                                          ],
                                          shape: BoxShape.circle,
                                          color:
                                          hexToColor(widget.wraps[selectedWrap].colors[index].color)


                                      ),
                                      child:selectedColor != index? Container(): Center(child: Icon(Icons.check,color: Color(0xff707070),)),
                                    )
                                ),
                              );
                            }),
                      ),
                    ],
                  ):Container(),

                  Container(
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

                        print("wrapinfo3 $wrapId $wrapIdColorId $wrapSizeId");
                        widget.wrapIdCallBack(wrapId);
                        widget.wrapColorIdCallBack(wrapIdColorId);
                        widget.wrapSizeIdCallBack(wrapSizeId);

                        Navigator.pop(context);
                      },
                      child: Text(
                        'Add Wrap',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }


  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, code.length), radix: 16) + 0xFF000000);
  }

}