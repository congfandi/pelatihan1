import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor{
  static const Color brandPrimary = Color(0xFFE84C4F);
  static const Color brandSecondary = Color(0xFFEDA345);
  static const Color brandTertiary = Color(0xFF645DAF);
  static const Color textPrimary = Color(0xFF3E4462);
  static const Color textSecondary = Color(0xFF7E7E7E);
  static const Color textTertiary = Color(0xFFCACACA);
  static const Color background = Color(0xFFF8F5F2);
  static const Color white = Color(0xFFFFFFFF);




  static MaterialColor get primarySwatch => MaterialColor(brandPrimary.value, {
  50: _tintColor(brandPrimary, 0.9),
  100: _tintColor(brandPrimary, 0.8),
  200: _tintColor(brandPrimary, 0.6),
  300: _tintColor(brandPrimary, 0.4),
  400: _tintColor(brandPrimary, 0.2),
  500: brandPrimary,
  700: _shadeColor(brandPrimary, 0.2),
  800: _shadeColor(brandPrimary, 0.3),
  900: _shadeColor(brandPrimary, 0.4),
  });

  static int _tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color _tintColor(Color color, double factor) => Color.fromRGBO(
      _tintValue(color.red, factor),
      _tintValue(color.green, factor),
      _tintValue(color.blue, factor),
      1);

  static int _shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color _shadeColor(Color color, double factor) => Color.fromRGBO(
      _shadeValue(color.red, factor),
      _shadeValue(color.green, factor),
      _shadeValue(color.blue, factor),
      1);
}