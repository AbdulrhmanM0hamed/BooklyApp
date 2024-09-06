import 'package:bookly_app/Features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/widgets/feature_books_list_view.dart';
import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const 
  HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p18 , vertical: AppPadding.p30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const CustomAppBar() , 
         const FeatureBooksListView () , 
         const SizedBox(
            height: AppSize.s30,
          ), 
          Text(
            "Best saller" , style: getBoldStyle(fontSize:FontSize.size20, color: ColorManger.white),
           
          )
      
        ],
      ),
    );
  }
}

