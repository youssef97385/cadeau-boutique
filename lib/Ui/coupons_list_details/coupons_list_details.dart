import 'package:cadeaue_boutique/Ui/coupons_list_details/bloc/coupons_list_details_bloc.dart';
import 'package:cadeaue_boutique/Ui/coupons_list_details/bloc/coupons_list_details_event.dart';
import 'package:cadeaue_boutique/Ui/empty_page/empty_page.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cadeaue_boutique/Ui/coupons_details/coupons_details.dart';

import 'bloc/coupons_list_details_state.dart';

class CouponsListDetails extends StatefulWidget {
  @override
  _CouponsListDetailsState createState() => _CouponsListDetailsState();
}

class _CouponsListDetailsState extends State<CouponsListDetails> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bloc.add(GetCouponsEvent());
  }

  final _bloc = sl<CouponsListDetaislBloc>();
  @override
  Widget build(BuildContext context) {
    var scrollController = ScrollController();
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context , CouponsListDetaislState state) {
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
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: size.height*0.06,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: size.width*0.06),
                  child: Row(

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

                      baseText(title:"${AppLocalizations.of(context).translate("coupons")}",maxLines: 1,size: 18.0,color: AppColor.textColor,
                          fontWeight: FontWeight.bold),

                    ],
                  ),
                ),

            (state.couponsData.isEmpty &&!state.isLoading)?Expanded(
              child: Column(
                children: [
                  EmptyPage(size: size,
                    title: AppLocalizations.of(context).translate("your_tack_order_is_empty")),
                  Expanded(
                    child: Container(color: Colors.white,
                    
                    ),
                  )
                ],
              ),
            ):

            Expanded(
                  child: ListView.builder(

                      padding:  EdgeInsets.symmetric(horizontal: size.width*0.04),
                      controller: scrollController,
                      itemCount: state.couponsData.length,
                      itemBuilder:(context,index){

                        var item=state.couponsData.elementAt(index);
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
                                            BaseImgUrl +item.image,
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
                                              child: baseText(title: item.name,
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

                                              baseText(title: "${AppLocalizations.of(context).translate("brand")}  ",
                                                  color: AppColor.textColor,size: 18.0),
                                              Flexible(child: baseText(title: "${item.brand.enName}", color: AppColor.darkYellow,size: 18.0)),
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

                                              Navigator.push(context, MaterialPageRoute(
                                                  builder: (context)=>CouponsDetails(
                                                    couponName: item.name,
                                                    couponPrice: item.price.toString(),
                                                    item:item
                                                  )
                                              ));

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
              ],
            ),

            state.isLoading ? Center(child: CircularProgressIndicator(
              backgroundColor: AppColor.darkYellow,)) : Container(),
          ],
        ),
      ),
    );});
  }
}
