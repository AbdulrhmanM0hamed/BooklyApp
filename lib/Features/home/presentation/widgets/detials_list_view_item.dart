import 'package:bookly_app/Features/home/presentation/widgets/image_Cart.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

class DetialListViewItem extends StatelessWidget {
  const DetialListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => const Padding (
                  padding:  EdgeInsets.only(bottom: AppPadding.p40, right: AppPadding.p12),
                  child:  ImageCart(),
                )));
  }
}
