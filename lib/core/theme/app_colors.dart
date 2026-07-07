import 'package:flutter/material.dart';

/// Carried over verbatim from the Android project's
/// `res/values/colors.xml`, not reinvented. Only the colors actually used
/// for theming (colorPrimary / colorPrimaryDark / colorAccent) are ported
/// here; the large tail of legacy chat/messaging-era colors in the
/// original file (caldroid_*, tpi_checked, et_divider_*, etc.) belonged to
/// screens that no longer exist in this app and are intentionally not
/// carried forward — flagged per your instruction to call out dropped
/// legacy pieces individually.
class AppColors {
  AppColors._();

  /// colorPrimary (#FF03A9F4)
  static const primary = Color(0xFF03A9F4);

  /// colorPrimaryDark (#ff0171c9)
  static const primaryDark = Color(0xFF0171C9);

  /// colorAccent (#FF00E5FF)
  static const accent = Color(0xFF00E5FF);

  /// colorControlNormal (#FF78909C) — used for unfocused form controls.
  static const controlNormal = Color(0xFF78909C);
}
