import 'package:doctorine/core/theme/extensions/onboarding_gradient_theme_extension.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  TextTheme get textStyles => Theme.of(this).textTheme;
  IconThemeData get iconStyles => Theme.of(this).iconTheme;
  IconButtonThemeData get iconButtonStyles => Theme.of(this).iconButtonTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  LinearGradient get onboardingGradient =>
      Theme.of(this).extension<OnboardingGradientThemeExtension>()!.gradient;

  InputDecorationThemeData get inputFieldTheme => Theme.of(this).inputDecorationTheme;
}
