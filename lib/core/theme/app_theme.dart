import 'package:flutter/material.dart';
import '../utils/app_constants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.PRIMARY,
      primary: AppColors.PRIMARY,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: 'MyriadPro',
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.PRIMARY,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.PRIMARY,
          foregroundColor: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.PRIMARY, width: 2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.CONTROL_NORMAL),
        ),
      ),
    );
  }
}
