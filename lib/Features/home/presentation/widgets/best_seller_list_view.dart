import 'package:bookly_app/Features/home/presentation/widgets/bestsaller_list_view_item.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/cupertino.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics: const NeverScrollableScrollPhysics(),
       
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10 , horizontal: AppPadding.p20),
              child: BestSallerListViewItem(),
            ));
  }
}
