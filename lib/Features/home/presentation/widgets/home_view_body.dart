import 'package:bookly_app/Features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/widgets/feature_books_list_view.dart';
import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/string_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const 
  HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppPadding.p18 , vertical: AppPadding.p30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CustomAppBar() , 
          FeatureBooksListView () , 
          SizedBox(
            height: AppSize.s30,
          ), 
          Text(
            AppString.bestSaller, style: getSemiBoldStyle(color: ColorManger.white , fontSize: FontSize.size18),
          ),
           BestSallerListViewItem () 
      
        ],
      ),
    );
  }
}

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s150,
      child: AspectRatio(  // to make widget responsive
        aspectRatio: AppSize.s2_6/AppSize.s4,  // ابعاد العرض بالنسبة للطول 
        child: Container(
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s8),
            image: const DecorationImage(image: AssetImage(ImageAssets.testImage) ,  fit: BoxFit.fill )
          ),
        ),
      ),
    );
  }
}
