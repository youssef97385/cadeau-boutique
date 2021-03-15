import 'package:flutter/material.dart';

Widget baseClick({
  Function onTap,
  double height ,
  double width,
  Color color = Colors.white ,
  icon,icons,icons_left,
  bool IsBorder,
  Color borderColor,
  colorclick,
  FontWeight,
  double radius = 8,
  String title,
  double sizeTitle,
  Color colorTitle = Colors.white
}) {
  return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.all(8),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: borderColor==null?Colors.transparent:borderColor),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5.0,
              spreadRadius: 0.0,
              offset: Offset.zero,
            ),
          ],
        ),


        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icons_left==true? Icon(icon,color: colorclick,):Container(),

                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: sizeTitle,
                       // fontFamily: "Cairo",
                        fontWeight:FontWeight,
                        color: colorTitle),
                  ),
                  icons==true? Icon(icon,color: colorclick,):Container(),



                ]),
          ),
        ),
      ));
}
