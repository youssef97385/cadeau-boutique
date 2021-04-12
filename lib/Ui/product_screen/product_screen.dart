import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/cart_screen.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/wrap_screen.dart';
import 'package:flutter/material.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cadeaue_boutique/Ui/wrap_alert_dialog/wrap_dialog.dart';
import 'package:cadeaue_boutique/injectoin.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_bloc.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_event.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';

import 'bloc/product_event.dart';

class ProductScreen extends StatefulWidget {
  int id;
  String img;

  ProductScreen({this.id,this.img});






  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {




  int myWrapId = -1;

  final _bloc = sl<ProductBloc>();


  List<String> sizes = ["S", "M", "L"];
  List<Color> colors = [
    Color(0xffffffff),
    Color(0xffA6B7E8),
    Color(0xffF2D750),
    Color(0xff000000)
  ];
  int selectedSize = -1;
  int selectedColor = -1;

  String selectedImage;

  bool imageChanged = false;

  int getWrapId(){
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.add(GetWrapByGift((b)=>b..giftId = widget.id));
    _bloc.add(GetProduct((b) =>
    b
      ..id = widget.id));
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, ProductState state) {
        if (state.successAddToCart) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            showSuccsess();
          });
        }
        // print("my product "+ (state.product.image == null).toString() + "   "+state.product.toString() );
        return Stack(
          children: [
            Scaffold(
                body:

                SingleChildScrollView(
                  child:
                      // state.product==null?Container():
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      baseAppBar(size, context),


                     Stack(

                       children: [
                         Container(
                           height: 250,
                           width: size.width,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(bottomRight: Radius
                                 .circular(14), bottomLeft: Radius.circular(14)),

                           ),
                           child: ClipRRect(
                               borderRadius: BorderRadius.only(bottomRight: Radius
                                   .circular(14), bottomLeft: Radius.circular(14)),
                               child: Hero(
                                 tag: "${widget.id}",
                                 child: Image.network(
                                   imageChanged?BaseImgUrl+selectedImage:BaseImgUrl+widget.img, fit: BoxFit.fill,),
                               )),
                         ),
                         myWrapId == -1 ?Container():
                        Positioned(
                          right: 0,
                          top: 20,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WrapScreen(
                                          id:  myWrapId)));
                            },
                            child: Positioned(

                              child: Stack(

                                children: [
                                  Container(
                                    width: 35,
                                    height:35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(14),bottomLeft: Radius.circular(14))
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      left: 10,
                                      child: SvgPicture.asset("assets/images/gift-box (1).svg")),
                                  // SvgPicture.asset("assets/images/check wrap.svg")
                                ],
                              ),
                            ),
                          ),
                        )
                       ],
                     ),
                      SizedBox(height: 20,),

                      state.product.image == null?Container():
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         ///name

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 24.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Column(

                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   // baseText(color: AppColor.darkTextColor,
                                   //   title: "Rolex",
                                   //   size: 12.0,),
                                   // SizedBox(height: 10,),
                                   baseText(color: AppColor.darkTextColor,
                                       title: state.product.nameEn,
                                       size: 18.0,
                                       fontWeight: FontWeight.bold),

                                 ],),

                               GestureDetector(
                                 onTap: (){
                                   if(state.wraps.isEmpty){
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
                                       title: 'Login',
                                       desc: 'You must be logged in',
                                       btnCancelOnPress: () { },
                                       btnOkOnPress: () {
                                         WidgetsBinding.instance.addPostFrameCallback((_) =>
                                             Navigator.of(context).push(
                                                 MaterialPageRoute(builder: (context) => SigninScreen())));
                                       },
                                     )..show();
                                   }else{
                                     if(!state.product.isFavourite){
                                       _bloc.add(AddToFavourite((b)=>b..id = widget.id));
                                     }else{
                                       _bloc.add(RemoveFavourite((b)=>b..id = widget.id));
                                     }


                                   }

                                 },
                                 child: Container(
                                   width: 36,
                                   height: 36,
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: AppColor.darkYellow

                                   ),
                                   child: Center(child:

                                       state.product.isFavourite?

                                           Icon(Icons.favorite,color: Colors.red,):
                                     SvgPicture.asset(
                                         "assets/images/favourite.svg")

                                   //
                                   // !state.product.isFavourite && !state.removed?
                                   // SvgPicture.asset(
                                   //     "assets/images/favourite.svg"):Icon(Icons.favorite,color: Colors.red,),
                                 ),
                               ))
                             ],
                           ),
                         ),

                         SizedBox(height: 20,),

                         ///price

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 24.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   state.product.salePrice==0?null:
                                   baseText(color: AppColor.darkTextColor,
                                       title: "\$ "+state.product.mainPrice,
                                       size: 20.0,
                                       decoration: TextDecoration.lineThrough),
                                   SizedBox(width: 10,),

                                   baseText(color: AppColor.darkYellow,
                                       title: "\$ "+state.product.salePrice == 0?state.product.mainPrice:state.product.salePrice,
                                       size: 20.0),
                                 ],
                               ),

                               state.product.likes==0?Container():
                               Row(
                                 children: [
                                   SvgPicture.asset("assets/images/favourite.svg"),
                                   SizedBox(
                                     width: 5,
                                   ),
                                   baseText(color: AppColor.darkTextColor,
                                     title: state.product.likes.toString(),
                                     size: 16.0,),
                                 ],
                               ),

                             ],
                           ),
                         ),
                         SizedBox(height: 20,),

                         ///description

                         Padding(
                           padding: const EdgeInsets.only(left: 24.0, right: 46),
                           child: baseText(
                               title: state.product.description == null ?"":state.product.description,
                               color: AppColor.textColor,
                               size: 16.0, height: 2.0),
                         ),

                         SizedBox(
                           height: 20,
                         ),


                         ///size
                         state.product.sizes.isEmpty?Container():
                         Padding(
                           padding: const EdgeInsets.only(left: 24.0),
                           child: baseText(title: "Size:",
                             size: 18.0,
                             fontWeight: FontWeight.bold,
                             color: AppColor.darkTextColor,),
                         ),

                         SizedBox(height: 10,),
                         state.product.sizes.isEmpty?Container():
                         Padding(
                           padding: const EdgeInsets.only(left: 24.0),
                           child: Container(
                             height: 40,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: state.product.sizes.length,
                                 itemBuilder: (BuildContext context, int index) {
                                   return Padding(
                                     padding: const EdgeInsets.only(right: 24.0),
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           selectedSize = index;
                                         });
                                       },
                                       child: Container(
                                         width: 40,
                                         height: 40,
                                         decoration: BoxDecoration(
                                           color: selectedSize == index ? Color(
                                               0xffF2D750) : Colors.white,
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(10)),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 2,
                                               blurRadius: 3,
                                               offset: Offset(0,
                                                   3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: Center(child: baseText(
                                             title: state.product.sizes[index].size,
                                             color: AppColor.darkTextColor,
                                             size: 18.0)),
                                       ),
                                     ),
                                   );
                                 }),
                           ),
                         ),

                         SizedBox(height: 20,),

                         ///color

                         state.product.colors.isEmpty?Container():
                         Padding(
                           padding: const EdgeInsets.only(left: 24.0),
                           child: baseText(title: "Color:",
                             size: 18.0,
                             fontWeight: FontWeight.bold,
                             color: AppColor.darkTextColor,),
                         ),

                         SizedBox(height: 10,),
                         state.product.colors.isEmpty?Container():
                         Padding(
                           padding: const EdgeInsets.only(left: 24.0),
                           child: Container(
                             height: 40,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: state.product.colors.length,
                                 itemBuilder: (BuildContext context, int index) {
                                   return Padding(
                                     padding: const EdgeInsets.only(right: 24.0),
                                     child: GestureDetector(
                                         onTap: () {
                                           setState(() {
                                             selectedColor = index;
                                             if(state.product.colors[index].image != null){


                                               selectedImage = state.product.colors[index].image;
                                               imageChanged = true;}


                                           });
                                         },
                                         child: Container(
                                           width: 36,
                                           height: 36,
                                           decoration: BoxDecoration(
                                               border: selectedColor != index
                                                   ? null
                                                   : Border.all(
                                                   color: Color(0xff707070),
                                                   width: 2),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.grey.withOpacity(
                                                       0.5),
                                                   spreadRadius: 2,
                                                   blurRadius: 3,
                                                   offset: Offset(0,
                                                       3), // changes position of shadow
                                                 ),
                                               ],
                                               shape: BoxShape.circle,
                                               color: hexToColor(state.product.colors[index].color)

                                           ),
                                           child: selectedColor != index
                                               ? Container()
                                               : Center(child: Icon(Icons.check,
                                             color: Color(0xff707070),)),
                                         )
                                     ),
                                   );
                                 }),
                           ),
                         ),

                         SizedBox(height: 20,),

                         ///buttons
                         Padding(
                           padding: const EdgeInsets.only(left: 24),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,

                             children: [

                               Container(
                                 // margin: EdgeInsets.only(bottom: 80),
                                 height: size.height * 0.07,
                                 width: size.width * .3,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
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
                                    if(state.wraps.isEmpty){
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
                                        title: 'Login',
                                        desc: 'You must be logged in',
                                        btnCancelOnPress: () { },
                                        btnOkOnPress: () {
                                          WidgetsBinding.instance.addPostFrameCallback((_) =>
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(builder: (context) => SigninScreen())));
                                        },
                                      )..show();
                                    }
                                     else{
                                      showDialog(
                                        context: context,
                                        builder: (_) => FunkyOverlay(wraps: state.wraps,wrapIdCallBack: (wrapId){
                                          setState(() {
                                            myWrapId = wrapId;

                                          });
                                        },),

                                      );
                                    }
                                   },
                                   child: Text(
                                     'Add Wrap',
                                     style: TextStyle(
                                       color: AppColor.textColor,
                                       fontSize: 13,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                 ),
                               ),

                               SizedBox(width: 20,),
                               Container(
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

                                     // print("wrap id test ${myWrapId}");
                                     if(myWrapId == -1){
                                       _bloc.add(AddToCart((b)=> b..giftId = widget.id ));
                                     }else{
                                       _bloc.add(AddToCart((b)=> b..giftId = widget.id ..wrapId = myWrapId));
                                     }

                                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                                   },
                                   child: Text(
                                     'Add To Cart',
                                     style: TextStyle(
                                       color: AppColor.textColor,
                                       fontSize: 13,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                 ),
                               ),

                             ],),
                         ),
                         SizedBox(height: 30,)
                       ],
                     )
                    ],
                  ),
                )
            ),
            state.isLoading ? Center(child: CircularProgressIndicator(
              backgroundColor: AppColor.darkYellow,
            ),) : Container()
          ],
        );
      },
    );
  }
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, code.length), radix: 16) + 0xFF000000);
  }

  showSuccsess(){
    _bloc.add(ClearSuccess());
    AwesomeDialog(
      context: context,
      customHeader:
      Container(
        child: Icon(
          Icons
              .error_outline,
          size: 100,
          color: AppColor
              .darkYellow,
        ),
      ),
      btnOkColor: AppColor
          .darkYellow,
      dialogType:
      DialogType
          .SUCCES,
      animType: AnimType
          .BOTTOMSLIDE,
      title: 'Successfully Added To Cart',
      desc:
      '',

    )..show();
  }
}
