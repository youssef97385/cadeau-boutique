import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/cart_screen.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_bloc.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_event.dart';
import 'package:cadeaue_boutique/Ui/home/page/bloc/home_state.dart';
import 'package:cadeaue_boutique/Ui/settings_screen/settings_screen.dart';
import 'package:cadeaue_boutique/Ui/splash_screen/splash_screen.dart';
import 'package:cadeaue_boutique/Ui/track_screen/track_screen.dart';
import 'package:cadeaue_boutique/Ui/welcome_page/welcome_page.dart';
import 'package:cadeaue_boutique/core/app_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/Ui/categories_screen/categories_screen.dart';
import 'package:cadeaue_boutique/Ui/coupons_list_details/coupons_list_details.dart';
import 'package:cadeaue_boutique/Ui/wishlist_screen/wishlist_screen.dart';
import 'package:cadeaue_boutique/Ui/Dialog/WaitDilaog/WaitDialog.dart';
import 'package:cadeaue_boutique/Ui/my_card_tabs/my_card_tabs.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cadeaue_boutique/model/category_model/category_model.dart';
import '../../injectoin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cadeaue_boutique/core/app_language.dart';

class MainDrawer extends StatefulWidget {
  bool isLogin;

  BuiltList<CategoryModel> categories;

  MainDrawer({this.isLogin,this.categories});

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {

  @override
  void initState() {
    // TODO: implement initState
    _bloc.add(IniEvent());
    super.initState();
  }

  final _bloc = sl<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocBuilder(
        cubit: _bloc,
        builder: (BuildContext context, HomeState state) {

    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width*0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
            child: Image.asset("assets/images/drawer/drawer-bg.png",fit: BoxFit.fill,),
          )
        ),

        Positioned(
          bottom: -40,
          left: -10,
          child: Column(
            children: [
              Container(
                width: size.width*0.7,
                child: Image.asset("assets/images/drawer/drawer bottom.png",fit: BoxFit.fill,),
              ),
            ],
          ),
        ),

        Container(
            height: size.height,
            width: size.width*0.7,
            child: SingleChildScrollView(
              child: Column(

                children: [
                  SizedBox(
                    height:20 ,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        SvgPicture.asset("assets/images/drawer/x icon.svg"),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15,),
                      Container(
                        height:90,
                        alignment: Alignment.center,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                        ),
                       // child: Image.asset("assets/images/drawer/profile pic.png",fit: BoxFit.fill,)
                        child: SvgPicture.asset("assets/images/logo.svg",height: 40,width: 40,)
                        ,
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         // baseText(title: "Name",size:30.0 ,color:AppColor.lightTextColor,fontWeight:FontWeight.bold ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                            //  SvgPicture.asset("assets/images/drawer/edit.svg"),
                            //  SizedBox(width: 10,),
                            // baseText(title: "Edit Profile",size:14.0 ,color:AppColor.lightTextColor,)
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:30.0),
                    child: Column(
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesScreen(
                                categories:
                                widget.categories!=null?
                                widget.categories:null,)));
                            },
                            child: singleDrawerItem("assets/images/drawer/category.svg",
                                AppLocalizations.of(context).translate("category"))),
                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(
                          onTap: (){

                            _bloc.add(IniEvent());
                            if(state.loginState){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>WishlistScreen()));
                            }else{
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
                                title: AppLocalizations.of(context).translate('login'),
                                desc: 'you_must_logged_in',
                                btnCancelOnPress: () { },
                                btnOkOnPress: () {
                                  WidgetsBinding.instance.addPostFrameCallback((_) =>
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) => SigninScreen())));
                                },
                              )..show();
                            }
                           },
                            child: singleDrawerItem("assets/images/drawer/heart.svg",
                                AppLocalizations.of(context).translate("wishlist"))),
                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(
                            onTap: (){
                              _bloc.add(IniEvent());
    if(state.loginState){


                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>TrackScreen()
                              ));
    }
    else{
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
        title: AppLocalizations.of(context).translate('login'),
        desc: AppLocalizations.of(context).translate('you_must_logged_in'),
        btnCancelOnPress: () { },
        btnOkOnPress: () {
          Navigator.of(context).pop();
          WidgetsBinding.instance.addPostFrameCallback((_) =>
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SigninScreen())));
        },
      )..show();
    }



                            },
                            child: singleDrawerItem("assets/images/drawer/delivery.svg",
                                AppLocalizations.of(context).translate("track_order"))),
                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(

                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                            },
                            child: singleDrawerItem("assets/images/drawer/shopping-bag (2).svg", AppLocalizations.of(context).translate("cart"))),
                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(

                       /*     onTap: (){
                             //  changeAppLanguage(1);
                              showComingSoonDialog();
                            },*/
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>SettingsScreen()
                              ));
                            },
                            child: singleDrawerItem("assets/images/drawer/settings.svg", AppLocalizations.of(context).translate("settings"))),
                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(


                            onTap: (){

                              if(state.loginState){
                                var sent=AppLocalizations.of(context).translate("sent");
                                var recived=AppLocalizations.of(context).translate("received");
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>MyCardTabs(txtSent: sent,
                                txtRevevied: recived,)
                              ));

                              }

                              else{
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
                                  title: AppLocalizations.of(context).translate('login'),
                                  desc: AppLocalizations.of(context).translate('you_must_logged_in'),
                                  btnCancelOnPress: () { },
                                  btnOkOnPress: () {
                                    Navigator.of(context).pop();
                                    WidgetsBinding.instance.addPostFrameCallback((_) =>
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => SigninScreen())));
                                  },
                                )..show();
                              }
                            },
                            child: singleDrawerItem("assets/images/gift_card.svg", AppLocalizations.of(context).translate("my_card"))),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(left:30.0),
                    child: Column(
                      children: [

                        InkWell(
                            onTap: (){
                              showComingSoonDialog();
                            },
                            child: singleDrawerItem("assets/images/drawer/share.svg", AppLocalizations.of(context).translate("invite_friend"))),
                        SizedBox(
                          height: 30,
                        ),

                        InkWell(
                            onTap: (){
                              showComingSoonDialog();
                            },
                            child: singleDrawerItem("assets/images/drawer/question.svg",AppLocalizations.of(context).translate("help_feedback"))),
                        SizedBox(
                          height: 30,
                        ),


                      ],
                    ),
                  ),
                 state.loginState? Container(
                    // margin: EdgeInsets.only(bottom: 80),
                    height: size.height * 0.07,
                    width: size.width * .5,
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
                      onPressed: () async {

                        var state=   await  openLogout(context);
                        print("------------------ ");

                        //Navigator.of(context).pop();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninScreen()
                            ),
                            ModalRoute.withName("/signin_screen")
                        );

                   /*  var x=   AwesomeDialog(
                          context: context,

                          btnOkColor: AppColor.darkYellow,
                          dialogType: DialogType.QUESTION,
                          animType: AnimType.BOTTOMSLIDE,
                          title: AppLocalizations.of(context).translate('logout'),
                          desc: AppLocalizations.of(context).translate('do_you_want_to_logout'),
                          btnCancelOnPress: () { },
                          btnOkOnPress: () async {


                          },
                        )..show();*/
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/drawer/logout.svg"),
                          SizedBox(width:10),
                          Text(
                            AppLocalizations.of(context).translate('logout'),
                            style: TextStyle(
                              color: AppColor.textColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ): Container(
                   // margin: EdgeInsets.only(bottom: 80),
                   height: size.height * 0.07,
                   width: size.width * .5,
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

                       Navigator.of(context).pop();
                       Navigator.pushAndRemoveUntil(
                           context,
                           MaterialPageRoute(
                               builder: (context) => SigninScreen()
                           ),
                           ModalRoute.withName("/signin_screen")
                       );

                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SvgPicture.asset("assets/images/drawer/logout.svg"),
                         SizedBox(width:10),
                         Text(
                           AppLocalizations.of(context).translate('login'),
                           style: TextStyle(
                             color: AppColor.textColor,
                             fontSize: 18,
                             fontWeight: FontWeight.w500,
                           ),
                         ),
                       ],
                     ),
                   ),
                 )
                ],
              ),
            )
        ),



      ],
    );
        });
  }

  Widget singleDrawerItem(String icon , String title){
    return  Row(
      children: [
        SvgPicture.asset(icon),
        SizedBox(width: 10,),
        baseText(title: title ,size:17.0 ,color:AppColor.lightTextColor,)
      ],
    );
  }

  Future<bool> openLogout(BuildContext context,) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return WaitDialog();
      },
    );}

  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
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

   showComingSoonDialog(){
    return    AwesomeDialog(
      context: context,
      customHeader: Container(
        child: Icon(
          Icons.error_outline,
          size: 100,
          color: AppColor.darkYellow,
        ),
      ),
      btnOkColor: AppColor.darkYellow,
      dialogType: DialogType.WARNING,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Coming Soon',
      desc: '',
      btnCancelOnPress: () {},
      btnOkOnPress: () {

      },
    )..show();
  }
}

