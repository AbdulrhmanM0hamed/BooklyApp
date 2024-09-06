import 'package:bookly_app/Features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/widgets/feature_books_list_view.dart';
import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const 
  HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar() , 

        FeatureBooksListView ()
      ],
    );
  }
}

