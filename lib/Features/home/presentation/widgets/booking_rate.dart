import 'package:bookly_app/core/resources/values_manger.dart';

import 'package:flutter/material.dart';

class BookingRate extends StatelessWidget {
  const BookingRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star,
      color: Colors.yellow,
      size: AppSize.s20,
    );
  }
}
