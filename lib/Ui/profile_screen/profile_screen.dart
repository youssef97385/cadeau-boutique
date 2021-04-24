import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_event.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/bloc/edit_profile_state.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_bloc.dart';
import 'package:cadeaue_boutique/Ui/track_screen/track_screen.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/wishlist_screen.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';


import 'package:cadeaue_boutique/model/user_info_model/user_info_model.dart';
import 'package:cadeaue_boutique/model/UserInfoV2.dart';
import 'package:flutter/material.dart';

import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/edit_profile.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/profile_addresses.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_state.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/bloc/profile_address_event.dart';
import 'package:cadeaue_boutique/Ui/my_cards/my_cards.dart';
import 'package:cadeaue_boutique/Ui/verify_code/verify_code.dart';

import '../../injectoin.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final _bloc = sl<EditProfileBloc>();
  final _blocAddress = sl<ProfileAddressBloc>();
  bool _editScreen = false;
  editPressed(){
    setState(() {
      _editScreen = !_editScreen;
    });
  }

  Future<Map> openMapPage(context, page) async {
    Map result = await Navigator.of(context).push(new MaterialPageRoute(
        builder: (context) => page));
    return result;
  }

  @override
  void initState() {

    super.initState();

    _bloc.add(InitEvent());
    _blocAddress.add(InitEventBloc());





  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
    _editScreen?EditProfileScreen():
      Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            baseAppBar(size,context),
            SizedBox(
              height: 20,
            ),


            Container(
              height: size.height*0.25,
             
              child: Column(
                children: [
                  Container(
                    height:110,
                    width: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                    ),
                    child: SvgPicture.asset("assets/images/logo.svg",height: 40,width: 40,)
                    ,
                  ),

               //  baseText(title: "User name" , color: AppColor.textColor , size: 20.0),


                ],
              ),
            ),

            Container(
              height: size.height*0.6,
              width: size.width,
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],


                        // border: Border.all(color: Color(0xff707070))
                      ),
                      // height: size.height*0.6,
                      width: size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                        child: Image.asset("assets/images/drawer/drawer-bg.png",fit: BoxFit.fill,),
                      )
                  ),

            BlocBuilder(
              cubit: _bloc,
              builder: (BuildContext context, EditProfileState state) {


                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height*0.07,
                      ),
                      GestureDetector(

                          onTap: () async {

                            await _bloc.add(InitEvent());





                            if(AppColor.UserInfoModelGlobal.name==null|| AppColor.UserInfoModelGlobal.name.isEmpty){
                            AppColor.UserInfoModelGlobal.phone=state.phoneNumber.toString();
                            AppColor.UserInfoModelGlobal.gender=state.gender;
                            AppColor.UserInfoModelGlobal.countryCode=state.countryCode;
                            AppColor.UserInfoModelGlobal.name=state.name;
                            AppColor.UserInfoModelGlobal.email=state.email;
                            AppColor.UserInfoModelGlobal.dateOf=state.dateBirth;
                            print(state.email);

                            print("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEe");
                            }




                       var response=     openMapPage(context, EditProfileScreen(
                              emailUser: AppColor.UserInfoModelGlobal.email,genderUser: AppColor.UserInfoModelGlobal.gender,
                              nameUser: AppColor.UserInfoModelGlobal.name,phoneUser: AppColor.UserInfoModelGlobal.phone,
                       dateUser: AppColor.UserInfoModelGlobal.dateOf,countryCodeUser: AppColor.UserInfoModelGlobal.countryCode,));


                        /*    Navigator.push(context,
                                MaterialPageRoute(
                                builder:
                                    (context)=>
                                    VerifyCode()));*/
                          },
                          child: singleProfileItem(title: AppLocalizations.of(context).translate("edit_profile"),icon: "assets/images/drawer/edit.svg",size: size)),

                      // SizedBox(
                      //   height: size.height*0.04,
                      // ),

                      BlocBuilder(
                          cubit: _blocAddress,
                          builder: (BuildContext context, ProfileAddressState state) {

                            return  GestureDetector(
                                onTap: (){

                                  if(AppColor.UserAddressV2.city==null|| AppColor.UserAddressV2.city.isEmpty){
                                    AppColor.UserAddressV2.city=state.city;
                                    AppColor.UserAddressV2.state=state.stateUser;
                                    AppColor.UserAddressV2.address=state.address;
                                    AppColor.UserAddressV2.zip=state.zip;

                                    print("--------");
                                    print("${state.address}");
                                    print("--------");
                                    print("${state.zip}");
                                    print("--------");
                                ;}

                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context)=>
                                              ProfileAddressesScreen(addressUser: AppColor.UserAddressV2.address,cityUser: AppColor.UserAddressV2.city
                                                ,stateUser: AppColor.UserAddressV2.state,zipUser: AppColor.UserAddressV2.zip,)));
                                },
                                child: singleProfileItem(title: AppLocalizations.of(context).translate("address"),icon: "assets/images/profile/address.svg",size: size));
                            }),


                      // SizedBox(
                      //   height: size.height*0.04,
                      // ),
                      GestureDetector(

                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>WishlistScreen()
                            ));
                          },
                          child: singleProfileItem(title: AppLocalizations.of(context).translate("wishlist"),icon: "assets/images/drawer/heart.svg",size: size)),

                      // SizedBox(
                      //   height: size.height*0.04,
                      // ),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>TrackScreen()
                            ));
                          },


                          child: singleProfileItem(title: AppLocalizations.of(context).translate("order_history"),icon: "assets/images/profile/history.svg",size: size)),

                      // SizedBox(
                      //   height: size.height*0.04,
                      // ),
                      /*     GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MycardsScreen()));
                            },
                            child: singleProfileItem(title: "My Cards",icon: "assets/images/profile/credit-card.svg",size: size))*/
                    ],
                  ),
                );
              }),

                ],
              ),
            )
          ],
        ),
      )
    );
  }
  Widget singleProfileItem({String icon , String title , Size size}){
    return  Container(
       color: Colors.transparent,
      height:size.height*0.07 ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          singleItem(icon:icon, title:title),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Icon(Icons.arrow_forward_ios , color: Color(0xff393741),size: 20,),
          )
        ],
      ),
    );
  }
  Widget singleItem({String icon , String title}){
    return  Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10,),
        baseText(title: title ,size:17.0 ,color:AppColor.lightTextColor,)
      ],
    );
  }
}
