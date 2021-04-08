import 'package:cadeaue_boutique/Ui/track_screen/track_screen.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/wishlist_screen.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:flutter/material.dart';

import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/edit_profile/edit_profile.dart';
import 'package:cadeaue_boutique/Ui/profile_addresses/profile_addresses.dart';
import 'package:cadeaue_boutique/Ui/my_cards/my_cards.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _editScreen = false;
  editPressed(){
    setState(() {
      _editScreen = !_editScreen;
    });
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

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height*0.07,
                        ),
                        GestureDetector(

                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));
                          },
                            child: singleProfileItem(title: "Edit Profile",icon: "assets/images/drawer/edit.svg",size: size)),

                        // SizedBox(
                        //   height: size.height*0.04,
                        // ),
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileAddressesScreen()));
                            },
                            child: singleProfileItem(title: "Address",icon: "assets/images/profile/address.svg",size: size)),

                        // SizedBox(
                        //   height: size.height*0.04,
                        // ),
                        GestureDetector(

                          onTap:(){
                        Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>WishlistScreen()
                        ));
                        },
                            child: singleProfileItem(title: "Wishlist",icon: "assets/images/drawer/heart.svg",size: size)),

                        // SizedBox(
                        //   height: size.height*0.04,
                        // ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>TrackScreen()
                            ));
                          },


                            child: singleProfileItem(title: "Order History",icon: "assets/images/profile/history.svg",size: size)),

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
                  )
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
