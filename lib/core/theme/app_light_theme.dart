import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/core/theme/app_styles.dart';
import 'package:doctorine/core/theme/extensions/onboarding_gradient_theme_extension.dart';
import 'package:flutter/material.dart';

class AppLightThemes {
  AppLightThemes._();

  static ThemeData get theme => ThemeData(
        useMaterial3: true,
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
    onPrimary: AppColors.white,
    secondary: AppColors.grey,
    onSecondary: AppColors.white,
    secondaryContainer: AppColors.lightGrey,
    surface: AppColors.moreLightGrey,
    onSurface: AppColors.blackColor,
    onSurfaceVariant: AppColors.grey,
    tertiary: AppColors.blackColor,
    outline: AppColors.lightGrey,
    scrim: AppColors.notificationBadge,
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

  // ── Icon Theme ──────────────────────────────────────────────────────────────────
  static const _iconTheme = IconThemeData(
    color: AppColors.blackColor,
    size: 24,
  );

  // ── Icon Button Theme ──────────────────────────────────────────────────────────────────
  static final _iconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColors.moreLightGrey,
      foregroundColor: AppColors.blackColor,
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

  // ── Text Theme ─────────────────────────────────────────────────────────────
  static final _textTheme = TextTheme(
    titleLarge: AppStyles.textStyleBold32.copyWith(color: AppColors.mainBlue),
    titleMedium: AppStyles.textStyleBold24.copyWith(color: AppColors.mainBlue),
    titleSmall: AppStyles.textStyleBold18.copyWith(color: AppColors.blackColor),
    displayLarge: AppStyles.textStyleBold18.copyWith(color: AppColors.blackColor),
    displayMedium: AppStyles.textStyleRegular18.copyWith(color: AppColors.blackColor),
    headlineMedium: AppStyles.textStyleSemiBold18.copyWith(color: AppColors.blackColor),
    headlineSmall: AppStyles.textStyleMedium12.copyWith(color: AppColors.grey),
    labelLarge: AppStyles.textStyleSemiBold16.copyWith(color: AppColors.blackColor),
    labelMedium: AppStyles.textStyleSemiBold16.copyWith(color: AppColors.blackColor),
    labelSmall: AppStyles.textStyleSemiBold12.copyWith(color: AppColors.grey),
    bodyLarge: AppStyles.textStyleBold16.copyWith(color: AppColors.blackColor),
    bodyMedium: AppStyles.textStyleRegular14.copyWith(color: AppColors.grey),
    bodySmall: AppStyles.textStyleRegular12.copyWith(color: AppColors.grey),
  );
}
