import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titlebutton, required this.textcolor,  this.borderRadius, required this.backgroundColor});
    final String titlebutton ; 
    final Color textcolor ; 
    final BorderRadius? borderRadius ;   
    final Color backgroundColor ; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton( onPressed: () {}, 
      style: TextButton.styleFrom(backgroundColor: backgroundColor , shape: RoundedRectangleBorder(borderRadius:borderRadius ?? BorderRadius.circular(AppSize.s16)) ),
       child:  Text(titlebutton , style: getSemiBoldStyle(  color: textcolor, fontFamily: FontConstant.montserrat , fontSize: FontSize.size20)) ,
      ),
    );
  }
}