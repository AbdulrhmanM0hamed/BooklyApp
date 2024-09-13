import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';

import 'package:flutter/material.dart';
class BookingRate extends StatelessWidget {
  const BookingRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: AppSize.s20,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4.8",
          style: getBoldStyle(
              fontSize: FontSize.size20,
              color: ColorManger.white,
              fontFamily: FontConstant.montserrat),
        ),
        Text(
          "(2390)",
          style: getBoldStyle(
              fontSize: FontSize.size16,
              color: ColorManger.grey1,
              fontFamily: FontConstant.montserrat),
        )
      ],
    );
  }
}
