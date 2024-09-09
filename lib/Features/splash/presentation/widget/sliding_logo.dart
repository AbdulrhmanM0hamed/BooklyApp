import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/string_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

class SlidingLogo extends StatelessWidget {
  const SlidingLogo({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
     animation: slidingAnimation,
     builder:(context, child) => SlideTransition(
         position:slidingAnimation,
         child: Column(
            children: [
             Image.asset(ImageAssets.splashLogo), 
              const SizedBox(
         height: AppPadding.p8,
       ),
         Text(AppString.readFreBooks ,textAlign: TextAlign.center , style: getBoldStyle( color: ColorManger.white, fontSize: FontSize.size14 , fontFamily:FontConstant.montserrat))
            ],
         )
       ),
    );
  }
}