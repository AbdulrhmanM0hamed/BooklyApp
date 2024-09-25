import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: AppSize.s2_7 / AppSize.s4,
        child: CachedNetworkImage(
          imageUrl: urlImage,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) =>
              const Icon(Icons.error),
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
