import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CouponsDetails extends StatefulWidget {
  @override
  _CouponsDetailsState createState() => _CouponsDetailsState();
}

class _CouponsDetailsState extends State<CouponsDetails> {
  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: baseText(title:"   ${AppLocalizations.of(context).translate("coupons")}",
        maxLines: 1,
        size: 18.0,
        color:AppColor.textColor,
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColor.gradiant1Color,
                AppColor.gradiant2Color
              ],
              stops: [0.1, 0.99],
            )
        ),
        child: ListView.builder(

            padding:  EdgeInsets.symmetric(horizontal: size.width*0.04),
            controller: scrollController,
            itemCount: 10,
            itemBuilder:(context,index){

              return Padding(
                padding: EdgeInsets.symmetric(vertical: size.height*0.01),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  elevation: 8,
                  color: (1==1)?Colors.white:Colors.white,

                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      /*image*/
                      Stack(
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 0),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                              child:

                              (1==1)?
                              Container(
                                width: size.width*0.36,
                                height: size.height*0.16,
                                child: Image.network(
                                  BaseImgUrl +
                                      "demo2/coupon/coupon3.png",
                                  fit:
                                  BoxFit.fill,
                                ),
                              ):      Image.network(
                                BaseImgUrl +
                                    "demo2/coupon/coupon3.png",
                                fit:
                                BoxFit.fill,
                              )
                              ,
                            ),
                          ),

                        ],
                      ),


                      /*data*/
                      Expanded(
                        child: Container(

                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [

                              SizedBox(height: size.height*0.016,),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: baseText(title: "namasd",
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.textColor,size: 18.0,
                                    textAlign: TextAlign.center,
                                    maxLines: 1),
                                  ),
                                ],
                              ),


                              SizedBox(height: size.height*0.014,),
                              /*card number */
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    baseText(title: "${AppLocalizations.of(context).translate("card_number")}  ",
                                        color: AppColor.textColor,size: 18.0),
                                    Flexible(child: baseText(title: "200", color: AppColor.darkYellow,size: 18.0)),
                                  ],
                                ),
                              ),
                              SizedBox(height: size.height*0.016,),
                              /*date */

                              Container(
                                // margin: EdgeInsets.only(bottom: 80),
                                height: size.height * 0.045,
                                width: size.width*0.3,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColor.darkYellow,
                                      AppColor.lightYellow
                                    ],
                                    stops: [0.1, 0.96],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.6),
                                      blurRadius: 5,
                                      spreadRadius: 3,
                                    ),
                                  ],

                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: FlatButton(
                                  // splashColor: Colors.red,
                                  onPressed: () async {



                                  //  await openDetails(context);


                                  },
                                  child: Text(
                                    AppLocalizations.of(context).translate('details'),
                                    style: TextStyle(
                                      color: AppColor.textColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )


                            ],
                          ),
                        ),
                      )


                    ],
                  ),

                ),
              );
            }),
      ),
    );
  }
}
