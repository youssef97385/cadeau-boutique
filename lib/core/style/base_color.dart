import 'package:flutter/material.dart';


const baseColor = Color(0xFF10968d);
const fontColor = Color(0xFF022741);
const cyanColor="#1baad4";

const containerColor = Colors.grey;

const textColor = Colors.black38;

const darkBlue = Color(0xFF3076D8);
const lightBlue=Color.fromARGB( 25, 0, 181, 255);
const yalowColor = Color(0xFFFFA814);
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;

    }
    return int.tryParse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}