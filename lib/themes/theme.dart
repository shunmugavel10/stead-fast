import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeCollection {
  ThemeData themeLight = ThemeData(
    primaryColor: Color(0xffFF671D),
    secondaryHeaderColor: Colors.white,
    backgroundColor: Colors.white,
    primarySwatch: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins-Medium',
    accentColor: Colors.grey.shade100,
    buttonColor: Color(0xff9DBB46),
    textTheme:TextTheme(
      headline1: TextStyle(
          fontSize: 36.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      headline2: TextStyle(
          fontSize: 32.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      headline3: TextStyle(
          fontSize: 28.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      headline4: TextStyle(
          fontSize: 24.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      headline5: TextStyle(
          fontSize: 20.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      headline6: TextStyle(
          fontSize: 19.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      subtitle1: TextStyle(
          fontSize: 18.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      subtitle2: TextStyle(
          fontSize: 16.0.sp, fontWeight: FontWeight.bold, color: Colors.black),
      bodyText1: TextStyle(
        fontSize: 14.0.sp,
      ),
      bodyText2: TextStyle(
        fontSize: 13.0.sp,
      ),
      caption: TextStyle(
        fontSize: 12.0.sp,
      ),
    ),
    colorScheme: ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: Brightness.light,
        primary: Color(0xffFF671D),
        primaryVariant: Color(0xffF0682A),
        secondary: Color(0xffFF671D),
        secondaryVariant: Color(0xffFF671D),
        background: Colors.white,
        surface: Colors.grey.shade800,
        onBackground: Colors.white,
        onSurface: Colors.grey.shade200,
        onError: Colors.white,
        onPrimary: Colors.black,
        onSecondary: Color(0xFFC4C4C4),
        error: Colors.red.shade400),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.white))),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  ThemeData themeDark = ThemeData(
    primaryColor: Color(0xffED3237),
    secondaryHeaderColor: Colors.black,
    backgroundColor: Colors.black,
    accentColor: Colors.grey.shade900,
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Poppins-Medium',
    buttonColor: Color(0xff9DBB46),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 36.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: TextStyle(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline3: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline4: TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline5: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline6: TextStyle(
          fontSize: 19.0, fontWeight: FontWeight.bold, color: Colors.white),
      subtitle1: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
      subtitle2: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
      bodyText1: TextStyle(
        fontSize: 14.0,
      ),
      bodyText2: TextStyle(
        fontSize: 13.0,
      ),
      caption: TextStyle(
        fontSize: 12.0,
      ),
    ),
    colorScheme: ColorScheme(
        // Decide how you want to apply your own custom them, to the MaterialApp
        brightness: Brightness.dark,
        primary: Color(0xffFF671D),
        primaryVariant: Color(0xffFF671D),
        secondary: Color(0xffFF671D),
        secondaryVariant: Color(0xffFF671D),
        background: Colors.black,
        surface: Colors.grey.shade800,
        onBackground: Colors.black,
        onSurface: Colors.grey.shade200,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.grey.shade100,
        error: Colors.red.shade400),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.transparent,
            side: BorderSide(color: Colors.white))),
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
