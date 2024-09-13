import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 , right: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: ColorManger.white,
              textcolor: ColorManger.black,
              titlebutton: "19.99 €",
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(AppSize.s16) , bottomLeft: Radius.circular(AppSize.s16) ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: ColorManger.darkprimary,
              textcolor: ColorManger.white,
              titlebutton: "Free Preview",
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(AppSize.s16) , topRight: Radius.circular(AppSize.s16) ),
            ),
          ),
        ],
      ),
    );
  }
}