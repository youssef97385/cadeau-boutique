import 'package:cadeaue_boutique/Ui/checkout_address/bloc/checkout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/Ui/checkout_payment/checkout_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  CheckoutSuccess({this.gifftTo , this.countryCode , this.phone , this.deleviryDate});

  @override
  _CheckoutSuccessState createState() => _CheckoutSuccessState();
}

class _CheckoutSuccessState extends State<CheckoutSuccess> {
  final _bloc = sl<SuccessCheckBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _bloc.add(TryCheckout((b)=>b

      ..giftTo=widget.gifftTo.toBuilder()
    ..deliveryDate = widget.deleviryDate.toBuilder()
        ..countryCode = widget.countryCode.toBuilder()
        ..phoneNumber = widget.phone.toBuilder()
        ..total = "100"

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
                            title: "Thank You",color: AppColor.darkTextColor,size:20.0
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),

                        Container(
                            width: size.width,

                            child: Center(child: baseText(title: state.error.isEmpty?"Your order has been placed Successfully ":"Sorry Try Again Later" ,
                                size: 24.0 ,
                                color: AppColor.darkTextColor,
                                textAlign: TextAlign.center))),
                        SizedBox(
                          height: 20,
                        ),

                        Image.asset("assets/images/gift box.png",fit: BoxFit.fill,)


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
