import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_bloc.dart';
import 'package:cadeaue_boutique/Ui/cart_screen/bloc/cart_event.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_bloc.dart';
import 'package:cadeaue_boutique/Ui/product_screen/bloc/product_event.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/bloc/wrap_event.dart';
import 'package:cadeaue_boutique/Ui/wrap_screen/bloc/wrap_state.dart';
import 'package:cadeaue_boutique/core/base_widget/appBar.dart';
import 'package:cadeaue_boutique/core/base_widget/base_text.dart';
import 'package:cadeaue_boutique/core/constent.dart';
import 'package:cadeaue_boutique/model/cart_model/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'bloc/wrap_event.dart';
import '../../injectoin.dart';
import 'bloc/wrap_bloc.dart';
class WrapScreen extends StatefulWidget {

  int id;
  CartItem cartItem;
  CartBloc bloc;
  bool isFromCart;
  WrapScreen({this.id,this.cartItem,this.isFromCart,this.bloc});

  @override
  _WrapScreenState createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {



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

  final _bloc = sl<WrapBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc.add(GetWrap((b) =>
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
      builder: (BuildContext context, WrapState state) {
        if (state.successAddToCart) {

          SchedulerBinding.instance.addPostFrameCallback((_) {
            if(widget.isFromCart!=null&&widget.isFromCart){
              widget.bloc.add(GetCartInfo());
              Navigator.pop(context);

            }
            else{
               showSuccsess();
            }


          });
        }
        // print("my product "+ (state.wrap.image == null).toString() + "   "+state.wrap.toString() );
        return Stack(
          children: [
            Scaffold(
                body:
                state.wrap.image == null?Container():
                SingleChildScrollView(
                  child:
                  // state.product==null?Container():
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      baseAppBar(size, context),

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
                            child: Image.network(
                              imageChanged?BaseImgUrl+selectedImage:BaseImgUrl+state.wrap.image, fit: BoxFit.fill,)),
                      ),
                      SizedBox(height: 20,),

                      ///name

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                baseText(color: AppColor.darkTextColor,
                                  title: "Rolex",
                                  size: 12.0,),
                                SizedBox(height: 10,),
                                baseText(color: AppColor.darkTextColor,
                                    title: state.wrap.nameEn,
                                    size: 18.0,
                                    fontWeight: FontWeight.bold),

                              ],),

                            // Container(
                            //   width: 36,
                            //   height: 36,
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       color: AppColor.darkYellow
                            //
                            //   ),
                            //   child: Center(child: SvgPicture.asset(
                            //       "assets/images/favourite.svg")),
                            // )
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
                                baseText(color: AppColor.darkTextColor,
                                    title:selectedSize==-1? "\$ "+state.wrap.mainPrice:"\$ "+state.wrap.sizes[selectedSize].price,
                                    size: 20.0,
                                 ),
                                // SizedBox(width: 10,),
                                // baseText(color: AppColor.darkYellow,
                                //     title: "\$ "+state.wrap.salePrice,
                                //     size: 20.0),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     SvgPicture.asset("assets/images/favourite.svg"),
                            //     SizedBox(
                            //       width: 5,
                            //     ),
                            //     baseText(color: AppColor.darkTextColor,
                            //       title: state.wrap.likes.toString(),
                            //       size: 16.0,),
                            //   ],
                            // ),

                          ],
                        ),
                      ),
                      // SizedBox(height: 20,),
                      //
                      // ///description
                      //
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 24.0, right: 46),
                      //   child: baseText(
                      //       title: state.wrap.description == null ?"":state.wrap.description,
                      //       color: AppColor.textColor,
                      //       size: 16.0, height: 2.0),
                      // ),

                      SizedBox(
                        height: 20,
                      ),

                      ///description

                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 46),
                        child: baseText(
                            title: state.wrap.description == null ?"":state.wrap.description,
                            color: AppColor.textColor,
                            size: 16.0, height: 2.0),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      ///size
                      state.wrap.sizes.isEmpty?Container():
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: baseText(title: "Size:",
                          size: 18.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.darkTextColor,),
                      ),

                      SizedBox(height: 10,),
                      state.wrap.sizes.isEmpty?Container():
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          height: 40,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.wrap.sizes.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if(widget.isFromCart!=null&&widget.isFromCart){

                                        }else{
                                          selectedSize = index;
                                        }

                                      });
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color:

                                        widget.isFromCart?
                                        widget.cartItem.wrapSizeId!=null?
                                        widget.cartItem.wrapSizeId==state.wrap.sizes[index].id? Color(
                                               0xffF2D750) :Colors.white
                                            :Colors.white
                                            :selectedSize!=index?Colors.white:
                                        Color(
                                            0xffF2D750),
                                        // selectedSize == index ? Color(
                                        //     0xffF2D750) : Colors.white,
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
                                          title: state.wrap.sizes[index].size,
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

                      state.wrap.colors.isEmpty?Container():
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: baseText(title: "Color:",
                          size: 18.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.darkTextColor,),
                      ),

                      SizedBox(height: 10,),
                      state.wrap.colors.isEmpty?Container():
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Container(
                          height: 40,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: state.wrap.colors.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if(widget.isFromCart!=null&&widget.isFromCart){

                                          }else{
                                            selectedColor = index;
                                            selectedImage = state.wrap.colors[index].image;
                                            imageChanged = true;
                                          }

                                        });
                                      },
                                      child: Container(
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            border: widget.isFromCart?
                                                widget.cartItem.wrapColor!=null?
                                                    widget.cartItem.wrapColor.id==state.wrap.colors[index].id? Border.all(
                                                        color: Color(0xff707070),
                                                        width: 2):null
                                                    :null
                                                :selectedColor!=index?null:
                                            Border.all(
                                                color: Color(0xff707070),
                                                width: 2),
                                            // selectedColor != index
                                            //     ? null
                                            //     : Border.all(
                                            //     color: Color(0xff707070),
                                            //     width: 2),
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
                                            color: hexToColor(state.wrap.colors[index].color)

                                        ),
                                        child:

                                        widget.isFromCart?
                                        widget.cartItem.wrapColor!=null?
                                        widget.cartItem.wrapColor.id==state.wrap.colors[index].id? Center(child: Icon(Icons.check,
                                          color: Color(0xff707070),)):null
                                            :null
                                            :selectedColor!=index?null:
                                        Center(child: Icon(Icons.check,
                                          color: Color(0xff707070),)),

                                        // ( widget.isFromCart!=null&&widget.isFromCart==false&&widget.cartItem!=null)
                                        //     ?  widget.cartItem.wrapColor.id==state.wrap.colors[index].id?Center(child: Icon(Icons.check,
                                        //   color: Color(0xff707070),)):
                                        // selectedColor != index
                                        //     ? Container()
                                        //     : Center(child: Icon(Icons.check,
                                        //   color: Color(0xff707070),)):Container()

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
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            // Container(
                            //   // margin: EdgeInsets.only(bottom: 80),
                            //   height: size.height * 0.07,
                            //   width: size.width * .3,
                            //   decoration: BoxDecoration(
                            //     color: Colors.white,
                            //     boxShadow: [
                            //       BoxShadow(
                            //         offset: Offset(1, 1),
                            //         color: Colors.grey.withOpacity(0.6),
                            //         blurRadius: 5,
                            //         spreadRadius: 3,
                            //       ),
                            //     ],
                            //
                            //     borderRadius: BorderRadius.circular(40),
                            //   ),
                            //   child: FlatButton(
                            //     // splashColor: Colors.red,
                            //     onPressed: () {
                            //       showDialog(
                            //         context: context,
                            //         builder: (_) => FunkyOverlay(),
                            //       );
                            //     },
                            //     child: Text(
                            //       'Add Wrap',
                            //       style: TextStyle(
                            //         color: AppColor.textColor,
                            //         fontSize: 13,
                            //         fontWeight: FontWeight.w500,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            //
                            // SizedBox(width: 20,),
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
                                  if(widget.isFromCart!=null&&widget.isFromCart){
                                    _bloc.add(RemoveItemWrap((b)=>b..id=widget.cartItem.id));
                                    _bloc.add(AddToCartWrap((b)=>b..giftId=widget.cartItem.gift.id ..giftColorId=widget.cartItem.giftColor==null?null:widget.cartItem.giftColor.id));
                                  }else{
                                    _bloc.add(AddWrap((b) =>
                                    b
                                      ..wrapId = widget.id
                                      ..wrapColorId = selectedColor==-1?null:state.wrap.colors[selectedColor].id
                                      ..wrapSizeId = selectedSize==-1?null:state.wrap.sizes[selectedSize].id

                                    ));
                                  }


                                },
                                child: Text(
                                  (widget.isFromCart!=null&&widget.isFromCart)?
                                  'Remove Wrap':"Add To Cart",
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
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
  showSuccsess(){
     _bloc.add(Clear());
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
