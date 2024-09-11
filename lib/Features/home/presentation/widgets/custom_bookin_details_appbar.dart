import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookinDetailsAppBar extends StatelessWidget {
  const CustomBookinDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:() {
       if (Navigator.canPop(context)) {
  Navigator.pop(context);
} else {
  context.go(RouteManger.homeview);  
}
        }, icon:const Icon(Icons.close)) , 
            
        IconButton(onPressed:() {
          
        }, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }
}