import 'package:flutter/material.dart';
import 'package:unimeet/src/theme/colors.dart';

@immutable
class AppTheme {
  static const colors = AppColors();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      fontFamily: "Roboto",
    );
  }
}
