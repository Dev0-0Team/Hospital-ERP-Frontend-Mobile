import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AppDarkTheme {
  static final ThemeData dark = ThemeData(
    primaryColor: AppColors.mainBlue,
    scaffoldBackgroundColor: AppColors.blackColor,
    brightness: Brightness.dark,
    elevatedButtonTheme: _elevatedButtonThemeDark,
    iconTheme: _iconThemeDark,
    iconButtonTheme: _iconButtonThemeDark,
    checkboxTheme: _checkboxThemeDark,
    inputDecorationTheme: _inputDecorationThemeDark,
    textTheme: _textThemeDark,
    colorScheme: _colorScheme,
  );

  // ── Color Scheme ─────────────────────────────────────────────────────────
  static const ColorScheme _colorScheme = ColorScheme.dark(
    primary: AppColors.mainBlue,
    secondary: Color(0xFF8A8FA8),
    surface: Color(0xFF1C1F2A),
    tertiary: AppColors.white,
  );

  // ── Elevated Button (Dark) ────────────────────────────────────────────────

  static final _elevatedButtonThemeDark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.mainBlue,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: AppStyles.textStyleSemiBold16,
    ),
  );

  // ── Icon (Dark) ───────────────────────────────────────────────────────────

  static const _iconThemeDark = IconThemeData(
    color: AppColors.mainBlue,
    size: 24,
  );

  // ── Icon Button (Dark) ────────────────────────────────────────────────────

  static final _iconButtonThemeDark = IconButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF1C1F2A),
      fixedSize: const Size(48, 48),
      shape: const CircleBorder(),
    ),
  );

  // ── Checkbox (Dark) ───────────────────────────────────────────────────────

  static final _checkboxThemeDark = CheckboxThemeData(
    side: const BorderSide(color: Color(0xFF3A3F52), width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );

  // ── Input Decoration (Dark) ───────────────────────────────────────────────

  static OutlineInputBorder _outlineBorderDark(Color color) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color, width: 1.2),
      );

  static final _inputDecorationThemeDark = InputDecorationTheme(
    hintStyle: AppStyles.textStyleMedium14.copyWith(
      color: const Color(0xFF3A3F52),
    ),
    filled: true,
    fillColor: const Color(0xFF1C1F2A),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    enabledBorder: _outlineBorderDark(const Color(0xFF2C3144)),
    focusedBorder: _outlineBorderDark(AppColors.mainBlue),
    errorBorder: _outlineBorderDark(Colors.redAccent),
    focusedErrorBorder: _outlineBorderDark(Colors.redAccent),
  );

  // ── Text (Dark) ───────────────────────────────────────────────────────────

  static final _textThemeDark = TextTheme(
    titleLarge: AppStyles.textStyleBold32.copyWith(color: Colors.white),
    titleMedium: AppStyles.textStyleBold24.copyWith(color: Colors.white),
    labelSmall: AppStyles.textStyleSemiBold12.copyWith(
      color: const Color(0xFF8A8FA8),
    ),
    labelMedium: AppStyles.textStyleSemiBold16.copyWith(color: Colors.white),
    bodyMedium: AppStyles.textStyleRegular14.copyWith(
      color: const Color(0xFFCDD0DC),
    ),
    bodySmall: AppStyles.textStyleRegular12.copyWith(
      color: const Color(0xFF8A8FA8),
    ),
  );
}
