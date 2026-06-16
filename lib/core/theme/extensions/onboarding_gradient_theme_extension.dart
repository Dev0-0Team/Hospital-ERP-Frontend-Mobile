import 'package:flutter/material.dart';

class OnboardingGradientThemeExtension
    extends ThemeExtension<OnboardingGradientThemeExtension> {
  final LinearGradient gradient;

  const OnboardingGradientThemeExtension({required this.gradient});

  @override
  OnboardingGradientThemeExtension copyWith({LinearGradient? gradient}) {
    return OnboardingGradientThemeExtension(
      gradient: gradient ?? this.gradient,
    );
  }

  @override
  OnboardingGradientThemeExtension lerp(
    OnboardingGradientThemeExtension? other,
    double t,
  ) {
    if (other is! OnboardingGradientThemeExtension) return this;
    return OnboardingGradientThemeExtension(
      gradient: LinearGradient.lerp(gradient, other.gradient, t)!,
    );
  }
}
