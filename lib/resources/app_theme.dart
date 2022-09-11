import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'colors/app_colors.dart';
import 'colors/color_helper.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    primaryColor: AppColors.primary,
    primaryColorDark: AppColors.secondary,
    primarySwatch: ColorHelper.toMaterialColor(AppColors.primary),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondary,
    ),
    scaffoldBackgroundColor: AppColors.black,
  );

  static void initSystemChromeSettings() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top],
    );

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
