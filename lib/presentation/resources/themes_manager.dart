import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors_manager.dart';
import 'styles_manager.dart';
import 'fonts_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey,
      splashColor: ColorManager.lightPrimary,
      checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),

      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: ColorManager.black,
        selectedItemColor: ColorManager.black
      ),
      //card view theme
      cardTheme: const CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s6,
      ),
      //app bar theme
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: ColorManager.darkGrey,
              statusBarIconBrightness: Brightness.light),
          color: ColorManager.primary,
          shadowColor: ColorManager.lightPrimary,
          elevation: AppSize.s4,
          centerTitle: true,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSizeManager.s16)),
      //button theme
      buttonTheme: const ButtonThemeData(
          shape: StadiumBorder(),
          disabledColor: ColorManager.grey,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.lightPrimary),
      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        textStyle: getMediumStyle(
            color: ColorManager.white, fontSize: FontSizeManager.s18),
        primary: ColorManager.primary,
      )),
      //text theme
      textTheme: TextTheme(
          displayLarge: getLightStyle(
              color: ColorManager.white, fontSize: FontSizeManager.s22),
          //get start oranos
          headlineLarge: getBoldStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s16),
          // home headline
          headlineSmall: getMediumStyle(color: ColorManager.black,fontSize: FontSizeManager.s16) ,
          // like getStart
          titleLarge: getRegularStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s18),
          // for text style like onBoarding
          titleMedium: getMediumStyle(
              color: ColorManager.textTitle, fontSize: FontSizeManager.s18),
          // say done
          titleSmall: getRegularStyle(color: ColorManager.grey,fontSize: FontSizeManager.s16),
          //like chat message ,user
          bodyLarge: getRegularStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s14),
          //like sign up onBoarding
          bodyMedium: getRegularStyle(
              color: ColorManager.primary, fontSize: FontSizeManager.s12),
          //like don't have an account onBoarding
          bodySmall: getRegularStyle(
              color: ColorManager.black, fontSize: FontSizeManager.s12)),
      //input decoration theme(text form field)
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          hintStyle: getRegularStyle(
              color: ColorManager.grey, fontSize: FontSizeManager.s14),
          labelStyle: getRegularStyle(
              color: ColorManager.grey, fontSize: FontSizeManager.s14),
          errorStyle: getRegularStyle(color: ColorManager.error),
          focusedBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          errorBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.error, width: AppSize.s1_5),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),

  );
}
