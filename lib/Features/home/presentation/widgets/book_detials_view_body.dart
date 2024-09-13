import 'dart:ui';

import 'package:bookly_app/Features/home/presentation/widgets/booking_rate.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_bookin_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
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
              SizedBox(height: 10,),
              const BookingRate(),
            ],
        ),
      ),
    ) ;
  }
}

