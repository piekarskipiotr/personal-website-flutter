import 'package:flutter/material.dart';
import 'colors/app_colors.dart';
import 'colors/color_helper.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.secondary,
    primarySwatch: ColorHelper.toMaterialColor(AppColors.primary),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
    ),
    scaffoldBackgroundColor: AppColors.black,
  );
}
