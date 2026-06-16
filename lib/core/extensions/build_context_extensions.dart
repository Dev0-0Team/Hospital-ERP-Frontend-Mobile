import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  TextTheme get textStyles => Theme.of(this).textTheme;
  IconThemeData get iconStyles => Theme.of(this).iconTheme;
  IconButtonThemeData get iconButtonStyles => Theme.of(this).iconButtonTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
