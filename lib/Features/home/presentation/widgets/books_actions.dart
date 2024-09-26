import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key , required this.bookModel});
   final  BookModel bookModel ; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10 , right: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: ColorManger.white,
              textcolor: ColorManger.black,
              titlebutton: "Free",
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(AppSize.s16) , bottomLeft: Radius.circular(AppSize.s16) ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: ()  {
                 _launchUrl();
  },
              child: CustomButton(
                
                backgroundColor: ColorManger.darkprimary,
                textcolor: ColorManger.white,
                titlebutton: "Preview",
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(AppSize.s16) , topRight: Radius.circular(AppSize.s16) ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl() async {

   Uri  url =Uri.parse("https://www.facebook.com")  ;  

  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}