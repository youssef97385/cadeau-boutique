

 import 'package:flutter/material.dart';

Widget baseText({title,size,color,textAlign ,decoration,fontWeight , height}){
  return Text(
    title,softWrap: true,
    textAlign: textAlign,
    style: TextStyle(
        fontSize: size,

          decoration: decoration,

        fontFamily: 'font',

        fontWeight: fontWeight,
        color: color,
    height: height),
  );
 }
