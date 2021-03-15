import 'package:flutter/material.dart';

Widget animatedBackground(Size size){
  return Container(
      width: size.width,
      height: size.height,
      child: Image(image:  AssetImage("assets/images/new.gif"),fit: BoxFit.fill,));
}