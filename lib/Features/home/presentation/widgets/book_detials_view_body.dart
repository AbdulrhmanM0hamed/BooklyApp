import 'package:bookly_app/Features/home/presentation/widgets/custom_bookin_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
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
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.18 , vertical: 50),
                child: const CustomBookItem(),
              )
            ],
        ),
      ),
    ) ;
  }
}

