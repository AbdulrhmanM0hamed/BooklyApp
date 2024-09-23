import 'package:bookly_app/Features/home/presentation/widgets/booking_rate.dart';
import 'package:bookly_app/Features/home/presentation/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_bookin_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/widgets/detials_list_view_item.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
          children: [
            const CustomBookinDetailsAppBar(),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .2,
                  right: MediaQuery.of(context).size.width * .2,
                  top: 20,
                  bottom: 20),
              child: const CustomBookItem(urlImage: "https://th.bing.com/th/id/R.39a0d647e1758c3224143ee90d78c07d?rik=c1tD2Y5XzA0Eaw&pid=ImgRaw&r=0",),
            ),
            Text(
              "The Jungle Book",
              style: getSemiBoldStyle(
                  color: ColorManger.white,
                  fontFamily: FontConstant.gT_Sectra_Fine,
                  fontSize: FontSize.size30),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              "Rudyard Kipling",
              style: getSemiBoldStyle(
                  color: ColorManger.grey1,
                  fontFamily: FontConstant.montserrat,
                  fontSize: FontSize.size20,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            const BookingRate(),
            const SizedBox(
              height: AppSize.s20,
            ),
            const BooksAction(),
            const SizedBox(
              height: AppSize.s40,
            ),
             Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "You can also like", style:  getSemiBoldStyle(
                  color: ColorManger.white,
                  fontFamily: FontConstant.montserrat,
                  fontSize: FontSize.size16,
                 ), 
                )),
               const SizedBox(height: 15,), 
          const  DetialListViewItem()
          ],
        ),
      ),
    );
  }
}

