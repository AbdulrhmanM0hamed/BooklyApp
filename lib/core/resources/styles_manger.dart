import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstant.fontName,
      color: color,
      fontWeight: fontWeight);
}

//Regular style

TextStyle getRegularStyle(
    {double fontSize = FontSize.size12, required Color color}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Regular, color);
  
}

//Medium style

TextStyle getMeduimStyle(
    {double fontSize = FontSize.size12, required Color color}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Medium, color);
  
}


//Light style

TextStyle getLightStyle(
    {double fontSize = FontSize.size12, required Color color}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Light, color);
  
}

//Bold style

TextStyle getBoldStyle(
    {double fontSize = FontSize.size12, required Color color}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Bold, color);
  
}


//SemiBold style

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.size12, required Color color}) {
  return _getTextStyle(
    fontSize, FontWeightManger.SemiBold, color);
  
}
