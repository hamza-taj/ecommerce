import 'package:ecommerce/core/constants/appcolor.dart';
import 'package:flutter/material.dart';

//! Theme English
ThemeData themeEnglish = ThemeData(
  fontFamily: 'Mulish',
  primaryColor: AppColor.black,
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16),
  ),
);
//! Theme Arabic
ThemeData themeArbic = ThemeData(
  fontFamily: 'Cairo',
  primaryColor: AppColor.black,
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 14),
  ),
);
