import 'package:bookly_app/Features/home/presentation/widgets/bestsaller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppPadding.p20, vertical: AppPadding.p50),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  CustomTextField(), 
        const  SizedBox(height: AppSize.s18,), 
           Text("Search Result" , style: getSemiBoldStyle(color: ColorManger.white, fontFamily: FontConstant.montserrat , fontSize: FontSize.size16), )  , 
           SizedBox(height: AppSize.s12,), 
         const  Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
       
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10 ),
              child: BestSallerListViewItem(),
            ));;
  }
}
