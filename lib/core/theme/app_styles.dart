import 'package:doctorine/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static const textStyleBold16 = TextStyle(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const textStyleRegular12 = TextStyle(
    color: AppColors.grey,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  static const textStyleBold32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlue,
  );
  static const textStyleBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlue,
  );

  static const TextStyle textStyleRegular14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );

  static const TextStyle textStyleMedium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle textStyleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static const TextStyle textStyleSemiBold12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
}
