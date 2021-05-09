import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/model/coupon_list_model/coupon_list_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class CouponsDetails extends StatefulWidget {

  String couponName;
  String couponPrice;
  CouponListModel item;


  CouponsDetails({this.couponName, this.couponPrice, this.item});

  @override
  _CouponsDetailsState createState() => _CouponsDetailsState();
}

class _CouponsDetailsState extends State<CouponsDetails> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Colors.white,

      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: size.height*0.01,
        horizontal: size.width*0.06),
        child: Column(
          children: [

            SizedBox(height: size.height*0.06,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 16,
              height: 16,

              child: SvgPicture.asset(
                "assets/images/arrow_back.svg",
                fit: BoxFit.cover,


              ),
            ),
          ),
        ),

                baseText(title:"${widget.couponName}",maxLines: 1,size: 18.0,color: AppColor.textColor,
                fontWeight: FontWeight.bold),

              ],
            ),

            SizedBox(height: size.height*0.02,),

            /*header*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                baseText(title: widget.couponName,maxLines: 1,size: 26.0,color: AppColor.darkYellow),
                baseText(title: "${widget.couponPrice} \$",maxLines: 1,size: 18.0,color: AppColor.darkYellow),
            ],),
            SizedBox(height: size.height*0.02,),
            /*image*/
            Stack(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4),
                  child: ClipRRect(
                    borderRadius:
                    BorderRadius.all(Radius.circular(12)),
                    child:

                    (1==1)?
                    Container(
                      width: size.width*0.36,
                      height: size.height*0.14,
                      child: Image.network(
                        BaseImgUrl +
                            "demo/imges2/lazorde/21048110501.jpg",
                        fit:
                        BoxFit.fill,
                      ),
                    ):      Image.network(
                      BaseImgUrl +
                          "demo/imges2/lazorde/21048110501.jpg",
                      fit:
                      BoxFit.fill,
                    )
                    ,
                  ),
                ),
              ],
            ),

            /*Data*/
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

              //  SizedBox(height: size.height*0.02,),

            /*    *//*card number *//*
                Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("card_number")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.bold),
                    baseText(title: "name", color: AppColor.darkYellow,size: 18.0),
                  ],
                ),
                SizedBox(height: size.height*0.016,),
                Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("card_name")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.bold),
                    baseText(title: "name", color: AppColor.darkYellow,size: 18.0),
                  ],
                ),*/
                SizedBox(height: size.height*0.016,),
                /*date */
                Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("date")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.bold),
                    baseText(title: "${widget.item.expireDate}", color: AppColor.darkYellow,size: 18.0),
                  ],
                ),
                SizedBox(height: size.height*0.016,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width/1.6,
                      height: 2,
                      color: AppColor.greyColor,
                    ),
                  ],
                ),
                SizedBox(height: size.height*0.02,),


                baseText(title: widget.item.descrptionEn,
                color: AppColor.greyColor,
                size: 18.0),
                SizedBox(height: size.height*0.04,),
                Container(
                  // margin: EdgeInsets.only(bottom: 80),
                  height: size.height * 0.045,
                  width: size.width*0.3,
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



                     // await openDetails(context);


                    },
                    child: Text(
                      AppLocalizations.of(context).translate('press_to_scan'),
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

            /*line*/

            /*desc*/

            Expanded(child: Container(
              width: 1,
            )),

            /*button*/
          ],
        ),
      ),

    );
  }
}
