import 'package:bookly_app/Features/home/presentation/widgets/booking_rate.dart';
import 'package:bookly_app/Features/home/presentation/widgets/image_Cart.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:bookly_app/core/resources/string_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(RouteManger.detials);
      },
      child: SizedBox(
        height: AppSize.s150,
        child: Row(
          children: [
            const ImageCart(),
            const SizedBox(width: AppMargin.m20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    style: getSemiBoldStyle(
                        color: ColorManger.white,
                        fontFamily: FontConstant.gT_Sectra_Fine,
                        fontSize: FontSize.size20),
                    AppString.harryPotter,
                    maxLines: 2,
                  ),
                ),
                Text(
                  "J.k Rowlling",
                  style: getBoldStyle(
                      fontSize: FontSize.size16,
                      color: ColorManger.grey1,
                      fontFamily: FontConstant.gT_Sectra_Fine),
                ),
                Row(
                  children: [
                    Text(
                      "19.99 €",
                      style: getBoldStyle(
                          fontSize: FontSize.size20,
                          color: ColorManger.white,
                          fontFamily: FontConstant.montserrat),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                   BookingRate()
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}




