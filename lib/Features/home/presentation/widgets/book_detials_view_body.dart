
import 'package:bookly_app/Features/home/presentation/widgets/booking_rate.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_bookin_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
                  
            children: [
             const CustomBookinDetailsAppBar() , 
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.2 , right: MediaQuery.of(context).size.width*.2 , top: 50  , bottom: 30),
                child: const CustomBookItem(),
              ),
              Text("The Jungle Book" , style: getSemiBoldStyle(color: ColorManger.white, fontFamily: FontConstant.gT_Sectra_Fine , fontSize: FontSize.size30),),
             const SizedBox(height: 3,),
              Text("Rudyard Kipling" , style: getSemiBoldStyle(color: ColorManger.grey1, fontFamily: FontConstant.montserrat , fontSize: FontSize.size20 , fontStyle: FontStyle.italic),), 
            const SizedBox(height: 10,),
              const BookingRate(),
             const SizedBox(height: AppSize.s30,) , 
              const BooksAction()
            ],
        ),
      ),
    ) ;
  }
}

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