import 'dart:ui';

import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/model/sent_cards_model/sent_cards_model.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DetailsCardDialog extends StatefulWidget {
  SentCardModel item;
  String type;

  DetailsCardDialog({this.item,this.type});

  @override
  _DetailsCardDialogState createState() => _DetailsCardDialogState();
}

class _DetailsCardDialogState extends State<DetailsCardDialog> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        elevation: 0,
        backgroundColor: Colors.white,

        child:widget.type==SENT?
        SingleChildScrollView(
          child:  Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.04,
            vertical: size.height*0.04),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (1==1)?
                    Container(


                      height: size.height*0.2,
                      width: size.width*0.64,
                      alignment: Alignment.center,

                      child: Image.network(
                        BaseImgUrl +
                            widget.item.brand.image,
                        fit:
                        BoxFit.fill,
                      ),
                    ):
                    Container(

                      height: size.height*0.2,
                      width: size.width*0.64,
                      alignment: Alignment.center,
                      child: Image.network(
                        BaseImgUrl +
                            "demo/imges2/lazorde/21048110501.jpg",
                        fit:
                        BoxFit.fill,
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height*0.02,),

                /*card number */
                Container(
                  child: Row(
                    children: [

                      baseText(title: "${AppLocalizations.of(context).translate("card_number")}:",
                          color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                      Flexible(
                        child: baseText(title: widget.item.cardNumber, color: AppColor.darkYellow,size: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height*0.014,),
                /*date */
                Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("date")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                    Flexible(child: baseText(title: widget.item.createdAt.substring(0,10), color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: size.height*0.02,),
                /*status*/
                (1==1)?  Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("status")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                    Flexible(child: baseText(title: widget.item.proccessStatus, color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600)),
                  ],
                ):Container(),

                SizedBox(height: size.height*0.014,),
                /*TO USER*/
                (1==1)?  Row(
                  children: [

                    baseText(title: "${AppLocalizations.of(context).translate("to_txt")}:",
                        color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),

                    widget.item.revicer!=null?
                    Flexible(child: baseText(title: widget.item.revicer.name, color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600))
                    :Container(),
                  ],
                ):Container(),



                SizedBox(height: size.height*0.014,),

                SizedBox(height: size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                        onPressed: () {

                          Navigator.of(context).pop();


                        },
                        child: Text(
                          AppLocalizations.of(context).translate('back'),
                          style: TextStyle(
                            color: AppColor.textColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )


              ],
            ),
          )
        ):
        SingleChildScrollView(
            child:  Padding(
              padding:  EdgeInsets.symmetric(horizontal: size.width*0.04,
                  vertical: size.height*0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (1==1)?
                      Container(


                        height: size.height*0.2,
                        width: size.width*0.64,
                        alignment: Alignment.center,

                        child: Image.network(
                          BaseImgUrl +
                              widget.item.brand.image,
                          fit:
                          BoxFit.fill,
                        ),
                      ):
                      Container(

                        height: size.height*0.2,
                        width: size.width*0.64,
                        alignment: Alignment.center,
                        child: Image.network(
                          BaseImgUrl +
                              "demo/imges2/lazorde/21048110501.jpg",
                          fit:
                          BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height*0.02,),

                  /*card number */
                  Container(
                    child: Row(
                      children: [

                        baseText(title: "${AppLocalizations.of(context).translate("card_number")}:",
                            color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                        baseText(title: widget.item.cardNumber, color: AppColor.darkYellow,size: 18.0,
                            fontWeight: FontWeight.w600),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height*0.014,),
                  /*date */
                  Row(
                    children: [

                      baseText(title: "${AppLocalizations.of(context).translate("date")}:",
                          color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                      baseText(title: widget.item.createdAt.substring(0,10), color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(height: size.height*0.02,),
                  /*status*/
                  (1==1)?  Row(
                    children: [

                      baseText(title: "${AppLocalizations.of(context).translate("status")}:",
                          color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                      baseText(title: widget.item.proccessStatus, color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600),
                    ],
                  ):Container(),



                  SizedBox(height: size.height*0.014,),
                  /*From*/
                  (1==1)?  Row(
                    children: [

                      baseText(title: "${AppLocalizations.of(context).translate("from_txt")}:",
                          color: AppColor.textColor,size: 18.0,fontWeight: FontWeight.w600),
                      baseText(title: widget.item.sender.name, color: AppColor.darkYellow,size: 18.0,fontWeight: FontWeight.w600),
                    ],
                  ):Container(),

                  SizedBox(height: size.height*0.014,),

                  (1==1)?Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width/1.6,
                        height: 1,
                        color: AppColor.greyColor,
                      ),
                    ],
                  ):Container(),

                  SizedBox(height: size.height*0.014,),



                  widget.item.keyQr!=null?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      QrImage(
                        data: widget.item.keyQr,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                    ],
                  ):Container(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          onPressed: () {

                            Navigator.of(context).pop();


                          },
                          child: Text(
                            AppLocalizations.of(context).translate('back'),
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )


                ],
              ),
            )
        ),

      ),
    );
  }



}
