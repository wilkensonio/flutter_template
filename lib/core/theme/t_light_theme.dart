import 'package:flutter/material.dart';

import '../../shared/constants/c_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryLight,
    onPrimary: AppColors.primaryLightForeground,
    secondary: AppColors.secondaryLight,
    onSecondary: AppColors.foregroundLight,
    surface: AppColors.backgroundLight, // replaces background
    onSurface: AppColors.foregroundLight, // text/icons on surface
    error: AppColors.error,
    onError: AppColors.destructiveForegroundLight,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryLight,
      foregroundColor: AppColors.primaryLightForeground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
  scaffoldBackgroundColor: AppColors.backgroundLight,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryLight,
    foregroundColor: AppColors.primaryLightForeground,
  ),
);
