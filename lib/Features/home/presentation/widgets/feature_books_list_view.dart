import 'package:bookly_app/Features/home/presentation/view_models/cubit/feature_books/feature_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: AppPadding.p12),
                child: GestureDetector(
                  onTap: () {
                  context.go(
                    RouteManger.detials,
                    extra: state.books[index],
                  ) ;
                  },
                  child: CustomBookItem(
                    urlImage:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeatureBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
