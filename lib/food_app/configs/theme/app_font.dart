import 'package:flutter/material.dart';
import 'package:pelatihan1/food_app/configs/theme/app_color.dart';

class AppFont {
  static const String primaryFont = 'Poppins';
  static TextStyle get h1 => const TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w600,
    fontSize: 28,
    color: AppColor.textPrimary,
  );

  static TextStyle get h2 => const TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: AppColor.textPrimary,
  );

  static TextStyle h3 = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w500,
    fontSize: 22,
    color: AppColor.textPrimary,
  );

  static TextStyle mediumMedium = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: AppColor.textPrimary,
  );

  static TextStyle normalMedium = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColor.textPrimary,
  );

  static TextStyle get normalRegular => const TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColor.textPrimary,
  );

  static TextStyle smallMedium = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.textPrimary,
  );

  static TextStyle smallRegular = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.textPrimary,
  );

  static TextStyle verySmallMedium = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColor.textPrimary,
  );

  static TextStyle verySmallRegular = TextStyle(
    fontFamily: primaryFont,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColor.textPrimary,
  );
}