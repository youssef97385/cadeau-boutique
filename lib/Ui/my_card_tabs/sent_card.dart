import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/Dialog/details_card_dialog/details_card_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class SentCards extends StatefulWidget {
  @override
  _SentCardsState createState() => _SentCardsState();
}

class _SentCardsState extends State<SentCards> {
  var scrollController = ScrollController();


  Future<bool> openDetails(BuildContext context,) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return DetailsCardDialog();
      },
    );}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

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
            padding:  EdgeInsets.symmetric(vertical: size.height*0.01),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              elevation: 8,
              color: (1==1)?AppColor.selectedCardColor:Colors.white,

              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /*image*/
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                        size.height * 0.02,
                    horizontal: size.width*0.02),
                    child:
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

                       1==1?
                        Positioned(


                            child: SvgPicture.asset("assets/images/scaned_flag.svg"
                              ,width: 30,height: 30,
                            )):Container()
                      ],
                    ),
                  ),


                  /*data*/
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: size.height*0.02,),

                      /*card number */
                      Container(
                        child: Row(
                          children: [

                            baseText(title: "${AppLocalizations.of(context).translate("card_number")}:",
                            color: AppColor.textColor,size: 18.0),
                            baseText(title: "name", color: AppColor.darkYellow,size: 18.0),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      /*date */
                      Row(
                        children: [

                          baseText(title: "${AppLocalizations.of(context).translate("date")}:",
                              color: AppColor.textColor,size: 18.0),
                          baseText(title: "name", color: AppColor.darkYellow,size: 18.0),
                        ],
                      ),
                      SizedBox(height: size.height*0.02,),
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



                            await openDetails(context);


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
