import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_bloc.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../injectoin.dart';
import 'bloc/edit_bloc.dart';
import 'bloc/edit_state.dart';
import 'bloc/edit_event.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cadeaue_boutique/Ui/Sign_in/sign_in.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_event.dart';
class EditWrapItem extends StatefulWidget {

  CartItem cartItem;

  CartBloc bloc;


  EditWrapItem({this.cartItem,this.bloc});

  @override
  _EditWrapItemState createState() => _EditWrapItemState();
}

class _EditWrapItemState extends State<EditWrapItem> {


  int myWrapId = -1;
  int myWrapColorId = -1;
  int myWrapSizeId = -1;

  int pickedSize = -1;
  int pickedWrapSize = -1;
  int pickedColor = -1;
  int pickedWrapColor = -1;

  final _bloc = sl<EditBloc>();


  List<String> sizes = ["S", "M", "L"];
  List<Color> colors = [
    Color(0xffffffff),
    Color(0xffA6B7E8),
    Color(0xffF2D750),
    Color(0xff000000)
  ];
  int selectedSize = -1;
  int selectedColor = -1;
  String selectedImage , selectedPrice;

  bool imageChanged = false;
  bool priceChanged = false;

  @override
  void initState() {
    // TODO: implement initState


    print("cart Item ${widget.cartItem.wrap}");

    super.initState();
    if(widget.cartItem.giftSizeId==null){
      pickedSize = -1;
    }else{
      pickedSize = widget.cartItem.giftSizeId;
    }
    if(widget.cartItem.giftColor == null){
      pickedColor =-1;
    }else{
      pickedColor = widget.cartItem.giftColor.id;
    }
    if(widget.cartItem.wrapSizeId==null){
      pickedWrapSize = -1;
    }else{
      pickedWrapSize = widget.cartItem.wrapSizeId;
    }

    if(widget.cartItem.wrapColor==null){
      pickedWrapColor = -1;
    }else{
      pickedWrapColor = widget.cartItem.wrapColor.id;
    }

    _bloc.add(GetWrapByGift((b)=>b..giftId = widget.cartItem.gift.id));
    _bloc.add(GetProduct((b) =>
    b
      ..id = widget.cartItem.gift.id));


  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return BlocBuilder(
      cubit: _bloc,
      builder: (BuildContext context, EditState state) {

        if (state.successRemoved) {
          widget.bloc.add(GetCartInfo());
          Navigator.pop(context);
          // SchedulerBinding.instance.addPostFrameCallback((_) {
          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CartScreen()));
          // });
        }

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
                                child:
                                Image.network(
                                  BaseImgUrl+widget.cartItem.gift.image, fit: BoxFit.fill,)),
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
                                        print("wrapTest${state.wraps[0].wrapItems[0].sizes}");
                                        if(!state.product.isFavourite){
                                          _bloc.add(AddToFavouriteEdit((b)=>b..id = widget.cartItem.gift.id));
                                        }else{
                                          _bloc.add(RemoveFavouriteEdit((b)=>b..id = widget.cartItem.gift.id));
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

                                    SizedBox(width: 10,),

                                    baseText(color: AppColor.darkYellow,
                                        title:priceChanged?"\$ $selectedPrice": "\$ "+state.product.salePrice,
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
                                            selectedPrice=state.product.sizes[index].price;
                                            priceChanged = true;
                                            pickedSize = -1;
                                          });
                                        },
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: selectedSize == index || (pickedSize !=-1 && pickedSize == state.product.sizes[index].id) ? Color(
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
                                                imageChanged = true;
                                              pickedColor = -1;
                                              }



                                            });
                                          },

                                          child: Container(
                                            width: 36,
                                            height: 36,
                                            decoration: BoxDecoration(
                                                border: selectedColor == index || (pickedColor !=-1 && pickedColor == state.product.colors[index].id)
                                                    ? Border.all(
                                                    color: Color(0xff707070),
                                                    width: 2)
                                                    : null,
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
                                            child:selectedColor == index || (pickedColor !=-1 && pickedColor == state.product.colors[index].id)
                                                ? Center(child: Icon(Icons.check,
                                              color: Color(0xff707070),))
                                                :Container()
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
                                          builder: (_) => FunkyOverlay(wraps: state.wraps[0].wrapItems,pickedWrapId: widget.cartItem.wrap!=null?widget.cartItem.wrap.id:-1,pickedWrapColorId: widget.cartItem.wrapColor!=null?widget.cartItem.wrapColor.id:-1,pickedWrapSizeId: widget.cartItem.wrapSizeId!=null?widget.cartItem.wrapSizeId:-1,wrapIdCallBack: (wrapId){
                                            setState(() {
                                              myWrapId = wrapId;

                                            });
                                          },
                                            wrapColorIdCallBack: (wrapColorId){
                                              setState(() {
                                                myWrapColorId = wrapColorId;

                                              });
                                            },
                                            wrapSizeIdCallBack:(wrapSizeId){


                                              myWrapSizeId = wrapSizeId;

                                            } ,
                                          ),

                                        );
                                      }
                                    },
                                    child: Text(
                                      widget.cartItem.wrap == null?
                                      'Add Wrap':'Edit Wrap',
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

                                      widget.bloc.add(GetCartInfo());
                                      // print("wrap id test ${myWrapId}");
                                      if(myWrapId == -1){
                                        _bloc.add(AddToCartEdit((b)=> b..giftId = widget.cartItem.gift.id
                                          ..giftSizeId=selectedSize==-1?
                                          null:
                                          state.product.sizes[selectedSize].id
                                          ..giftColorId = selectedColor==-1?
                                          null:
                                          state.product.colors[selectedColor].id
                                        ));

                                      }else{
                                        _bloc.add(RemoveItemEdit((b)=>b..id=widget.cartItem.id));

                                        _bloc.add(AddToCartEdit((b)=> b..giftId = widget.cartItem.gift.id ..wrapId = myWrapId
                                          ..giftSizeId=selectedSize==-1?
                                          null:
                                          state.product.sizes[selectedSize].id

                                          ..giftColorId = selectedColor==-1?
                                          null:
                                          state.product.colors[selectedColor].id
                                          ..wrapColorId=myWrapColorId==-1?
                                          null:
                                          myWrapColorId
                                          ..wrapSizeId=myWrapSizeId==-1?
                                          null:
                                          myWrapSizeId
                                        ));
                                      }

                                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
                                    },
                                    child: Text(
                                      'Edit',
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
    _bloc.add(ClearSuccessEdit());
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


