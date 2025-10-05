import 'package:flutter/material.dart';

import '../../shared/constants/c_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryDark,
    onPrimary: AppColors.primaryDarkForeground,
    secondary: AppColors.secondaryDark,
    onSecondary: AppColors.foregroundDark,
    surface: AppColors.backgroundDark, // replaces background
    onSurface: AppColors.foregroundDark, // text/icons on surface
    error: AppColors.destructiveDark,
    onError: AppColors.destructiveForegroundDark,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryDark,
      foregroundColor: AppColors.primaryDarkForeground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
  scaffoldBackgroundColor: AppColors.backgroundDark,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primaryDark,
    foregroundColor: AppColors.primaryDarkForeground,
  ),
);
