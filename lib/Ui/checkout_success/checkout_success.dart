import 'package:cadeaue_boutique/Ui/checkout_address/bloc/checkout_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/home.dart';
import 'package:cadeaue_boutique/Ui/home_screen/home_Screen.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/Ui/checkout_payment/checkout_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../injectoin.dart';
import 'bloc/successCheck_event.dart';
import 'bloc/successCheck_event.dart';
import 'bloc/successCheck_state.dart';
import 'bloc/checkout_success_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:built_collection/built_collection.dart';
class CheckoutSuccess extends StatefulWidget {
  BuiltList<String> gifftTo;
  BuiltList<String> countryCode;
  BuiltList<String> phone;
  BuiltList<String> deleviryDate;
  BuiltList<String> address;
  String total;
  String paymentType;

  CheckoutSuccess({this.gifftTo , this.countryCode , this.phone , this.deleviryDate ,this.address , this.total,this.paymentType});

  @override
  _CheckoutSuccessState createState() => _CheckoutSuccessState();
}

class _CheckoutSuccessState extends State<CheckoutSuccess> {
  final _bloc = sl<SuccessCheckBloc>();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    _bloc.add(GetCheckoutID((b)=>b..totla=widget.total
    ..people=widget.gifftTo.length.toString()
    ..paymentType=widget.paymentType));


/*    _bloc.add(TryCheckout((b)=>b

      ..giftTo=widget.gifftTo.toBuilder()
    ..deliveryDate = widget.deleviryDate.toBuilder()
        ..countryCode = widget.countryCode.toBuilder()
        ..phoneNumber = widget.phone.toBuilder()
      ..address = widget.address.toBuilder()
        ..total = widget.total

    ));*/

  }


  static const platform = const MethodChannel('Hyperpay.demo.fultter/channel');

  Future<void> _checkoutpage(String checkoutID) async {


    var realPayType=MadaType;

    if(widget.paymentType==VisaType||widget.paymentType==MasterType)
      realPayType="credit";


    String transactionStatus;
    try {
      final String result = await platform.invokeMethod('gethyperpayresponse',
          {"type": "ReadyUI", "mode": "TEST", "checkoutid": checkoutID,"brand": widget.paymentType,
          });
      transactionStatus = '$result';
    } on PlatformException catch (e) {
      transactionStatus = "${e.message}";
    }

    if (transactionStatus != null ||
        transactionStatus == "success" ||
        transactionStatus == "SYNC") {



      print("the response of payment  $transactionStatus");


      _bloc.add(TryCheckout((b)=>b

        ..giftTo=widget.gifftTo.toBuilder()
        ..deliveryDate = widget.deleviryDate.toBuilder()
        ..countryCode = widget.countryCode.toBuilder()
        ..phoneNumber = widget.phone.toBuilder()
        ..address = widget.address.toBuilder()
        ..total = widget.total

      ));

      // getpaymentstatus();
    } else {
      /*    setState(() {
          _resultText = transactionStatus;
        });*/

    }
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context , SuccessCheckoutState state){


          error(state.error);

          if(state.successGetCheckoutID){


            _checkoutpage(state.transactionPayment.ndc);


          }
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
                            title: AppLocalizations.of(context).translate("thank_you"),color: AppColor.darkTextColor,size:20.0
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),

                        (state.isLoading)?
                        Container(
                            width: size.width,

                            child: Center(child: baseText(title: AppLocalizations.of(context).translate("success_hint1") ,
                                size: 24.0 ,
                                color: AppColor.darkTextColor,
                                textAlign: TextAlign.center))):
                        Container(
                            width: size.width,

                            child: Center(child: baseText(title: state.error.isEmpty?AppLocalizations.of(context).translate("success_hint1"):AppLocalizations.of(context).translate("try_again") ,
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

  void error(String errorCode) {
    if (errorCode!=null && errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          //timeInSecForIos: 1,
          backgroundColor: Colors.red.withOpacity(0.8),
          textColor: Colors.white,
          fontSize: 16.0);

    }
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
