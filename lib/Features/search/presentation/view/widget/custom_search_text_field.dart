import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
           borderSide: BorderSide(color: ColorManger.white),
          borderRadius: BorderRadius.circular(12 ,)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.white),
          borderRadius: BorderRadius.circular(12 ,)
        ),
        
        hintText: 'search' , 
        suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass)
      ),
    );
  }
}