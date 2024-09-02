
import 'package:bookly_app/core/resources/color_manger.dart';
import 'package:bookly_app/core/resources/font_manger.dart';
import 'package:bookly_app/core/resources/styles_manger.dart';
import 'package:bookly_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    colorScheme:  ColorScheme.dark(
      background: ColorManger.primary,
    ),
    primaryColor: ColorManger.primary,
    primaryColorLight: ColorManger.lightprimary,
    primaryColorDark: ColorManger.darkprimary,
    disabledColor: ColorManger.grey1,
    splashColor: ColorManger.lightprimary,
    //cardView theme

    cardTheme: CardTheme(
      color: ColorManger.white,
      shadowColor: ColorManger.grey,
      elevation: AppSize.s4,
    ),

    //app Bar theme
    appBarTheme: AppBarTheme(
        color: ColorManger.darkprimary,
        elevation: AppSize.s4,
        shadowColor: ColorManger.lightprimary,
        titleTextStyle: getRegularStyle(
            fontSize: FontSize.size16, color: ColorManger.white)),

    //button theme

    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManger.grey1,
      buttonColor: ColorManger.primary,
      splashColor: ColorManger.lightprimary,
    ),

    //elevated button theme

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s16)),
      backgroundColor: ColorManger.primary,
      textStyle:
          getRegularStyle(color: ColorManger.white, fontSize: FontSize.size17),
    )),

    textTheme: TextTheme(
        headlineLarge: getSemiBoldStyle(
            fontSize: FontSize.size16, color: ColorManger.darkGrey),
        titleMedium: getMeduimStyle(
            color: ColorManger.primary, fontSize: FontSize.size16),
        headlineMedium: getMeduimStyle(
            color: ColorManger.darkGrey, fontSize: FontSize.size14),
        bodyLarge: getRegularStyle(color: ColorManger.grey1),
        bodySmall: getRegularStyle(color: ColorManger.grey),
        displayLarge: getLightStyle(
            color: ColorManger.darkGrey, fontSize: FontSize.size16)),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle:
          getRegularStyle(color: ColorManger.grey, fontSize: FontSize.size14),
      labelStyle:
          getMeduimStyle(color: ColorManger.grey, fontSize: FontSize.size14),
      errorStyle: getRegularStyle(color: ColorManger.error),
      enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.grey, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManger.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManger.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.circular(AppSize.s8)),
    ),
  );
}
