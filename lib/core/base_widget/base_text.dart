

 import 'package:flutter/material.dart';

Widget baseText({title,size,color,textAlign ,decoration,fontWeight , height,
 int maxLines=100,String txtName='font'}){
  return Text(
    title,

    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    softWrap: true,
    textAlign: textAlign,
    style: TextStyle(
        fontSize: size,

          decoration: decoration,
        fontFamily: txtName,

        fontWeight: fontWeight,
        color: color,
    height: height),
  );
 }
