import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:flutter/cupertino.dart';

class CustomTextError extends StatelessWidget {
  const CustomTextError({super.key ,required this.errorMessage});
  final String errorMessage ; 

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage , style: getBoldStyle(color: ColorManger.white, fontFamily:FontConstant.montserrat),) ; 
  }
}