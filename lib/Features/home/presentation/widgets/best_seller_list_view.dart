import 'package:bookly_app/Features/home/presentation/view_models/cubit/newest_books/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/widgets/bestsaller_list_view_item.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>( 
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(), // Avoid if you want scrollability
            shrinkWrap: true, // Important if you have ListView inside another scrollable widget
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: AppPadding.p20),
              // Pass the book as 'book' parameter
              child: BestSallerListViewItem(bookModel: state.books[index],),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
