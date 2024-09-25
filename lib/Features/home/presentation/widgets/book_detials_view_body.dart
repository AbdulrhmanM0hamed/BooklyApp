import 'package:bookly_app/Features/home/presentation/widgets/booking_rate.dart';
import 'package:bookly_app/Features/home/presentation/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_bookin_details_appbar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/widgets/detials_list_view_item.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart'; // Import the BookModel class

class BookDetailsViewBody extends StatelessWidget {
  final BookModel book; // تحتاج إلى تمرير BookModel هنا

  const BookDetailsViewBody({super.key, required this.book}); // تأكد من أن BookModel يتم تمريره

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Column(
          children: [
            const CustomBookinDetailsAppBar(),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .2,
                right: MediaQuery.of(context).size.width * .2,
                top: 20,
                bottom: 20,
              ),
              child: CustomBookItem(
                urlImage: book.volumeInfo.imageLinks.thumbnail, // استخدم صورة الكتاب هنا
              ),
            ),
            Text(
              textAlign: TextAlign.center, 
              book.volumeInfo.title, // استخدم عنوان الكتاب
              style: getSemiBoldStyle(
                color: ColorManger.white,
                fontFamily: FontConstant.gT_Sectra_Fine,
                fontSize: FontSize.size30,
              ),
            ),
            const SizedBox(height: 3),
            Text(
             textAlign: TextAlign.center, 

              book.volumeInfo.authors.join(', '), // استخدم مؤلفي الكتاب
              style: getSemiBoldStyle(
                color: ColorManger.grey1,
                fontFamily: FontConstant.montserrat,
                fontSize: FontSize.size16,
                fontStyle: FontStyle.italic,
              ),
            ),
            
             BookingRate(
               rating: book.volumeInfo.ratingsCount ?? 0,
                     count:book.volumeInfo.ratingsCount ?? 0, 
            ),
            const SizedBox(height: AppSize.s20),
            const BooksAction(),
            const SizedBox(height: AppSize.s40),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "You can also like",
                style: getSemiBoldStyle(
                  color: ColorManger.white,
                  fontFamily: FontConstant.montserrat,
                  fontSize: FontSize.size16,
                ),
              ),
            ),
            const SizedBox(height: 10),
            DetialListViewItem(books: book), // تمرير الكتاب إلى DetialListViewItem
          ],
        ),
      ),
    );
  }
}

