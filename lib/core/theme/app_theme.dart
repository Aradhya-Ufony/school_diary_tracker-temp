import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Single Material 3 theme shared by both flavors. The original Android
/// project themed both flavors identically (only the app name and launcher
/// icon differed per flavor, per `manifestPlaceholders` in build.gradle) —
/// so a single shared ThemeData, rather than per-flavor theming, is a
/// faithful port of the existing behavior, not a new assumption.
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: 'MyriadPro',
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.controlNormal),
        ),
      ),
    );
  }

  // A dark theme was not present in the original app in any meaningful way
  // (styles_dark.xml exists but LoginActivity/HomeTabActivity/etc. all
  // hardcode ActivityTheme = Theme.AppCompat.Light). Not fabricating a
  // dark-mode UX that didn't exist — using light theme only for now.
  // Flag this if you'd like dark mode added as a new feature later.
}
