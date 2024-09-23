import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem ({super.key, required this.urlImage});
   final String urlImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(  // to make widget responsive
      aspectRatio: AppSize.s2_7/AppSize.s4,  // ابعاد العرض بالنسبة للطول 
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s16),
          image:  DecorationImage(image: NetworkImage(urlImage) ,  fit: BoxFit.fill )
        ),
      ),
    );
  }
}