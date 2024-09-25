import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/widgets/image_Cart.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
// Import the BookModel class if it's in a different file

class DetialListViewItem extends StatelessWidget {
  // Assuming you have a list of BookModels to pass to the widget
  final BookModel books; 

  const DetialListViewItem({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Use the length of the books list
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: AppPadding.p40,
            right: AppPadding.p12,
          ),
          child:CustomBookImage(imageUrl:books.volumeInfo.imageLinks?.thumbnail ?? '' ,)
        ),
      ),
    );
  }
}
