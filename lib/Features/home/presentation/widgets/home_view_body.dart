import 'package:bookly_app/Features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/widgets/bestsaller_list_view_item.dart';
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
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  Padding(
                padding:  EdgeInsets.symmetric(vertical: AppPadding.p16 , horizontal: AppPadding.p20),
                child:  CustomAppBar(),
              ),
              const FeatureBooksListView(),
              const SizedBox(
                height: AppSize.s30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
                child: Text(
                  AppString.bestSaller,
                  style: getBoldStyle(
                      color: ColorManger.white,
                      fontSize: FontSize.size18,
                      fontFamily: FontConstant.montserrat),
                ),
              ),
            ],
            
          ),
        ),
      const SliverFillRemaining(child: BestSallerListView())
      ],
    );
  }
}

