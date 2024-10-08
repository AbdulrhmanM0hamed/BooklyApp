import 'package:bookly_app/core/resources/assets_manger.dart';
import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: AppPadding.p8 , bottom: AppPadding.p16),
      child: Row(
          children: [
            Image.asset(ImageAssets.splashLogo , height: AppSize.s18,) ,
           const Spacer() , 
            IconButton(onPressed: (){
              context.go(RouteManger.searchview);
            }, icon: const Icon(FontAwesomeIcons.magnifyingGlass , size: AppSize.s24,))
          ],
        
      ),
    );
  }
}