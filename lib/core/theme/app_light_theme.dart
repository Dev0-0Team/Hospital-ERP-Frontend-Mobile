import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/core/theme/app_styles.dart';
import 'package:doctorine/core/theme/extensions/onboarding_gradient_theme_extension.dart';
import 'package:flutter/material.dart';

class AppLightThemes {
  AppLightThemes._();

  static ThemeData get theme => ThemeData(
    primaryColor: AppColors.mainBlue,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    elevatedButtonTheme: _elevatedButtonTheme,
    iconTheme: _iconTheme,
    iconButtonTheme: _iconButtonTheme,
    checkboxTheme: _checkboxTheme,
    inputDecorationTheme: _inputDecorationTheme,
    textTheme: _textTheme,
    colorScheme: _colorScheme,
    extensions: [
      OnboardingGradientThemeExtension(gradient: onboardingGradient),
    ],
  );
// ── Onboarding Gradient ─────────────────────────────────────────────────
  static final LinearGradient onboardingGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [AppColors.white, AppColors.white.withAlpha(0)],
    stops: const [0.16, 0.34],
  );

  // ── Color Scheme ─────────────────────────────────────────────────────────
  static const ColorScheme _colorScheme = ColorScheme.light(
    primary: AppColors.mainBlue,
    secondary: AppColors.grey,
    surface: AppColors.moreLightGrey,
    tertiary: AppColors.white,
  );

  // ── Elevated Button ────────────────────────────────────────────────────────

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.mainBlue,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 56),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: AppStyles.textStyleSemiBold16,
    ),
  );

  // ── Icon ──────────────────────────────────────────────────────────────────

  static const _iconTheme = IconThemeData(color: AppColors.mainBlue, size: 24);

  // ── Icon Button ──────────────────────────────────────────────────────────────────

  static final _iconButtonTheme = IconButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.moreLightGrey,
      fixedSize: const Size(48, 48),
      shape: const CircleBorder(),
    ),
  );

  // ── Checkbox ──────────────────────────────────────────────────────────────

  static final _checkboxTheme = CheckboxThemeData(
    side: const BorderSide(color: AppColors.lightGrey, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  );

  // ── Input Decoration ──────────────────────────────────────────────────────

  static OutlineInputBorder _outlineBorder(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color, width: 1.2),
  );

  static final _inputDecorationTheme = InputDecorationTheme(
    hintStyle: AppStyles.textStyleMedium14.copyWith(color: AppColors.lightGrey),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    enabledBorder: _outlineBorder(AppColors.lightGrey),
    focusedBorder: _outlineBorder(AppColors.mainBlue),
    errorBorder: _outlineBorder(Colors.red),
    focusedErrorBorder: _outlineBorder(Colors.red),
  );

  // ── Text ──────────────────────────────────────────────────────────────────

  static const _textTheme = TextTheme(
    titleLarge: AppStyles.textStyleBold32,
    titleMedium: AppStyles.textStyleBold24,
    labelSmall: AppStyles.textStyleSemiBold12,
    labelMedium: AppStyles.textStyleSemiBold16,
    bodyMedium: AppStyles.textStyleRegular14,
    bodySmall: AppStyles.textStyleRegular12,
  );
}
