import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(  // to make widget responsive
      aspectRatio: AppSize.s2_7/AppSize.s4,  // ابعاد العرض بالنسبة للطول 
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s16),
          
          image: const DecorationImage(image: AssetImage(ImageAssets.testImage) ,  fit: BoxFit.fill )
        ),
      ),
    );
  }
}