import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/model/static/occasions_model.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/validators.dart';
import 'package:cadeaue_boutique/Ui/checkout_payment/checkout_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:cadeaue_boutique/model/reciever_model/reciever_model.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/checkout_address.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/checkout_success/checkout_success.dart';
import 'package:country_picker/country_picker.dart';
import '../../injectoin.dart';
import 'bloc/checkout_state.dart';
import 'bloc/checkout_bloc.dart';
import 'bloc/checkout_event.dart';
import 'package:cadeaue_boutique/Ui/checkout_address/edit_reciever_dialog.dart';

class CheckoutAddress extends StatefulWidget {
  final int ticks;
  String total;

  CheckoutAddress({@required this.ticks, this.total});

  @override
  _CheckoutAddressState createState() => _CheckoutAddressState();
}

class _CheckoutAddressState extends State<CheckoutAddress> {
  String giftTo, deliveryAddress, state, zipCode, city;

  DateTime selectedDate = DateTime.utc(2019, 1, 1);
  bool _dateSelected = false;

  String countryCode = '966',
      phone;

  final _bloc = sl<CheckoutBloc>();

  var _giftToController = TextEditingController();
  var _phoneController = TextEditingController();
  var _addressController = TextEditingController();

  void _onCountryChange(String countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }

  // PersonalInfoProvider personalInfoProvider = PersonalInfoProvider();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1950),
      lastDate: DateTime(2020),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        _dateSelected = true;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, CheckoutState state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  baseAppBar(size, context),

                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        tick1(size: size),
                        line(size, false),
                        tick2(size: size),
                        line(size, false),
                        tick3(size: size),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  baseText(
                      title: "Address",
                      color: AppColor.darkTextColor,
                      size: 20.0),

                  state.recievers.isEmpty
                      ? Container()
                      : Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Container(
                        height: 70,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.recievers.length,
                            itemBuilder:
                                (BuildContext context, int index) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (_) =>
                                            EditRecieverDialog(
                                                recieverModel: state
                                                    .recievers[index],
                                                index: index,
                                                recieverCallBack: (index,
                                                     reciever,
                                                     type) {
                                                  if (type == "delete") {
                                                    _bloc.add(DeleteReciever(
                                                            (b) =>
                                                        b
                                                          ..index = index
                                                          ));
                                                  } else {
                                                    _bloc.add(
                                                        EditReciever((b) =>
                                                        b
                                                          ..index = index
                                                          ..recieverModel = reciever));
                                                  }
                                                }),
                                      );
                                    },
                                    child: Column(
                                      children: [
                                        Image.asset(
                                            "assets/images/user (2).png"),
                                        baseText(
                                            title: state
                                                .recievers[index].giftTo,
                                            color: AppColor.textColor,
                                            size: 18.0)
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Container(
                        width: size.width * 0.85,
                        child: Row(
                          children: [
                            baseText(
                                size: 14.0,
                                title: "Number of added people",
                                color: Color(0xff464646)),
                            baseText(
                                color: AppColor.darkYellow,
                                title: " (${state.recievers.length})",
                                size: 14.0),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        height: 2,
                        width: size.width * 0.85,
                        color: Color(0xffB1B1B1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  ///giftTo
                  Container(
                    height: size.height * 0.07,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 1,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Center(
                      child: TextFormField(
                        controller: _giftToController,
                        validator: emptyFieldVAlidator(giftTo, context),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Gift To",
                          contentPadding: EdgeInsets.only(
                            left: 16,
                            top: size.height * 0.02,
                          ),
                          suffixIcon: false
                              ? Icon(
                            Icons.arrow_drop_down,
                            color: Colors.red,
                          )
                              : Container(
                            width: 10,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() => giftTo = val);
                        },
                        onSaved: (value) => giftTo = value,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    height: size.height * 0.07,
                    width: size.width * .85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: size.height * 0.07,
                              width: size.width * .2,
                              child: Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    showCountryPicker(
                                      countryListTheme: CountryListThemeData(
                                        flagSize: 25,
                                        backgroundColor: Colors.white,
                                        textStyle: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blueGrey),
                                      ),

                                      context: context,
                                      //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).

                                      //Optional. Shows phone code before the country name.
                                      showPhoneCode: true,
                                      onSelect: (Country country) {
                                        print(
                                            'Select country: ${country
                                                .phoneCode}');
                                        setState(() {
                                          countryCode = country.phoneCode;
                                        });
                                      },
                                    );
                                  },
                                  child: Text("+" + countryCode),
                                ),
                              ),
                            ),
                            Container(
                              // height: size.height * 0.07,
                              width: size.width * .5,
                              // color:Colors.red,
                              child: TextFormField(
                                controller: _phoneController,
                                validator: emptyFieldVAlidator(phone, context),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  // labelText: "Phone Number",
                                  hintText: "Phone Number",
                                  contentPadding: EdgeInsets.all(12),
                                  suffixIcon: false
                                      ? Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.red,
                                  )
                                      : Container(
                                    width: 10,
                                  ),
                                ),
                                onChanged: (val) {
                                  setState(() => phone = val);
                                },
                                onSaved: (value) => phone = value,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),

                  ///dateOfBirth
                  Container(
                    height: size.height * 0.07,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ]),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: Container(
                          width: size.width * 0.85,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 16.0, top: size.height * 0.02),
                            child: Text(
                              _dateSelected
                                  ? selectedDate.toString().substring(0, 10)
                                  : "Delivery Date",
                              style: TextStyle(
                                  color: AppColor.textColor, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),

                  ///deliveryAddress
                  Container(
                    height: size.height * 0.07,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .85,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 1,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: Center(
                      child: TextFormField(
                        controller: _addressController,
                        validator:
                        emptyFieldVAlidator(deliveryAddress, context),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Delivery Address",
                          contentPadding: EdgeInsets.only(
                            left: 16,
                            top: size.height * 0.02,
                          ),
                          suffixIcon: false
                              ? Icon(
                            Icons.arrow_drop_down,
                            color: Colors.red,
                          )
                              : Container(
                            width: 10,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() => deliveryAddress = val);
                        },
                        onSaved: (value) => deliveryAddress = value,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.04,
                  ),

                  Container(
                    // margin: EdgeInsets.only(bottom: 80),
                    height: size.height * 0.07,
                    width: size.width * .85,
                    decoration: BoxDecoration(
                      color: Color(0xffB1B1B1),
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
                        if (giftTo == null || !_dateSelected || phone == null) {
                          AwesomeDialog(
                            context: context,
                            customHeader: Container(
                              child: Icon(
                                Icons.error_outline,
                                size: 100,
                                color: AppColor.darkYellow,
                              ),
                            ),
                            btnOkColor: AppColor.darkYellow,
                            dialogType: DialogType.INFO,
                            animType: AnimType.BOTTOMSLIDE,
                            title: 'check out',
                            desc: 'Please fill all the'
                                ' fields',
                            btnCancelOnPress: () {},
                            btnOkOnPress: () {},
                          )
                            ..show();
                        } else {
                          _bloc.add(AddReciever((b) =>
                          b
                            ..giftTo = giftTo
                            ..countryCode = countryCode
                            ..deliveryDate =
                            selectedDate.toString().substring(0, 10)
                            ..phoneNumber = phone
                            ..address = deliveryAddress));
                          _giftToController.clear();
                          _addressController.clear();
                          _phoneController.clear();
                        }
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // margin: EdgeInsets.only(bottom: 80),
                        height: size.height * 0.07,
                        width: size.width * .41,
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Container(
                        // margin: EdgeInsets.only(bottom: 80),
                        height: size.height * 0.07,
                        width: size.width * .41,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [AppColor.darkYellow, AppColor.lightYellow],
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
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      CheckoutSuccess(
                                        gifftTo: state.giftTo,
                                        countryCode: state.countryCode,
                                        deleviryDate: state.deliveryDate,
                                        phone: state.phoneNumber,
                                        address: state.address,
                                        total: widget.total,
                                      )),
                            );
                            // Navigator.of(context).push(CupertinoPageRoute(builder: (context) => CheckoutPayment()));
                          },
                          child: Text(
                            'Proceed',
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
                ],
              ),
            ),
          );
        });
  }

  Widget tick(bool isChecked, Size size) {
    return isChecked
        ? Container(
      width: size.width * 0.06,
      height: size.width * 0.06,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.darkYellow,
      ),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.022),
        child: Container(
          width: size.width * 0.02,
          height: size.width * 0.02,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    )
        : Container(
      width: size.width * 0.06,
      height: size.width * 0.06,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffb1b1b1),
      ),
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.022),
        child: Container(
          width: size.width * 0.02,
          height: size.width * 0.02,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget tick1({Size size}) {
    return tick(true, size);
  }

  Widget tick2({Size size}) {
    return tick(false, size);
  }

  Widget tick3({Size size}) {
    return tick(false, size);
  }

  Widget spacer() {
    return Container(
      width: 5.0,
    );
  }

  Widget line(Size size, bool isChecked) {
    return Container(
      color: isChecked ? AppColor.darkYellow : Color(0xffb1b1b1),
      height: 2.0,
      width: size.width * 0.11,
    );
  }
}
