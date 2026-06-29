import 'package:doctorine/core/theme/app_colors.dart';
import 'package:doctorine/core/theme/app_styles.dart';
import 'package:doctorine/core/theme/extensions/onboarding_gradient_theme_extension.dart';
import 'package:flutter/material.dart';

class AppDarkTheme {
  AppDarkTheme._();

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.mainBlue,
        scaffoldBackgroundColor: const Color(0xFF12141C),
        brightness: Brightness.dark,
        elevatedButtonTheme: _elevatedButtonThemeDark,
        iconTheme: _iconThemeDark,
        iconButtonTheme: _iconButtonThemeDark,
        checkboxTheme: _checkboxThemeDark,
        inputDecorationTheme: _inputDecorationThemeDark,
        textTheme: _textThemeDark,
        colorScheme: _colorScheme,
        extensions: [
          OnboardingGradientThemeExtension(gradient: onboardingGradient),
        ],
      );

  // ── Onboarding Gradient ─────────────────────────────────────────────────
  static final LinearGradient onboardingGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [const Color(0xFF12141C), const Color(0xFF12141C).withAlpha(0)],
    stops: const [0.16, 0.34],
  );

  // ── Color Scheme ─────────────────────────────────────────────────────────
  static const ColorScheme _colorScheme = ColorScheme.dark(
    primary: AppColors.mainBlue,
    onPrimary: AppColors.white,
    secondary: Color(0xFF9E9E9E),
    onSecondary: AppColors.white,
    secondaryContainer: Color(0xFF2C3144),
    surface: Color(0xFF1E202B),
    onSurface: AppColors.white,
    onSurfaceVariant: Color(0xFF8A8FA8),
    tertiary: AppColors.white,
    outline: Color(0xFF2C3144),
    scrim: AppColors.notificationBadge,
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
    color: AppColors.white,
    size: 24,
  );

  // ── Icon Button (Dark) ────────────────────────────────────────────────────
  static final _iconButtonThemeDark = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: const Color(0xFF1E202B),
      foregroundColor: AppColors.white,
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
      color: const Color(0xFF8A8FA8),
    ),
    filled: true,
    fillColor: const Color(0xFF1E202B),
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    enabledBorder: _outlineBorderDark(const Color(0xFF2C3144)),
    focusedBorder: _outlineBorderDark(AppColors.mainBlue),
    errorBorder: _outlineBorderDark(Colors.redAccent),
    focusedErrorBorder: _outlineBorderDark(Colors.redAccent),
  );

  // ── Text (Dark) ───────────────────────────────────────────────────────────
  static final _textThemeDark = TextTheme(
    titleLarge: AppStyles.textStyleBold32.copyWith(color: AppColors.mainBlue),
    titleMedium: AppStyles.textStyleBold24.copyWith(color: AppColors.mainBlue),
    titleSmall: AppStyles.textStyleBold18.copyWith(color: Colors.white),
    displayLarge: AppStyles.textStyleBold18.copyWith(color: Colors.white),
    displayMedium: AppStyles.textStyleRegular18.copyWith(color: Colors.white),
    headlineMedium: AppStyles.textStyleSemiBold18.copyWith(color: Colors.white),
    headlineSmall: AppStyles.textStyleMedium12.copyWith(
      color: const Color(0xFF8A8FA8),
    ),
    labelLarge: AppStyles.textStyleSemiBold16.copyWith(color: Colors.white),
    labelMedium: AppStyles.textStyleSemiBold16.copyWith(color: Colors.white),
    labelSmall: AppStyles.textStyleSemiBold12.copyWith(
      color: const Color(0xFF8A8FA8),
    ),
    bodyLarge: AppStyles.textStyleBold16.copyWith(color: Colors.white),
    bodyMedium: AppStyles.textStyleRegular14.copyWith(
      color: const Color(0xFFCDD0DC),
    ),
    bodySmall: AppStyles.textStyleRegular12.copyWith(
      color: const Color(0xFF8A8FA8),
    ),
  );
}
