import 'package:doctorine/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    this.onPressed,
    this.child,
  });
  final VoidCallback? onPressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        padding: const EdgeInsets.all(14),
        duration: const Duration(microseconds: 500),
        decoration: const BoxDecoration(
            color: AppColors.mainBlue, shape: BoxShape.circle),
        child: child ??
            const Icon(
              Icons.add,
              size: 32,
              color: AppColors.white,
            ),
      ),
    );
  }
}
