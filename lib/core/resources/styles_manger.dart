import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color , String fontfamily ) {
  return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: fontfamily
      );
}

//Regular style

TextStyle getRegularStyle({
  double fontSize = FontSize.size12,
  required Color color,
  required String fontFamily, // اجعل fontFamily مطلوبًا
}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Regular, color, fontFamily,
  );
}

// Medium style
TextStyle getMediumStyle({
  double fontSize = FontSize.size12,
  required Color color,
  required String fontFamily, // اجعل fontFamily مطلوبًا
}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Medium, color, fontFamily,
  );
}

// Light style
TextStyle getLightStyle({
  double fontSize = FontSize.size12,
  required Color color,
  required String fontFamily, // اجعل fontFamily مطلوبًا
}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Light, color, fontFamily,
  );
}

// Bold style
TextStyle getBoldStyle({
  double fontSize = FontSize.size12,
  required Color color,
  required String fontFamily, // اجعل fontFamily مطلوبًا
}) {
  return _getTextStyle(
    fontSize, FontWeightManger.Bold, color, fontFamily,
  );
}

// SemiBold style
TextStyle getSemiBoldStyle({
  double fontSize = FontSize.size12,
  required Color color,
  required String fontFamily, // اجعل fontFamily مطلوبًا
}) {
  return _getTextStyle(
    fontSize, FontWeightManger.SemiBold, color, fontFamily,
  );
}