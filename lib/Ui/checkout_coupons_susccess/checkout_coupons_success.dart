import 'package:cadeaue_boutique/Ui/checkout_success/bloc/checkout_success_bloc.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/successCheck_event.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/bloc/successCheck_state.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../injectoin.dart';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';

class CheckoutCouponsSuccess extends StatefulWidget {
  BuiltList<String> gifftTo;
  BuiltList<String> countryCode;
  BuiltList<String> phone;
  int brandId;
  int itemId;


  CheckoutCouponsSuccess({
      this.gifftTo, this.countryCode, this.phone, this.brandId, this.itemId});

  @override
  _CheckoutCouponsSuccessState createState() => _CheckoutCouponsSuccessState();
}

class _CheckoutCouponsSuccessState extends State<CheckoutCouponsSuccess> {
  final _bloc = sl<SuccessCheckBloc>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("the brand id= ${widget.brandId}");
    print("the  id= ${widget.itemId}");
    _bloc.add(TryCheckOutCoupons((b)=>b

      ..giftTo=widget.gifftTo.toBuilder()
      ..countryCode = widget.countryCode.toBuilder()
      ..phoneNumber = widget.phone.toBuilder()
     ..itemId=widget.itemId
     ..bradnId=widget.brandId

    ));

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context , SuccessCheckoutState state){
          return Scaffold(
              backgroundColor: Colors.white,
              body: Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                          width: size.width,
                          height: size.height,
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          )),

                      Positioned(
                        bottom: -60,
                        right: 0,
                        left: 0,
                        child: Container(
                            width: 483,
                            height: 192,
                            child: SvgPicture.asset(
                              "assets/images/bottombackground.svg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            baseAppBar(size,context),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  tick1(size: size),

                                  line(size,true),

                                  tick2(size: size),

                                  line(size , true),

                                  tick3(size: size),



                                ],
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            baseText(
                                title:  AppLocalizations.of(context).translate("thank_you"),color: AppColor.darkTextColor,size:20.0
                            ),
                            SizedBox(
                              height: size.height * 0.07,
                            ),

                            Container(
                                width: size.width,

                                child: Center(child: baseText(title: state.error.isEmpty?AppLocalizations.of(context).translate("successful_operation"):
                                AppLocalizations.of(context).translate("try_again") ,
                                    size: 24.0 ,
                                    color: AppColor.darkTextColor,
                                    textAlign: TextAlign.center))),
                            SizedBox(
                              height: 20,
                            ),

                            Image.asset("assets/images/gift box.png",fit: BoxFit.fill,),


                            Container(
                              // margin: EdgeInsets.only(bottom: 80),
                              height: size.height * 0.06,
                              width: size.width * .4,
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

                                  // print("wrap id test ${myWrapId}");




                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()
                                      ),
                                      ModalRoute.withName("/home_screen")
                                  );


                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                                },
                                child: Text(
                                  AppLocalizations.of(context).translate("home"),
                                  style: TextStyle(
                                    color: AppColor.textColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),

                      ),
                    ],
                  ),
                  state.isLoading?Container(
                    width: size.width,
                    height: size.height,
                    color: Colors.black12.withOpacity(0.2),
                    child: Center(child: CircularProgressIndicator(backgroundColor: AppColor.darkYellow,),),):Container()
                ],
              )

          );
        });
  }
  Widget tick1({Size size}) {
    return  tick(true,size );
  }

  Widget tick2({Size size}) {
    return tick(true,size);
  }

  Widget tick3({Size size}) {
    return  tick(true,size);
  }



  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line(Size size , bool isChecked) {
    return Container(
      color: isChecked? AppColor.darkYellow:Color(0xffb1b1b1),
      height: 2.0,
      width: size.width * 0.11,
    );
  }
  Widget tick(bool isChecked ,Size size ) {
    return
      isChecked
          ? Container(
        width:size.width*0.06,
        height:size.width*0.06,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.darkYellow,

        ),
        child: Padding(
          padding:  EdgeInsets.all(size.width*0.022),
          child: Container(
            width:size.width*0.02,
            height:size.width*0.02,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,

            ),
          ),
        ),
      )
          : Container(
        width:size.width*0.06,
        height:size.width*0.06,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:Color(0xffb1b1b1),

        ),
        child: Padding(
          padding:  EdgeInsets.all(size.width*0.022),
          child: Container(
            width:size.width*0.02,
            height:size.width*0.02,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,

            ),
          ),
        ),
      );
  }
  }

