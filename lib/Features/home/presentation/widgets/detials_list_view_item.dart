import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/view_models/cubit/similar_books/similar_cubit.dart';
import 'package:bookly_app/Features/home/presentation/widgets/image_Cart.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// Import the BookModel class if it's in a different file

class DetialListViewItem extends StatelessWidget {
  const DetialListViewItem({super.key, required this.books});

  final BookModel books ; 

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit, SimilarState>(
      builder: (context, state) {
        if (state is SimilarSuccesState) {
          return SizedBox( // Use SizedBox to wrap ListView
            height: 200, // Adjust height as necessary
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: AppPadding.p40,
                  right: AppPadding.p12,
                ),
                child: CustomBookImage(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail ?? '',
                ),
              ),
            ),
          );
        } else if (state is SimilarFailureState) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
